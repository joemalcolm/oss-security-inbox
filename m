X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2015/01/18/12
Message-ID: <CA+8g5KFQM=OAiRWPv-UcR7hwiuJdZ87usuUkFbR09rq-W_h_+A@mail.gmail.com>
Date: Sun, 18 Jan 2015 11:43:14 -0800
From: Jim Meyering <jim@...ering.net>
To: oss-security@...ts.openwall.com
Subject: CVE request: grep heap buffer overrun
Content-Type: text/plain; charset=utf-8

Invoking grep with a carefully crafted combination of input and regexp
can cause a segfault and/or reading from uninitialized memory.

Here's how it evolved: http://bugs.gnu.org/19563
Here's the upstream fix:
http://git.sv.gnu.org/cgit/grep.git/commit/?id=83a95bd8c8561875b948cadd417c653dbe7ef2e2

This is particularly relevant for those who do not exec grep directly,
but rather embed parts of grep in another tool.
