X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2023/07/05/2
Message-ID: <ZKWjO36sTTiRedC3@quatroqueijos.cascardo.eti.br>
Date: Wed, 5 Jul 2023 14:07:07 -0300
From: Thadeu Lima de Souza Cascardo <cascardo@...onical.com>
To: oss-security@...ts.openwall.com
Subject: CVE-2023-31248 - Linux kernel nf_tables UAF when using nft_chain_lookup_byid
Content-Type: text/plain; charset=utf-8

It was discovered that it was possible to refer to a deleted nf_tables
chain when using nft_chain_lookup_byid, leading to a potential
use-after-free.

Mingi Cho of Theori working with Trend Micro's Zero Day Initiative
discovered that this vulnerability could be exploited for Local Privilege
Escalation. This has been reported as ZDI-CAN-20717, and assigned
CVE-2023-31248.

Exploiting it requires CAP_NET_ADMIN in any user or network namespace.

This bug was introduced by commit 837830a4b439 ("netfilter: nf_tables: add
NFTA_RULE_CHAIN_ID attribute"), which is present since v5.9-rc1. It was not
backported to any upstream LTS kernel.

A fix have been sent to netfilter-devel@...r.kernel.org and is at
https://lore.kernel.org/netfilter-devel/20230705121627.GC19489@breakpoint.cc/T/.
