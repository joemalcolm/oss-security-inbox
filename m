X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1350" "Tuesday" "7" "February" "2017" "01:54:17" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<01c737d94fde43458d9fe0850eedd23b@imshyb02.MITRE.ORG>" "35" "[oss-security] Re: CVE Request: Linux: ip6_gre: invalid reads in ip6gre_err()" nil nil nil "2" "2017020706:54:17" "[oss-security] Re: CVE Request: Linux: ip6_gre: invalid reads in ip6gre_err()" (number mark "U       cve-assign@m Feb  7   35/1350  " thread-indent "\"[oss-security] Re: CVE Request: Linux: ip6_gre: invalid reads in ip6gre_err()\"\n") "<CAAeHK+xqSzMxjrs=DX9RVxiJrRKkWq22tLybcKMmFs4ZQZz=Ag@mail.gmail.com>" ("<CAAeHK+xqSzMxjrs=DX9RVxiJrRKkWq22tLybcKMmFs4ZQZz=Ag@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 19863 invoked by uid 550); 7 Feb 2017 06:54:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 19842 invoked from network); 7 Feb 2017 06:54:29 -0000
From: <cve-assign@mitre.org>
To: <andreyknvl@google.com>
CC: <cve-assign@mitre.org>, <oss-security@lists.openwall.com>,
	<dvyukov@google.com>, <edumazet@google.com>, <kcc@google.com>
In-Reply-To: <CAAeHK+xqSzMxjrs=DX9RVxiJrRKkWq22tLybcKMmFs4ZQZz=Ag@mail.gmail.com>
Message-ID: <01c737d94fde43458d9fe0850eedd23b@imshyb02.MITRE.ORG>
Date: Tue, 7 Feb 2017 01:54:17 -0500
MIME-Version: 1.0
Content-Type: text/plain
Subject: [oss-security] Re: CVE Request: Linux: ip6_gre: invalid reads in ip6gre_err()

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> There's a bug in the Linux kernel ipv6 implementation which allows a
> remote attacker to trigger an out-of-bounds access.
> 
> Upstream fix:
> https://git.kernel.org/cgit/linux/kernel/git/davem/net.git/commit/?id=7892032cfe67f4bde6fc2ee967e45a8fbaf33756

>> net/ipv6/ip6_gre.c

Use CVE-2017-5897.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJYmW4FAAoJEHb/MwWLVhi2uhYP/2pSKh6yFBK9CK6Jw2o653a8
d7ye2bn4LW0eJhGCU/00ivQ3tZeQXBKxDis6AtTGlDIFdf6GWoITttPAYRDzkhka
CYvzuca1hn2jv2euRaDWzICwaFIe0YFAO2iinJz18UPns4ufHnO2gQIrZ04HoR2b
Rje1k/kVaQu7ppqrqZA260ONyAYerRYQzUipDGlBOVBsOf+Suu/ld4z+ehvo8p7x
rINrW14YpOi44g5i+mArD0337X82Yq+VHq/t03jkCluceiIJf1lHaojjv8wsOV2v
CS1K49EEZiK9RcwN61ZJSU5oGo0IrHU5WcJDW+tx45nshmcbUHDkQd2i4+xFTeGW
BrO/qBlQlj0GVz0FbprWv4GzgteJ7RM5cQZqJx6xVoZXszFALcYoDc+mLrjjgaYT
xIJjOgcyMYcPfR+GGDwMBvovV4QjsiWYccRADIBBH9TQ2mqfs9CAOaZxo6/dIouA
R8z6PlpXE5WYu4iUacgQe8U/Mli4VQrOIpe8kU42ZgLjGZJTvIHclO7uvK4FwIYS
njPf4Gkq+ozrNnZ2lyfvtpRlAXMz58skCI3FgzajeE3CjFW2T7re8aovSb2CwsB8
OzCdWzJZbhWI5/2v+SXndQEtKf4tUQBI4ed0I0UJc6uADTMz6j+QnD+opUFrslCH
B2rYgdMDYarkGw3Dv9zo
=k7MF
-----END PGP SIGNATURE-----
