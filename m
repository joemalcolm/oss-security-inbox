X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1522" "Friday" "11" "November" "2016" "08:26:36" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<0dcff8c6bc2044eaba39e0ce01a96f1c@imshyb02.MITRE.ORG>" "38" "[oss-security] Re: CVE Request: libtiff: heap buffer overflow/read outside of array" nil nil nil "11" "2016111113:26:36" "[oss-security] Re: CVE Request: libtiff: heap buffer overflow/read outside of array" (number mark "U       cve-assign@m Nov 11   38/1522  " thread-indent "\"[oss-security] Re: CVE Request: libtiff: heap buffer overflow/read outside of array\"\n") "<CANMVOuwRRcEG2Vs0DTck_kbUjiNBQwGD6G24kj5mb0wGDUEGgw@mail.gmail.com>" ("<CANMVOuwRRcEG2Vs0DTck_kbUjiNBQwGD6G24kj5mb0wGDUEGgw@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 27985 invoked by uid 550); 11 Nov 2016 13:26:48 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 27963 invoked from network); 11 Nov 2016 13:26:48 -0000
From: <cve-assign@mitre.org>
To: <brian.carpenter@gmail.com>
CC: <cve-assign@mitre.org>, <oss-security@lists.openwall.com>
In-Reply-To: <CANMVOuwRRcEG2Vs0DTck_kbUjiNBQwGD6G24kj5mb0wGDUEGgw@mail.gmail.com>
Message-ID: <0dcff8c6bc2044eaba39e0ce01a96f1c@imshyb02.MITRE.ORG>
Date: Fri, 11 Nov 2016 08:26:36 -0500
MIME-Version: 1.0
Content-Type: text/plain
Subject: [oss-security] Re: CVE Request: libtiff: heap buffer overflow/read outside of array

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> http://bugzilla.maptools.org/show_bug.cgi?id=2587

>> AddressSanitizer: heap-buffer-overflow
>> READ of size 8

>> * libtiff/tif_strip.c: make TIFFNumberOfStrips() return the
>>   td->td_nstrips value when it is non-zero, instead of recomputing it.
>>   This is needed in TIFF_STRIPCHOP mode where td_nstrips is modified.
>>   Fixes a read outside of array in tiffsplit
>>   (or other utilities using TIFFNumberOfStrips()).

Use CVE-2016-9273 for this buffer over-read.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJYJcZ7AAoJEHb/MwWLVhi2mP0P/0XMEbn4EhOPpKIfmdMrL8kx
sekTNRxIvZ8oy4MzDghg+CdeZu54XCWA6BlWWFRu5yoBmarcfTaYu4DfPA+xvCV8
CC1Nv9y6oJ08wBDMG2uPROig7/yDxPBhcbsGWrTOJ0zvxnU1FpmPDPOEMKmLX539
ByenyTqcZ/NXNm3D7C/Z5JNgT4ZIFcdvlYyvHGTLga8DK67wszbFR3QUS2Pq6WgD
bYjDT2mAn+KZEaMvsPpO/2r1jv52Dl9q577yjfIygMR/hqM81I/PgX5virIx8RWq
s1G3y217v0qSycFX0nMxllw3XLwzOEVcYaRD7ei+vvQH3noWm+i7fVaHI635ypaF
kqWxNt6pL09sVXlCeE/K1D64vIwpeYob/sUxNGJzpg1ZtHunFvS6P2/MjKuKSxq/
2NOB5JpC3PKepNNYO2YEeLrdBqBl/k2vj0j7AkQi8tH1gh75EZvDAVs/IWPu8so6
L7z5d39umgn51tjvw7za06vVGi+Raf9CcpXLTIwbllPTo1rsA7nzDk5I8xXNQuPz
VQG+CK12j1szR7r2Mv9h0A4BJVvmQr8SLbXrNTljxLlcjKNwgsjPtWjLcYKPo1Sn
n+QgTY0MnMj7/sKb75nKzBEN1rwwjZqpvEWgVpcpYd9dvarIt6kAzk02UhPc9E4l
IJSYMwtncLobdcF7IPNw
=jHbm
-----END PGP SIGNATURE-----
