#!/usr/bin/expect

# Open the password file and ask the user for a password
spawn kpcli --kdb [lindex $argv 0] --readonly
expect {
    "Please provide the master password:" {
        send [exec zenity --password 2>/dev/null]
        send "\n"
        expect {
            "The database key appears invalid or else the database is corrupt." {
                exec notify-send "Wrong password!"
            }
            "kpcli:/>" {
                send "find .\n"
                expect "Would you like to"
                sleep 0.01
                send "N\n"
                expect "kpcli:/>"
                send "ls _found\n"
                expect "kpcli:/>"
                # Find all entries and let the user select with rofi
                set entries [exec echo $expect_out(buffer) | tail -n+3 | head -n-1 | sed -e {s/^ *[0-9]*\. //g} -e {s/.\{30\}$//g} -e {s/ *$//g} | sort -u ]
                if {[catch { set entry [exec echo $entries | rofi -dmenu -i -lines 5 -fullscreen -padding 342 -p Entry]}]} {
                    # Stop script if nothing chosen with rofi
                    exit 0
                } else {
                    # Take the chosen entry and find it again (this is done as multiple entries can have the same name in different folders and names are only shown with 40 characters)
                    send "find $entry\n"
                    expect "matches found and placed into"
                    sleep 0.01
                    send "N\n"
                    expect "kpcli:/>"
                    send "ls _found\n"
                    expect "kpcli:/>"
                    # Create a list of all the found options
                    set list [exec echo $expect_out(buffer) | tail -n+3 | head -n-1 | sed -e {s/^ *[0-9]*\. //g} -e {s/.\{30\}$//g} -e {s/ *$//g} | grep -n ^$entry$ | cut -f1 -d:]
                    if {[llength [split $list "\n"]] eq 1} {
                        # If there is only one, choose it
                        set entry_num [expr {$list - 1}]
                    } else {
                        # Otherwise create a new list with both the path and the title and let the user choose again
                        set choices ""
                        for {set i 0} {$i < [llength [split $list "\n"]]} {incr i} {
                            send "show $i\n"
                            expect "kpcli:/>"
                            set out $expect_out(buffer)
                            set path [exec echo $out | tail -n+2 | head -n-7 | sed -e {s/^ *Path: *//g}]
                            set title [exec echo $out | tail -n+4 | head -n-6 | sed -e {s/^ *Title: *//g}]
                            append choices $path $title
                        }
                        if {[catch { set choice [exec echo $choices | tail -n+2 | rofi -dmenu -i -lines 5 -fullscreen -padding 342 -p Entry] }]} {
                            exit 0
                        } else {
                            #set choice [exec $env(SHELL) -c $dmenu_cmd << $choices]
                            set entry_num [expr {[exec echo $choices | grep -n ^$choice$ | cut -f1 -d:]-2} ]
                        }
                    }
                    # Get the chosen entry and type it out using xdotools
                    send "show $entry_num -f\n"
                    expect "kpcli:/>"
                    exec xdotool type [exec echo $expect_out(buffer) | tail -n+6 | head -n-4 | sed -e {s/^ *Pass: *//g}]
                }
            }
        }
    }
    "for option --kdb=<file.kbd>, the file must exist." {
        exec notify-send "Password file not found!"
    }
}

