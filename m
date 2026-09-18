X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/18/17
Message-ID: <9657febd-b9ad-4044-9724-bb66e310d0a4@oracle.com>
Date: Fri, 18 Sep 2026 16:57:13 -0700
From: Alan Coopersmith <alan.coopersmith@...cle.com>
To: oss-security@...ts.openwall.com
Subject: Vulnerabilities in libheif and libde265
Content-Type: text/plain; charset=utf-8

https://heif-heist.com/ seems more promotional than informational at this
point, but it does point out there are a number of exploitable vulnerabilities
in "native C/C++ decoders such as libheif and libde265".

https://github.com/strukturag/libheif/security and
https://github.com/strukturag/libde265/security both list quite a few new
advisories for each in the past few months, so anyone using these codecs
should check their versions.  The latest security fix releases for these are
currently:

https://github.com/strukturag/libheif/releases/tag/v1.23.4
https://github.com/strukturag/libde265/releases/tag/v1.1.2

The HEIF Heist page also recommends:
 > Given the complexity of the ISO base media file format and the pace of decoder
 > updates, future memory-safety flaws are likely. Production architectures
 > should disable untrusted HEIF/AVIF decoding where it is not needed, or isolate
 > image-processing pipelines inside hardened, ephemeral sandboxes.
 >
 > Separately, if you self-host Discourse or Next.js, ensure you are on the
 > latest release and follow their security advisories.

-- 
         -Alan Coopersmith-                 alan.coopersmith@...cle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris

