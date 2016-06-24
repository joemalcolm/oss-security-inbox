X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2000" "Friday" "24" "June" "2016" "14:04:41" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160624180441.197D272E3E4@smtpvbsrv1.mitre.org>" "49" "[oss-security] Re: Out of bounds read and signed integer overflow in libarchive" nil nil nil "6" "2016062418:04:41" "[oss-security] Re: Out of bounds read and signed integer overflow in libarchive" (number mark "U       cve-assign@m Jun 24   49/2000  " thread-indent "\"[oss-security] Re: Out of bounds read and signed integer overflow in libarchive\"\n") "<20160623155847.2236edb8@pc1>" ("<20160623155847.2236edb8@pc1>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 26523 invoked by uid 550); 24 Jun 2016 18:04:59 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26505 invoked from network); 24 Jun 2016 18:04:58 -0000
From: cve-assign@mitre.org
To: hanno@hboeck.de
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <20160623155847.2236edb8@pc1>
Message-Id: <20160624180441.197D272E3E4@smtpvbsrv1.mitre.org>
Date: Fri, 24 Jun 2016 14:04:41 -0400 (EDT)
Subject: [oss-security] Re: Out of bounds read and signed integer overflow in libarchive

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> https://blog.fuzzing-project.org/48-Out-of-bounds-read-and-signed-integer-overflow-in-libarchive.html

> https://groups.google.com/forum/message/raw?msg=libarchive-discuss/sui01WaM3ic/WhAgI4ylAwAJ

>> Libarchive 3.2.1 is a security follow-up to the recent libarchive 3.2.0 release. 
>> Special thanks to ...
>> Hanno Boeck

> https://github.com/libarchive/libarchive/issues/717#event-697151157
> Signed integer overflow in ISO parser

>> ubsan error:
>> libarchive/archive_read_support_format_iso9660.c:1094:32: runtime error:
>> signed integer overflow: 8388631 * 2048 cannot be represented in type 'int'

>> https://github.com/libarchive/libarchive/commit/3ad08e01b4d253c66ae56414886089684155af22

>> Issue 717: Fix integer overflow when computing location of volume descriptor
>> 
>> The multiplication here defaulted to 'int' but calculations
>> of file positions should always use int64_t.

Use CVE-2016-5844 for this Issue 717 vulnerability.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJXbXWYAAoJEHb/MwWLVhi2eMAQAKmIYX47UBBcOsh7ir2AvNL2
wAtlGAKek6Yl8Vvrm2pjoUManrejmNAhd21YGn8a7o9Saep9HRG6Cgq6nwaqw+oJ
12Xbjt4GvVsqjed7xSStxB67yP62GiJQZk336zOcdbV5l+r5+1Dacr/TTeGViYlQ
nb2dAbkRK5+ns/RwUbxE1p0EUM2GSTxBPD0oQgtDAv7vVjFNvIFX7mRJYcvCxERY
ye927HivZLe7rUDBIZJQAep9Yatj+fraZLhbeR3DFJPy85Q/sXGLbQ6H45Mw2U8h
zsyt9uoLeDMp/jyrtcsXHAJ6dF/Ud7K88glkBJG4nRZVU1K0l9D1Hd7l1F5R30Sd
6heRhVt9E9mnUOeAHDu81tfpJaG70waGQ+iYMt05t/tQ/hQs/9gTBey+uhLBaePb
e9KB7O73CicYTtME/g12TUzsnUW0ybgNNxPp+jOkFYci2KpSaOirPswgUa04FGeo
uqFRjfoFJXNZF2q95ZwL4aJLk2mhN4cr+SvkPg5hIEKnkH01EH2VYYssrhsRI5Pb
kFnU+dNKAn1mM5VsKuuwyVjsvsVv1lCioZ/mg00+vbTRqnMQ8A7IEc5dcygw4aeI
RWtvernPlIcBsZ9I9YMxknnuZTWQ8H0uJpKcdfnHSCCtG8JRrlBLosAav7EOLW8P
ryURB61OPZjxkhE+8zyU
=+FS6
-----END PGP SIGNATURE-----
