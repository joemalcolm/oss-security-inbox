X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1626" "Monday" "12" "December" "2016" "18:34:07" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<b3d257e8a29d4b1794dce5fb4da89638@imshyb02.MITRE.ORG>" "40" "[oss-security] Re: CVE Request: Potential DoS in Crypto++ ASN.1 parser" nil nil nil "12" "2016121223:34:07" "[oss-security] Re: CVE Request: Potential DoS in Crypto++ ASN.1 parser" (number mark "U       cve-assign@m Dec 12   40/1626  " thread-indent "\"[oss-security] Re: CVE Request: Potential DoS in Crypto++ ASN.1 parser\"\n") "<CAH8yC8n1PaaH0Pby5NGSsXZ41g8=y_1Y_QeKTFcGyAKOh=CumQ@mail.gmail.com>" ("<CAH8yC8n1PaaH0Pby5NGSsXZ41g8=y_1Y_QeKTFcGyAKOh=CumQ@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9935 invoked by uid 550); 12 Dec 2016 23:34:20 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9864 invoked from network); 12 Dec 2016 23:34:19 -0000
From: <cve-assign@mitre.org>
To: <noloader@gmail.com>
CC: <cve-assign@mitre.org>, <oss-security@lists.openwall.com>,
	<ngg@tresorit.com>, <koczka@tresorit.com>, <jean-pierre.muench@web.de>,
	<mouse008@gmail.com>
In-Reply-To: <CAH8yC8n1PaaH0Pby5NGSsXZ41g8=y_1Y_QeKTFcGyAKOh=CumQ@mail.gmail.com>
Message-ID: <b3d257e8a29d4b1794dce5fb4da89638@imshyb02.MITRE.ORG>
Date: Mon, 12 Dec 2016 18:34:07 -0500
MIME-Version: 1.0
Content-Type: text/plain
Subject: [oss-security] Re: CVE Request: Potential DoS in Crypto++ ASN.1 parser

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> When Crypto++ library parses an ASN.1 data value, the library
> allocates for the content octets based on the length octets. Later, if
> there's too few or too little content octets, the library throws a
> BERDecodeErr exception. The memory for the content octets will be
> zeroized (even if unused), which could take a long time on a large
> allocation.

> https://groups.google.com/forum/#!msg/cryptopp-users/fEQ8jWg_K8g/qOLHGIDICwAJ
> https://github.com/weidai11/cryptopp/issues/346

>> several BERDecode* functions
>> bug was found using "honggfuzz"

Use CVE-2016-9939.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJYTzNzAAoJEHb/MwWLVhi2eccQALN5rY/Oya5G4EuRxjZyZyKt
IcuPVecHhTCDl4yM4nZ7r1/+6yV8VCI4RglDOKnjSPhm8+Hf/UrinX6E/4uch3Vs
RHMWCLprB8W0mabXau6y8//C6uiwvZ6cZjn3oth1hF6akLMtdbgZ9Frhadmrh+rl
ITHbVoZd7fya8VWNNTnDoA2jdQmB8JU+/MjfZ4NqjIAs+rULhlzXFesxKV+Z++Yl
J38WhIOnQ4gCftHNQKabFosULdM6VuQikoIVfHtbvJIn8Q8nMWuc0yfUMgtpxPpw
Mmagdht7R7EoWYy4vaqznqdJ40p428Qa1HKhC/XXG+CPqRyDaqPhrHX0UyjdhYFc
LCrSGaVSs4v4WMkCEk+Bz9/xuclx7YI9Ss+JJMcQW3CgrDV5HIS+ILOTA+A/s+N7
Izn7jbR3mbsNgJ0PkGQUVZ0GbRcJyUT4bB+Y9ayjDNOpLPstnUpEZFRkSGXGKUmd
Ig3WTZyovrk8AO3dR5rTmsal66nwKOzstZpNKoGT21a2o8MC+wp1ZCEwu1dK7Vm1
mltJzfcAyitMOkxIKxURbCqPcK4BcFI7/YUDKW7HMGiPR1s4bDG8PKZ/t4gZsl7X
3O00PQVOEsfMxs9HcRfrzFLpCiAhmDQ3v6FYgYfm8S72+U2RCGO0ASxs3lLfzDTC
OHCW0YL4p6J40zb3Why4
=l+lt
-----END PGP SIGNATURE-----
