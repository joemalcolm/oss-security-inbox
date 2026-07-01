X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/01/1
Message-ID: <CAK3hNHaAUyNCsbKNP0FhQdOMXP3P4jrQMwxAWHo2FWvzSpNjKQ@mail.gmail.com>
Date: Tue, 30 Jun 2026 22:09:04 -0700
From: Abhinav Agarwal <abhinavagarwal1996@...il.com>
To: oss-security@...ts.openwall.com
Subject: OFFIS DCMTK: 5 CISA-coordinated DICOM vulnerabilities
Content-Type: text/plain; charset=utf-8

CISA has published an advisory for five vulnerabilities in OFFIS DCMTK
(DICOM Toolkit), affecting DCMTK <= 3.7.0:

  https://www.cisa.gov/news-events/ics-medical-advisories/icsma-26-181-01

Fix status:

  The fixes are in upstream DCMTK master but not any release as of today
  https://github.com/DCMTK/dcmtk/releases/tag/latest

Vulnerabilities and fixes:

1. CVE-2026-50003 - bit-preserving C-GET path traversal - CVSS v3.1:
9.8 Critical
   Fix: eca9a03dd

   A victim DCMTK C-GET client connects to a malicious or
   compromised DICOM server while using bit-preserving storage mode
   (getscu --bit-preserving / DCMSCU_STORAGE_BIT_PRESERVING). During the
   C-GET response, the server supplies an affected SOP Instance UID containing
   path separators or an absolute path. DcmSCU::handleCGETSession() used that
   value to build the output path without the filename sanitization used by the
   normal disk-storage path. The result is file creation/truncation outside
   the selected output directory, limited to paths writable by the client
   process and to directories that already exist.

2. CVE-2026-50254 - Extended Negotiation memory leak - CVSS v3.1: 7.5 High
   Fix: 23f181f7a

   An unauthenticated client repeatedly opens a DICOM association
   and sends an A-ASSOCIATE-RQ containing many Extended Negotiation items
   followed by a malformed/truncated Extended Negotiation item. The parser
   error path frees the list container but not the allocated negotiation items.
   In storescp default single-process mode, repeated connections cause RSS
   growth until the process is killed or stops accepting DICOM connections.

3. CVE-2026-35505 - connection error-path memory leaks - CVSS v3.1: 7.5 High
   Fix: 2312891a8

   An unauthenticated client sends an A-ASSOCIATE-RQ where
   presentation-context structures are parsed and allocated, then a later
   presentation context triggers a translation failure, for example by
   containing no transfer syntaxes. The server returns before freeing the
   parsed PDU graph. Repeating this request leaks memory in single-process
   services. There is also an analogous SCU-side error path when a long-running
   DCMTK client parses a malformed A-ASSOCIATE-AC from a rogue server.

4. CVE-2026-52868 - Called AE Title path traversal in wlmscpfs - CVSS
v3.1: 8.2 High
   Fix: e3878daf8

   An unauthenticated client connects to wlmscpfs with a Called
   AE Title containing a short traversal sequence. wlmscpfs used the Called AE
   Title to construct worklist storage and lockfile paths without a containment
   check. If the resolved directory exists, has the expected lockfile, and
   contains matching .wl worklist files, a normal C-FIND query can return
   records outside the intended per-AE storage area. This is not arbitrary OS
   file read; disclosure is limited to reachable worklist records within the
   16-byte AE Title naming constraint. With non-default --request-file-path
   logging and AE Title/Patient ID placeholders, the same unsanitized values
   could also produce a constrained write outside the request-file directory.

5. CVE-2026-44628 - VR-spoofing type confusion in wlmscpfs - CVSS v3.1: 7.5 High
   Fixes: f4e007468 and 694a0a06a

   An unauthenticated client negotiates Explicit VR and sends a
   C-FIND request containing a dictionary sequence tag encoded on the wire with
   a non-sequence VR. DCMTK constructs a non-sequence object, but wlmscpfs later
   casts the result to DcmSequenceOfItems without checking the actual type. If
   the query reaches a valid worklist directory with an expected lockfile and a
   matching record, the wrong-type use crashes the process. In single-process
   mode this stops the service; in default fork mode the child crashes and the
   parent continues serving.

Potential exposure includes patient worklist metadata in affected wlmscpfs
deployments, file write outside an intended C-GET output directory, and
availability loss for DICOM worklist/storage services through crash or OOM.

Coordination timeline:

  2026-05-11  Reported to OFFIS DCMTK maintainers
  2026-05-12  First fix committed upstream
  2026-05-14  CERT/CC case opened as VU#470252
  2026-05-29  Remaining fixes committed upstream
  2026-06-30  CISA advisory published as ICSMA-26-181-01

Mitigation notes:

  * Apply the upstream fixes or the rolling latest snapshot when possible.
  * Keep DICOM services on trusted networks only.
  * For DoS exposure, prefer multi-process/fork mode where available.
  * Avoid getscu --bit-preserving / DCMSCU_STORAGE_BIT_PRESERVING with
    untrusted C-GET servers until patched.

Additional background:

  https://www.healthcareinfosecurity.com/dicom-toolkit-bugs-raise-medical-imaging-security-risks-a-32114

Credit:

  Reported by Abhinav Agarwal.
