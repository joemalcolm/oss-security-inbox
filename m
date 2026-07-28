X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/28/7
Message-ID: <178522993114.396132.2184181685454485129@notcve.org>
Date: Tue, 28 Jul 2026 11:12:11 +0200
From: advisories@...cve.org
To: oss-security@...ts.openwall.com
Subject: [NotCVE-2026-0009] NitroShare Desktop 0.3.4 Path Traversal Allows LAN-Adjacent Arbitrary File Write
Content-Type: text/plain; charset=utf-8

----------------------------------------------------------------------------
NotCVE Advisory — NotCVE-2026-0009
----------------------------------------------------------------------------

[-] Summary:
NitroShare Desktop 0.3.4 contains a path traversal vulnerability in its LAN
file transfer receive path. The transfer service is reachable from the local
network on TCP port 40818 and processes incoming transfer metadata without
authentication in the reported default configuration. A LAN-adjacent attacker
can write attacker-controlled file content outside the intended download
directory. CVSS:3.1 7.1 (AV:A/AC:L/PR:N/UI:N/S:U/C:N/I:H/A:L).

[-] Affected:
NitroShare Desktop, versions through 0.3.4 (application).
No fixed version is currently verified.

[-] Technical Description:
When receiving a transfer, NitroShare parses sender-controlled JSON item
metadata, creates a receive-side filesystem item from that metadata, opens
the item for writing, and writes subsequent binary packet content to it.

In the filesystem plugin, the received item name is used as a relative
filename and combined with the configured transfer directory using
QDir::cleanPath(root + QDir::separator() + mRelativeFilename), without a
visible check that the resolved path remains inside the transfer directory.

An attacker on the same local network can send a crafted transfer item name
containing relative path traversal sequences such as ../, causing NitroShare
to write received file content outside the intended download directory. The
write is limited to locations accessible to the NitroShare process user. On
Windows, writing to the current user's Startup folder can result in code
execution when the affected user next logs in.

Weaknesses:
CWE-22: Improper Limitation of a Pathname to a Restricted Directory
CWE-35: Path Traversal: '.../...//'
CAPEC-126: Path Traversal

A proof-of-concept is published in the researcher's repository (see
References).

[-] Timeline:
[12/04/2026] - CVE ID requested through the MITRE CVE request form; request
               ignored, no CVE assigned.
[22/07/2026] - NotCVE ID reserved.
[23/07/2026] - Published as NotCVE-2026-0009.

[-] Credit:
Discovered by Christopher Duram (https://github.com/cduram).

[-] Full Details and Updates:
https://notcve.org/notcve/NotCVE-2026-0009

[-] References:
https://github.com/cduram/NotCVE-2026-0009
https://github.com/cduram/NotCVE-2026-0009/blob/main/poc_path_traversal.py
https://github.com/nitroshare/nitroshare-desktop
https://github.com/nitroshare/nitroshare-desktop/blob/master/libnitroshare/src/transfer/transfer.cpp
https://github.com/nitroshare/nitroshare-desktop/blob/master/plugins/filesystem/file.cpp
https://github.com/nitroshare/nitroshare-desktop/blob/master/plugins/filesystem/filehandler.cpp

[-] About NotCVE:
NotCVE (https://notcve.org) assigns public, timestamped NotCVE IDs to
vulnerabilities not acknowledged by vendors. Vendor will not assign a CVE?
Request a NotCVE: https://notcve.org/form/ · Contributors:
https://notcve.org/hall/
