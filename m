X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/22/7
Message-ID: <add5f4fd-dae7-44cd-8d02-7810682871ec@nlnetlabs.nl>
Date: Wed, 22 Jul 2026 16:52:25 +0200
From: Yorgos Thessalonikefs <yorgos@...etlabs.nl>
To: oss-security@...ts.openwall.com
Subject: Unbound: 1.25.2 addresses multiple CVE items
Content-Type: text/plain; charset=utf-8

Hi there,

(The official announcement can be found at:
https://community.nlnetlabs.nl/t/unbound-1-25-2-released/3430)

Several vulnerabilities were found in Unbound.

We are releasing 1.25.2 as a security release on July 22 including the 
relevant fixes.

The overview of the vulnerabilities with a brief description is:

CVE-2026-32665 - severity: HIGH
Remote DNS-over-QUIC denial of service due to `quic-size` budget bypass

CVE-2026-40691 - severity: HIGH
Packet of death for DNSCrypt over TCP

CVE-2026-44690 - severity: HIGH
Cross-zone wildcard cache poisoning via RRSIG.labels manipulation

CVE-2026-55973 - severity: HIGH
'dns-error-reporting: yes' leads to stack buffer overflow

CVE-2026-14586 - severity: MEDIUM
Assertion in libngtcp2 when under pressure in high concurrency 
DNS-over-QUIC environments

CVE-2026-44621 - severity: MEDIUM
Libunbound applications configured with 'unwanted-reply-threshold' could
eventually be abruptly terminated

CVE-2026-50045 - severity: MEDIUM
'max-global-quota' reset by DNSSEC validation restarts

CVE-2026-50046 - severity: MEDIUM
Possible heap use-after-free in an error path when a DoT forwarded query 
is jostled out

CVE-2026-50243 - severity: MEDIUM
'response-ip'/'rpz' can rewrite BOGUS answers instead of returning SERVFAIL

CVE-2026-50248 - severity: MEDIUM
BOGUS configured primary hostname accepted for XFR in auth/rpz zones

CVE-2026-50251 - severity: MEDIUM
Attacker supplied `0.0.0.0`/`::` glue triggers defensive full-cache flush

CVE-2026-50252 - severity: MEDIUM
Possible cache poisoning attack by mapping source port population per thread

CVE-2026-52863 - severity: MEDIUM
Memory corruption could lead to crash and denial of service

CVE-2026-55717 - severity: MEDIUM
'serve-expired-client-timeout' and 'response-ip' CNAME redirect could 
lead to a crash

CVE-2026-55990 - severity: MEDIUM
Packet of death for a DNSCrypt misconfigured Unbound

CVE-2026-55991 - severity: MEDIUM
Remote DNS-over-QUIC (DoQ) flow-control assertion failure in libngtcp2

CVE-2026-56416 - severity: MEDIUM
Possible heap buffer overflow when validator canonicalizes RDATA that 
contains domain name

CVE-2026-56444 - severity: MEDIUM
Degradation of resolution service when 'discard-timeout' and
'serve-expired-client-timeout' are combined in unusual configuration

CVE-2026-41637 - severity: LOW
Degradation of resolution service from improperly accounted 
client-terminated DNS-over-QUIC queries

CVE-2026-42955 - severity: LOW
Extra fix for CVE-2026-40622 to also clamp the TTL of A/AAAA records 
disallowing a one-time 'ghost domain' delegation renewal via glue records

CVE-2026-44687 - severity: LOW
Off-by-one error in 'harden-below-nxdomain' logic can shadow a stub/forward
zone by a legitimate parent's NXDOMAIN

CVE-2026-46582 - severity: LOW
A wildcard replay, as another piece of data, triggers poisoning in the serve
expired reply path

CVE-2026-54478 - severity: LOW
DNS Cookie bypass when combined with proxy-protocol use

CVE-2026-55708 - severity: LOW
Privacy/configuration issue when adding local data in views through 
'unbound-control'



More information about the vulnerabilities can be found at:
https://nlnetlabs.nl/projects/unbound/security-advisories/


Best regards,
-- Yorgos, on behalf of the Unbound team.


** This email is signed. Keys of the NLnet Labs people are published on
https://www.nlnetlabs.nl/people/ **

Download attachment "OpenPGP_signature.asc" of type "application/pgp-signature" (834 bytes)
