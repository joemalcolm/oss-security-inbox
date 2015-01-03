X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2015/01/03/5
Message-ID: <20150103064426.GA31730@eldamar.local>
Date: Sat, 3 Jan 2015 07:44:26 +0100
From: Salvatore Bonaccorso <carnil@...ian.org>
To: OSS Security Mailinglist <oss-security@...ts.openwall.com>
Cc: CVE Assignments MITRE <cve-assign@...re.org>, Jakub Wilk <jwilk@...ian.org>
Subject: CVE Request: arj: symlink directory traversal and directory traversal via //multiple/leading/slash
Content-Type: text/plain; charset=utf-8

Hi

Jakub Wilk reported two directory traversal issues with arj, an
archiver for .arj files. There are two issues reported as separate
bugs to the Debian BTS:

arj: symlink directory traversal:
 - https://bugs.debian.org/774434

arj: directory traversal via //multiple/leading/slash:
 - https://bugs.debian.org/774435

Reproducers for both issues are also attached bot the corresponding
bugs.

Could you assign CVE(s) for these isues? (Are two ore one appropriate?
It is the same reporter and similar kind of issue).

Regards,
Salvatore
