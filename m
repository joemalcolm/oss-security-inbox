X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/22/3
Message-ID: <20261022184450.71292dec@atlas-11>
Date: Thu, 22 Oct 2026 18:44:50 +0100
From: Denis Ovsienko <denis@...ienko.info>
To: oss-security@...ts.openwall.com
Subject: one more reason to update libpcap to at least 1.10.7
Content-Type: text/plain; charset=utf-8

To whom it may concern,

libpcap 1.10.7, which was released more than a month ago, among other
things has fixed CVE-2026-6554 (an infinite loop).  At the release time
the only known attack vector was a rather uncommon configuration and
the CVE scored CVSS 5.5 (medium).

Later it turned out that another attack vector exists and can trigger
the same vulnerability using a more common configuration.
Specifically, when a vulnerable version of libpcap compiles a filter
expression that uses the "protochain" primitive (support for which is
conditional, but enabled by default), the resulting filter program can
enter an infinite loop whilst processing a crafted packet from a
network or a file.

This is the same exact problem, so the new attack vector does not
require a separate solution.  However, CVE-2026-6554 now scores CVSS 7.5
(high), so package maintainers that have not yet updated libpcap have
one more reason to do so.

Cheers.

-- 
    Denis Ovsienko
