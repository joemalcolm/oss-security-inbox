X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/09/3
Message-ID:  <DB9PR07MB8823C88E4853B92E2E33051791FE2@DB9PR07MB8823.eurprd07.prod.outlook.com>
Date: Thu, 9 Jul 2026 15:18:29 +0000
From: Robert Davies <rmd@...ger.ac.uk>
To: "oss-security@...ts.openwall.com" <oss-security@...ts.openwall.com>
CC: "samtools@...ger.ac.uk" <samtools@...ger.ac.uk>
Subject: HTSlib <= 1.23.1 Multiple vulnerabilities in file reading code
Content-Type: text/plain; charset=utf-8

Multiple vulnerabilities, listed below, have been disclosed in the HTSlib
package.  These have all been fixed in a new release 1.24 and have also been
pack-ported to versions 1.23.2, 1.22.3 and 1.21.2

We do not yet have CVE numbers for these as our CVE assigning authority,
GitHub, has a long backlog.  Therefore we are linking to the GitHub pages as
these will be updated automatically once the CVEs have been assigned.

The issues fall into several categories:

- Overflows (read and write) in BCF file format decoding
- Heap write overflows in handling of FASTA and CRAM indices
- CRAM 3.x decoding overflows (read and write)
- CRAM 4.x decoding overflows (read and write)

We have back-ported the CRAM 4.x fixes, but we took the decision to remove
this from the current and future releases as it is an experimental and
currently unused file format.

Contents
========

- Heap buffer overflow in BCF reader due to improper validation of input
- Heap write overflow in HTSlib FASTA index handling
- Heap write overflow in HTSlib CRAM index handling
- Stack write overflow in HTSlib CRAM decoder
- Out-of-bounds read in HTSlib CRAM 3.x / 4.0 reader due to improper validation
- Heap read and write overflow in HTSlib CRAM 4.0 decoder
- Out-of-bounds read in HTSlib CRAM 4.0 reader due to improper validation


Heap buffer overflow in BCF reader due to improper validation of input
======================================================================

Description
-----------
HTSlib is a library for reading and writing bioinformatics file formats. BCF
is a format which stores data on genomic variation. In the BCF reader, it
was possible to trigger an integer overflow in code designed to check that
the number of bytes in a record was sufficient to account for the expected
number and size of items stored. Bypassing this check could result in
reading beyond the end of the stored data, and in some cases, modifying the
data beyond the end of the buffer by attempting to set the least significant
bit of each byte accessed.

Impact
------
Exploiting this bug causes a heap buffer overflow. If a user opens a file
crafted to exploit this issue, it could lead to the program crashing, or
overwriting of data and heap structures in ways not expected by the
program. It may be possible to use this to obtain arbitrary code execution.

Severity: High
--------------
CVSS:4.0/AV:N/AC:L/AT:N/PR:N/UI:N/VC:N/VI:H/VA:L/SC:N/SI:N/SA:N

Patches
-------
Versions 1.21.2, 1.22.3, 1.23.2 and 1.24 include fixes for this issue.

Workarounds
-----------
There is no workaround for this issue.

References
----------
https://github.com/samtools/htslib/security/advisories/GHSA-2wm6-8hgm-7g92

Credits
-------
Thanks to VulnSeeker Security Research for reporting this issue.



Heap write overflow in HTSlib FASTA index handling
==================================================

Description
-----------
HTSlib is a library for reading and writing bioinformatics file
formats. FASTA files hold reference DNA sequences and have an associated
index, in .fai format, to permit random access. The fai_retrieve function
does not validate the line length in the fai index file is greater or equal
to the number of bases present per line.

Impact
------
When the line length is one less than the number of bases per line, this
leads to writing one byte beyond the end of the allocated heap buffer. With
more than 1 byte difference between length and base count, this fails due to
a negative malloc which will return NULL with the error being correctly
handled.

Severity: High
--------------
CVSS:4.0/AV:N/AC:L/AT:N/PR:N/UI:P/VC:N/VI:H/VA:L/SC:N/SI:N/SA:N

Patches
-------
Versions 1.24, 1.23.2, 1.22.3 and 1.21.2 include fixes for this issue.

Workarounds
-----------
There is no workaround for this issue.

References
----------
https://github.com/samtools/htslib/security/advisories/GHSA-4hjq-r829-8c8v



Heap write overflow in HTSlib CRAM index handling
=================================================

Description
-----------
HTSlib is a library for reading and writing bioinformatics file
formats. CRAM is a compressed format which stores DNA sequence alignment
data. It has an associated index, the .crai format, to permit random
access. The cram_index_load function does not validate that the CRAM index
file has the same number or fewer reference sequences as the CRAM file
header.

Impact
------
With a malformed CRAI index file, this can lead to unbounded memory
allocations, offering the potential for Denial Of Service attacks. When the
number of references in the index is within 2 of INT_MAX, the check to grow
the memory fails due to integer wrap-around, leading to reading beyond the
end of an heap buffer. The contents of that read are then used as a pointer
to write to, leading to an unvalidated memory write.

This is triggered by any region query, even valid ones.

Severity: High
--------------
CVSS:4.0/AV:N/AC:L/AT:N/PR:N/UI:P/VC:N/VI:H/VA:L/SC:N/SI:N/SA:N

Patches
-------
Versions 1.24, 1.23.2, 1.22.3 and 1.21.2 include fixes for this issue.

Workarounds
-----------
There is no workaround for this issue.

