X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1474" "Thursday" "20" "October" "2016" "01:28:09" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20161020052809.33BEA52E006@smtpvbsrv1.mitre.org>" "37" "[oss-security] Re: imagemagick: memory allocation failure in AcquireMagickMemory (memory.c)" nil nil nil "10" "2016102005:28:09" "[oss-security] Re: imagemagick: memory allocation failure in AcquireMagickMemory (memory.c)" (number mark "U       cve-assign@m Oct 20   37/1474  " thread-indent "\"[oss-security] Re: imagemagick: memory allocation failure in AcquireMagickMemory (memory.c)\"\n") "<1531511.3Otosgf4bN@blackgate>" ("<1531511.3Otosgf4bN@blackgate>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 32222 invoked by uid 550); 20 Oct 2016 05:28:22 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32193 invoked from network); 20 Oct 2016 05:28:21 -0000
From: cve-assign@mitre.org
To: ago@gentoo.org
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <1531511.3Otosgf4bN@blackgate>
Message-Id: <20161020052809.33BEA52E006@smtpvbsrv1.mitre.org>
Date: Thu, 20 Oct 2016 01:28:09 -0400 (EDT)
Subject: [oss-security] Re: imagemagick: memory allocation failure in AcquireMagickMemory (memory.c)

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> https://blogs.gentoo.org/ago/2016/10/17/imagemagick-memory-allocation-failure-in-acquiremagickmemory-memory-c/
> 
> AddressSanitizer failed to allocate 0x99ad49000 bytes of LargeMmapAllocator
> 
> #9 0x7fe5713b3b3b in AcquireMagickMemory ... ImageMagick-7.0.3-0/MagickCore/memory.c:460:10
> 
> https://github.com/ImageMagick/ImageMagick/commit/aea6c6507f55632829e6432f8177a084a57c9fcc

>> coders/rle.c

Use CVE-2016-8862.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJYCFVwAAoJEHb/MwWLVhi2mAsP/1YzJifP793z4w614RoTUA7b
jUkA+sQqO1K9QCLbLxu2WQim5i/NUQoA6PndyleVK/xUfBLoluPpgIc+goGJI8GX
IPIas9M30+donfLhxuwvK68rrxxk6F1ISvsSs7ib8vtcb6jPrIuwH1FJurnAwHas
XSEDMSnwO+kad7wKmshC+GnMwyEi5uj2lXjQxxFF0WiwCJB8Stso8ryPSEGFk6cX
3zzPDMlg7q1A76uAU002yKzkHwB6QeYG6QzrewBv0fDNyQ3VgLNQDPw7FTz8yFF2
5A1YfXb5kTodLjzO3ICg/bBGOBctuBueeIay9wNzBIjeXPIHn6cAJkqdHY3UiMSO
ZUXKwqOwbuvnV9HRVaMjraAzY/wGndn6h8lDqfYWs03AdnaL882+iNuDXh5vTX/u
iBT+YQKnx8SGykWOscRAW296WCgJ+xNTU+mEuk/SzjFzxNKRsyeTdcRiJOPzdPHx
5yxxeOdQd4FSYOUL+V29PuLcBivoNI8ZJ+qgsxornsBB/iw+dp9dRQ/i4jGBnamr
IDW0VSjSl09nO1cNKgnOFvcTGZFblWd2b/2FQPbDMrMUnMa4mKq+PkuDC+FAOh90
y5OliXNX9mYrmVUtg1SYxJzaQzbs+eumSOK473tyF3sncYldCyZqS3G1ye8F7+4X
zIVVHtg4Fh4pITfRPJlH
=4WTn
-----END PGP SIGNATURE-----
