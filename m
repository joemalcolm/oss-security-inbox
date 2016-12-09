X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1752" "Friday" "9" "December" "2016" "00:13:41" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<4c5b757cd61e46109f711186e2474d6d@imshyb02.MITRE.ORG>" "41" "[oss-security] Re: CVE request Qemu: display: cirrus_vga: a divide by zero in cirrus_do_copy" nil nil nil "12" "2016120905:13:41" "[oss-security] Re: CVE request Qemu: display: cirrus_vga: a divide by zero in cirrus_do_copy" (number mark "U       cve-assign@m Dec  9   41/1752  " thread-indent "\"[oss-security] Re: CVE request Qemu: display: cirrus_vga: a divide by zero in cirrus_do_copy\"\n") "<alpine.LFD.2.20.1612081258430.26257@wniryva>" ("<alpine.LFD.2.20.1612081258430.26257@wniryva>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 18165 invoked by uid 550); 9 Dec 2016 05:13:54 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 18139 invoked from network); 9 Dec 2016 05:13:53 -0000
From: <cve-assign@mitre.org>
To: <ppandit@redhat.com>
CC: <cve-assign@mitre.org>, <oss-security@lists.openwall.com>,
	<liq3ea@gmail.com>, <psirt@huawei.com>
In-Reply-To: <alpine.LFD.2.20.1612081258430.26257@wniryva>
Message-ID: <4c5b757cd61e46109f711186e2474d6d@imshyb02.MITRE.ORG>
Date: Fri, 9 Dec 2016 00:13:41 -0500
MIME-Version: 1.0
Content-Type: text/plain
Subject: [oss-security] Re: CVE request Qemu: display: cirrus_vga: a divide by zero in cirrus_do_copy

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> Quick emulator(Qemu) built with the Cirrus CLGD 54xx VGA Emulator support is
> vulnerable to a divide by zero issue. It could occur while copying VGA data
> when cirrus graphics mode was set to be VGA.
> 
> A privileged user inside guest could use this flaw to crash the Qemu process
> instance on the host, resulting in DoS.
> 
> https://lists.gnu.org/archive/html/qemu-devel/2016-12/msg00442.html
> https://bugzilla.redhat.com/show_bug.cgi?id=1334398
> http://git.qemu.org/?p=qemu.git;a=commit;h=4299b90e9ba9ce5ca9024572804ba751aa1a7e70

Use CVE-2016-9921 for the "'cirrus_get_bpp' returns zero(0), which
could lead to a divide by zero" issue.

Use CVE-2016-9922 for the "blit pitch values" issue.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJYSjxDAAoJEHb/MwWLVhi2KvEP+wd+MdU2D7RZ4WVw/3M+G17C
1D/KdgtB4D8i+Dx5AkCwFBFY85bZxMPCGe4gGxno/3MyzhxIik6AZ0jPOw2yOeI6
jCp2S1gwowMs7jFexlG4nEQy3b+rBbjbGEvL0TSDyIKhvFdi8g+izv5u//49NvRi
U1zNoHOzscgSlswSt+M8kYnKUDsfznisqjrCXc0F5cqksB9fcCf7bXWGjh5iAe4b
vl0uO+5zQgCafAduS/+EQtDJheW9ussbAoLlJvVAfRQo9Ue7l3iZhyT1ty5gf4AO
UH4kFYCuYMrQecbfYbKszS2ZZ4pF5hPXF9iXH+758n5ICyhk4h4q5dxwRtrEe7vC
rT9lww4agFnrV9++TiUtB8UyldibNgxidEAsWxnkHS8mHPOB3ClPlHgr0FOekEkp
hounmHanE8K/e66J79DESxX2GaFmLi1AbkF4x8ZeYF3I3dyjfEsNFEbPePwYp/1d
OBjjebavjtJef22GzQsaqWw9OXnkaqRYCKmH8PatX4msjzLCeBJ4jOKXTSExzFxs
KJiWx/5lXOb86VlrjVbTA/kJNxIjNHl3b1hBGz6rTrfkHeRs+W9OHgMBRNL4GHxP
04DmwoQrRIG6fuvhTEjHU87vzf527BoqlAn/EgSzIQWKzkfIqUGiiWypvwVIftfQ
r3ilsSTK4Ga5P42dkDYZ
=Q5bc
-----END PGP SIGNATURE-----
