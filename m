X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2815" "Wednesday" "20" "July" "2016" "11:14:53" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160720151453.E969FB2E027@smtpvbsrv1.mitre.org>" "72" "[oss-security] Re: subuid security patches for shadow package" nil nil nil "7" "2016072015:14:53" "[oss-security] Re: subuid security patches for shadow package" (number mark "U       cve-assign@m Jul 20   72/2815  " thread-indent "\"[oss-security] Re: subuid security patches for shadow package\"\n") "<20160719093915.GA29047@suse.de>" ("<20160719093915.GA29047@suse.de>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 21554 invoked by uid 550); 20 Jul 2016 15:15:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 21505 invoked from network); 20 Jul 2016 15:15:06 -0000
From: cve-assign@mitre.org
To: krahmer@suse.com
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <20160719093915.GA29047@suse.de>
Message-Id: <20160720151453.E969FB2E027@smtpvbsrv1.mitre.org>
Date: Wed, 20 Jul 2016 11:14:53 -0400 (EDT)
Subject: [oss-security] Re: subuid security patches for shadow package

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> 1) Removing getlogin() to find out about users.
>    It relies on utmp, which is not a trusted base of info (group writable).

Possibly the concern is that the utmp entry might have a spoofed
username associated with the correct uid, and the attacker's goal is
to obtain unauthorized group privileges. We have not studied the code
in detail, but shadow-4.2.1/src/newgrp.c seems to have this sequence
of calls:

  pwd = get_my_pwent ();
     [ note that this calls getlogin ]
  grp = xgetgrgid (pwd->pw_gid);
  gid = grp->gr_gid;
  setgid (gid)

Use CVE-2016-6251 for the potentially unsafe use of getlogin.


>    there was a *int overflow*, which can be
>    tested via 'newuidmap $$ 0 10000 -1' (given that 10000 is listed as allowed)
>    which produces no error but tries to write large "count" values to the uid_map
>    file

>> After checking some kernels, it looks like this int wrap is exploitable as a LPE,
>> as kernel is using 32bit uid's that are truncated from unsigned longs (64bit on x64)
>> as returned by simple_strtoul() [map_write()]. So newuidmap and kernel have an entire
>> different view on the upper and lower bounds, making newuidmap overflow (and pass)
>> and still being in bounds inside the kernel.
>> 
>> So everyone shipping newuidmap as mode 04755 should fix it. :)

shadow-4.2.1/src/Makefile.in has:

  suidubins = chage chfn chsh expiry gpasswd newgrp passwd newuidmap newgidmap

Use CVE-2016-6252 for the incorrect integer handling.


> From: ebiederm@xmission.com (Eric W. Biederman)
> 
> Adding the shadow-development list, so there is a chance other people
> familiar with the code can comment as well.

There are no replies yet after the
http://lists.alioth.debian.org/pipermail/pkg-shadow-devel/2016-July/011017.html
post.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJXj5TsAAoJEHb/MwWLVhi2x6cP/1MqBp/UizSC/Omsgd08miga
HwWaU2OmWD+3eXXvyHMevNaAKrtgk385Hb7anlZmFL3g+qveQ6z1mlfpOM0RnzP2
1Ugbuj6MWNva98dHEXXIqfl1imsXmUJVsFGZcDZ6lHiLjCDiwWWs6F6R+N3dNKDn
dxcG70pxp8Id63Gednmfv+kzE8STW6cephtY7Iwm2YDBrWfVuDbuNMYOODnfv3Sq
CPN+U+NrzFmZONMOyhsq0FxhPRYSEAiM2Z90su0p1hLXW+OEJ4r/2ntPgbOoaN2y
jUEFLlsDLrQqTjyhq+l6APHwR+v4riLqdCpen6Mu/p1d6IY880jjWpLAxX02mQw1
55o00PaKHutIusR7CJo+6GnYeL+DqViUB6ROwZhvScxsFDp/qug3awgjPr5BY4Pk
MtawRi5Ul5lvn1vZiHTnBFjPsg1GrBKSWHtI51wnyPdm/R75AwriHBEVZvBJAczh
ej7WFm0aNg6HfTIJsUWkqP27n7BYjukGYC6ntbDX+TBPLeRC4f9bhqPAHtDsVvRm
zGaPylqu7hskxe5vb8fkht37jgjBgxn2cAcaPmT8vYR4eFqYk3oKP+ON4vON+nbD
6ofFyLMqTgzKJySLDsOKZ0nYbIsxceJzqEuwMyl/q9QEbhEop0rFq0UmeppUoZg3
3bg8yO0WagWNIOKO+lEd
=+wdJ
-----END PGP SIGNATURE-----
