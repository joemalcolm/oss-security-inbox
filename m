X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/10/13
Message-ID: <CAK3hNHbTxS9nfAgpcX+3+_i_cYfDWxxcgyJiqBBdz7JJqTA6Mg@mail.gmail.com>
Date: Wed, 9 Sep 2026 19:17:07 -0700
From: Abhinav Agarwal <abhinavagarwal1996@...il.com>
To: oss-security@...ts.openwall.com
Subject: GDCM <= 3.2.7: six memory-safety and denial-of-service vulnerabilities, no CVE
Content-Type: text/plain; charset=utf-8

I am disclosing six vulnerabilities in GDCM (Grassroots DICOM), an
open-source C++ library for parsing and processing DICOM files. I confirmed
all six against GDCM 3.2.6 with AddressSanitizer or
UndefinedBehaviorSanitizer; source review found the vulnerable patterns
through 3.2.7 and in the reviewed upstream master snapshot. Impact includes
heap corruption, process-memory disclosure, stack exhaustion, and process
termination when an application parses, decodes, or transcodes a crafted
DICOM file.

Affected: per-finding ranges below, all through v3.2.7
Fix status: no fix
CVE: not assigned
CVSS: researcher-assigned v3.1 scores

Findings
--------

1. RLE + YBR_FULL_422 multi-frame decode heap overflow - v3.0.4 through
v3.2.7 - CWE-787 - CVSS v3.1 9.8. RLECodec::DecodeFragment() copies the
expanded decoded frame into a fixed per-frame slot without checking that
the expanded size still fits. YBR_FULL_422 conversion makes a crafted
two-frame image exceed that slot; ASan reports a 36,864-byte write
immediately after a 24,576-byte allocation. The overflow gives controlled
adjacent bytes in an instrumented layout. On the tested unmodified glibc
layout it corrupts a freed chunk and reliably aborts; no code-execution
path was found there.

2. JPEG2000 small-image encode heap overflow - v2.0.16 through v3.2.7 -
CWE-787 - CVSS v3.1 9.8. JPEG2000Codec::CodeFrameIntoBuffer() allocates
inputlength*2 bytes, but the OpenJPEG memory callback copies the complete
codestream without enforcing that limit. A 2x2 8-bit image provides four
input bytes and an eight-byte output allocation, while OpenJPEG emits at
least 132 bytes. ASan confirms the resulting heap overwrite through both
gdcmconv --j2k and the ImageChangeTransferSyntax API used by applications
for transcoding. Impact is process crash or adjacent heap corruption during
encode/transcode.

3. Segmented palette color out-of-bounds heap read - v2.0.5 through v3.2.7
- CWE-125 - CVSS v3.1 8.2. DiscreteSegment trusts the segment's
attacker-controlled uint16 entry count when calculating its end, and
std::copy reads past the actual LUT element allocation. The maximum tested
overread is 131,070 bytes. Out-of-bounds words reach the decoded RGB pixel
buffer; on the tested Linux build they included a gdcm::ByteValue vtable
pointer from which the correct libgdcmDSED load base was derived in six
ASLR-enabled runs. Impact is process-memory disclosure to a caller that
obtains the decoded pixels, plus possible crash on an unmapped read.

4. JPEG2000 BitsAllocated precision mismatch - v2.0.8 through v3.2.7 -
CWE-787 - CVSS v3.1 8.1. DecodeByStreamsCommon() allocates its raw buffer
from the DICOM BitsAllocated value, then selects a wider output loop from
the JPEG2000 component precision. The dimension-only CVE-2024-22373 fix
does not validate that precision, and the relevant assertion is compiled
out with GDCM's default GDCM_SUPPORT_BROKEN_IMPLEMENTATION=ON
configuration. A file declaring BitsAllocated=8 with a 31-bit JPEG2000
component causes a four-times-wider write; ASan reports 12,288 bytes
written past a 4,096-byte allocation through
ImageRegionReader::ReadIntoBuffer(). Impact is heap corruption in
applications using this region/ROI decode API.

5. Unbounded DICOM sequence recursion - v2.0.4 or earlier through v3.2.7 -
CWE-674 - CVSS v3.1 7.5. DataSet::ReadNested(), Item::Read(), and
SequenceOfItems::Read() recursively parse nested SQ items without a depth
limit. A 528 KiB file containing 15,000 nested Content Sequence items
exhausts the thread stack during Reader::Read(); ASan reports stack
overflow and gdcmdump also terminates. Impact is unauthenticated denial of
service wherever an untrusted DICOM file reaches ordinary dataset parsing.

6. RLE NumSegments=0 divide by zero - v2.0.4 or earlier through v3.2.7 -
CWE-369 - CVSS v3.1 7.5. RLEHeader::SetNumSegments() rejects values above
15 but accepts zero, which later reaches length /= numSegments in the RLE
decode path. The crafted file produces a UBSan division-by-zero report;
x86-64 raises SIGFPE, while the tested ARM64 path reaches an assertion and
abort. Impact is process termination during ordinary RLE image parsing.

Proof of concept
----------------

The public repository contains deterministic DICOM generators, fixtures,
minimal harnesses, matched controls, build instructions, sanitizer
expectations, and retained Linux/macOS evidence:

https://github.com/abhinavagarwal07/gdcm-security-poc

Orthanc deployments using the optional GDCM plugin are likely affected
where these codec paths are reached, but I have not proven end-to-end
exploitability in Orthanc.

Coordination timeline
---------------------

2026-05-11 Contacted a GDCM maintainer and developers list seeking a
private reporting channel; no maintainer response.
2026-05-15 Reported all six findings to CISA through VINCE as VU#617940.
2026-05-28 to 2026-06-12 CISA's contact attempts also received no response,
and it began its unresponsive-vendor process.
2026-06-14 Supplied full technical details, affected versions, impacts,
CVSS/CWE data, and reproduction material.
2026-07-09 Initial VINCE disclosure date passed while CISA continued
validation.
2026-07-14 to 2026-07-22 Supplied packaged PoCs, binaries, build
instructions, and additional reproduction guidance at CISA's request.
2026-07-30 CISA said testing was ongoing and verified findings would
receive CVEs and an advisory.
2026-08-17 to 2026-08-18 Requested permission to disclose after more than
90 days; agreed to CISA's request for another two-week hold through
September 1.
2026-09-01 to 2026-09-08 Continued follow-ups after the extended date
passed.
2026-09-09 CISA said I was free to publish and closed the case pending
evidence of a concrete third-party attack path, with the option to reopen
it and assign CVEs later.
2026-09-09 Public disclosure, 122 days after initial maintainer contact and
118 days after reporting to CISA.

I withheld technical disclosure throughout coordination, provided the
requested reproduction material, and extended the embargo at CISA's request.

Mitigation
----------

Until fixes are available, avoid processing untrusted DICOM files, disable
unnecessary decoding/transcoding paths, and restrict DICOM services to
trusted networks.

Credit
------

Reported by Abhinav Agarwal.

