X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/25/4
Message-ID: <179032685474.254052.15397970022917167373@notcve.org>
Date: Fri, 25 Sep 2026 11:00:54 +0200
From: advisories@...cve.org
To: oss-security@...ts.openwall.com
Subject: [NotCVE-2026-0014] Input Leap 3.0.3 Drag-and-Drop File Transfer Path Traversal Allows Arbitrary File Write Outside the Drop Directory
Content-Type: text/plain; charset=utf-8

----------------------------------------------------------------------------
NotCVE Advisory — NotCVE-2026-0014
----------------------------------------------------------------------------

[-] Summary:
Improper limitation of a pathname in the drag-and-drop file transfer
feature of Input Leap, the open-source keyboard and mouse sharing tool,
allows a connected peer to write a file outside the configured drop-target
directory. Writing into the per-user Startup folder turns this into code
execution as the receiving user at the next login. CVSS:3.1 5.3
(AV:N/AC:H/PR:L/UI:N/S:U/C:N/I:H/A:N).

[-] Affected:
Input Leap through 3.0.3 (the final release) and master, on Windows and
macOS. The input-leap/input-leap repository was archived read-only on
26 July 2026; no fixed version exists or is expected.

[-] Technical Description:
DragInformation::parseDragInfo() in src/lib/inputleap/DragInformation.cpp
reduces each received filename to its basename. It picks one separator for
the whole received blob ('/' if the data contains a '/' anywhere, otherwise
'\') and then locates the last separator at or before each entry's comma:

  findResult2 = data.find_last_of(slash, findResult1);
  ...
  if (findResult1 - findResult2 > 1) {
      auto filename = data.substr(findResult2 + 1,
                                  findResult1 - findResult2 - 1);

find_last_of() returns std::string::npos when no separator is present, and
that value is never tested. The unsigned arithmetic wraps: findResult2 + 1
becomes 0, the guard still passes, and the call degrades to
data.substr(0, findResult1) - the whole attacker-supplied string up to the
comma, with any ".." sequences intact.

Because the separator is chosen once per blob, a peer can force the
mismatch: a single stray '/' after the first comma selects '/', while a
filename written with '\' separators contains no '/' before that comma.

DropHelper::writeToDir() in src/lib/inputleap/DropHelper.cpp appends the
result to the drop-target directory and opens it for writing, with no
normalisation, no check for ".." or absolute prefixes, and no check that
the path stays beneath the drop target. A name such as
..\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\ escapes
the configured folder, and a file written there runs as the receiving user
at the next login.

Preconditions: the feature is opt-in (--enable-drag-drop, not the
default), and ArgParser refuses the flag on Linux, so only Windows and
macOS targets are affected. Both directions are reachable (malicious
client against a server, malicious server against a client). Under the
default ENCRYPTED_AUTHENTICATED level the sender must already be a paired
peer; a target started with --disable-crypto has no such requirement.

The same unchecked find_last_of() result is present in the ancestor
debauchee/barrier codebase. The sibling fork Deskflow removed drag-and-drop
file transfer and does not appear to carry this code path.

Weaknesses:
CWE-22: Improper Limitation of a Pathname to a Restricted Directory
CWE-191: Integer Underflow (Wrap or Wraparound)
CAPEC-126: Path Traversal
CAPEC-139: Relative Path Traversal

[-] Credit:
Discovered by Christopher Duram
(https://www.linkedin.com/in/christopherduram/).

[-] Full Details and Updates:
https://notcve.org/notcve/NotCVE-2026-0014

[-] Main References:
https://github.com/input-leap/input-leap
https://github.com/input-leap/input-leap/blob/v3.0.3/src/lib/inputleap/DragInformation.cpp

[-] About NotCVE:
NotCVE (https://notcve.org) assigns public, timestamped NotCVE IDs to
vulnerabilities not acknowledged by vendors. Vendor will not assign a CVE?
Request a NotCVE: https://notcve.org/form/ · Contributors:
https://notcve.org/hall/
