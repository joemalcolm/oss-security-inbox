X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2022/03/14/4
Message-ID: <1c308233-7941-7a34-a1b7-5221e48be8e0@apache.org>
Date: Mon, 14 Mar 2022 10:09:26 +0000
From: Stefan Eissing <icing@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2022-22719: Apache HTTP Server: mod_lua Use of uninitialized value of in r:parsebody 
Content-Type: text/plain; charset=utf-8

Severity: moderate

Description:

A carefully crafted request body can cause a read to a random memory area which could cause the process to crash.

This issue affects Apache HTTP Server 2.4.52 and earlier.

Credit:

Chamal De Silva

