X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2021/12/20/4
Message-ID: <30b33714-e372-c864-5111-94b8bf062b80@apache.org>
Date: Mon, 20 Dec 2021 10:36:28 +0000
From: Stefan Eissing <icing@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2021-44790: Apache HTTP Server: Possible buffer overflow when parsing multipart content in mod_lua of Apache HTTP Server 2.4.51 and earlier 
Content-Type: text/plain; charset=utf-8

Severity: high

Description:

A carefully crafted request body can cause a buffer overflow in the mod_lua multipart parser (r:parsebody() called from Lua scripts).
The Apache httpd team is not aware of an exploit for the vulnerabilty though it might be possible to craft one.

This issue affects Apache HTTP Server 2.4.51 and earlier.

Credit:

Chamal
Anonymous working with Trend Micro Zero Day Initiative

