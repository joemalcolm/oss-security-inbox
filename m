X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2021/03/19/10
Message-ID: <7bca690f-e807-8447-d624-45476e9e8711@apache.org>
Date: Fri, 19 Mar 2021 16:32:39 +0100
From: Andreas Lehmkuehler <lehmi@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2021-27906: Apache PDFBox: A carefully crafted PDF file can trigger an OutOfMemory-Exception while loading the file
Content-Type: text/plain; charset=utf-8


Description:

A carefully crafted PDF file can trigger an OutOfMemory-Exception while loading 
the file. This issue affects Apache PDFBox Apache PDFBox version 2.0.22 and 
prior 2.0.x versions.

This issue is being tracked as PDFBOX-5112

Credit:

Apache PDFBox would like to thank Fabian Meumertzheim for reporting this issue
