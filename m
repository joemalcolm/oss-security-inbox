X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2023/10/27/1
Message-ID: <82C70BE4-B22A-45C5-A80A-ECD7F934D93D@vmware.com>
Date: Fri, 27 Oct 2023 03:43:27 +0000
From: VMware Security Response Center <security@...are.com>
To: "oss-security@...ts.openwall.com" <oss-security@...ts.openwall.com>
Subject: CVE-2023-34058 - SAML Token Signature Bypass in open-vm-tools
Content-Type: text/plain; charset=utf-8

Description

==============================================================

CVE-2023-34058: open-vm-tools contains a SAML token signature bypass vulnerability. VMware has evaluated the severity of this issue to be in the Important severity range with a maximum CVSSv3 base score of 7.5 - CVSS:3.1/AV:A/AC:H/PR:N/UI:N/S:U/C:H/I:H/A:H



Known Attack Vectors

==============================================================

A malicious actor that has been granted Guest Operation Privileges in a target virtual machine may be able to elevate their privileges if that target virtual machine has been assigned a more privileged Guest Alias.



Notes

==============================================================

Please note that while the description and known attack vectors are very similar to CVE-2023-20900, CVE-2023-34058 has a different root cause that must be addressed.



Remediation

==============================================================

The following patch is provided for all open-vm-tools releases 11.0.0 through 12.3.0



https://github.com/vmware/open-vm-tools/blob/CVE-2023-34058.patch/CVE-2023-34058.patch


The patches have been tested against the above open-vm-tools releases.  Each applies cleanly with:



git am for a git repository.

patch -p2 in the top directory of an open-vm-tools source tree.



--------------

Edward Hawkins

Staff-2 Technical Program Manager

security@...are.com<mailto:security@...are.com>

