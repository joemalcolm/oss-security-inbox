X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2010/07/28/2
Message-ID: <AANLkTi=Zx5+m7TJ8urf0JNg9=X9LcYsL-STi7_9xZVzG@mail.gmail.com>
Date: Wed, 28 Jul 2010 11:02:03 -0400
From: Anthon Pang <anthon.pang@...il.com>
To: oss-security <oss-security@...ts.openwall.com>
Subject: CVE Request: Piwik < 0.6.4 Arbitrary file inclusion
Content-Type: text/plain; charset=utf-8

An arbitrary file inclusion vulnerability is fixed by the latest Piwik
0.6.4 release.  The advisory is (or will be) published here:
http://piwik.org/blog/2010/07/piwik-0-6-4-security-advisory/

Description:

Piwik versions 0.6 through 0.6.3 are vulnerable to arbitrary, remote
file inclusion using a directory traversal pattern in a crafted
request for a data renderer.

This vulnerability is rated critical, and Piwik users are strongly
encouraged to update to the latest version of Piwik.

The Piwik project and community thanks Enrico Razza for reporting the issue.
