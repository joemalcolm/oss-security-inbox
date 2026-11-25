X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/25/5
Message-ID: <CADOAh9dsBwOsqbHNpPUWikkAXx8Yq5PjuP_SoCk0AqRVmRJGYA@mail.gmail.com>
Date: Wed, 25 Nov 2026 14:39:19 +0530
From: VMware PSIRT <vmware.psirt@...adcom.com>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-123917 - Denial-of-service vulnerability in open-vm-tools
Content-Type: text/plain; charset=utf-8

CVE-2026-123917: open-vm-tools contains a denial-of-service vulnerability
in VGAuth service. The severity of this issue is in the Moderate severity
range with a maximum CVSSv3 base score of 5.5
(CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:N/I:N/A:H). A malicious local actor
with non-administrative privileges on a guest VM may exploit this issue to
crash the VGAuth service resulting in a denial-of-service condition.

We would like to thank G'iyosiddin Muxammadiyev for reporting this issue to
us.

The following patch provided can be used to apply the security fix to
previous open-vm-tools releases.

For all open-vm-tools releases 11.0.0 through 13.1.0
CVE-2026-123917-VGAuth-updates.patch

Prerequisite for releases 11.0.0 through 12.5.0

For the releases listed below, the CVE-2025-22247(
https://github.com/vmware/open-vm-tools/tree/CVE-2025-22247.patch) security
fix must be applied first, and then the patch above.

For releases 12.5.0, 12.4.5, 12.4.0, 12.3.5, 12.3.0, apply
https://github.com/vmware/open-vm-tools/blob/CVE-2025-22247.patch/CVE-2025-22247-1230-1250-VGAuth-updates.patch

For releases 12.2.5, 12.2.0, 12.1.5, 12.1.0, 12.0.5, 12.0.0, 11.3.5,
11.3.0, 11.2.5, 11.2.0, 11.1.5, 11.1.0, 11.0.5, 11.0.0, apply
https://github.com/vmware/open-vm-tools/blob/CVE-2025-22247.patch/CVE-2025-22247-1100-1225-VGAuth-updates.patch

Releases 12.5.2 and later (12.5.2, 12.5.4, 13.0.0, 13.0.5, 13.0.10, 13.1.0)
already contain CVE-2025-22247 and need only the patch above.

The patches have been tested against the above open-vm-tools releases. Each
applies cleanly with:

git am        for a git repository.
patch -p2     in the top directory of an open-vm-tools source tree.
==============================================================

Kind Regards,

Praveen Singh | Broadcom PSIRT

VMware Cloud Foundation Division

Email: vmware.psirt@...adcom.com

