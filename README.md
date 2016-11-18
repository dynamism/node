# node

/// What:


for those with an interest in automating some sys info tasks via BASH this .sh may be of some use

node.sh requires certain system utilities in order to function effectively

inxi -    https://github.com/smxi/inxi

nmap -    http://linuxcommand.org/man_pages/nmap1.html

vmstat -  http://linuxcommand.org/man_pages/vmstat8.html

ps -      http://linuxcommand.org/man_pages/ps1.html

mtr -     http://linuxcommand.org/man_pages/mtr8.html

selinux - https://selinuxproject.org/page/Main_Page   /// if not present within target node simply rem or remove command


/// D/L:

wget https://github.com/dynamism/node/blob/gh-pages/node.sh


/// Run:

$chmod u+x node.sh or $sudo chmod +x node.sh 

bash node.sh or sudo ./node.sh 
</p>
drop an alias into your .bashrc - alias node='sudo ./node.sh'


License:

The MIT License (MIT)

Copyright 2016 -tek

https://opensource.org/licenses/MIT

l8r

