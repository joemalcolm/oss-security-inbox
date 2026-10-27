X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/27/6
Message-ID:  <PAXPR07MB8843C54819D18737D74C468791602@PAXPR07MB8843.eurprd07.prod.outlook.com>
Date: Tue, 27 Oct 2026 16:35:46 +0000
From: Robert Davies <rmd@...ger.ac.uk>
To: "oss-security@...ts.openwall.com" <oss-security@...ts.openwall.com>
CC: samtools <samtools@...ger.ac.uk>
Subject: Multiple vulnerabilities in HTSlib <= 1.24
Content-Type: text/plain; charset=utf-8

Multiple vulnerabilities, listed below, have been disclosed in the HTSlib
package.  These have all been fixed in a new release 1.25 and have also been
pack-ported to versions 1.24.1, 1.23.3, 1.22.4 and 1.21.3

We do not yet have CVE numbers for these as our CVE assigning authority,
GitHub, has a long backlog.  Therefore we are linking to the GitHub pages as
these will be updated automatically once the CVEs have been assigned.

Contents
========

 * High severity:
   - Free of uninitialised pointer in HTSlib index file reader.
   - Heap write overflow in VCF reader due to improper validation of input

 * Moderate severity:
   - Use after free and double free in HTSlib preload file handler.
   - Out of bounds read of index metadata due to improper validation of input
   - Double free bugs handling out-of-memory conditions in HTSlib
   - Use after free in HTSlib VCF/BCF reader on file close errors

 * Low severity:
   - Use-after-free in HTSlib http auth token refresh handler


Free of uninitialised pointer in HTSlib index file reader.
==========================================================

Description
-----------

HTSlib is a library for reading and writing bioinformatics file
formats. When reading .bai, .csi or .tbx index files, it was possible
to reach error handling code that caused the indexing function to exit
after adding a hash table entry but before it was fully
initialised. When this happened, subsequent error handling code would
try to free memory pointed to by the hash table entry, resulting in
either an attempt to free an uninitialised pointer, or in some cases a
double free.

Impact
------

This bug can cause an uninitialised pointer, or a pointer to a freed
memory buffer to be passed to free(). This may lead to data being
written to arbitrary locations, heap corruption, of the program
crashing. It may be possible to use this to obtain arbitrary code
execution.

Severity
--------

High: 8.8/10

CVSS:4.0/AV:N/AC:L/AT:N/PR:N/UI:N/VC:N/VI:H/VA:L/SC:N/SI:N/SA:N

Patches
-------

Versions 1.21.3, 1.22.4, 1.23.3, 1.24.1 and 1.25 include fixes for this issue.

Workarounds
-----------

There is no work-around for this issue.

References
----------

https://github.com/samtools/htslib/security/advisories/GHSA-38qp-vpxq-r6xc

Credits
-------

Thanks to maxmlz for reporting this issue.


Heap write overflow in VCF reader due to improper validation of input
=====================================================================

Details
-------

HTSlib is a library for reading and writing bioinformatics file
formats. VCF is a format which stores data on genomic variation. A
feature of the VCF parser allows some columns to be skipped if they
are not needed for later analysis. If this feature was used, and the
input record contained an ASCII NUL (0) byte in a skipped column, it
was possible to make later stages of the parser lose track of which
column it was reading, potentially resulting in a write of
attacker-controlled data beyond the end of the buffer allocated to
store the data.

Impact
------

Exploiting this bug allows one or more attacker-controlled bytes to be
written beyond the end of a heap allocation. If a user opens a file
crafted to exploit this issue, and is using the record filtering
option, it could lead to the program crashing, or overwriting of data
and heap structures in ways not expected by the program. It may be
possible to use this to obtain arbitrary code execution.

Severity
--------

High: 7.1/10

CVSS:4.0/AV:N/AC:L/AT:N/PR:N/UI:P/VC:N/VI:H/VA:L/SC:N/SI:N/SA:N

Patches
-------

Versions 1.21.3, 1.22.4, 1.23.3, 1.24.1, and 1.25 include fixes for this issue.

Workarounds
-----------

There are no workarounds for this issue.

References
----------

https://github.com/samtools/htslib/security/advisories/GHSA-6qq4-hj39-g6ph

Credits
-------

