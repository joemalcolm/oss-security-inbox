X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1076" "Monday" "14" "December" "2015" "21:14:29" "+0000" "halfdog" "me@halfdog.net" "<566F3135.4050009@halfdog.net>" "35" "Re: [oss-security] User man Local Root Exploit/Linux Kernel setgid Directory Privilege Escalation/PAM Owner Check Weakness" "^Date:" nil nil "12" "2015121421:14:29" "[oss-security] User man Local Root Exploit/Linux Kernel setgid Directory Privilege Escalation/PAM Owner Check Weakness" (number mark "        me@halfdog.n Dec 14   35/1076  " thread-indent "\"Re: [oss-security] User man Local Root Exploit/Linux Kernel setgid Directory Privilege Escalation/PAM Owner Check Weakness\"\n") "<86fuz570iy.fsf@desk.des.no>" ("<565F679F.9050600@halfdog.net>" "<566E0678.1080808@halfdog.net>" "<86fuz570iy.fsf@desk.des.no>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 9933 invoked by uid 550); 14 Dec 2015 21:17:29 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 9901 invoked from network); 14 Dec 2015 21:17:28 -0000
References: <565F679F.9050600@halfdog.net> <566E0678.1080808@halfdog.net>
 <86fuz570iy.fsf@desk.des.no>
Message-ID: <566F3135.4050009@halfdog.net>
User-Agent: Mozilla/5.0 (Windows NT 6.3; rv:36.0) Gecko/20100101 Firefox/36.0
MIME-Version: 1.0
In-Reply-To: <86fuz570iy.fsf@desk.des.no>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Date: Mon, 14 Dec 2015 21:14:29 +0000
From: halfdog <me@halfdog.net>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] User man Local Root Exploit/Linux Kernel setgid
 Directory Privilege Escalation/PAM Owner Check Weakness
To: oss-security@lists.openwall.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

Dag-Erling Smørgrav wrote:
> halfdog <me@halfdog.net> writes:
>> 
http://www.halfdog.net/Security/2015/MandbSymlinkLocalRootPrivilegeEscalation/
>> 
>> http://www.halfdog.net/Security/2015/SetgidDirectoryPrivilegeEscalation/
>
>> 
> And the PAM issue?

That's the most questionable. Should it be expected from the pam
libraries to refuse authentication, when the owner/group of
/etc/shadow is completely off? Of course, attacker with possibility to
modify ownership of a single file would also find numerous other
targets to work on, but should it be so easy?

But even when deciding to change behavior, e.g. forcing libpam checks
on shadow to be root/[somegroup] and 0640 mode, could that break other
existing systems, introduce new (availability) risks?

hd

- -- 
http://www.halfdog.net/
PGP: 156A AE98 B91F 0114 FE88 2BD8 C459 9386 feed a bee
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iEYEARECAAYFAlZvMSwACgkQxFmThv7tq+791wCZAU+jSCjJffULGkrmriXeCAKd
Q7EAnjNmfNRHai3Qt3TqtElgfkck3TPs
=ytMn
-----END PGP SIGNATURE-----
