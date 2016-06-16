X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1493" "Thursday" "16" "June" "2016" "07:29:36" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160616112936.69EE16C0570@smtpvmsrv1.mitre.org>" "42" "[oss-security] Re: CVE Request: heap overflow in Python zipimport module" nil nil nil "6" "2016061611:29:36" "[oss-security] Re: CVE Request: heap overflow in Python zipimport module" (number mark "U       cve-assign@m Jun 16   42/1493  " thread-indent "\"[oss-security] Re: CVE Request: heap overflow in Python zipimport module\"\n") "<CAGoFzNedN+OD6JymsdZxO7UrLqctV0dbzAu-HkMqZFsKAEcsOg@mail.gmail.com>" ("<CAGoFzNedN+OD6JymsdZxO7UrLqctV0dbzAu-HkMqZFsKAEcsOg@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 15748 invoked by uid 550); 16 Jun 2016 11:29:49 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15727 invoked from network); 16 Jun 2016 11:29:48 -0000
From: cve-assign@mitre.org
To: wuninsu@gmail.com
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com, Yeongjin.jang@gatech.edu
In-Reply-To: <CAGoFzNedN+OD6JymsdZxO7UrLqctV0dbzAu-HkMqZFsKAEcsOg@mail.gmail.com>
Message-Id: <20160616112936.69EE16C0570@smtpvmsrv1.mitre.org>
Date: Thu, 16 Jun 2016 07:29:36 -0400 (EDT)
Subject: [oss-security] Re: CVE Request: heap overflow in Python zipimport module

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> https://bugs.python.org/issue26171

>> Issue #26171: Fix possible integer overflow and heap corruption in
>> zipimporter.get_data().

>> Modules/zipimport.c

> In Python zipimport module,
> if compress != 0, then bytes_size = data_size + 1
> data_size is not sanitized, so if data_size = -1,
> then it overflows and becomes 0.
> 
> In that case, python allocates small heap, but after that in freed, it
> overflows heap.

Use CVE-2016-5636.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJXYox2AAoJEHb/MwWLVhi2x50QAJ+aesIW4gTI+XVrFayusyC0
G4WiCKzHxZMQy33b8nQKjtGiRAlyzOFNUY7xQ6l5AwtB28gJzYG9b5IxFcY3psPB
cRAQ0j1lOOFdsLFslkhu9CegJynWIljvWM2S3qlI7PEddstCO9OD9Zb2Jsyidb2g
Yp/0hdOjEs+WZ8IyDOG0S3BgXcCgaAeviQjixfWrGkxMAA1yzjuUZQXzINXGdiYn
+p4ysB9o1walp2Yyq1dmk7zx3Sgj3T8Puu9Ir5ol/QzGRSYONwD8pE7M+ueDLQxH
c+HMpMPxBq3Rm6EbTKWukHplXRtmV5tCbqjIwkRtZIDPG9ktJO92LenXKMdFsemj
/O+1HoX7osq6q37EouqNhJR8/jPzqRh5t6v4Njit9/lKCz3KwizfW5i3O/6+KT+8
j1KPj+vr9fvOlRgDSYdSsjKr5d2SlrmQpUGmS1c+ER9XGMU3dPfDI2wqFhM/S8Vs
RR7XJhr4D/eVEH7daanTbuP8bEXDnASZfTns5x3MVbejgp38MTZBGcgX6fpfoWOa
JbaR9dFQWAx6u9rxyhuKDEwW1QM659GF+cww41nBErmdbSBsDVnGxfy4jXv9ieKO
rpW/re2MYama/wkmxN5y+/6b771/RPCRxQbVQBP1rMj5dxQebfDrwHE8frzc/DD2
6Kv46gZBWtKJQnHPkgON
=0doi
-----END PGP SIGNATURE-----
