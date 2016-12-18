X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1678" "Saturday" "17" "December" "2016" "20:13:50" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<63d294aeacf743cab535163f5212a6c7@imshyb02.MITRE.ORG>" "39" "[oss-security] Re: CVE request - DCMTK remote stack buffer overflow" nil nil nil "12" "2016121801:13:50" "[oss-security] Re: CVE request - DCMTK remote stack buffer overflow" (number mark "U       cve-assign@m Dec 17   39/1678  " thread-indent "\"[oss-security] Re: CVE request - DCMTK remote stack buffer overflow\"\n") "<CAAmRq0miNRCeRU8CPCmh1jUsmbW2VL4qqFVapKP3VGCSmoUtyQ@mail.gmail.com>" ("<CAAmRq0miNRCeRU8CPCmh1jUsmbW2VL4qqFVapKP3VGCSmoUtyQ@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 24255 invoked by uid 550); 18 Dec 2016 01:14:03 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24234 invoked from network); 18 Dec 2016 01:14:02 -0000
From: <cve-assign@mitre.org>
To: <gjoko@zeroscience.mk>
CC: <cve-assign@mitre.org>, <oss-security@lists.openwall.com>
In-Reply-To: <CAAmRq0miNRCeRU8CPCmh1jUsmbW2VL4qqFVapKP3VGCSmoUtyQ@mail.gmail.com>
Message-ID: <63d294aeacf743cab535163f5212a6c7@imshyb02.MITRE.ORG>
Date: Sat, 17 Dec 2016 20:13:50 -0500
MIME-Version: 1.0
Content-Type: text/plain
Subject: [oss-security] Re: CVE request - DCMTK remote stack buffer overflow

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> https://github.com/commontk/DCMTK/commit/1b6bb76073a0601b85e90d5b1a5f0c80efe9e7f8
> https://www.exploit-db.com/exploits/40928/
> http://zeroscience.mk/en/vulnerabilities/ZSL-2016-5384.php

We did not see an efficient way to represent
1b6bb76073a0601b85e90d5b1a5f0c80efe9e7f8 as a set of independent
exploitable vulnerabilities. Thus, we are assigning one CVE ID for all
of the vulnerability information in the above three references. The
information all seems to be related to mishandling of "wrong length of
ACSE data structures received over the network" (typically a long
string sent to TCP port 4242).

Use CVE-2015-8979.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJYVeJ4AAoJEHb/MwWLVhi2uoUQAKCfq7V0TdOe15kyeDbsVrOY
z/o9Mb5p1tsU9gcr90WNafuLVGtj1HLnN0++TVAq9DI8eEg+9cCpGVcEo3yhPvFz
ldAUi323dMGE5RI4/HaRSQVU2lie80Aa4fhClFcXNSC7P9Ou3ZDxvIDAgDS4Bhfe
iKz6jEimDSBZ5M9y2A2CDRZsxELiFCXIyHvXhzC1ivrgNoi1yw735ZW2renndZG4
OzFA/rZgW2gbCyMMnM2bHidYpk1hvdJSBLlnJlGLZ1hvGYqFiOw9rq6InDff8Uym
s8srNHb2kylODnnUYl39mUlBGId50wRbi4gWR47tUOizOZP0+HShTgGKdeoHWei3
/jKt6YVsWPnbL4bGZsKCI688uvf57lW3mked6WJWGHRTt/wujzKBYRRfkV0erOy+
UK7g0y4WQxOxSqWvAwNq6RPQaVs2UFE+a+Yzt4ao3MYb12Y7p5aGVcxasmOCnhbz
RbaVBPU/m7lgOM4tT6rjwJSrHsm1OIdvAaeT5sAnV1VoBIPua4kqmhL8SE9IEiV9
RlhXWlg2zfId9E9i603XIoffWlNcVbQ4e6fs9nysTWy5fBtMBsTeAtH4R+ByPLst
eZeoyldoU/+ujAxLavc1ibNQG60/7iKnlSDtFE/dhb35ziSblECD/3inlEABC4Vk
K1DJz5YISme9Xbpp6RFS
=4GGa
-----END PGP SIGNATURE-----
