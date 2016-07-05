X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2013" "Tuesday" "5" "July" "2016" "18:37:54" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160705223754.5B4EA332007@smtpvbsrv1.mitre.org>" "50" "[oss-security] Re: CVE Request: libgd: global out of bounds read when encoding gif from malformed input with gd2togif" nil nil nil "7" "2016070522:37:54" "[oss-security] Re: CVE Request: libgd: global out of bounds read when encoding gif from malformed input with gd2togif" (number mark "U       cve-assign@m Jul  5   50/2013  " thread-indent "\"[oss-security] Re: CVE Request: libgd: global out of bounds read when encoding gif from malformed input with gd2togif\"\n") "<20160705182522.GA26179@eldamar.local>" ("<20160705182522.GA26179@eldamar.local>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 29959 invoked by uid 550); 5 Jul 2016 22:38:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 29937 invoked from network); 5 Jul 2016 22:38:06 -0000
From: cve-assign@mitre.org
To: carnil@debian.org
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <20160705182522.GA26179@eldamar.local>
Message-Id: <20160705223754.5B4EA332007@smtpvbsrv1.mitre.org>
Date: Tue,  5 Jul 2016 18:37:54 -0400 (EDT)
Subject: [oss-security] Re: CVE Request: libgd: global out of bounds read when encoding gif from malformed input with gd2togif

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> The following (older) issue in libgd's issue tracker can be found,
> with possible security impact for applications using the libgd
> library. If I see it correctly this is not an issue in the gd2togif
> utility but in the library. It was reported upstream as:
> 
> https://github.com/libgd/libgd/issues/209
> 
> with the fix
> 
> https://github.com/libgd/libgd/commit/82b80dcb70a7ca8986125ff412bceddafc896842 (gd-2.2.0)

>> a global out of bounds read error in the function output (gd_gif_out.c), called by compress/GifEncode.
>> 
>> AddressSanitizer: global-buffer-overflow
>> READ of size 8

>> gif: avoid out-of-bound reads of masks array #209
>> 
>> When given invalid inputs, we might be fed the EOF marker before it is
>> actually the EOF. The gif logic assumes once it sees the EOF marker,
>> there won't be any more data, so it leaves the cur_bits index possibly
>> negative. So when we get more data, we underflow the masks array.

Use CVE-2016-6161.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJXfDSTAAoJEHb/MwWLVhi291kP/0mIr94IjDU3rIIqgymCSiz9
m5TKKASC1ICrj8uGWJevV0Vgis/XOLsnq89r7wPYBBpRn1h8HnSpHsjCCT6vlVUS
ljg0+xmu4jzA9mDWWqlXGJogovThM+nlDVRLLyb7yxEVV1XKZ5AzVoZ8oZBEkETW
hyDaCguy6vvcf5iWiwQU+cy2yM0b4RPs4w6yAgfgGx6I3C4WwDWQgDH+Ps8TS520
3Rf/3r+iPP6OVosoUIDBrJdUwXfmFtj4iMPi3akWHkj9r8Z0LoGRw5OOOWp6zPNS
ud1qzKTKFRSkoiFfSk2/5kn3mGm6NcOIr8liOI/KKSzLNPHk9LEWJXcp6Pm9AePD
vBO+YNpjgvttj4a9ipaiujfn1FL+bU0qKFOjp0/VXEwp5G14tvf/6TJ7SubDQ/gL
FDvM2AUNqRunHdvpy2vp6oX72dcbHlgAvwPAB0okKnhqHPafQkLcnpTUTD57WR0d
WyLC4Klxo3VgkspOVQQDXILZiWMsextr++qn3A9MTHoYfk2/hRCnJKvrHKMKyOFI
5+Oc0WwYY3o5gzcCqCY/RBIM5KT2c1bpLydNt7qEDVzwMl1qLOCQVmgKi0vyYeWl
mBCRCvnTOBLBNFil0t3YIobAGAsp15dskqugLXvLgphqyrPLyBsC/y1iM87OUs0j
O5Dvc/nzWsBu5TRltQAF
=pdF0
-----END PGP SIGNATURE-----
