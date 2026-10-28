X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/28/4
Message-ID: <auHSeQSZRiY5w-7j@donburi.himad.notcom.org>
Date: Wed, 28 Oct 2026 13:05:36 +0200
From: Valtteri Vuorikoski <vuori@...com.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-97631: Pre-boot RCE in EDK II PXE driver
Content-Type: text/plain; charset=utf-8

Ars Technica reported on this yesterday
<https://arstechnica.com/security/2026/10/code-execution-flaw-in-uefi-firmware-threatens-most-servers-on-planet-earth/>
so let's have it here too.

Copied from the advisory <https://github.com/tianocore/edk2/security/advisories/GHSA-99cj-7hg9-mp4m> on
the edk2 repo:

Summary

While a machine is PXE-booting over IPv4 or IPv6, an unauthenticated network
attacker who can deliver ICMP error messages to it can corrupt DXE-phase memory
and execute arbitrary code before the operating system loads, before Secure Boot
or measured boot has verified or measured any OS component.

Details

During network boot, the PXE Base Code driver (NetworkPkg/UefiPxeBcDxe) keeps a
receive request open for ICMP error messages and copies each received message
into the fixed 504-byte field Mode.IcmpError of its private context
structure. The copy loop's bounds handling is incorrect in both the IPv4 and
IPv6 handlers (PxeBcIcmpErrorDpcHandle and PxeBcIcmp6ErrorDpcHandle): for a
message longer than 504 bytes it still copies bytes into the field, and it
advances the destination pointer by the cumulative rather than the per-fragment
length, so an oversized message writes attacker-controlled bytes past the
field. Nothing earlier on the receive path restricts the message length.

Impact

Unauthenticated, pre-boot, over the network, while a machine is PXE-booting over
IPv4 or IPv6. The attacker needs only to deliver a unicast ICMP error message
addressed to the client's IP, from any network distance; the exposure window is
the duration of the PXE boot.  (a) Deterministic corruption of the driver's
private data and a CPU exception inside the DXE core on the next ICMP error, the
boot hangs (denial of OS provisioning / recovery).  (b) An attacker who knows
the target firmware build can plant a counterfeit event in the same packet and
have CoreSignalEvent() dispatch attacker-supplied bytes in the DXE phase (ring
0, before any OS security control exists).

Patch

#13302 <https://github.com/tianocore/edk2/pull/13302>

Credit

Thanks to Alex Matrosov (Anthropic) and Dan Holmes-Mitra (Google) for finding
this issue and providing the recommended fix.

[end of copy]

CVSSv4 9.5/10 according to Github. OVMF is vulnerable according to Debian
Security Tracker <https://security-tracker.debian.org/tracker/CVE-2026-97631>,
with no fixes on any release yet.

 -valtteri
 

