X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2023/04/24/1
Message-ID: <CAGUWgD8jWfhdA5+o_BJN-Mgh0+4x7yYPDcjb+Bve14b9Hxnp3A@mail.gmail.com>
Date: Mon, 24 Apr 2023 16:43:29 +0300
From: Georgi Guninski <gguninski@...il.com>
To: oss-security@...ts.openwall.com
Subject: Real world vulnerabilities of CWE-1077: Floating Point Comparison with Incorrect Operator?
Content-Type: text/plain; charset=utf-8

Are there real world examples of vulnerabilities of this:

https://cwe.mitre.org/data/definitions/1077.html
CWE-1077: Floating Point Comparison with Incorrect Operator

This issue can prevent the product from running reliably. If the
relevant code is reachable by an attacker, then this reliability
problem might introduce a vulnerability.

One simple example in python:

>>> A=(0.1+0.2)+0.3;B=0.1+(0.2+0.3);(A==B,A-B,A,B)
(False, 1.1102230246251565e-16, 0.6000000000000001, 0.6)
