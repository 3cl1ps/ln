#!/usr/bin/expect
sleep 3
spawn lncli "unlock"
expect {
        "Input wallet password:" {
        send -- "blabla\n"
        }
        }
expect eof
exit
