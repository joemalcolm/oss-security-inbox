X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1883" "Wednesday" "28" "October" "2015" "00:57:16" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20151028045716.D2ADB8BC010@smtpvmsrv1.mitre.org>" "44" "[oss-security] Re: CVE-2015-6937 - Linux kernel - NULL pointer dereference in net/rds/connection.c" nil nil nil "10" "2015102804:57:16" "[oss-security] Re: CVE-2015-6937 - Linux kernel - NULL pointer dereference in net/rds/connection.c" (number mark "        cve-assign@m Oct 28   44/1883  " thread-indent "\"[oss-security] Re: CVE-2015-6937 - Linux kernel - NULL pointer dereference in net/rds/connection.c\"\n") "<20151027083712.GA1560@chrystal.uk.oracle.com>" ("<20151027083712.GA1560@chrystal.uk.oracle.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 3911 invoked by uid 550); 28 Oct 2015 04:57:33 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 3860 invoked from network); 28 Oct 2015 04:57:28 -0000
In-Reply-To: <20151027083712.GA1560@chrystal.uk.oracle.com>
Message-Id: <20151028045716.D2ADB8BC010@smtpvmsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Wed, 28 Oct 2015 00:57:16 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE-2015-6937 - Linux kernel - NULL pointer dereference in net/rds/connection.c
To: quentin.casasnovas@oracle.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

>> CVE-2015-6937 has been assigned to this issue that is exploitable "on
>> sockets that weren't properly bound before attempting to send a
>> message":
>>
>>   https://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/commit/?id=74e98eb085889b0d2d4908f59f6e00026063014f
 
> The above fix is incomplete and still allows to trigger a NULL pointer
> dereference when sending a message.  The root cause of this problem is a
> race condition when checking that the socket is bound in rds_sendmsg(),
> more information and a complete fix can be found here:
> 
>   https://lkml.org/lkml/2015/10/16/530
> 
> It should hit Linus' tree soon but since distributions already started
> shipping the incomplete fix, ...

Use CVE-2015-7990 for the vulnerability that remains present after the
74e98eb085889b0d2d4908f59f6e00026063014f commit.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJWMFSAAAoJEL54rhJi8gl5uLsQALnjDW0KqA0GdufltOgGh5oy
HhFSvZirdqBkB+tSGn2J18yHKSB0wmcdlnGHMOVjCMTIAQCK5LYR/PsBoSid4rn+
xCUnmh8+OoZEt8d5ukMVlOT6iQ6p/aqyoCnjMdRmEsK+lxVNb2Ew1OFAOvyYehWw
Lf3QK7CO66IRbcxAtHn+3AEVcA8mEJv/0fskIdiAEi3BVZ0u+V1SKjdwRivYmxV8
4yWi8EW/SVtZ7YEx64uOdWw8vJwo95YC4gVrkRBU4SYLF0W/b59+H/J2BRMzUHwG
N6JUUrvDA00yx4wOqJidqR1IVY/LaqohoF6AWBaQ8hczBK/mnUuObnPBBAjS3NxH
f/9g+E9R5QNBvFgzEImrC0fOYaKOmJqkb3zzIxrWAqMLcYiAehwpqp8NATEIhcQy
GoxqZIlUIkIZcLBFvmRoLX0fF5ZLuwCJSh9r91oOlNjVKPYSa2ZVSSbN6x2m8Sn8
/RyQBtxeFMgeymzF1XPCXJh17HCwpt4zYrZJf0Co6sbuatHw6FjyXLSnhNZ9DcLx
qgfqAVQwHw+xqquEioRhKlzRld/+xz6tgtseTTHk/Tcawx3slH9zTy2slQW745Rl
AcSLLCvlthPfhx3kNXjITaQ3WKaGTVsCHTuvhkxC2fyC6cAMYdPBDnuLMhZg6gKT
HCjDdydb6XKjWdCO12pV
=w9IK
-----END PGP SIGNATURE-----
