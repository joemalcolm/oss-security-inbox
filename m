X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1671" "Thursday" "29" "October" "2015" "13:05:50" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20151029170550.C90446C0100@smtpvmsrv1.mitre.org>" "38" "[oss-security] Re: CVE request: xscreensaver aborts when unpluging second monitor cable when asking password" nil nil nil "10" "2015102917:05:50" "[oss-security] Re: CVE request: xscreensaver aborts when unpluging second monitor cable when asking password" (number mark "        cve-assign@m Oct 29   38/1671  " thread-indent "\"[oss-security] Re: CVE request: xscreensaver aborts when unpluging second monitor cable when asking password\"\n") "<562B9FE6.605@fedoraproject.org>" ("<562B9FE6.605@fedoraproject.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 15608 invoked by uid 550); 29 Oct 2015 17:06:03 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 15584 invoked from network); 29 Oct 2015 17:06:02 -0000
In-Reply-To: <562B9FE6.605@fedoraproject.org>
Message-Id: <20151029170550.C90446C0100@smtpvmsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Thu, 29 Oct 2015 13:05:50 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE request: xscreensaver aborts when unpluging second monitor cable when asking password
To: mtasaka@fedoraproject.org

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> https://bugzilla.redhat.com/show_bug.cgi?id=1274452
> https://twitter.com/Thaolia/status/656823859304398848
> http://pkgs.fedoraproject.org/cgit/xscreensaver.git/diff/xscreensaver-5.33-0002-Modify-sigchld_hander-in_signal_hander_p-mechanism.patch?id=b57f59f3482fedf70ce7a3541094e2512290139f
> https://www.jwz.org/blog/2015/10/xscreensaver-5-34/

> xscreensaver-5.33/driver/subprocs.c

>> The proximate cause was that an internal consistency check failed
>> because I meant to be checking "am I running on the signal stack?" but
>> I was checking "is the SIGCHLD signal currently inhibited?" instead.

Use CVE-2015-8025.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJWMlGVAAoJEL54rhJi8gl5cbsP/iOTyk0Dxi4iqiRckHQUOJTT
PF15byPeuiGq2A1Hg1gGVjKztsAdkXVBp12wz2ABNWYP/1us976Sb4pHdGHI2dOc
DAMOpZooBxcLl44xfdvQ4IBhFzQ82oFM4Udm8YuM1fzKvrCVuk25rKdravnhSqgs
+5zXxSjiFJ8iHIAQB7RVVvK2vMCY9CR0OjZ6O9vo9ZMrmT75ERZ8obLDYnCVI7CI
BTRz6/mp+JHjs51t+nuxD3n5t6j/hKIcmDDjeEwPOf6emCduJplrTLBN4Px53seT
/zUZtK3JQeFSMuj+A/TR9RqCoUIAdrB38qs5wkOyRtzKGO/QcQYZ/n5G2ufx1BjX
THGZDVEYyEz7YOUW3eMKGpeFM58JhrKWaL8F4fXgAZOfrdwuoNdh3YqPfYYkfKDk
i4pHX/WWTV8tqo7Vz5cmoW4l74+xcTvP9TE0IbBZz9ZjT4runf17OktKrrJJKCkz
y6WzY8MaX6Q5Ua2Zvl2CORLBCD3rIqsWkXFa2tdQimqKDxQ1+T5BDTrgP4P50drw
5v9HcPtRKoTBKu0ovxKMC47/vOdHX39KKfvOXP7+NR5md3NcneGFEi5zAYPSc8qb
gH2cxqcw0FslrZm+5n9ufJIBCc5rDkQewyUqtzv90pzL97FOfqjgVHuHZuoF/Dip
WpYCibKW9zQ2/lFfnLRN
=vSZ7
-----END PGP SIGNATURE-----
