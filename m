X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/24/3
Message-ID: <CAK3hNHYMmmg65=aO8EiTjR2sQdQ8Th4Osn9-D7n=5izGXQXN0w@mail.gmail.com>
Date: Thu, 23 Jul 2026 22:08:30 -0700
From: Abhinav Agarwal <abhinavagarwal1996@...il.com>
To: oss-security@...ts.openwall.com
Subject: libIEC61850: four MMS/GOOSE memory-safety vulnerabilities, including lab RCE
Content-Type: text/plain; charset=utf-8

Hello,

libIEC61850 (MZ Automation), the widely used open-source IEC 61850 stack
for electric-substation MMS and GOOSE, contains four memory-safety
vulnerabilities in its MMS and GOOSE handling: CVE-2026-49035,
CVE-2026-50039, CVE-2026-50032, and CVE-2026-50103. All are fixed in
v1.6.2. In the tested default configurations, the triggering requests or
frames require no application credentials. The issues cause denial of
service under the deployment conditions described below; CVE-2026-49035
additionally produced command execution in a deliberately unhardened
laboratory build.

Affected range: v1.0.0 through v1.6.1. I reproduced all four
issues against commit a1396111, the v1.6.1 tip used for testing.
Coordinated through CISA (advisory ICSA-26-204-06).

The MMS PoCs require no application credentials against the tested
default server configuration; the GOOSE issue is triggered by a single
crafted Layer-2 frame. Applications may separately configure
authentication, TLS, access-control callbacks, or network restrictions.

Remediation: upgrade to v1.6.2, or backport the four referenced fixes.
Deployments that cannot update should restrict MMS reachability, disable
or restrict unnecessary MMS file services, and reject untrusted GOOSE
traffic at the network boundary where operationally possible.

CWE ids and CVSS v3.1 scores/vectors below are the published CISA
advisory values.

  CVE             Component          Class           CWE   CVSS 3.1
  --------------  -----------------  --------------  ----  --------
  CVE-2026-49035  MMS file service   Heap overflow   122   8.1
  CVE-2026-50039  MMS value cache    Stack overflow  121   7.5
  CVE-2026-50032  MMS write service  NULL deref      476   7.5
  CVE-2026-50103  GOOSE subscriber   Invalid struct  228   6.5


CVE-2026-49035 -- MMS FileRead heap overflow -> RCE (lab)
  mms_file_service.c / mms_association_service.c

  The server accepts a client-supplied maxPduSize during MMS Initiate
  with no lower bound. maxFileChunkSize = maxPduSize - 20 underflows to
  a near-maximal uint32_t when maxPduSize < 20 -- an
  integer-underflow root cause (CWE-191) underlying the heap overflow --
  bypassing the chunk-size guard, so a FileRead response copies an
  entire staged file into a fixed 65,100-byte heap buffer. In the
  default build profile ObtainFile is compiled in alongside the MMS file
  service, allowing a sufficiently large file to be staged remotely when
  the application has not disabled or restricted that functionality; the
  file is then read back to trigger the overflow. With the file service
  reachable and a sufficiently large file available or staged through
  ObtainFile, the overflow reliably crashes the server.

  In a deliberately unhardened lab build (AArch64, non-PIE, ASLR off,
  writable GOT) I reproduced the full chain -- a free@GOT overwrite
  reaching system(), end-to-end command execution -- verified by an
  strace execve capture and a nonce-stamped proof file. In the tested
  environment, enabling PIE and ASLR would require an additional
  address-disclosure or equivalent exploit primitive; I did not
  demonstrate such a primitive.

Fix status: v1.6.2, commit db35acf6.
CVSS 3.1: 8.1 (CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:H/I:H/A:H)


CVE-2026-50039 -- MMS value-cache stack buffer overflow
  mms_value_cache.c

  MmsValueCache_lookupValue copies the looked-up item identifier into a
  fixed char itemIdCopy[65] with an unbounded copy
  (StringUtils_copyStringToBuffer, no destination size). An
  unauthenticated ReadRequest overflows the stack buffer when the server
  model exposes an object whose item identifier exceeds 64 bytes (ASAN:
  stack WRITE of size 87 on an 86-char path; a canary build aborts via
  __stack_chk_fail). Deployment-conditional on such a model; the copy is
  unsafe regardless.

Fix status: v1.6.2, commit a0bd0aaa
CVSS 3.1: 7.5 (CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N/A:H)


CVE-2026-50032 -- MMS Write NULL-pointer dereference
  mms_write_service.c

  A WriteRequest naming an existing Named Variable List with an empty
  listOfData (A0 00, accepted by the decoder) sets the data array to
  NULL, which the write loop dereferences. This path iterates on the
  server-side member count without checking the client's listOfData
  count; the sibling listOfVariable path has that guard, this one does
  not. Unauthenticated single-request crash against the tested default
  (no access control).

Fix status: v1.6.2, commit bd338f23.
CVSS 3.1: 7.5 (CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N/A:H)


CVE-2026-50103 -- GOOSE parser supplies NULL dataset element to callback
  goose_receiver.c

  The two-pass TLV parser (parseAllDataUnknownValue) allocates a dataset
  slot in pass 1 but leaves it NULL in pass 2 when a recognized type
  carries an invalid length: 0x87/Float (valid 5, 9), 0x8c/BinaryTime
  (valid 4, 6), 0x91/UTCTime (valid 8). The NULL element reaches the
  subscriber callback; a callback that reads it with ordinary MmsValue
  accessors -- the pattern in the library's own examples and the PoC --
  calls MmsValue_getType(NULL) and crashes. One malformed Layer-2 GOOSE
  frame, delivered on the local segment, is enough.

  The same function backs the optional beta R-GOOSE (UDP) path, disabled
  by default (CONFIG_IEC61850_R_GOOSE 0); identified by source review,
  not tested.

Fix status: v1.6.2, commit 62f22887.
CVSS 3.1: 6.5 (CVSS:3.1/AV:A/AC:L/PR:N/UI:N/S:U/C:N/I:N/A:H)


Affected:
  libIEC61850 v1.0.0 through v1.6.1 (all four). Fixed in v1.6.2.


Note:
  Beyond these four, v1.6.2 also ships several other security-related
  fixes (see the release notes and CHANGELOG); those do not appear to
  carry separate CVE assignments.


Timeline:
  2026-05-07   Reported four issues to the maintainer.
  2026-05-08   All four fixed on the public v1.6_develop branch.
  2026-06-09   CVEs reserved.
  2026-07-03   Notified CISA and the vendor of intent to publish PoC
               code after the CISA advisory is published.
  2026-07-23   v1.6.2 released; CISA advisory ICSA-26-204-06 published;
               writeup and PoC published; this disclosure.


PoCs (per-CVE crash harnesses + the Dockerized end-to-end RCE, with
ASAN/GDB logs, pcaps, patch diffs, and negative controls) and the full
write-up -- root cause, exploit chain, and timeline -- are linked below.


References:
  Write-up:  https://abhinavagarwal07.github.io/posts/libiec61850-mms-goose-cves?src=oss
  PoC code:  https://github.com/abhinavagarwal07/libiec-security-poc
  CISA Advisory:  https://www.cisa.gov/news-events/ics-advisories/icsa-26-204-06
  Vendor Release:
https://github.com/mz-automation/libiec61850/releases/tag/v1.6.2


Reported and coordinated by Abhinav Agarwal.

-- Abhinav Agarwal
