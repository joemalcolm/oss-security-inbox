X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/25/6
Message-ID: <CADOAh9deMMAcd2GdaQ-+BZpaxni+s5hv2Xny3g+pso3auOviUQ@mail.gmail.com>
Date: Wed, 25 Nov 2026 14:40:17 +0530
From: VMware PSIRT <vmware.psirt@...adcom.com>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-123918 - Denial-of-service vulnerability in open-vm-tools
Content-Type: text/plain; charset=utf-8

CVE-2026-123918: open-vm-tools contains a denial-of-service vulnerability
in VGAuth service. The severity of this issue is in the Moderate severity
range with a maximum CVSSv3 base score of 5.5
(CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:N/I:N/A:H). A malicious local actor
with non-administrative privileges on a guest VM may exploit this issue to
exhaust the memory of the VGAuth service, resulting in a denial-of-service
condition.

We would like to thank Lian for reporting this issue to us.

The following patches can be used to apply the security fix to previous
open-vm-tools releases.

For releases 13.1.0, 13.0.10, 13.0.5, 13.0.0, 12.5.0, 12.4.5, 12.4.0,
12.3.5, 12.3.0, 12.2.5, 12.2.0, 12.1.5, 12.1.0, 12.0.5, 12.0.0, 11.3.5,
11.3.0
CVE-2026-123918-1130-1310-VGAuth-updates.patch

For releases 11.2.5, 11.2.0, 11.1.5, 11.1.0, 11.0.5, 11.0.0
CVE-2026-123918-1100-1125-VGAuth-updates.patch

The patches have been tested against the above open-vm-tools releases. Each
applies cleanly with:

git am        for a git repository.
patch -p2     in the top directory of an open-vm-tools source tree.
==============================================================

Kind Regards,
Praveen Singh | Broadcom PSIRT
VMware Cloud Foundation Division
Email: vmware.psirt@...adcom.com

