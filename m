X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2021/05/04/1
Message-ID: <0a7efdf7-1e3b-5738-e8ad-50fa9cb7ae16@redhat.com>
Date: Tue, 4 May 2021 10:42:40 +0530
From: Huzaifa Sidhpurwala <huzaifas@...hat.com>
To: oss-security@...ts.openwall.com
Subject: hivex CVE-2021-3504
Content-Type: text/plain; charset=utf-8

Hello,

A flaw was found in the hivex library. It is caused due to a lack of
bounds check within the hivex_open function. An attacker could input a
specially crafted Windows Registry (hive) file which would cause hivex
to read memory beyond its normal bounds or cause the program to crash.
The highest threat from this vulnerability is to system availability.

This issue has been patched upstream at:
https://listman.redhat.com/archives/libguestfs/2021-May/msg00013.html

Reference:
https://bugzilla.redhat.com/show_bug.cgi?id=1949687



-- 
Huzaifa Sidhpurwala / Red Hat Product Security

