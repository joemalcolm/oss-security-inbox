X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2020/04/09/1
Message-ID: <9255c8f6-1d98-fd80-b6b1-bb53d8ca8dd6@redhat.com>
Date: Thu, 9 Apr 2020 14:57:58 +0530
From: Huzaifa Sidhpurwala <huzaifas@...hat.com>
To: oss-security@...ts.openwall.com
Subject: libssh - CVE-2020-1730
Content-Type: text/plain; charset=utf-8

Hi All,

A vulnerability was found in libssh through version 0.8.0, where a
malicious client or server could crash the counterpart implemented with
libssh AES-CTR ciphers are used and don't get fully initialized. It will
crash when it tries to cleanup the AES-CTR ciphers when closing the
connection.

Reference:
https://www.libssh.org/security/advisories/CVE-2020-1730.txt



-- 
Huzaifa Sidhpurwala / Red Hat Product Security

