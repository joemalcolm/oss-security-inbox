X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2131" "Saturday" "4" "February" "2017" "21:35:41" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<b44c7133952c41e598c801ee468cf44c@imshyb01.MITRE.ORG>" "54" "[oss-security] Re: Local DoS: Linux Kernel EXT4 Memory Corruption / SLAB-Out-of-Bounds Read" nil nil nil "2" "2017020502:35:41" "[oss-security] Re: Local DoS: Linux Kernel EXT4 Memory Corruption / SLAB-Out-of-Bounds Read" (number mark "U       cve-assign@m Feb  4   54/2131  " thread-indent "\"[oss-security] Re: Local DoS: Linux Kernel EXT4 Memory Corruption / SLAB-Out-of-Bounds Read\"\n") "<CALJHwhTW6d4uVqQDvDkn80AWvLSGXGsXT-9RE_ORyBXz59NNHA@mail.gmail.com>" ("<CALJHwhTW6d4uVqQDvDkn80AWvLSGXGsXT-9RE_ORyBXz59NNHA@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 14045 invoked by uid 550); 5 Feb 2017 02:35:54 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 14019 invoked from network); 5 Feb 2017 02:35:53 -0000
From: <cve-assign@mitre.org>
To: <wmealing@redhat.com>
CC: <cve-assign@mitre.org>, <oss-security@lists.openwall.com>
In-Reply-To: <CALJHwhTW6d4uVqQDvDkn80AWvLSGXGsXT-9RE_ORyBXz59NNHA@mail.gmail.com>
Message-ID: <b44c7133952c41e598c801ee468cf44c@imshyb01.MITRE.ORG>
Date: Sat, 4 Feb 2017 21:35:41 -0500
MIME-Version: 1.0
Content-Type: text/plain
Subject: [oss-security] Re: Local DoS: Linux Kernel EXT4 Memory Corruption / SLAB-Out-of-Bounds Read

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> http://seclists.org/fulldisclosure/2016/Nov/75
> https://bugzilla.redhat.com/show_bug.cgi?id=1332503

>> OS-S Security Advisory 2016-22

> I'd like to ask for a CVE for the flaw the EXT4 filesystem as described as:
> 
> Mounting a crafted EXT4 image read-only leads to a memory corruption and
> SLAB-Out-of-Bounds Reads (according to KASAN).  Since the mounting
> procedure is a privileged operation, an attacker is probably not able
> to trigger this vulnerability on the commandline.
> Instead the automatic mounting feature of the GUI via a crafted
> USB-device is required.

> https://bugzilla.suse.com/show_bug.cgi?id=1023377
> 
> https://bugzilla.redhat.com/show_bug.cgi?id=1395190
> http://www.spinics.net/lists/linux-ext4/msg54572.html
> 
> Introduced in:
> https://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/commit/?id=952fc18ef9ec707ebdc16c0786ec360295e5ff15
> (first in v3.6-rc1...)
> 
> Fix:
> https://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/commit/?id=3a4b77cd47bb837b8557595ec7425f281f2ca1fe
> (first in v4.10-rc1)

Use CVE-2016-10208.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJYlo4JAAoJEHb/MwWLVhi22rMP/RUDRCffQOyJu3QkMjLn/ow6
1prWa6Sf1M9nNsrSobp/QcKFqQv39lFImxKmZMf0k5LGS0l6oZvMvHNo2h+4WznY
KopRkP4iivAJHP60IKv9QxaVqHuxy3jeOj+HZSro/pH7gAfVg9uv0V+V0aFZq3Lf
CdoQ5WUwsfIvRnIWnJE3AIv7iWc92WBqIdhC1Dg5bxPR8y9zT124yr1Cob9sH7oK
DkmqS/gTpmj7i1W6gtM5ZAtuC4teSNXDkg+ejA73CO7hDja1vN+JpD3iYQX+c1vr
MJHcOUYfYJBg9zbJ+SunDUbLlTkNoTuL/8HYX4vK5VszV+Hw6jf2Axx22KSbL43I
Y+QR3w/AAEatVjY28RKEYqjSF+eB3ta8s2cIZcLYbsCN2EK4vDzOnd04/agjuPi6
73vplncZVAz4KziKW5+nu1dNNXD7AKXm/vBnlW0t8n2YZvEGeAHilueljGh8NeI8
BibqPpHQHUbrnX8+z5hFUb77DbZnz5CKUjvv5FU/wPbtEaHAW97uuDJ92H7Fyi7L
M5aVys6Q7Q5mkg9mj/lfHvJ2ypORgSp1+WnDld5lbleb9rLliS/jCxS+pFMXFwId
MpwHyLrm5jiMG5Wn4y2l/aDwZV5cqrqo5G9RihPK2Jdf+HN4gxC1jeE2DH77htP8
rXarPPmuW69GO+jmJtZz
=ZWjb
-----END PGP SIGNATURE-----
