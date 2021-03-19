X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2021/03/19/9
Message-ID: <080e4f99-db4b-fe12-937f-a908f01f14dc@apache.org>
Date: Fri, 19 Mar 2021 16:30:27 +0100
From: Andreas Lehmkuehler <lehmi@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2021-27807: Apache PDFBox: A carefully crafted PDF file can trigger an infinite loop while loading the file
Content-Type: text/plain; charset=utf-8

Description:

A carefully crafted PDF file can trigger an infinite loop while loading the 
file. This issue affects Apache PDFBox Apache PDFBox version 2.0.22 and prior 
2.0.x versions.

Credit:

Apache PDFBox would like to thank Fabian Meumertzheim for reporting this issue

