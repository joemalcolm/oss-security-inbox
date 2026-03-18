Received: (qmail 20336 invoked by uid 550); 18 Mar 2026 21:52:21 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 18317 invoked from network); 18 Mar 2026 21:10:06 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sanger.ac.uk; h=
	cc:content-type:date:from:message-id:mime-version:subject:to; s=
	sendkey1; bh=Sv9suc8CJ3xjQdizPE8Sq2KhhVIuhYEo7+kgmQH9A0A=; b=otF
	dknYuQzCREx5w68EkjRLaUpOVZezNS9QmnnCMClrULc8KwfAxXBnwvHPighBExt7
	ZYkjfc0jWDR6CiCZ0ccKWNK5Ae+CeUrH0BaE93LComE/yksVYFMM8QLjJxxKn/xX
	nMoYRW9SLPk3z45t+lx2yr3LqwSIxjhMpfsRS8mo44tyxf+OZbBb7twyY095FlRD
	9r5J/vdIwWO6I+FuQv1ksQllwE1PkjSoU1/TL6Wr71djUZTQOkApXad/mtaOKpjP
	FNhTjyrUq0ojMfoa+PnB+a82/hoSTCnXQyqs/TTBdcGXXBEPca8S+F0rQ84137Bj
	Bypo5zPaiFSCc1sQt8Q==
Date: Wed, 18 Mar 2026 21:09:56 +0000 (GMT)
From: Robert Davies <rmd@sanger.ac.uk>
To: oss-security@lists.openwall.com
cc: samtools@sanger.ac.uk
Message-ID: <alpine.DEB.2.21.2603182108590.16613@seq4-head1.internal.sanger.ac.uk>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Authority-Analysis: v=2.4 cv=N/Ik1m9B c=1 sm=1 tr=0 ts=69bb14a5 cx=c_pps
 a=GB2mOsVFTDkI4gmwoe4Z0A==:117 a=GB2mOsVFTDkI4gmwoe4Z0A==:17
 a=kj9zAlcOel0A:10 a=Yq5XynenixoA:10 a=x7bEGLp0ZPQA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=-A0x2dZHY_x99t24LF_B:22 a=_MkW9hIkd_p2jkqWG7xA:22
 a=NEAV23lmAAAA:8 a=8r2qhXULAAAA:8 a=aSR_xum1AAAA:8 a=lwDGWbeVAAAA:8
 a=s2z4QXKKowTAj9Ots-EA:9 a=CjuIK1q_8ugA:10 a=8gvLZcY7Nlvl4CGD_6nf:22
 a=dYLx_L0FrD5e4YvVJn9e:22
X-Proofpoint-GUID: U8hTYys1b7ydL523CoKA91bTlgOEZZ_6
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE4MDE4MiBTYWx0ZWRfXwNKhBbP4JKAv
 RZEnR8GgDLhHxBeApmEVPFjn/X675beYGQ+o7zi+YzkWHD/wJY+9XtPJ5+v0AlJgGZFjiRn7C4y
 hH53Lulzzn0J3M8SKAnvag5810gC0weGwDaNxR2labvx8j4r1b3bDACTrR8g0F79t8MNnY6/WPb
 8HOcG/zvtkTCWTw9EAIoPFdFYZDQOAvMwO/Yy5SOT7JnRKKUgwJFzEHragfePdO7e4UCOVYismD
 JU4dvINJafEeewOs/tsP4IpTFarA5TJ0jYWH1gWczK0Pm6c8y7TGnhS3eHUnsvpWxM+5968CujG
 sRALtc/dtnsIAyNXbw2F6ddPSeKUa2nhnxNLh00ZWOyeWMwX2BhwxrI3GGgEH0BfCkfKOCxzzyk
 CcMAgJpx4Ab/k2b/85vLhHw6+kTZTOqcS0sjGytYevrGc8cy6qMcQVw0bx5MmYK+aL0WO8fd5OK
 JaD1ltGyKQ5T2p1y1aQ==
X-Proofpoint-ORIG-GUID: U8hTYys1b7ydL523CoKA91bTlgOEZZ_6
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-18_01,2026-03-17_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 impostorscore=0 priorityscore=1501 adultscore=0 clxscore=1034
 lowpriorityscore=0 malwarescore=0 spamscore=0 phishscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603180182
