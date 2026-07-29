X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/29/4
Message-ID: <178533301997.716302.10681697634251953771@notcve.org>
Date: Wed, 29 Jul 2026 15:50:19 +0200
From: advisories@...cve.org
To: oss-security@...ts.openwall.com
Subject: [NotCVE-2026-0011] Nmap 7.99 and Earlier nselib/packet.lua Zero-Length TCP Option Infinite Loop Allows Remote Denial of Service
Content-Type: text/plain; charset=utf-8

----------------------------------------------------------------------------
NotCVE Advisory — NotCVE-2026-0011
----------------------------------------------------------------------------

[-] Summary:
Nmap 7.99 and earlier contain a loop with an unreachable exit condition in
the Packet:parse_options() method of nselib/packet.lua. A remote host that
is the target of a scan can exhaust the memory of the scanning Nmap process
and terminate it by replying with a packet that carries a zero-length header
option. No authentication and no access to the scanning machine are
required: the attacker only needs to be scanned.
CVSS:3.1 6.5 (AV:N/AC:L/PR:N/UI:R/S:U/C:N/I:N/A:H).

[-] Affected:
Nmap, versions 7.99 and earlier (nselib/packet.lua).
Fixed in commit 7ef4ee0 (2026-06-11). That fix sits above the topmost
release header in the CHANGELOG (Nmap 7.99 [2026-03-26]), so as of this
writing it is present only in the development tree and no released version
carrying it has been verified.

[-] Technical Description:
Packet:parse_options(offset, length) walks the option area with a cursor,
opt_ptr, reading an option type t and, for any type other than 0 (End of
Option List) or 1 (No-Operation), a length byte l taken from
self:u8(offset + opt_ptr + 1). The cursor is then advanced by
opt_ptr = opt_ptr + l.

Before commit 7ef4ee0 the parser accepted l == 0 without validation, so the
cursor never advanced and the "while opt_ptr < length" condition never
became false. Because the loop body allocated a fresh table with
options[op] = {} and incremented op on every pass, the non-terminating loop
also grew a table without bound, and the Lua interpreter embedded in Nmap
consumed memory until the process died. The options[op] = {} assignment was
positioned before the length was validated, which is why the loop allocated
rather than merely spinning.

The method is reached from tcp_parse(), where the option area length derives
from the TCP data offset field of the received packet. A remote peer
therefore controls both the length of the option area and its contents.
nselib/packet.lua is the packet-dissection library used by NSE scripts that
capture and parse raw packets, so exploitation requires the operator to run
a scan that loads such a script against a host the attacker controls.

Nothing is persisted and the effect ends with the process, but the attacker
can repeat it on every subsequent scan, so the host remains effectively
unscannable by any script using this library.

Commit 7ef4ee0 ("Stop parsing on a zero-length packet option") adds an
"if l==0 then break end" guard before any allocation and moves the
options[op] = {} initialisation to after that check. The CHANGELOG entry
reads "[NSE][GH#3368] Fixed an out-of-memory issue in packet.lua when
parsing a zero-length TCP header option."

The step-by-step attack path, the reachability analysis of the IP options
code path and the full write-up are published at the advisory URL below.

Weaknesses:
CWE-835: Loop with Unreachable Exit Condition ('Infinite Loop')
CWE-400: Uncontrolled Resource Consumption
CWE-770: Allocation of Resources Without Limits or Throttling
CAPEC-130: Excessive Allocation

[-] Timeline:
[28/07/2026] - NotCVE ID reserved.
[28/07/2026] - Published as NotCVE-2026-0011.

[-] Credit:
Discovered by Maxim Suhanov (@errno_fail).

[-] Full Details and Updates:
https://notcve.org/notcve/NotCVE-2026-0011

[-] References:
https://github.com/nmap/nmap/issues/3368
https://github.com/nmap/nmap/commit/7ef4ee030a0023fe22616387a000032e1a678b6a
https://github.com/nmap/nmap/pull/3373
https://raw.githubusercontent.com/nmap/nmap/master/nselib/packet.lua
https://raw.githubusercontent.com/nmap/nmap/master/CHANGELOG

[-] About NotCVE:
NotCVE (https://notcve.org) assigns public, timestamped NotCVE IDs to
vulnerabilities not acknowledged by vendors. Vendor will not assign a CVE?
Request a NotCVE: https://notcve.org/form/ · Contributors:
https://notcve.org/hall/
