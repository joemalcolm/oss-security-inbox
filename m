X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/06/8
Message-ID: <c7bf1440-d2c7-493d-bbfc-2b814ccb7aa1@brad-house.com>
Date: Mon, 6 Jul 2026 13:46:31 -0400
From: Brad House <brad@...d-house.com>
To: oss-security@...ts.openwall.com
Subject: c-ares 1.34.7 release: CVE-2026-33630, GHSA-pjmc-gx33-gc76, GHSA-jv8r-gqr9-68wj
Content-Type: text/plain; charset=utf-8

## CVE-2026-33630: Use-after-free / double-free in c-ares 
query-completion handling, remotely triggerable via ares_getaddrinfo() 
over TCP

7.5 (High) 
https://github.com/c-ares/c-ares/security/advisories/GHSA-6wfj-rwm7-3542

### Impact

A use-after-free / double-free in c-ares' query-completion handling. The 
same flaw — a query's callback being invoked while the query is still 
linked in the channel's internal lookup structures — is present at 
multiple points in the resend/finish path (timeout handling, response 
handling, and query dispatch). If the query, or for `ares_getaddrinfo()` 
the owning `host_query`, is freed as a side effect of that callback, it 
is then accessed and/or freed a second time.

It is reachable in two ways:

- **Application-triggered:** a callback that re-enters c-ares, for 
example by calling `ares_cancel()`. The callback frees the query and it 
is freed again after the callback returns.

- **Remotely, with no application cooperation:** via 
`ares_getaddrinfo()` over TCP. A malicious or on-path DNS server that 
returns a FORMERR without an OPT record (forcing an EDNS-downgrade 
retry), then a second response with the same query id, then resets the 
connection, causes `ares_getaddrinfo()`'s internal completion handler to 
re-enter (issuing a follow-on lookup whose send fails on the reset 
connection and completes immediately) and access a `host_query` that has 
already been freed. An attacker can force a client onto TCP by setting 
the truncation (TC) bit in a UDP response.

This was reproduced deterministically under AddressSanitizer 
(heap-use-after-free in the `ares_getaddrinfo()` completion handler) 
against v1.34.6 and the development branch, using only the public API 
and the standard system allocator.

The same pattern was previously addressed at one call site under 
CVE-2025-31498; CVE-2026-33630 covers the remaining occurrences of the 
pattern.

The consequence is memory corruption leading to a crash (denial of 
service); a use-after-free may have further impact depending on the 
allocator and build. Reliable code execution has not been demonstrated.

### Patches

Fixed in c-ares 1.34.7. All deferred retries and completions are routed 
through a single iterative drain, and each query is fully detached from 
every lookup structure before its callback is invoked, so re-entrancy — 
whether from a caller's `ares_cancel()` or from c-ares' own internal 
follow-on lookups — can no longer free a query that is still in use. The 
recursive resend path that amplified the problem is also removed.

