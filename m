X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1225" "Sunday" "13" "December" "2015" "23:59:52" "+0000" "halfdog" "me@halfdog.net" "<566E0678.1080808@halfdog.net>" "39" "Re: [oss-security] User man Local Root Exploit/Linux Kernel setgid Directory Privilege Escalation/PAM Owner Check Weakness" "^Date:" nil nil "12" "2015121323:59:52" "[oss-security] User man Local Root Exploit/Linux Kernel setgid Directory Privilege Escalation/PAM Owner Check Weakness" (number mark "        me@halfdog.n Dec 13   39/1225  " thread-indent "\"Re: [oss-security] User man Local Root Exploit/Linux Kernel setgid Directory Privilege Escalation/PAM Owner Check Weakness\"\n") "<565F679F.9050600@halfdog.net>" ("<565F679F.9050600@halfdog.net>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 23998 invoked by uid 550); 14 Dec 2015 00:03:33 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 23954 invoked from network); 14 Dec 2015 00:03:29 -0000
References: <565F679F.9050600@halfdog.net>
Message-ID: <566E0678.1080808@halfdog.net>
User-Agent: Mozilla/5.0 (Windows NT 6.3; rv:36.0) Gecko/20100101 Firefox/36.0
MIME-Version: 1.0
In-Reply-To: <565F679F.9050600@halfdog.net>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Date: Sun, 13 Dec 2015 23:59:52 +0000
From: halfdog <me@halfdog.net>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] User man Local Root Exploit/Linux Kernel setgid
 Directory Privilege Escalation/PAM Owner Check Weakness
To: oss-security@lists.openwall.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

halfdog wrote:
> Hello List,
> 
> Those three interlinked issues did not find complete 
> discussion/solution in the past 3 month after reporting to Linux 
> distributor, but there is silent approval for disclosure (for 
> 2015-11-30).
> 
> Send me a note, if someone else wants to take a look before that, 
> otherwise I would post the links 2015-12-14.

Here they are. I have got feedback, that at least Suse is not affected
by that. As the affected configuration seems to not so common and also
impact is not really high - usually no user-controllable services are
run as user "man" - this should not be a great deal. It is just
something to fix sometime, which should be possible now for more
people as information now publicly available.

[1]
http://www.halfdog.net/Security/2015/MandbSymlinkLocalRootPrivilegeEscalation/

[2]
http://www.halfdog.net/Security/2015/SetgidDirectoryPrivilegeEscalation/

hd

- -- 
http://www.halfdog.net/
PGP: 156A AE98 B91F 0114 FE88  2BD8 C459 9386 feed a bee
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iEYEARECAAYFAlZuBnAACgkQxFmThv7tq+7WkQCfV1pdQBOseacrAXeIAsQ/YriJ
LgUAnAyAt3uoTchM8dB6H1s7NKXjMceL
=hP2B
-----END PGP SIGNATURE-----