Subject: [oss-security] HTSlib <= 1.23 Multiple vulnerabilities in the CRAM file reader


Multiple vulnerabilities, listed below, have been disclosed
in the HTSlib CRAM file reader.  These have all been fixed in
version 1.23.1, and fixes have also been back-ported to
versions 1.22.2 and 1.21.1


CVE-2026-31962 Severity: High
=============================

Heap buffer overflow in HTSlib CRAM reader due to improper validation of input

Description
-----------

HTSlib is a library for reading and writing bioinformatics file formats.
CRAM is a compressed format which stores DNA sequence alignment data.
While most alignment records store DNA sequence and quality values, the
format also allows them to omit this data in certain cases to save space.
Due to some quirks of the CRAM format, it is necessary to handle these
records carefully as they will actually store data that needs to be consumed
and then discarded. Unfortunately the cram_decode_seq() did not handle this
correctly in some cases. Where this happened it could result in reading a
single byte from beyond the end of a heap allocation, followed by writing a
single attacker-controlled byte to the same location.

Impact
------

Exploiting this bug causes a heap buffer overflow. If a user opens a file
crafted to exploit this issue, it could lead to the program crashing, or
overwriting of data and heap structures in ways not expected by the program.
It may be possible to use this to obtain arbitrary code execution.

Severity
--------

High CVSS:4.0/AV:N/AC:L/AT:N/PR:N/UI:N/VC:L/VI:H/VA:L/SC:N/SI:N/SA:N

Patches
-------

Versions 1.23.1, 1.22.2 and 1.21.1 include fixes for this issue.

Workarounds
-----------

There is no workaround for this issue.

References
----------

https://github.com/samtools/htslib/security/advisories/GHSA-xxmp-v7h3-gpwp
https://www.cve.org/CVERecord?id=CVE-2026-31962


CVE-2026-31963 Severity: High
=============================

Heap buffer overflow in HTSlib CRAM reader due to improper validation of input

Description
-----------

HTSlib is a library for reading and writing bioinformatics file formats.
CRAM is a compressed format which stores DNA sequence alignment data. As
one method of removing redundant data, CRAM uses reference-based compression
so that instead of storing the full sequence for each alignment record it
stores a location in an external reference sequence along with a list of
differences to the reference at that location as a sequence of "features".
When decoding these features, an out-by-one error in a test for CRAM features
that appear beyond the extent of the CRAM record sequence could result in an
invalid write of one attacker-controlled byte beyond the end of a heap buffer.

Impact
------

Exploiting this bug causes a heap buffer overflow. If a user opens a file
crafted to exploit this issue, it could lead to the program crashing, or
overwriting of data and heap structures in ways not expected by the program.
It may be possible to use this to obtain arbitrary code execution.

Severity
--------

High CVSS:4.0/AV:N/AC:L/AT:N/PR:N/UI:N/VC:N/VI:H/VA:L/SC:N/SI:N/SA:N

Patches
-------

Versions 1.23.1, 1.22.2 and 1.21.1 include fixes for this issue.

Workarounds
-----------

There is no workaround for this issue.

References
----------

https://github.com/samtools/htslib/security/advisories/GHSA-qgqh-h2q9-7w3c
https://www.cve.org/CVERecord?id=CVE-2026-31963


CVE-2026-31968 Severity: High
=============================

Buffer overflow vulnerabilities in HTSlib CRAM decoder

Description
-----------

HTSlib is a library for reading and writing bioinformatics file formats.
CRAM is a compressed format which stores DNA sequence alignment data using
a variety of encodings and compression methods. For the VARINT and CONST
encodings, incomplete validation of the context in which the encodings were
used could result in up to eight bytes being written beyond the end of a
heap allocation, or up to eight bytes being written to the location of a one
byte variable on the stack, possibly causing the values to adjacent variables
to change unexpectedly.

Impact
------

Depending on the data stream this could result either in a heap buffer
overflow or a stack overflow. If a user opens a file crafted to exploit
this issue it could lead to the program crashing, overwriting of data
structures on the heap or stack in ways not expected by the program, or
changing the control flow of the program. It may be possible to use this
to obtain arbitrary code execution.

Severity
--------

High CVSS:4.0/AV:N/AC:L/AT:N/PR:N/UI:N/VC:N/VI:H/VA:L/SC:N/SI:N/SA:N

Patches
-------