Fix commits:
- `main`: 
https://github.com/c-ares/c-ares/commit/1fa3b86a0b8d18fe7b60f3228a01d770feb026bc
- `v1.34` (backport, PR https://github.com/c-ares/c-ares/pull/1237): 
https://github.com/c-ares/c-ares/commit/d823199b688052dcdc1646f2ab4cb8c16b1c644a

### Workarounds

Avoid calling `ares_cancel()` from within a query callback. This does 
not address the remotely-triggered path, which is driven entirely by DNS 
responses and has no reliable application-level workaround; upgrade to a 
fixed release, and prefer trusted resolvers reached over a trusted 
transport.

### Credit

Reported independently by multiple researchers.



## GHSA-pjmc-gx33-gc76: CPU-exhaustion denial of service via unbounded 
DNS name compression pointer chains

7.5 (High) 
https://github.com/c-ares/c-ares/security/advisories/GHSA-pjmc-gx33-gc76

### Summary
c-ares's DNS name decompression (`ares_dns_name_parse()`) enforced that 
every compression pointer must jump strictly backward, which prevents 
infinite loops, but placed no limit on the total number of pointer hops 
or on the assembled name length. A single crafted response could 
therefore make name decompression perform work quadratic in the message 
size.

### Details
Within a single ~64 KB TCP response an attacker can lay down a long 
descending chain of compression pointers (each pointing to the previous 
one) and then many resource records whose `NAME`/`RDATA` names each 
point at the end of that chain. Every such name is fully re-walked from 
the referenced position back to the start, so a message with a few 
thousand records referencing an ~8,000-deep chain drives tens of 
millions of pointer-follow operations. The reporter measured a single 
65,524-byte response taking ~2.85 s to parse versus ~5.7 ms for a 
same-size benign response (~497x slowdown). Because c-ares runs on a 
single-threaded event loop, this stalls all resolution for the duration; 
responses arriving faster than they parse deny service entirely.

### Impact
A malicious or on-path DNS server responding to a victim's query can 
stall the c-ares event loop with individual crafted responses, degrading 
or denying DNS resolution for the application. Availability only -- no 
memory corruption or disclosure. Because one crafted response is 
sufficient to stall the single-threaded event loop, availability impact 
is scored High.

### Proof of concept
A crafted ~65 KB TCP response containing an ~8,176-pointer descending 
chain in a RAW_RR RDATA followed by ~3,510 NS records that reference the 
chain end for both NAME and NSDNAME (~57M total pointer follows). Full 
reproducer provided in the private report.

### Patch
Name parsing now caps the number of compression indirections at 128 
(`ARES_MAX_INDIRS`, matching long-standing BIND behavior) and 
additionally enforces the RFC 1035 section 3.1 255-octet limit on the 
assembled (presentation) name length during decompression, so a name 
reached through a pointer chain can no longer be expanded without bound.

- `v1.34` branch: 
https://github.com/c-ares/c-ares/commit/5c8341ba6ff3a8e4e4dfd616f8ed0418838b8b7b 
(PR #1210, backport of #1164)
- `main` branch: 
https://github.com/c-ares/c-ares/commit/f1288bbc70e9a1e0a77134c2382157e52d326aea 
(PR #1164)

### Workarounds
None. Upgrade to a release containing the fix (1.34.7 or later).

### Credit
Reported by Haruto Kimura (@HarutoKimura) of Stella.



## GHSA-jv8r-gqr9-68wj: Memory-amplification denial of service via 
unvalidated DNS header record counts

5.3 (Moderate) 
https://github.com/c-ares/c-ares/security/advisories/GHSA-jv8r-gqr9-68wj

### Summary
When parsing a DNS response, c-ares pre-allocated per-section 
resource-record arrays sized directly from the attacker-controlled 
`ANCOUNT`, `NSCOUNT`, and `ARCOUNT` fields of the 12-byte DNS header, 
without first checking those counts against the number of bytes actually 
present in the message. A tiny response claiming the maximum record 
counts forced a large, disproportionate heap allocation.

### Details
`ares_dns_parse()` is invoked from `process_answer()` before 
transaction-ID validation or question matching, so any received packet 
on a query's socket reaches the parser. The header counts (each up to 
65535) drove `ares_dns_record_rr_prealloc()` -> `ares_array_set_size()`, 
which rounds the capacity up to the next power of two and allocates 
`capacity * sizeof(ares_dns_rr_t)`. With `ANCOUNT = NSCOUNT = ARCOUNT = 
65535`, this allocated on the order of ~15 MB of heap for a 12-byte 
input (roughly a 1,000,000:1 amplification). The allocation is released 
when parsing subsequently fails, but a sustained stream of such 
responses produces allocator pressure that can degrade or deny service.

### Impact
A malicious or on-path DNS server (or an off-path spoofer able to land 
UDP responses on the query 4-tuple) can cause repeated large 
allocate/free cycles in any application using c-ares to resolve names. 
Availability only -- no memory corruption, information disclosure, or 
authentication bypass. Because the memory is transient (freed on parse 
failure) and impact materializes only under a sustained flood, 
availability impact is scored Low.

### Proof of concept
A 12-byte DNS response consisting of only a header with `QDCOUNT=0` and 
`ANCOUNT=NSCOUNT=ARCOUNT=0xFFFF`, parsed in a loop via 
`ares_dns_parse()`, produces multi-megabyte allocations per call (the 
reporter measured ~5,287 page faults per parse of the 12-byte packet). 
Full reproducer provided in the private report.

### Patch
The parser now rejects a response whose combined record count cannot 
possibly fit in the remaining message bytes (`total_rr_count > 
remaining_len / minimum_rr_wire_size`, minimum RR = 11 bytes) before any 
pre-allocation occurs.

- `v1.34` branch: 
https://github.com/c-ares/c-ares/commit/e47c203f91cd8b749c8736bc18d75a31ffdec8f4 
(PR #1134)
- `main` branch: 
https://github.com/c-ares/c-ares/commit/eaded4cb200b2a5f8d73f11021ff7c8d6968aaab 
(PR #1134)

### Workarounds
None. Upgrade to a release containing the fix (1.34.7 or later).

### Credit
Reported by Haruto Kimura (@HarutoKimura) of Stella.

