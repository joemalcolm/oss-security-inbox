X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1517" "Saturday" "15" "October" "2016" "22:55:31" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20161016025531.7B7C142E008@smtpvbsrv1.mitre.org>" "36" "[oss-security] Re: graphicsmagick: memory allocation failure in MagickMalloc (memory.c)" nil nil nil "10" "2016101602:55:31" "[oss-security] Re: graphicsmagick: memory allocation failure in MagickMalloc (memory.c)" (number mark "U       cve-assign@m Oct 15   36/1517  " thread-indent "\"[oss-security] Re: graphicsmagick: memory allocation failure in MagickMalloc (memory.c)\"\n") "<8583684.bKZSpiVIs8@arcadia>" ("<8583684.bKZSpiVIs8@arcadia>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1989 invoked by uid 550); 16 Oct 2016 03:40:55 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1954 invoked from network); 16 Oct 2016 03:40:53 -0000
From: cve-assign@mitre.org
To: ago@gentoo.org
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <8583684.bKZSpiVIs8@arcadia>
Message-Id: <20161016025531.7B7C142E008@smtpvbsrv1.mitre.org>
Date: Sat, 15 Oct 2016 22:55:31 -0400 (EDT)
Subject: [oss-security] Re: graphicsmagick: memory allocation failure in MagickMalloc (memory.c)

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> https://blogs.gentoo.org/ago/2016/09/15/graphicsmagick-memory-allocation-failure-in-magickmalloc-memory-c/
> 
> AddressSanitizer failed to allocate 0x7fff03000 bytes of LargeMmapAllocator
> MagickMalloc ... GraphicsMagick-1.3.25/magick/memory.c:156:10
> MagickMallocArray ... GraphicsMagick-1.3.25/magick/memory.c:347
> ReadSGIImage ... GraphicsMagick-1.3.25/coders/sgi.c:498:19
> 
> http://hg.code.sf.net/p/graphicsmagick/code/rev/c53725cb5449

Use CVE-2016-8684.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJYAudwAAoJEHb/MwWLVhi2L20QALRIKnrluB4Mbj2R6hqtDsYa
teAcD9UacPWhRtgKG1kLDCPKFcSS+Ci06fMbySoiEtaL6PbgxapAC+MCOGlDO4fY
RnrYlwpl5fFDf6vsdNwt7/oTL4JBn/6BKpSPyC0EpRzs3EYB5pNYlxmj3GJCFDD8
NAIP/hMk2UF8c/pf7WUV4rosJatBvJB1EhebpCKTqIjIA5vGx5tO+WfHTfDwmnwg
xqbSV3JMawld57Ru6ZHv/oRbBHwtLV15OhwBsnMs/lmtNERkcIXWF4zHSY/0F2lY
GGstrL3sjvK3BjTG+wFv1r+lOCGKYPW/blraOHc2VnCEWuGZ1tRqGliiNWFKoYzG
xEwZoAP7g1GaIOmSWd4FjvkZ/X3nBxr1LlTLr3qjK/WcHa1ZmCCbmutU08Frg8Ul
BoZCpAjTMJP82jZUejoVNn3EmweZORtuTn2dfKRGBZnTezT+J67ZLN1ON1XOt+pE
B9YKKSTVmmcWzJrYbf67C74V3KT4FHeQ7QEJkyTzpym87CDMOAKliVgrLg0Zq8bt
QNPqrmjR5ZaKP2FGAL2bTYRrc8nYKtFDjeTgdRcWXJN3aQiwCM0bTHHz/DArjVoY
TSEIROVopNepqXz/CwF2m0obx9arw+rPvhTie6Nl7JVApsWHLSn1t6mW7amBeXAN
PUyNYRlhb/laUYo7Z3RM
=y1zP
-----END PGP SIGNATURE-----
