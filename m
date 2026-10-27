X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/27/7
Message-ID:  <PAXPR07MB8843E033C936D12D34D966BE91602@PAXPR07MB8843.eurprd07.prod.outlook.com>
Date: Tue, 27 Oct 2026 16:36:51 +0000
From: Robert Davies <rmd@...ger.ac.uk>
To: "oss-security@...ts.openwall.com" <oss-security@...ts.openwall.com>
CC: samtools <samtools@...ger.ac.uk>
Subject: Multiple vulnerabilities in samtools <= 1.24
Content-Type: text/plain; charset=utf-8

Multiple vulnerabilities, listed below, have been disclosed in the samtools
package.  These have all been fixed in a new release 1.25 and have also been
pack-ported to versions 1.24.1, 1.23.3, 1.22.4 and 1.21.3

We do not yet have CVE numbers for these as our CVE assigning authority,
GitHub, has a long backlog.  Therefore we are linking to the GitHub pages as
these will be updated automatically once the CVEs have been assigned.

Contents
========

* High severity:
  - Stack write overflow in samtools mpileup read groups file reader

* Moderate severity:
  - Use-after-free in samtools mpileup leading to an invalid read
  - Out-of-bounds reads and NULL pointer dereferences due to failure to
    validate data types
  - SAMtools out-of-bounds read in fixmate subcommand


Stack write overflow in samtools mpileup read groups file reader
================================================================


Description
-----------

SAMtools is a program for reading, manipulating and writing
bioinformatics file formats. The mpileup command outputs DNA sequences
that have been aligned against a known reference. One of the options
to mpileup allows filtering of data against a list of "read groups"
stored in a file. The data in this file was read into a fixed-size
buffer on the stack using the C scanf() function without specifying
the size of the destination. If an item in the file was long enough,
user-controlled data would be written to memory beyond the end of the
stack buffer.

Impact
------

Exploiting this bug causes a stack write overflow. If a user opens a
file crafted to exploit this issue, it could lead to the program
crashing, or overwriting of data in ways not expected by the
program. It may be possible to use this to obtain arbitrary code
execution.

Severity
--------

High: 7.1/10

CVSS:4.0/AV:N/AC:L/AT:N/PR:N/UI:P/VC:N/VI:H/VA:L/SC:N/SI:N/SA:N

Patches
-------

Versions 1.21.3, 1.22.4, 1.23.3, 1.24.1 and 1.25 include fixes for this issue.

Workarounds
-----------

There is no workaround for this issue.

References
----------

https://github.com/samtools/samtools/security/advisories/GHSA-vh3p-9c59-j3hv


Use-after-free in samtools mpileup leading to an invalid read
=============================================================


Description
-----------

SAMtools is a program for reading, manipulating and writing
bioinformatics file formats. The mpileup command outputs DNA sequences
that have been aligned against a known reference. On each output line
it writes the reference position, optionally the reference DNA base at
that position (obtained from a separate file) and all of the DNA bases
that aligned to that position. As the output is ordered by position,
reference data that is no longer needed is discarded once it has been
printed out. Under certain conditions the data could be discarded too
early, leading to an attempt to read from a pointer to freed
memory. While previous fixes had attempted to address this problem, it
unfortunately resurfaced following an update to try to reduce cache
thrashing as some inputs broke assumptions on which references were
still in use.

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

This bug is fixed in versions 1.23.3, 1.24.1 and 1.25.

Workarounds
-----------

There is no workaround for this issue.

References
----------

https://github.com/samtools/samtools/security/advisories/GHSA-xj7m-w8mc-xvf2

Credits
-------

Thanks to James Smagala for reporting this issue


Out-of-bounds reads and NULL pointer dereferences due to failure to validate data types
=======================================================================================


Description
-----------

SAMtools is a program for reading, manipulating and writing
bioinformatics file formats. The DNA sequence alignment formats
supported by SAMtools allow optional typed data to be stored for each
record in the file. String-type data is stored as a keys and type code
followed by a zero-terminated character array in the manner of C
strings. In a number of places, the strings were accessed without
proper validation of the type code for the stored data. Depending on
where this happened, this could result in either a NULL pointer or an
unterminated string being passed to C functions such as strcmp() or
strdup(), leading to either a NULL pointer dereference, or a read past
the end of the stored data.

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

Versions 1.21.3, 1.22.4, 1.23.3, 1.24.1 and 1.25 include fixes for this issue.

Workarounds
-----------

There is no workaround for this issue.

References
----------

https://github.com/samtools/samtools/security/advisories/GHSA-3j6q-r48h-wvm3


SAMtools out-of-bounds read in fixmate subcommand
=================================================

Details
-------

SAMtools is a program for reading, manipulating and writing
bioinformatics file formats. The sequence alignment formats allow
information about DNA base modifications to be stored on alignment
records in the form of MM, ML and MN tagged auxiliary data (See
https://samtools.github.io/hts-specs/SAMtags.pdf#subsection.1.7). Due
to a bug in the samtools fixmates sub-command, if the -M option was
used, but some or all of the tags used to describe base modifications
were not present, the program would incorrectly set a length
parameter, and then attempt to write data from beyond the end of the
buffer used to store the alignment data to its output file.

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

Versions 1.21.3, 1.22.4, 1.23.3, 1.24.1 and 1.25 include fixes for this issue.

Workarounds
-----------

There is no workaround for this issue.

References
----------

https://github.com/samtools/samtools/security/advisories/GHSA-f423-v554-fwqr

----------------------------------------------------------------------
The Wellcome Sanger Institute is operated by Genome Research Limited, a charity registered in England with number 1021457 and a company registered in England with number 2742969, whose registered office is Wellcome Sanger Institute, Wellcome Genome Campus, Hinxton, CB10 1SA.
