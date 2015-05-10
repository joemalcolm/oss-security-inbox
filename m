X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1919" "Saturday" "9" "May" "2015" "20:10:29" "-0400" "Kash Pande" "kash@tripleback.net" "<554EA1F5.4060805@tripleback.net>" "49" "[oss-security] CVE for Jentu" nil nil nil "5" "2015051000:10:29" "[oss-security] CVE for Jentu" (number mark "        kash@tripleb May  9   49/1919  " thread-indent "\"[oss-security] CVE for Jentu\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 19508 invoked by uid 550); 10 May 2015 00:10:32 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 19467 invoked from network); 10 May 2015 00:10:24 -0000
Message-ID: <554EA1F5.4060805@tripleback.net>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.5.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Date: Sat, 09 May 2015 20:10:29 -0400
From: Kash Pande <kash@tripleback.net>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE for Jentu
To: oss-security@lists.openwall.com

Hello,


Jentu is an iSCSI diskless management suite that uses a web-hosted
interface for managing ZFS servers - I am the one developer who wrote
all of its code.. *hangs head*

Though the web panel is proprietary/closed-source, the client source is
open and widely distributed.

There are multiple vulnerabilities:

* Client servers do not do certificate validation against the Jentu server

* The web UI connection to the client server is restricted to only allow
"localhost" to connect, however, forged packets will allow an attacker
to execute arbitrary code as the www-data user on Linux (or www user on
FreeBSD). Because lighttpd is operating with sudo access to your entire
ZFS pool, the amount of damage that can be caused is huge.

* Jentu uses ZFS on Linux that currently lacks a working "zfs allow"
security interface, requiring lighttpd to have root access to certain
ZFS binaries with little (if any) command sanitization.

* DNS rebinding attacks are possible against the client server, causing
DoS or even privilege escalation when combined with local iSCSI station
exploits: As the user browses to http://hackedsite.com which requests an
AJAX call to http://defaultgateway/clone.php?mac=00-11-22-33-44-55 where
00-11-22-33-44-55 is the MAC of the victim machine.

* The local iSCSI server, iscsitarget (iet) runs in "permissive" mode
that allows any one of the iSCSI systems on the network to connect to
and manipulate any other iSCSI target for unrelated systems. This is the
biggest one of the bunch, as Jentu is being sold to users as THE secure
platform (aside from just unplugging your systems).



There were potential fixes for all of these issues but they were not
implemented because of development time and backwards compatibility
problems with pre-existing client networks. So this platform remains
vulnerable. I feel there should be CVE to use for tracking these issues.



-- 

Kash Pande

