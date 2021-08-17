X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2021/08/17/5
Message-ID: <o474q87p-558p-onp5-19q4-n235o9r12r@inai.de>
Date: Tue, 17 Aug 2021 19:30:21 +0200 (CEST)
From: Jan Engelhardt <jengelh@...i.de>
To: oss-security@...ts.openwall.com
Subject: Re: [OSSA-2021-004] Neutron: Linuxbridge ARP filter bypass on Netfilter platforms (CVE-2021-38598)
Content-Type: text/plain; charset=utf-8


On Tuesday 2021-08-17 17:17, Jeremy Stanley wrote:
>Description
>~~~~~~~~~~~
>Jake Yip with ARDC and Justin Mammarella with the University of
>Melbourne reported a vulnerability in Neutron's linuxbridge driver
>on newer Netfilter-based platforms (the successor to IPTables).

ip_tables is running atop the netfilter API, so.... it's
not an ordered set with predecessors and successors.
