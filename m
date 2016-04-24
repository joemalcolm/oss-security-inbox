X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2016/04/24/3
Message-ID: <CACn5sdTyH2a6dbw4JDvUGHK39AzhWNxfrTLpaftkjDYmQjAu9A@mail.gmail.com>
Date: Sun, 24 Apr 2016 10:44:39 +0200
From: Gustavo Grieco <gustavo.grieco@...il.com>
To: oss-security@...ts.openwall.com
Subject: CVE Request: jq: stack exhaustion using jv_dump_term() function
Content-Type: text/plain; charset=utf-8

Hi,

A crash caused by stack exhaustion parsing a JSON was found. It affects, at
least version 1.5 as well as the last git revision. Technical details and a
reproducer are available here:

https://github.com/stedolan/jq/issues/1136

This crash was found by QuickFuzz working with Radamsa (that caused the
extreme mutation)

Regards,
Gustavo.

