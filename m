X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2022/06/28/2
Message-ID: <CAH9eYVqfx9RvVpg34arMu4unNkmzwAbtL2umS+41atCZAVyctw@mail.gmail.com>
Date: Tue, 28 Jun 2022 15:32:01 -0400
From: Brian Demers <bdemers@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2022-32532: Apache Shiro: Authentication Bypass Vulnerability
Content-Type: text/plain; charset=utf-8

Description:

Apache Shiro before 1.9.1, A RegexRequestMatcher can be misconfigured
to be bypassed on some servlet containers. Applications using
RegExPatternMatcher with `.` in the regular expression are possibly
vulnerable to an authorization bypass.

Credit:

Apache Shiro would like the thank 4ra1n for reporting this issue.

