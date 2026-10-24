X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/24/8
Message-ID:  <LO0P123MB8786573996FD6397C8D58531C1632@LO0P123MB8786.GBRP123.PROD.OUTLOOK.COM>
Date: Sat, 24 Oct 2026 15:26:03 +0000
From: "Security @ Red Eagle Tech" <security@...eagle.tech>
To: "oss-security@...ts.openwall.com" <oss-security@...ts.openwall.com>
Subject: Re: openjpeg 2.4.0 through 2.5.4 and git master: heap buffer overflow in opj_dwt_encode_and_deinterleave_v() (reversible 5/3 forward DWT, encoder)
Content-Type: text/plain; charset=utf-8

Hello,

CVE-2026-107080 has been assigned to the issue reported here on
5 October 2026. MITRE's description:

  OpenJPEG 2.4.0 through 2.5.4, and git master through commit 8314119b,
  contains an out-of-bounds read and write in
  opj_dwt_encode_and_deinterleave_v() in src/lib/openjp2/dwt.c. This
  allows an attacker to cause a denial of service.

Nothing else has changed since the original post. The fix proposed
upstream has not been merged, master is still at 8314119b, and there is
no fixed release.

  https://github.com/uclouvain/openjpeg/issues/1673
  https://github.com/uclouvain/openjpeg/pull/1674
  https://www.openwall.com/lists/oss-security/2026/10/05/5

Regards,
Red Eagle Tech
