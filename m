X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/22/12
Message-ID: <fcbfd1cc24b552a7ded9b36f9e6bba35a681de0f.camel@verbuecheln.ch>
Date: Wed, 22 Jul 2026 13:18:27 +0200
From: Stephan Verbücheln <stephan@...buecheln.ch>
To: oss-security@...ts.openwall.com
Subject: Re: 432 Linux kernel CVEs
Content-Type: text/plain; charset=utf-8

When you run an LTS kernel on a SoC and compile only the required
kernel modules, you should basically not see many changes when
updating, since most bug fixes will be in drivers which you are
probably not using to begin with.

This is different with a universal kernel compiled by a major
distribution to hopefully run on every laptop available.

Regards
