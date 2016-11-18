    #!/bin/bash
    # node.sh
    # The MIT License (MIT) Copyright 2016 -tek
    # octothorpe here oOO^<^OOo chmod ( $sudo chmod +x node.sh or $sudo chmod u+x node.sh ) 
    # prior to running your bash script - the former is sys wide the latter is user constrained
    # for those with an interest, this script may be of some use -tek
    date; 
    echo "Local Machine:"
    inxi -Fz   # function requires inxi CLI information tool - https://github.com/smxi/inxi
    echo "--------------------"
    echo "uptime:"
    uptime
    echo "Currently connected:"
    w
    echo "--------------------"
    echo "Last logins:"
    last -a |head -3
    echo "--------------------"
    echo "bash:"
    ps j | head -1; ps j
    echo "--------------------"
    echo "Machine Memory:"
    pydf
    free -m | xargs | awk '{print "Free/total memory: " $17 " / " $8 " MB"}'
    echo "--------------------"
    #start_log=`head -1 /var/log/messages |cut -c 1-12`
    #sudo pkill chronydoom=`grep -ci kill /var/log/messages`
    echo -n "OOM errors since $start_log :" $oom
    echo ""
    echo "--------------------"
    echo "Utilization and most expensive processes:"
    top -b |head -3
    echo
    top -b |head -10 |tail -4
    echo "--------------------"
    echo "Open TCP ports:"
    nmap -p- -T4 127.0.0.1
    echo "--------------------"
    echo "Current connections:"
    ss -s
    echo "--------------------"
    #ps auxf --width=200
    #echo "--------------------"
    echo "vmstat:"
    vmstat 1 5
    echo "--------------------"
    echo "Network Manager status:"
    service NetworkManager status -l
    echo "--------------------"
    echo "Connections TCP | UDP:"
    lsof -Pan -i tcp -i udp
    echo "--------------------"
    echo "Failed Services:"
    systemctl --all --failed
    echo "--------------------"
    echo "rngtest:"
    cat /dev/hw_random | rngtest -c 1000
    echo "--------------------"
    echo "entropy:"
    cat /proc/sys/kernel/random/entropy_avail
    echo "--------------------"
    echo "current:"
    echo "--------------------"
    systemd-analyze critical-chain   # for systems with systemd - systemd-cgtop
    echo "--------------------"
    sestatus -v   ### applicable only when instances of selinux are loaded and active
    echo "--------------------"
    echo "link status:"
    mtr --report google.com
    echo "____________________"
    sudo nmap -F -O 192.168.1.1-255 | grep "Running: " > /tmp/os; echo "$(cat /tmp/os | grep Linux | wc -l) Linux device(s)"; echo "$(cat /tmp/os | grep Windows | wc -l) Window(s) devices"
