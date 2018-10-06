X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2018/10/06/2
Message-ID: <12424b12-53c8-d4e4-4b93-8bcbc83488ec@apache.org>
Date: Sat, 6 Oct 2018 11:00:28 +0200
From: Andreas Lehmkuehler <lehmi@...che.org>
To: announce@...che.org, security@...che.org, oss-security@...ts.openwall.com, bugtraq@...urityfocus.com
Subject: [UPDATE][CVE-2018-11797] DoS vulnerability in Apache PDFBox parser
Content-Type: text/plain; charset=utf-8

[CVE-2018-11797] DoS vulnerability in Apache PDFBox parser

Severity: Important

Vendor:
The Apache Software Foundation

Versions Affected:
Apache PDFBox <= 1.8.15
Apache PDFBox <= 2.0.11
Earlier, unsupported Apache PDFBox versions may be affected as well

Description:
A carefully crafted PDF file can trigger an extremely long
running computation when parsing the page tree.

Mitigation:
Upgrade to Apache PDFBox 1.8.16 respectively 2.0.12

Credit:
This issue was discovered by Shawn Rasheed and Jens Dietrich

Website:
https://pdfbox.apache.org/

Download:
https://pdfbox.apache.org/download.cgi
https://www.apache.org/dist/pdfbox/2.0.12/RELEASE-NOTES.txt
https://www.apache.org/dist/pdfbox/1.8.16/RELEASE-NOTES.txt
