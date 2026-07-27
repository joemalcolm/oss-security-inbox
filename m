X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/28/4
Message-ID: <178518040700.283108.15873086541500054121@notcve.org>
Date: Mon, 27 Jul 2026 21:26:47 +0200
From: advisories@...cve.org
To: oss-security@...ts.openwall.com
Subject: [NotCVE-2026-0010] Barrier 2.4.0 for Windows Unauthenticated IPC Command Execution Allows Local Privilege Escalation to SYSTEM
Content-Type: text/plain; charset=utf-8

----------------------------------------------------------------------------
NotCVE Advisory — NotCVE-2026-0010
----------------------------------------------------------------------------

[-] Summary:
Barrier 2.4.0 for Windows contains a local privilege escalation vulnerability
in the IPC command interface exposed by the barrierd.exe service on
127.0.0.1:24801. The IPC server accepts local TCP clients and processes a
command line together with a one-byte elevation flag without authenticating the
connecting process or verifying that it is authorised to request elevated
process creation. A low-privileged local attacker can therefore execute
arbitrary commands as NT AUTHORITY\SYSTEM, resulting in complete compromise of
the affected host. CVSS:3.1 7.8 (AV:L/AC:L/PR:L/UI:N/S:U/C:H/I:H/A:H).

[-] Affected:
Barrier (Debauchee), version 2.4.0 for Windows.
Earlier affected versions have not been established. Barrier is no longer
maintained and no patched release has been verified.

[-] Technical Description:
The Barrier daemon (barrierd.exe) exposes an IPC server on the loopback
interface at TCP port 24801. A client sends an IHEL client hello identifying
itself as a supported IPC client type, followed by a kIpcCommand (ICMD) message
containing a command line and a one-byte elevation flag.

The reviewed IPC acceptance and command-processing paths do not authenticate
the connecting process, verify its Windows identity, or authorise it to request
elevated process creation.

When the elevation flag is enabled, DaemonApp::handleIpcMessage() forwards the
supplied command and elevation value to MSWindowsWatchdog. The watchdog locates
winlogon.exe in the relevant Windows session, duplicates its privileged token,
and supplies the attacker-controlled command line to CreateProcessAsUser. The
command therefore executes as NT AUTHORITY\SYSTEM.

Barrier additionally stores the last IPC-supplied values in the system settings
as Command and Elevate. These values are loaded again when the daemon starts
and passed back to the watchdog, so an attacker-supplied elevated command can
execute again after service restarts or system reboots until the stored command
is cleared.

Weaknesses: CWE-306 (Missing Authentication for Critical Function), CWE-862
(Missing Authorization). Pattern: CAPEC-69 (Target Programs with Elevated
Privileges).

A proof of concept is published in the researcher's repository (see References).

[-] Timeline:
[25/07/2026] - NotCVE ID requested.
[27/07/2026] - NotCVE ID reserved.
[27/07/2026] - Published as NotCVE-2026-0010.

[-] Credit:
Discovered by Christopher Duram
(https://www.linkedin.com/in/christopherduram/).

[-] References:
https://notcve.org/notcve/NotCVE-2026-0010
https://github.com/cduram/NotCVE-2026-0010
https://github.com/cduram/NotCVE-2026-0010/blob/main/Debauchee_Barrier_Privesc.py
https://github.com/debauchee/barrier/releases/tag/v2.4.0
https://github.com/debauchee/barrier/blob/master/src/lib/ipc/Ipc.h
https://github.com/debauchee/barrier/blob/master/src/lib/ipc/IpcServer.cpp
https://github.com/debauchee/barrier/blob/master/src/lib/ipc/IpcClientProxy.cpp
https://github.com/debauchee/barrier/blob/master/src/lib/barrier/win32/DaemonApp.cpp
https://github.com/debauchee/barrier/blob/master/src/lib/platform/MSWindowsWatchdog.cpp

[-] About NotCVE:
NotCVE (https://notcve.org) assigns public, timestamped NotCVE IDs to
vulnerabilities not acknowledged by vendors. Vendor will not assign a CVE?
Request a NotCVE: https://notcve.org/form/ · Contributors:
https://notcve.org/hall/
