X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2021/06/12/1
Message-ID: <e8c8eb3e-c971-2dd2-4337-66268b07e2d2@lehmi.de>
Date: Sat, 12 Jun 2021 11:03:51 +0200
From: Andreas Lehmkuehler <andreas@...mi.de>
To: oss-security@...ts.openwall.com
Subject: CVE-2021-31812: Apache PDFBox: A carefully crafted PDF file can trigger an infinite loop while loading the file
Content-Type: text/plain; charset=utf-8

Description:

A carefully crafted PDF file can trigger an infinite loop while loading the 
file. This issue affects Apache PDFBox version 2.0.23 and prior 2.0.x versions.

Mitigation:

This issue was fixed in 2.0.24. All users are recommended to upgrade to Apache 
PDFBox 2.0.24

Credit:

Apache PDFBox would like to thank Chaoyuan Peng for reporting this issue

References:
https://lists.apache.org/thread.html/ra2ab0ce69ce8aaff0773b8c1036438387ce004c2afc6f066626e205e%40%3Cusers.pdfbox.apache.org%3E
