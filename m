X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1415" "Monday" "14" "November" "2016" "13:34:55" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<bc666ad7d07148c9989b5e2b083442fc@imshyb02.MITRE.ORG>" "36" "[oss-security] Re: CVE Request: libtiff: read outside buffer in _TIFFPrintField()" nil nil nil "11" "2016111418:34:55" "[oss-security] Re: CVE Request: libtiff: read outside buffer in _TIFFPrintField()" (number mark "U       cve-assign@m Nov 14   36/1415  " thread-indent "\"[oss-security] Re: CVE Request: libtiff: read outside buffer in _TIFFPrintField()\"\n") "<CANMVOuzgr=caMRG=US40q-yfmA5mGH7OakJMvrj4r1g_B3yGiQ@mail.gmail.com>" ("<CANMVOuzgr=caMRG=US40q-yfmA5mGH7OakJMvrj4r1g_B3yGiQ@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 12200 invoked by uid 550); 14 Nov 2016 18:35:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 12180 invoked from network); 14 Nov 2016 18:35:07 -0000
From: <cve-assign@mitre.org>
To: <brian.carpenter@gmail.com>
CC: <cve-assign@mitre.org>, <oss-security@lists.openwall.com>
In-Reply-To: <CANMVOuzgr=caMRG=US40q-yfmA5mGH7OakJMvrj4r1g_B3yGiQ@mail.gmail.com>
Message-ID: <bc666ad7d07148c9989b5e2b083442fc@imshyb02.MITRE.ORG>
Date: Mon, 14 Nov 2016 13:34:55 -0500
MIME-Version: 1.0
Content-Type: text/plain
Subject: [oss-security] Re: CVE Request: libtiff: read outside buffer in _TIFFPrintField()

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> http://bugzilla.maptools.org/show_bug.cgi?id=2590

> AddressSanitizer: SEGV on unknown address 0x7faf9b2d2000

>> * libtiff/tif_dirread.c: in TIFFFetchNormalTag(), make sure that
>> values of tags with TIFF_SETGET_C16_ASCII / TIFF_SETGET_C32_ASCII
>> access are null terminated, to avoid potential read outside buffer
>> in _TIFFPrintField().

Use CVE-2016-9297.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJYKgMmAAoJEHb/MwWLVhi2PioP/jm0R6nmT1TNWfIenph7XvVp
rrxXbx0spg1BFsDDvP44kzFYvn4EAH+mCW8HyKpV3dGGLL6PO22cOivt15K0EKKc
ImyY2E3j8PKR5lzdHcLYGjiBTOT+psZhZtEhaVkELjpgPq4mJqbmbdMyjYMdseav
+x9r2vptrj6zf875gY23FsEEXEWyF+wML15jViClSmrUYcTZQtR52Sr6IZrUIlDR
rw4sr7l6M2H92CIrFqGl1ltF23BIjR75vMlxabze244XFoOIWo8cBcI04ncKJ404
3hDzdeBHLzJFltoKygb8dhGdWF0xfonAG4P6Mt04yFLDBsI1M0Sial6kcrWj2XSh
Br27MgPKH9gIOLAdUmaUFkO+gu92DEZGUMOtvBJHjRrZ2M1USrIH+bVBAJubdZGb
L2Y6rVLHhC0pfIA21It4f1JjTsb3PODlSO/mNd6ZF/E37/MDEWoel7BCGBvBnuLg
NmcxWKDw3kPsxnHhujrHoNHemnOP9lGsCbT8mMX+yCYphUc2+OO4inwAWO2N+gGT
wFIJRl7TkQUzKNsvUdU0L1+sHjA5T1SKWjrEABfuEAlcUNmLm9AnSfkVMZDbIphm
765VnjGxzU9dQCcC2L3ZrjbLVEwDMgdXPzJ5ncV9+kmklmFSkQSTBsOD2vgggq5p
rkvWKAOzbWcHI90QV0lL
=9TM7
-----END PGP SIGNATURE-----
