X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2011/06/06/25
Message-ID: <20110606220106.GD19803@dhcp-25-225.brq.redhat.com>
Date: Tue, 7 Jun 2011 00:01:06 +0200
From: Petr Matousek <pmatouse@...hat.com>
To: oss-security@...ts.openwall.com
Cc: coley@...us.mitre.org
Subject: CVE-2011-1576 kernel: net: Fix memory leak/corruption on VLAN GRO_DROP
Content-Type: text/plain; charset=utf-8

The function napi_reuse_skb is only meant to be used for packets merged
by GRO. Using it on the VLAN path will lead to memory leaks/corruption.

The fix for CVE-2011-1478 unveiled this issue. Note, this is not a
CVE-2011-1478 regression.

This issue does not affect the upstream kernel as the code path in
question is no longer reachable due to changes in the VLAN subsystem.

https://bugzilla.redhat.com/CVE-2011-1576

Thanks,
-- 
Petr Matousek / Red Hat Security Response Team
