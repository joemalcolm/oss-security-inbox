X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2022/10/18/2
Message-ID: <ff5b6e5e9d40b5cdb6034c7f4ba2e5551d7389e6.camel@debian.org>
Date: Mon, 17 Oct 2022 23:57:45 +0200
From: Markus Koschany <apo@...ian.org>
To: oss-security@...ts.openwall.com
Subject: Re: CVE-2022-34169: Apache Xalan Java XSLT library is vulnerable to an integer truncation issue when processing malicious XSLT stylesheets
Content-Type: text/plain; charset=utf-8

Hi,

it appears the underlying bug is in Apache Commons bcel and not in Apache Xalan
itself. See

https://bugs.debian.org/1015860

and

https://github.com/apache/commons-bcel/pull/147

https://github.com/apache/commons-bcel/commit/f3267cbcc900f80851d561bdd16b239d936947f5





Download attachment "signature.asc" of type "application/pgp-signature" (964 bytes)