Thanks to haehet (https://github.com/haehet) for reporting this issue.


Use after free and double free in HTSlib preload file handler.
==============================================================

Description
-----------

HTSlib is a library for reading and writing bioinformatics file
formats. Its file reading code includes a preload feature that will
load an input file into memory at the point where it is opened. Due to
an error handling bug, it was possible that the buffer used to store
the data could be freed twice, and the file handle could be closed
twice, if an error was reported on closing the file after all of the
data had been read. While getting a close-time error is unlikely for
files on local storage, it may be possible to trigger the bug when
reading files over the network, or when reading from some
(e.g. FUSE-based) filesystems.

Impact
------

This bug may allow information about program state to be leaked. It
may also cause a program crash through an attempt to access invalid
memory.

Severity
--------

Moderate: 6.9/10

CVSS:4.0/AV:N/AC:L/AT:N/PR:N/UI:N/VC:L/VI:N/VA:L/SC:N/SI:N/SA:N

Patches
-------

Versions 1.21.3, 1.22.4, 1.23.3, 1.24.1and 1.25 include fixes for this issue.

Workarounds
-----------

There is no work-around for this issue.

References
----------

https://github.com/samtools/htslib/security/advisories/GHSA-5cvj-m89h-h3cw

Credits
-------

Thanks to Xuqing Yang for reporting this bug.


Out of bounds read of index metadata due to improper validation of input
========================================================================

Description
-----------

HTSlib is a library for reading and writing bioinformatics file
formats. The .bai and .csi index formats for SAM and BAM files allow
some metadata about alignment counts to be stored inside the index
(see https://samtools.github.io/hts-specs/SAMv1.pdf#subsection.5.2 for
details). When accessing this data, HTSlib failed to validate that the
index entry requested was within the range actually stored in the
index. Where the entry did exist, it also failed to check that the
expected number of items were present. In both cases this could lead
to a read beyond the end of stored data. If the index entry was out of
bounds, the program would then attempt to use the value obtained in
further memory accesses. If the entry was undersized, it could lead to
a possible read of up to 32 bytes beyond the stored data.

Impact
------

This bug may allow information about program state to be leaked. It
may also cause a program crash through an attempt to access invalid
memory.

Severity
--------

Moderate: 6.9/10

CVSS:4.0/AV:N/AC:L/AT:N/PR:N/UI:N/VC:L/VI:N/VA:L/SC:N/SI:N/SA:N

Patches
-------

Versions 1.21.3, 1.22.4, 1.23.3, 1.24.1, and 1.25 include fixes for this issue.

Workarounds
-----------

There is no work-around for this issue.

References
----------

https://github.com/samtools/htslib/security/advisories/GHSA-vhg8-qwm7-cv9m

Credits
-------

Thanks to haehet (https://github.com/haehet) for reporting this issue.


Double free bugs handling out-of-memory conditions in HTSlib
============================================================

Description
-----------

HTSlib is a library for reading and writing bioinformatics file
formats. Inconsistencies over ownership of a region list data
structure when building file iterators resulting in the data being
freed twice if an out-of-memory condition was detected on some code
paths. It was also possible to get a double free when writing CRAM
files due to incorrect error handling code in the BYTE_ARRAY_LEN
encoder.

Impact
------

This bug may result in the heap being left in an inconsistent state, or a program abort or crash.

Severity
--------

Moderate: 6.3/10

CVSS:4.0/AV:N/AC:L/AT:P/PR:N/UI:N/VC:N/VI:N/VA:L/SC:N/SI:N/SA:N

Patches
-------

Versions 1.21.3, 1.22.4, 1.23.3, 1.24.1 and 1.25 include fixes for this issue.

Workarounds
-----------

There is no work-around for this issue.

References
----------

https://github.com/samtools/htslib/security/advisories/GHSA-2r8w-wxh5-c7r8

Credits
-------

Thanks to Xuqing Yang for reporting this bug.


Use after free in HTSlib VCF/BCF reader on file close errors
============================================================

Details
-------

HTSlib is a library for reading and writing bioinformatics file
formats. The synced BCF reader is a subsystem that reads genomic
variation records from one or more VCF or BCF files. Due to a bug in
handling of file close errors, the bcf_sr_destroy() function could
free a pointer to a file name before attempting to use it when
printing an error message.

Impact
------

This bug may allow information about program state to be leaked. It
may also cause a program crash through an attempt to access invalid
memory.

Severity
--------

Moderate: 5.3/10

CVSS:4.0/AV:N/AC:L/AT:N/PR:N/UI:P/VC:L/VI:N/VA:L/SC:N/SI:N/SA:N

Patches
-------

Versions 1.21.3, 1.22.4, 1.23.3, 1.24.1, and 1.25 include fixes for this issue.

Workarounds
-----------

There are no workarounds for this issue.

References
----------

https://github.com/samtools/htslib/security/advisories/GHSA-644m-mq4p-c7c6

Also reported by a third party as:
 https://euvd.enisa.europa.eu/vulnerability/EUVD-2026-110490

Credits
-------

Thanks to Junki Lee for reporting this issue.


Use-after-free in HTSlib http auth token refresh handler
========================================================

Description
-----------

HTSlib is a library for reading and writing bioinformatics file
formats. It includes a sub-system to read and write files over
http(s), which also supports reading authentication tokens from a
local file so that they can be passed on to the upstream server. It
also supports refreshing the tokens if they have expired by re-reading
the file (users are expected to have updated the file with a new token
before the old one ran out). A bug in handling the case where the
token file could not be opened by the refresh function could lead to a
stale pointer being left to the old token string. The library would
then attempt to make a copy of the token to use in an http
Authorization: header.

Impact
------

This bug may allow information about program state to be leaked. It
may also cause a program crash through an attempt to access invalid
memory.

Severity
--------

Low 1.0/10

CVSS:4.0/AV:L/AC:L/AT:P/PR:L/UI:P/VC:L/VI:N/VA:L/SC:N/SI:N/SA:N

Patches
-------

Versions 1.21.3, 1.22.4, 1.23.3, 1.24.1 and 1.25 include fixes for this issue.

Workarounds
-----------

This bug can only be triggered by using short-lived authorization
tokens to access resources, and arranging for the file used to supply
the token to be absent or otherwise unreadable when it is needed. The
likelihood of errors on file open can be reduced by ensuring that it
is replaced atomically - for example, by keeping it on a filesystem
with POSIX semantics, writing the new token to a file with a different
name, and then if successfully written, renaming the new file over the
top of the old one.

References
----------

https://github.com/samtools/htslib/security/advisories/GHSA-x79c-vxf6-6j9c

Credits
-------

Thanks to Xuqing Yang for reporting this issue.

----------------------------------------------------------------------
The Wellcome Sanger Institute is operated by Genome Research Limited, a charity registered in England with number 1021457 and a company registered in England with number 2742969, whose registered office is Wellcome Sanger Institute, Wellcome Genome Campus, Hinxton, CB10 1SA.
