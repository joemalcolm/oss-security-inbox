X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/09/18
Message-Id: <523800B9-66D3-42CE-9F81-6580F4803E4A@oxide.computer>
Date: Fri, 9 Oct 2026 15:23:43 -0400
From: Dan McDonald <danmcd@...decomputer.com>
To: oss-security@...ts.openwall.com
Subject: Multiple CVEs for illumos and distros: door server processes
Content-Type: text/plain; charset=utf-8

Per https://illumos.topicbox.com/groups/developer/T3b859664594b7762-Maa764f8552227c7080bcaabc/cve-2026-104112-to-cve-2026-104117-denial-of-service-and-missing-authorization-in-door-servers illumos would like to report the following CVEs:

CVE-2026-104112 18494 nscd: unbounded file descriptor allocation

CVE-2026-104113 ipmgmtd double-frees caller credentials on authorization failure (OmniOS and SmartOS only, no general illumos issue)

CVE-2026-104114 18495 Empty nwamd Door payload allows Denial of Service

CVE-2026-104115 18496 Unauthenticated Stack Overflow in reparsed

CVE-2026-104116 18493 Missing door_ucred Check in zonestatd

CVE-2026-104117 18492 Missing Authorization in ipmgmtd Allows IPMP Reconfiguration

These were all discovered by Robert French and James Wynne III.

Thank you,
Dan McDonald, on behalf of illumos security

