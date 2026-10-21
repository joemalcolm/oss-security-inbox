X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/21/10
Message-ID: <dccf228a-84b4-4eb5-bbd5-665e3681257c@powerdns.com>
Date: Wed, 21 Oct 2026 13:02:46 +0200
From: Miod Vallat <miod.vallat@...erdns.com>
To: oss-security@...ts.openwall.com
Subject: PowerDNS Security Advisory 2026-13: Crafted packet using compression pointers can lead to denial of service
Content-Type: text/plain; charset=utf-8

PowerDNS Security Advisory 2026-13: Crafted packet using compression 
pointers can lead to denial of service

   * CVE: CVE-2026-73206
   * Date: 2026-10-21T00:00:00+01:00
   * Discovery date: 2026-07-10T00:00:00+01:00
   * Affects: PowerDNS Authoritative Server up to and including 4.9.17,
     5.0.7 and 5.1.4
   * Not affected: PowerDNS Authoritative Server 4.9.18, 5.0.8 and 5.1.5
   * Severity: High
   * Impact: Denial of Service
   * Exploit: A crafted DNS packet can cause a denial of service
     decompressing the DNS names in the packet
   * Risk of system compromise: None
   * Solution: Upgrade to patched version
   * CWE: CWE-770
   * CVSS: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N/A:H
   * Last affected: 4.9.17,5.0.7,5.1.4
   * First fixed: 4.9.18,5.0.8,5.1.5
   * Internal ID: 537
   * External Reporter: Yuheng Zhang et al.

A malicious server can send a crafted reply that leads to high resource
utilization decompression name pointers in DNS packets. This is a
multi-vendor issue. Multiple DNS vendors are releasing fixed version of
their products.

CVSS Score: 7.5

The remedy is: upgrade to a patched version. The patched version
imposes limits on the number of decompression done for a single name
and for a DNS packet as a whole.

We would like to thank Yuheng Zhang, Tsinghua University & Jingxian
Technology Co., Ltd.; Zihan Zhang, Shanghai Jiao Tong University &
Jingxian Technology Co., Ltd.; Jianjun Chen, Tsinghua University; Zihan
Wang, Z.AI Co., Ltd.; and Kaiwen Shen, CloudItera for reporting this
issue and coordinating release with other vendors.

