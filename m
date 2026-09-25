X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/25/6
Message-ID: <179035511269.583188.4151197876832520707@notcve.org>
Date: Fri, 25 Sep 2026 18:51:52 +0200
From: advisories@...cve.org
To: oss-security@...ts.openwall.com
Subject: [NotCVE-2026-0015] Input Leap through 3.0.3 input-leapd Unauthenticated IPC Command Execution Allows Local Privilege Escalation to SYSTEM
Content-Type: text/plain; charset=utf-8

----------------------------------------------------------------------------
NotCVE Advisory — NotCVE-2026-0015
----------------------------------------------------------------------------

[-] Summary:
Missing authentication for a critical function in the input-leapd daemon of
Input Leap, the open-source keyboard and mouse sharing tool, allows a
local, low-privileged user on Windows to execute arbitrary commands as
NT AUTHORITY\SYSTEM by sending a single IPC command message to the
daemon's unauthenticated listener on 127.0.0.1:24801. The command persists
and runs again after a service restart or reboot. CVSS:3.1 7.8
(AV:L/AC:L/PR:L/UI:N/S:U/C:H/I:H/A:H).

[-] Affected:
Input Leap on Windows from v2.4.0 through 3.0.3 (the final release), where
input-leapd is registered as a service. The input-leap/input-leap
repository was archived read-only on 26 July 2026; no fixed version exists
or is expected.

[-] Technical Description:
IpcServer::listen() binds a TCPListenSocket to 127.0.0.1:24801 (IPC_HOST
and IPC_PORT in src/lib/ipc/Ipc.h). IpcServer::handle_client_connecting()
accepts the socket and wraps it in an IpcClientProxy with no check of the
peer's identity, session or integrity level; the only thing that tells
clients apart is the type each one declares for itself in the kIpcMsgHello
handshake.

IpcClientProxy::parseCommand() reads a length-prefixed command string and
a trailing one-byte elevate flag from the stream, and
DaemonApp::handle_ipc_message() passes both to the watchdog unchanged:

  m_watchdog->setCommand(command, cm.elevate());

There is no allowlist, no check that the command is an Input Leap binary,
and no authorisation check on the elevate flag. With the flag set,
MSWindowsWatchdog::getUserToken() locates winlogon.exe, duplicates its
primary token (OpenProcessToken, DuplicateTokenEx) and the watchdog calls
CreateProcessAsUser() with the attacker's command line. winlogon.exe runs
as NT AUTHORITY\SYSTEM, so the new process does too.

handle_ipc_message() also stores the input with ARCH->setting("Command")
and ARCH->setting("Elevate"). DaemonApp::mainLoop() reads both back at
daemon start ("using last known command") and calls setCommand() again, so
the command is re-executed as SYSTEM after a restart or reboot without
further action by the attacker.

Preconditions: the input-leapd service is installed; beyond that, only
local code execution under any account. ArchDaemonWindows::installDaemon()
registers the service with SERVICE_AUTO_START as LocalSystem, the listener
is opened unconditionally, and no administrative rights, file write or
desktop session are needed.

The sibling project Deskflow fixed the equivalent defect in 1.26.0.161
(CVE-2026-41477); that fix does not apply to Input Leap, which uses a TCP
socket rather than a named pipe and so has no ACL on the endpoint. The
same class of defect in the ancestor Barrier 2.4.0 is NotCVE-2026-0010.
Mitigation until a fork ships a fix: stop and disable the input-leapd
service on hosts where Input Leap is not in use.

Weaknesses:
CWE-306: Missing Authentication for Critical Function
CWE-862: Missing Authorization
CAPEC-69: Target Programs with Elevated Privileges

[-] Credit:
Reported by Christopher Duram
(https://www.linkedin.com/in/christopherduram/).

[-] Full Details and Updates:
https://notcve.org/notcve/NotCVE-2026-0015

[-] Main References:
https://github.com/input-leap/input-leap
https://github.com/input-leap/input-leap/blob/v3.0.3/src/lib/ipc/IpcClientProxy.cpp
https://github.com/deskflow/deskflow/security/advisories/GHSA-6rx5-g478-775c

[-] About NotCVE:
NotCVE (https://notcve.org) assigns public, timestamped NotCVE IDs to
vulnerabilities not acknowledged by vendors. Vendor will not assign a CVE?
Request a NotCVE: https://notcve.org/form/ · Contributors:
https://notcve.org/hall/
