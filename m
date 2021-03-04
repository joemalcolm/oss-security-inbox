X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2021/03/04/3
Message-ID: <CALSkbjrEnXHaaq-QqvZN-JZ_8BWP3CLzZs10yZG8hWza4NMZpg@mail.gmail.com>
Date: Thu, 4 Mar 2021 15:08:16 +0000
From: daniel gaspar <danielvazgaspar@...il.com>
To: oss-security@...ts.openwall.com
Subject: CVE-2021-27907: Apache Superset stored XSS on Dashboard markdown
Content-Type: text/plain; charset=utf-8

Description:

Apache Superset  up to and including 0.38.0 allowed the creation of a
Markdown component on a Dashboard page for describing chart's related
information. Abusing this functionality, a malicious user could inject
javascript code executing unwanted action in the context of the user's
browser. The javascript code will be automatically executed (Stored
XSS) when a legitimate user surfs on the dashboard page. The
vulnerability is exploitable creating a “div” section and embedding in
it a “svg” element with javascript code.

Credit:

This issue was reported by Gianluca Veltri and Dario Castrogiovanni of Cuebiq

