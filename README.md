# node
<pre><code>
/// <b>Why:</b>
<p>

For those with an interest in automating some sys info tasks via BASH this .sh may be of some use

node.sh requires certain system utilities in order to function effectively

inxi -    https://github.com/smxi/inxi

pydf -    http://kassiopeia.juls.savba.sk/~garabik/software/pydf/

nmap -    http://linuxcommand.org/man_pages/nmap1.html

vmstat -  http://linuxcommand.org/man_pages/vmstat8.html

ps -      http://linuxcommand.org/man_pages/ps1.html

mtr -     http://linuxcommand.org/man_pages/mtr8.html

selinux - https://selinuxproject.org/page/Main_Page   /// if not present within target node, rem or remove
<p>

/// <b>D/L:</b>
<p>

$wget https://github.com/dynamism/node/blob/gh-pages/node.sh
<p>

/// <b>Run:</b>
<p>

$sudo chmod u+x node.sh or $sudo chmod +x node.sh 

bash node.sh or sudo ./node.sh 
</p>

drop an alias into your .bashrc - alias node='sudo ./node.sh'

<p>

<b>License:</b>
</p>

The MIT License (MIT)

Copyright 2016 -tek

https://opensource.org/licenses/MIT

l8r
</code></pre>

