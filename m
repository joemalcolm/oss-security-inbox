X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2008/09/09/7
Message-ID: <Pine.GSO.4.51.0809091031050.6699@faron.mitre.org>
Date: Tue, 9 Sep 2008 10:31:18 -0400 (EDT)
From: "Steven M. Christey" <coley@...us.mitre.org>
To: oss-security@...ts.openwall.com
Subject: Re: CVE request: MySQL empty bit-string literal server crash
Content-Type: text/plain; charset=utf-8


On Tue, 9 Sep 2008, Robert Buchholz wrote:

>   An empty bit-string literal (b'') caused a server crash. Now the value
>   is parsed as an empty bit value (which is treated as an empty string
>   in string context or 0 in numeric context). (Bug#35658)

Use CVE-2008-3963.

- Steve