References
----------
https://github.com/samtools/htslib/security/advisories/GHSA-28r7-prwc-hf5c



Stack write overflow in HTSlib CRAM decoder
===========================================

Description
-----------
HTSlib is a library for reading and writing bioinformatics file
formats. CRAM is a compressed format which stores DNA sequence alignment
data. The query-name is limited to 254 characters by the specification and
the name is decoded into a 1024 byte array on the stack. However the name
length limitation was validated too late, providing a mechanism to overflow
the local stack array based on input from user-controlled data. This
validation has now also been added to the cram_decode_slice function. This
affects all versions of the CRAM file format.

Impact
------
Exploiting this bug causes a stack write overflow. If a user opens a file
crafted to exploit this issue, it could lead to the program crashing, or
overwriting of data in ways not expected by the program. It may be possible
to use this to obtain arbitrary code execution.

Severity: High
--------------
CVSS:4.0/AV:N/AC:L/AT:N/PR:N/UI:N/VC:N/VI:H/VA:L/SC:N/SI:N/SA:N

Patches
-------
Versions 1.24, 1.23.2, 1.22.3 and 1.21.2 include fixes for this issue.

Workarounds
-----------
There is no workaround for this issue.

References
----------
https://github.com/samtools/htslib/security/advisories/GHSA-2jx2-wm7f-rv9m

Credits
-------
Thanks to Claude and Ada Logics for reporting bugs caused by the late
validation.



Out-of-bounds read in HTSlib CRAM 3.x / 4.0 readers due to improper validation
==============================================================================

Description
-----------
HTSlib is a library for reading and writing bioinformatics file
formats. CRAM is a compressed format which stores DNA sequence alignment
data. The CRAM BETA decoder and the experimental CRAM v4 XPACK decoder,
functions cram_beta_decode_long, cram_beta_decode_int,
cram_beta_decode_char, cram_xpack_decode_long and cram_xpack_decode_int,
have flaws in the bounds checking caused by an integer overflow after a
multiplication, leading to reading beyond the supplied input buffer.

Impact
------
This bug may allow information about program state to be leaked. It may also
cause a program crash through an attempt to access invalid memory.

Severity: Moderate
------------------
CVSS:4.0/AV:N/AC:L/AT:N/PR:N/UI:N/VC:L/VI:N/VA:L/SC:N/SI:N/SA:N

Patches
-------
Versions 1.24, 1.23.2, 1.22.3 and 1.21.2 include fixes for this issue

Workarounds
-----------
There is no workaround for this issue.

References
----------
https://github.com/samtools/htslib/security/advisories/GHSA-rjqv-xg3q-g423

Credits
-------
Thanks to Team Atlanta for reporting the initial issue.



Heap read and write overflow in HTSlib CRAM 4.0 decoder
=======================================================

Description
-----------
HTSlib is a library for reading and writing bioinformatics file
formats. CRAM is a compressed format which stores DNA sequence alignment
data. The experimental CRAM v4 format XPACK and XRLE decoders cache a copy
of the block pointer in the slice->block_by_id array, but beyond the
allocated extents of this array (always 512 elements). This is initially a
read to check whether the block is known. If this is zero, a memory block is
allocated and written to this array element.

Impact
------
These codecs always trigger a heap read overrun. This may lead to a crash if
the data read was an invalid non-NULL pointer. If it is NULL, this will then
lead to a heap write overrun. The index into this buffer is partially
controlled by data within the input file supplied by the user. It may be
possible to use this to obtain arbitrary code execution.

Severity: High
--------------
CVSS:4.0/AV:N/AC:L/AT:N/PR:N/UI:N/VC:N/VI:H/VA:L/SC:N/SI:N/SA:N

Patches
-------
Versions 1.24, 1.23.2, 1.22.3 and 1.21.2 include fixes for this issue.

Workarounds
-----------
There is no workaround for this issue.

References
----------
https://github.com/samtools/htslib/security/advisories/GHSA-6q7c-m967-9v37

Credits
-------
Thanks to Trail of Bits and Anthropic for reporting this issue.



Out-of-bounds read in HTSlib CRAM 4.0 reader due to improper validation
=======================================================================

Description
-----------
HTSlib is a library for reading and writing bioinformatics file
formats. CRAM is a compressed format which stores DNA sequence alignment
data. The experimental CRAM v4 XPACK and XRLE decoders, functions
cram_xpack_decode_char and cram_xrle_decode_char, lack array range
validation. This can be governed by user-controlled input, leading to
reading beyond the supplied input buffer.

Impact
------
This bug may allow information about program state to be leaked. It may also
cause a program crash through an attempt to access invalid memory.

Severity: Moderate
------------------
CVSS:4.0/AV:N/AC:L/AT:N/PR:N/UI:N/VC:L/VI:N/VA:L/SC:N/SI:N/SA:N

Patches
-------
Versions 1.24, 1.23.2, 1.22.3 and 1.21.2 include fixes for this issue

Workarounds
-----------
There is no workaround for this issue.

References
----------
https://github.com/samtools/htslib/security/advisories/GHSA-hg3g-v57p-459q

Credits
-------
Thanks to Team Atlanta for reporting this issue.

----------------------------------------------------------------------
The Wellcome Sanger Institute is operated by Genome Research Limited, a charity registered in England with number 1021457 and a company registered in England with number 2742969, whose registered office is Wellcome Sanger Institute, Wellcome Genome Campus, Hinxton, CB10 1SA.
