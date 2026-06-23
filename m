X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/06/23/2
Message-ID: <802f53bf-75a9-4347-9879-cf19d170b15d@proton.me>
Date: Tue, 23 Jun 2026 09:05:06 +0000
From: GregD <gregdurys.security@...ton.me>
To: oss-security@...ts.openwall.com
Subject: pwnlift: symlink following and TOCTOU in privileged upload handler allow arbitrary file write as root
Content-Type: text/plain; charset=utf-8

pwnlift [1] is a small .NET/Blazor file upload server. When deployed
with elevated privileges, its upload handler allows a local user to
write arbitrary files as root via symlink following (CWE-59) and a
TOCTOU race condition in the initial fix (CWE-367).

All exploitation testing was performed in a local testbed. The known
affected downstream lab deployment has been mitigated by removing the
privileged sudo entry. The upstream follow-up fix has been merged.

No CVE has been assigned. The downstream deployment operator (a
registered CNA) declined on scope grounds. GitHub rejected the GHSA
CVE request twice as "appears to be a test." A MITRE request was submitted
on 15 June 2026 and is pending.


Identifiers
-----------
GHSA: GHSA-2v7v-rhpw-m9w4
CVE:  pending / requested (MITRE, 15 June 2026)


Affected project
----------------
Repository:       https://github.com/rasta-mouse/pwnlift
Language/runtime: .NET / Blazor (ASP.NET Core, Kestrel)
Affected component: pwnlift/Components/Pages/Home.razor


Affected versions
-----------------
Tested affected commit: 211f2b3 (2025-08-29)
Initial remediation:    e3eddac (addresses CWE-59, does not address CWE-367)
Fixed commit:           d7a95449d9ee1ea09ec1529286685f6187afbbed


Severity
--------
CVSS 3.1 Base Score: 7.8 (High)
Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:H/I:H/A:H


Summary
-------
The upload handler constructs its destination path from the caller's
working directory (Directory.GetCurrentDirectory()) and writes uploaded
files without validating symlinks, canonicalising paths, or sanitising
filenames. When pwnlift runs as root via sudo without a cwd= directive,
the caller's working directory is preserved, giving the attacker control
over the Uploads directory resolution.

Original issue (CWE-59): an Uploads symlink pointing at the target
directory (e.g. /etc/sudoers.d) causes the elevated process to write
uploaded files into the symlink target. Directory.Exists returns true
for symlinks, so CreateDirectory is skipped.

TOCTOU bypass (CWE-367): the initial fix added a ReparsePoint check
on Uploads, filename sanitisation via Path.GetFileName, and a
StartsWith path containment check. Because the destination is still
derived from the caller's working directory, the attacker controls
the parent directory. A race script alternates Uploads between a real
directory (passes the ReparsePoint check) and a symlink to the target
(catches the subsequent File.WriteAllBytesAsync). The StartsWith
containment check has a separate weakness: prefix matching without a
trailing separator means /tmp/Uploads-evil passes
StartsWith("/tmp/Uploads").


Remediation
-----------
Replace Directory.GetCurrentDirectory() with AppContext.BaseDirectory
to anchor the upload root to the application install directory. Enforce
path containment with Path.GetRelativePath rather than StartsWith.
Retain the ReparsePoint check as defence in depth. Ensure the
application directory and Uploads are root-owned and not writable by
lower-privileged users. If Uploads already exists as a symlink, remove
and recreate it as a real directory before applying ownership changes.


Disclosure timeline
-------------------
2026-04-30  Privileged deployment observed during normal lab usage
2026-05-07  Initial contact with upstream maintainer
2026-05-08  Reproduced end-to-end in local testbed; reported to
             upstream maintainer and downstream deployment operator
2026-05-12  Initial fix committed upstream (e3eddac) with reporter credit
2026-05-19  Downstream operator declined CVE on CNA scope grounds
2026-05-20  TOCTOU bypass reproduced and reported to maintainer
2026-05-28  Downstream operator confirmed lab patched, sudo removed
2026-05-30  CVE requested via GHSA
2026-06-09  GitHub rejected CVE request
2026-06-09  GHSA re-review requested
2026-06-15  CVE request submitted to MITRE
2026-06-18  Follow-up fix merged upstream; CVE re-requested via GHSA
2026-06-19  GitHub rejected second CVE request
2026-06-22  GHSA advisory published without a CVE


Current status
--------------
Downstream deployment: patched (sudo entry removed, 28 May 2026)
Upstream final fix:    merged
CVE:                   pending (MITRE request, 15 June 2026)


References
----------
[1] https://github.com/rasta-mouse/pwnlift
[2] 
https://github.com/rasta-mouse/pwnlift/commit/e3eddaca42b4b3e9c69f2d7aa024b6c82e27a5a2
[3] 
https://github.com/rasta-mouse/pwnlift/commit/d7a95449d9ee1ea09ec1529286685f6187afbbed
[4] 
https://github.com/rasta-mouse/pwnlift/security/advisories/GHSA-2v7v-rhpw-m9w4
[5] https://github.com/GregDurys/security-advisories
[6] https://payloadforge.io/beyond-crto-pwnlift/


Credit
------
Discovered by Greg Durys
https://github.com/GregDurys

