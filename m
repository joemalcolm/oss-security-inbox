X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2020/06/22/1
Message-ID: <CAH9eYVoNqkBHGKfcsaZ1OGN+1DHiFwOr=MGtYn8ZTzGcVtsjyw@mail.gmail.com>
Date: Mon, 22 Jun 2020 10:55:28 -0400
From: Brian Demers <bdemers@...che.org>
To: oss-security@...ts.openwall.com
Subject: [CVE-2020-11989] Apache Shiro authentication bypass vulnerability
Content-Type: text/plain; charset=utf-8

[CVEID]:CVE-2020-11989
[PRODUCT]:Apache Shiro
[VERSION]:Apache Shiro 1.5.2 - 1.5.3
[PROBLEMTYPE]:Authentication Bypass by Primary Weakness
[REFERENCES]:
https://lists.apache.org/thread.html/r72815a124a119c450b86189767d06848e0d380b1795c6c511d54a675%40%3Cuser.shiro.apache.org%3E
[DESCRIPTION]:Apache Shiro before 1.5.3, when using Apache Shiro with
Spring dynamic controllers, a specially crafted request may cause
              an authentication bypass.

