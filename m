X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/06/22/7
Message-ID: <c18a3c95-3e6d-4e71-8c46-06ad82e13191@oracle.com>
Date: Mon, 22 Jun 2026 13:01:15 -0700
From: Alan Coopersmith <alan.coopersmith@...cle.com>
To: oss-security@...ts.openwall.com
Subject: Common PKCS#7 / CMS parsing issues in OpenSSL, WolfSSL, Bouncy Castle, & GnuPG
Content-Type: text/plain; charset=utf-8

https://blog.calif.io/p/how-to-format-a-ciphertext discusses how the issue
that OpenSSL disclosed on June 9 as CVE-2026-34182 similarly affected the
PKCS#7 / CMS parsing implementations from WolfSSL, Bouncy Castle, & GnuPG.

The common failure is accepting the sender provided length for the
authentication tag, and not enforcing the minimum length specified
in the RFC - allowing an attacker to specify a one-byte tag length
and then use brute force to determine which of the 256 possible
values matches the first byte of the actual tag.

The OpenSSL CVE-2026-34182 was already covered on oss-security in:
https://www.openwall.com/lists/oss-security/2026/06/09/15

The WolfSSL CVE-2026-5500 was also already sent here in:
https://www.openwall.com/lists/oss-security/2026/04/14/6

https://x.com/calif_io/status/2068786334844715142 notes:
> Both Bouncy Castle and GnuPG have acknowledged and fixed the reported issues.
> 
> CVE-2026-12802 will be published with Bouncy Castle 1.85.
> 
> GnuPG fix: 
> https://github.com/gpg/gnupg/commit/4c7e68cf3d335328821bdbb70db309a60d0e4fd4

-- 
         -Alan Coopersmith-                 alan.coopersmith@...cle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris

