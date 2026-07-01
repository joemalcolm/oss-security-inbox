X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/01/5
Message-ID: <akUXwLl3OwYufXkb@zedat.fu-berlin.de>
Date: Wed, 1 Jul 2026 15:36:00 +0200
From: Holger Weiß <holger.weiss@...berlin.de>
To: OSS Security <oss-security@...ts.openwall.com>
Subject: check_icmp (Monitoring Plugins): host-count overflow leads to heap buffer overflow in setuid-root binary
Content-Type: text/plain; charset=utf-8

We released Monitoring Plugins 3.0.1, which fixes a security issue in 
the check_icmp plugin.

Product:   Monitoring Plugins (check_icmp)
Date:      2026-07-01
Severity:  High (CVSS 3.1: 7.0, CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:H/I:H/A:H)
CVE:       requested, not yet assigned
CWE:       CWE-190 (Integer Overflow or Wraparound),
            CWE-787 (Out-of-bounds Write)
Affected:  check_icmp 3.0.0 (introduced in v3.0.0-rc1)
Fixed in:  Monitoring Plugins 3.0.1


Summary
-------

A local user can trigger a heap buffer overflow in check_icmp by 
supplying more than 65535 target hosts, which overflows an internal 
counter. This happens before check_icmp drops its privileges, so the 
corruption occurs while still running as root on setuid-root 
installations.


Description
-----------

The number of hosts is counted into an unsigned short, which is then 
used as the allocation size for the hosts array (calloc(3)). Because 
nothing bounds the increment, more than 65535 -H/--Host entries (whether 
passed directly on argv or via an --extra-opts ini file using Host= 
entries) wrap the counter, so the array is allocated far smaller than 
the number of entries actually written into it by the subsequent parsing 
loop, causing a heap buffer overflow.

This happens inside process_arguments(), before check_icmp drops its 
elevated privileges.


Impact
------

On installations where check_icmp is installed setuid-root (confirmed on 
Arch Linux's monitoring-plugins package), this is a local 
memory-corruption primitive triggered while the process is still running 
as root, with an attacker-controlled overflow length and partially 
attacker-influenced content. Reliable privilege escalation has not been 
demonstrated but appears plausible.

Installations that grant cap_net_raw via file capabilities instead of 
the setuid bit are not exposed to the privilege-escalation concern; the 
underlying memory corruption is still reachable in that configuration.

No special access is required beyond the ability to invoke check_icmp 
with attacker-chosen arguments.


Fixes
-----

The host count is now explicitly bounded, rejecting more than 65535 
hosts with a usage error instead of letting the counter overflow 
silently. Users should upgrade to Monitoring Plugins 3.0.1 or later.


Attribution
-----------

The issue was initially identified with an AI coding agent and then 
manually validated and reproduced by Christopher Kreft (GitHub: c-kr) 
using an ASan build, including verification against the installed 
setuid-root binary.


References
----------

   https://github.com/monitoring-plugins/monitoring-plugins/security/advisories/GHSA-xvvw-4j77-rp7q
   https://github.com/monitoring-plugins/monitoring-plugins/releases/tag/v3.0.1
   https://github.com/monitoring-plugins/monitoring-plugins/commit/c35c12e58d326ffbd6cfb3c9097653f9f3fb2f4a

-- 
Holger Weiß
Monitoring Plugins
