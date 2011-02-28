X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2011/02/28/6
Message-ID: <AANLkTikv-wp3eViKJk1wLk1WJHS0=09PRNA7SV4uTSP=@mail.gmail.com>
Date: Mon, 28 Feb 2011 15:26:41 -0500
From: Dan Rosenberg <dan.j.rosenberg@...il.com>
To: oss-security@...ts.openwall.com
Subject: CVE request: FreeBSD/OS X crontab information leakage
Content-Type: text/plain; charset=utf-8

Details here:
http://marc.info/?l=full-disclosure&m=129891323028897&w=2

There are three leaks, each of which amounts to a minor DAC bypass.

1. Leakage of file/directory existence via stat() calls (e.g.
determining if a file exists regardless of search permissions on
directories)

2. Leakage of directory existence via realpath()

3. Arbitrary MD5 comparison (e.g. ability to determine if any two
files have identical MD5 hashes, regardless of read permissions on
those files)

No preference for single vs. multiple CVEs.

-Dan
