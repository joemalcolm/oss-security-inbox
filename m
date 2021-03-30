X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2021/03/30/3
Message-ID: <CAC1dCwVtygiqzeRNDE9PRivbNEcrrKcLb0pWGzpHmp743gQ==Q@mail.gmail.com>
Date: Tue, 30 Mar 2021 08:19:51 -0400
From: Tim Allison <tallison@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2021-28657: Infinite loop in Apache Tika's MP3 parser
Content-Type: text/plain; charset=utf-8

Description:

A carefully crafted or corrupt file may trigger an infinite loop in
Tika's MP3Parser up to and including Tika 1.25. Apache Tika users
should upgrade to 1.26 or later.

Mitigation:

Users should upgrade to 1.26 or later.

Credit:

Apache Tika would like to thank Khaled Nassar for reporting this issue.