Versions 1.23.1, 1.22.2 and 1.21.1 include fixes for this issue.

Workarounds
-----------

There is no workaround for this issue.

References
----------

https://github.com/samtools/htslib/security/advisories/GHSA-cgcm-c9r2-p57j
https://www.cve.org/CVERecord?id=CVE-2026-31968


CVE-2026-31969 Severity: High
=============================

Heap buffer overflow in HTSlib CRAM decoder

Description
-----------

HTSlib is a library for reading and writing bioinformatics file formats.
CRAM is a compressed format which stores DNA sequence alignment data using
a variety of encodings and compression methods. When reading data encoded
using the BYTE_ARRAY_STOP method, an out-by-one error in the
cram_byte_array_stop_decode_char() function check for a full output buffer
could result in a single attacker-controlled byte being written beyond the
end of a heap allocation.

Impact
------

Exploiting this bug causes a heap buffer overflow. If a user opens a file crafted to exploit this issue, it could lead to the program crashing, or overwriting of data and heap structures in ways not expected by the program. It may be possible to use this to obtain arbitrary code execution.

Severity
--------

High CVSS:4.0/AV:N/AC:L/AT:N/PR:N/UI:P/VC:N/VI:H/VA:L/SC:N/SI:N/SA:N

Patches
-------

Versions 1.23.1, 1.22.2 and 1.21.1 include fixes for this issue.

Workarounds
-----------

There is no workaround for this issue.

References
----------

https://github.com/samtools/htslib/security/advisories/GHSA-q4cj-f4h5-fqgc
https://www.cve.org/CVERecord?id=CVE-2026-31969


CVE-2026-31971 Severity: High
=============================

Buffer overflow vulnerabilities in HTSlib CRAM decoder

Description
-----------

HTSlib is a library for reading and writing bioinformatics file formats.
CRAM is a compressed format which stores DNA sequence alignment data using
a variety of encodings and compression methods. When reading data encoded
using the BYTE_ARRAY_LEN method, the cram_byte_array_len_decode() failed to
validate that the amount of data being unpacked matched the size of the
output buffer where it was to be stored. Depending on the data series being
read, this could result either in a heap or a stack overflow with
attacker-controlled bytes.

Impact
------

Depending on the data stream this could result either in a heap buffer
overflow or a stack overflow. If a user opens a file crafted to exploit
this issue it could lead to the program crashing, overwriting of data
structures on the heap or stack in ways not expected by the program, or
changing the control flow of the program. It may be possible to use this
to obtain arbitrary code execution.

Severity
--------

High CVSS:4.0/AV:N/AC:L/AT:N/PR:N/UI:P/VC:N/VI:H/VA:L/SC:N/SI:N/SA:N

Patches
-------

Versions 1.23.1, 1.22.2 and 1.21.1 include fixes for this issue.

Workarounds
-----------

There is no workaround for this issue.

References
----------

https://github.com/samtools/htslib/security/advisories/GHSA-jvx4-4wq7-6fmh
https://www.cve.org/CVERecord?id=CVE-2026-31971


CVE-2026-31964 Severity: Moderate
=================================

NULL Pointer Dereference in HTSlib CRAM decoder

Description
-----------

HTSlib is a library for reading and writing bioinformatics file formats.
CRAM is a compressed format which stores DNA sequence alignment data using
a variety of encodings and compression methods. While most alignment records
store DNA sequence and quality values, the format also allows them to omit
this data in certain cases to save space. Due to some quirks of the CRAM
format, it is necessary to handle these records carefully as they will
actually store data that needs to be consumed and then discarded.
Unfortunately the CONST, XPACK and XRLE encodings did not properly implement
the interface needed to do this. Trying to decode records with omitted
sequence or quality data using these encodings would result in an attempt
to write to a NULL pointer.

Impact
------

Exploiting this bug causes a NULL pointer dereference. Typically this will
cause the program to crash.

Severity
--------

Moderate CVSS:4.0/AV:N/AC:L/AT:N/PR:N/UI:N/VC:N/VI:L/VA:L/SC:N/SI:N/SA:N

Patches
-------

Versions 1.23.1, 1.22.2 and 1.21.1 include fixes for this issue.

Workarounds
-----------

There is no workaround for this issue.

References
----------

https://github.com/samtools/htslib/security/advisories/GHSA-5w97-85gf-86rm
https://www.cve.org/CVERecord?id=CVE-2026-31964


