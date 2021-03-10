X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2021/03/10/2
Message-ID: <CADDz7Zt75GX5nwYzvYhU81iCSsWq+1DotfC0LoTwntk_gp6RrA@mail.gmail.com>
Date: Tue, 9 Mar 2021 22:48:43 -0800
From: Will Glass-Husain <wglass@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2020-13959: Velocity Tools XSS Vulnerability
Content-Type: text/plain; charset=utf-8

Description:

The default error page for VelocityView reflects back the vm file that
was entered as part of the URL.  An attacker can set an XSS payload
file as this vm file in the URL which results in this payload being
executed.

XSS vulnerabilities allow attackers to execute arbitrary JavaScript in
the context of the attacked website and the attacked user. This can be
abused to steal session cookies, perform requests in the name of the
victim or for phishing attacks.

Mitigation:

Applications based on Apache Velocity Tools should upgrade to version
3.1.  This version escapes the reflected text on the default error
page, preventing potential javascript execution.

Credit:

This issue was reported and a patch was submitted by Jackson Henry,
member of Sakura Samurai.
