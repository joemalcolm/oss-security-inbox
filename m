X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/07/31/3
Message-ID: <20140731051228.GA6391@lorien.valinor.li>
Date: Thu, 31 Jul 2014 07:12:28 +0200
From: Salvatore Bonaccorso <carnil@...ian.org>
To: OSS Security Mailinglist <oss-security@...ts.openwall.com>
Cc: Steve Kemp <steve@...ve.org.uk>, CVE Assignments MITRE <cve-assign@...re.org>
Subject: CVE Request: XML-DT: Insecure use of temporary files
Content-Type: text/plain; charset=utf-8

Hi

Steve Kemp reported to to the Debian BTS in [1] that the XML-DT Perl
module distribution contains mkdtskel and mkxmltype using insecurely
temporary files using the pid of the process in the temporary file
name.

 [1] https://bugs.debian.org/756566

Could a CVE be assigned for this issue?

Regards,
Salvatore