CVE-2026-31965 Severity: Moderate
=================================

Out-of-bounds reads in HTSlib CRAM reader due to improper validation of input

Description
-----------

HTSlib is a library for reading and writing bioinformatics file formats.
CRAM is a compressed format which stores DNA sequence alignment data. In
the cram_decode_slice() function called while reading CRAM records,
validation of the reference id field occurred too late, allowing two out
of bounds reads to occur before the invalid data was detected.

Impact
------

The bug does allow two values to be leaked to the caller, however as the
function reports an error it may be difficult to exploit them. It is also
possible that the program will crash due to trying to access invalid memory.

Severity
--------

Moderate CVSS:4.0/AV:N/AC:L/AT:N/PR:N/UI:N/VC:L/VI:N/VA:L/SC:N/SI:N/SA:N

Patches
-------

Versions 1.23.1, 1.22.2 and 1.21.1 include fixes for this issue.

Workarounds
-----------

There is no workaround for this issue.

References
----------

https://github.com/samtools/htslib/security/advisories/GHSA-mqm2-v645-3qhr
https://www.cve.org/CVERecord?id=CVE-2026-31965


CVE-2026-31966 Severity: Moderate
=================================

Out-of-bounds read in HTSlib CRAM reader due to improper validation of input

Description
-----------

HTSlib is a library for reading and writing bioinformatics file formats.
CRAM is a compressed format which stores DNA sequence alignment data. As
one method of removing redundant data, CRAM uses reference-based compression
so that instead of storing the full sequence for each alignment record it
stores a location in an external reference sequence along with a list of
differences to the reference at that location as a sequence of "features".
When decoding CRAM records, the reference data is stored in a char array,
and parts matching the alignment record sequence are copied over as necessary.
Due to insufficient validation of the feature data series, it was possible
to make the cram_decode_seq() function copy data from either before the
start, or after the end of the stored reference either into the buffer used
to store the output sequence for the cram record, or into the buffer used to
build the SAM MD tag. This allowed arbitrary data to be leaked to the calling
function.

Impact
------

This bug may allow information about program state to be leaked. It may also
cause a program crash through an attempt to access invalid memory.

Severity
--------

Moderate CVSS:4.0/AV:N/AC:L/AT:N/PR:N/UI:N/VC:L/VI:N/VA:L/SC:N/SI:N/SA:N

Patches
-------

Versions 1.23.1, 1.22.2 and 1.21.1 include fixes for this issue.

Workarounds
-----------

There is no workaround for this issue.

References
----------

https://github.com/samtools/htslib/security/advisories/GHSA-5cj8-mj52-8vp3
https://www.cve.org/CVERecord?id=CVE-2026-31966


CVE-2026-31967 Severity: Moderate
=================================

Out-of-bounds read in HTSlib CRAM reader due to improper validation of input

Description
-----------

HTSlib is a library for reading and writing bioinformatics file formats.
CRAM is a compressed format which stores DNA sequence alignment data. In the
cram_decode_slice() function called while reading CRAM records, the value of
the mate reference id field was not validated. Later use of this value, for
example when converting the data to SAM format, could result in the out of
bounds array reads when looking up the corresponding reference name. If the
array value obtained also happened to be a valid pointer, it would be
interpreted as a string and an attempt would be made to write the data as
part of the SAM record.

Impact
------

This bug may allow information about program state to be leaked. It may also cause a program crash through an attempt to access invalid memory.

Severity
--------

Moderate CVSS:4.0/AV:N/AC:L/AT:N/PR:N/UI:N/VC:L/VI:N/VA:L/SC:N/SI:N/SA:N

Patches
-------

Versions 1.23.1, 1.22.2 and 1.21.1 include fixes for this issue.

Workarounds
-----------

There is no workaround for this issue.

References
----------

https://github.com/samtools/htslib/security/advisories/GHSA-33x5-c6vj-8f2w
https://www.cve.org/CVERecord?id=CVE-2026-31967

-- 

The SAMtools team   https://www.htslib.org/  https://www.sanger.ac.uk/


----------------------------------------------------------------------
The Wellcome Sanger Institute is operated by Genome Research Limited, a charity registered in England with number 1021457 and a company registered in England with number 2742969, whose registered office is Wellcome Sanger Institute, Wellcome Genome Campus, Hinxton, CB10 1SA.
