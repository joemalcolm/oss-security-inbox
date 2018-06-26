X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2018/06/26/6
Message-Id: <1093581530041612@web14o.yandex.ru>
Date: Tue, 26 Jun 2018 22:33:32 +0300
From: James Sirota <jsirota@...che.org>
To: oss-security@...ts.openwall.com, security@...ron.apache.org, james sirota <jsirota@...tonworks.com>, dev <dev@...ron.apache.org>
Subject: CVE-2018-1273 fixed in Metron 0.5.0
Content-Type: text/plain; charset=utf-8


The following CVE was fixed in Metron 0.5.0:

[CVEID]: CVE-2018-1273
[PRODUCT]:Spring Data Commons
[VERSION]: versions prior to 1.13 to 1.13.10, 2.0 to 2.0.5, and older
[PROBLEMTYPE]:remote code execution attack
[REFERENCES]: https://pivotal.io/security/cve-2018-1273
[DESCRIPTION]:

Spring Data Commons, versions prior to 1.13 to 1.13.10, 2.0 to 2.0.5, and older unsupported versions, contain a property binder vulnerability caused by improper neutralization of special elements. An unauthenticated remote malicious user (or attacker) can supply specially crafted request parameters against Spring Data REST backed HTTP resources or using Spring Data’s projection-based request payload binding hat can lead to a remote code execution attack.

