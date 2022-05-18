X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2022/05/18/1
Message-ID: <7d04fb57-182e-a779-dce2-1d1e42d24751@isc.org>
Date: Wed, 18 May 2022 15:38:36 +0100
From: ISC Security Officer <security-officer@....org>
To: oss-security@...ts.openwall.com
Subject: ISC has disclosed a vulnerability in BIND (CVE-2022-1183)
Content-Type: text/plain; charset=utf-8

On May 18 2022, we (Internet Systems Consortium) have disclosed a 
vulnerability affecting our BIND software:

CVE-2022-1183: Destroying a TLS session early triggers assertion failure

https://kb.isc.org/v1/docs/cve-2022-1183

New versions of BIND are available from https://www.isc.org/downloads

Operators and package maintainers who prefer to apply patches 
selectively can find individual vulnerability-specific patches in the 
"patches" subdirectory of the release directories for our affected 
stable release branch (9.18):

9.18: https://downloads.isc.org/isc/bind9/9.18.3/patches/

With the public announcement of this vulnerability, the embargo period 
is ended and any updated software packages that have been prepared may 
be released.

Cathy Almond
ISC Support

Download attachment "OpenPGP_signature" of type "application/pgp-signature" (496 bytes)
