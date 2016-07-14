X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1898" "Thursday" "14" "July" "2016" "14:16:02" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160714181602.59527B2E012@smtpvbsrv1.mitre.org>" "48" "[oss-security] Re: CVE request: Information leak in LibTIFF" nil nil nil "7" "2016071418:16:02" "[oss-security] Re: CVE request: Information leak in LibTIFF" (number mark "U       cve-assign@m Jul 14   48/1898  " thread-indent "\"[oss-security] Re: CVE request: Information leak in LibTIFF\"\n") "<CACG6YS0Q_DcgZ+N9_X1PcdTZ45hkVDe4JYEF-hMaL92b2wh0rw@mail.gmail.com>" ("<CACG6YS0Q_DcgZ+N9_X1PcdTZ45hkVDe4JYEF-hMaL92b2wh0rw@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 2019 invoked by uid 550); 14 Jul 2016 18:16:14 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1994 invoked from network); 14 Jul 2016 18:16:13 -0000
From: cve-assign@mitre.org
To: idolf@google.com
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <CACG6YS0Q_DcgZ+N9_X1PcdTZ45hkVDe4JYEF-hMaL92b2wh0rw@mail.gmail.com>
Message-Id: <20160714181602.59527B2E012@smtpvbsrv1.mitre.org>
Date: Thu, 14 Jul 2016 14:16:02 -0400 (EDT)
Subject: [oss-security] Re: CVE request: Information leak in LibTIFF

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> I would like to request a CVE number for an information leak in LibTIFF,
> specifically in the file libtiff/tif_read.c.
> 
> The vulnerability allows an attacker to specify a negative index into the
> file-content buffer and copy data from that position until the end of the
> buffer.
> 
> This will allow an attacker to crash the process by accessing unmapped
> memory and (depending on how LibTIFF is used) might also allow an attacker
> to leak sensitive information.
> 
> The issue is fixed in CVS HEAD with the commit:
> 
> revision 1.49
> date: 2016-07-10 20:00:21 +0200;  author: erouault;
> commitid: YhOZoKv5OA9gNNdz;
> * libtiff/tif_read.c: Fix out-of-bounds read on
> memory-mapped files in TIFFReadRawStrip1() and TIFFReadRawTile1()
> when stripoffset is beyond tmsize_t max value (reported by
> Mathias Svensson)

Use CVE-2016-6223.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJXh9YEAAoJEHb/MwWLVhi2NZIP/AlJLMTfzlrz/si4ZZdxud9U
yJTUt7t/zzzH7oLx0rzZb+hivMp6Z5P5Cqhn8eVzTj+hOMFTaZek+sBaf034WKxN
qZyaVdu4VHs1gpJNJpP7t0toXdUmNMh2CKsx7PUEfrM73o+VeiwaWgG8UvuJO5vd
28sspVqmhtfOmsPtx6mnIabnHtZG0N4TE/FUVKF9mRp73xlxhxB3gkwAzAXy5sRh
R23M0qU5v5HkryvUvKoA0sQ3H6dgMDMqUE/Gq6B67t2Lm98E0DLPnayCn5x/Jkzf
IrNGI8e2yRjqggeXKO/SRfmZSR/1qM43vGuHeYbgn0ZOJPPrFIv9+BY9uN6fIfpH
ox5x2GXFVMp79Rwnea2ywy0Z6mCBLvmFCs8In2B4GxoVJ+MUVAuhyFUqctgrZ81L
5uphXH8KDhKiY5k/qa6T9j2eNz13Por3UvK0irEixsgaUQzEz3wNUy8mW56L0mB0
4sCZVlH5zt5/eIDHRWxHrbBR3Oo27R21ONVP2MJTthcVthCiLnMvZEcNOOp7//MR
1FWYp3qsPrc858j7ZWtyXvpROscv/ivN7V6xzPvjYal+qVs4RPexwJ3/pUn63fms
mEZdDlbzR7ecLPXRHksx99FgT9R/ETgugd1oYKwgCo+zVgCHGrJH3XvhQQsHgCK+
A/ao2iuPSnQu1eG2aUSi
=Bszf
-----END PGP SIGNATURE-----
