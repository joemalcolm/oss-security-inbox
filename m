X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/18/2
Message-ID: <tencent_AED50241487787AEC5AD91ABAD05344A0408@qq.com>
Date: Wed, 18 Nov 2026 10:19:31 +0800
From: "HeavenMonkey" <dr.houwei@...mail.com>
To: "rorden" <rorden@...lbox.sc.edu>
Cc: "oss-security" <oss-security@...ts.openwall.com>
Subject: Security report: out-of-bounds read in dcm2niix CSA header parsing (crafted DICOM causes crash, CWE-125)
Content-Type: text/plain; charset=utf-8

Hi Chris,


I would like to report a security issue in dcm2niix's Siemens CSA header
parsing. Short version: a crafted DICOM file of a few hundred bytes causes a
deterministic out-of-bounds read that crashes dcm2niix with SIGSEGV, in both
sanitizer and release builds. No special flags are needed - `dcm2niix file.dcm`
on the input is enough.


ROOT CAUSE


In console/nii_dicom.cpp, the CSA item-parsing loops in five helpers copy the
16-byte TCSAitem header from buff[lPos] without checking that lPos is still
inside the input buffer, and then advance lPos by ((itemCSA.xx2_Len + 3) / 4) * 4
where xx2_Len is a 32-bit length read directly from the file:


&nbsp; readCSAImageHeader() (~line 1681):
&nbsp; &nbsp; &nbsp; for (int lI = 1; lI <= tagCSA.nitems; lI++) {
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; memcpy(&amp;itemCSA, &amp;buff[lPos], sizeof(itemCSA)); &nbsp; // no bound check
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; lPos += sizeof(itemCSA);
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; if (!littleEndianPlatform())
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; nifti_swap_4bytes(1, &amp;itemCSA.xx2_Len);
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; lPos += ((itemCSA.xx2_Len + 3) / 4) * 4; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;// attacker-controlled
&nbsp; &nbsp; &nbsp; }


The identical memcpy + unguarded-advance pattern also appears in:
&nbsp; - csaIsPhaseMap() &nbsp; (~line 1499) &nbsp;<- the exact crash site I reproduced
&nbsp; - csaMultiFloat() &nbsp; (~line 1399)
&nbsp; - csaMultiDouble() &nbsp;(~line 1440)
&nbsp; - csaICEdims() &nbsp; &nbsp; &nbsp;(~line 1467) &nbsp; single-item variant


Setting xx2_Len to a large value (or nitems to a large count) makes the next
iteration's memcpy read far past the end of the input buffer.


I noticed the June 2026 audit (in-source comments "audit 2026-06-07 round-3 M2"
/ "round-6 M3") added NUL-terminator handling to the item payload copy
(malloc(xx2_Len + 1) + explicit '\0') in these same functions, but the
item-header memcpy itself was left unguarded - this report is the missing
bounds check on that same cursor.


REPRODUCTION (confirmed on current master, tag v1.0.20261029)


PoC: a ~330-byte crafted DICOM whose CSA Image Header (0029,1010) declares
nitems = 2 and a first item xx2_Len = 0x10000 (65536). The second item's header
copy reads ~64 KB past the input buffer.


With an AddressSanitizer build:


&nbsp; $ ./dcm2niix poc_csa_oob.dcm
&nbsp; ==6537==ERROR: AddressSanitizer: SEGV on unknown address 0x513000010166
&nbsp; ==6537==The signal is caused by a READ memory access.
&nbsp; &nbsp; &nbsp; #0 csaIsPhaseMap(unsigned char*, int) &nbsp; &nbsp; &nbsp;console/nii_dicom.cpp:1500
&nbsp; &nbsp; &nbsp; #1 readCSAImageHeader(...) &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; console/nii_dicom.cpp:1630
&nbsp; &nbsp; &nbsp; #2 readDICOMx &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;console/nii_dicom.cpp:8535
&nbsp; &nbsp; &nbsp; #3 nii_loadDirCore &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; console/nii_dicom_batch.cpp:15119
&nbsp; &nbsp; &nbsp; #4 main &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;console/main_console.cpp:651


A non-ASan release build also crashes: the read offset (tens of kilobytes past
a sub-kilobyte file buffer) lands on unmapped memory.


Attached: make_csa_poc.py (PoC generator) and poc_csa_oob.dcm (the 326-byte
input). Both are plain/small and safe to inspect.


IMPACT


- Availability: a single crafted DICOM file crashes any process that runs
&nbsp; dcm2niix on it - workstation converters, PACS ingest pipelines, and research
&nbsp; batch jobs that accept DICOM files from untrusted sources (patients,
&nbsp; external scanners, public datasets). dcm2niix is packaged in Debian and is
&nbsp; the standard DICOM-to-NIfTI converter in neuroimaging pipelines (fMRIPrep,
&nbsp; heudiconv, HCP), so the reachable surface is large.
- I did NOT demonstrate code execution or information disclosure: the
&nbsp; out-of-bounds data only drives the internal parse cursor and is not returned
&nbsp; to the caller. Please read this as an availability issue (CWE-125,
&nbsp; Out-of-bounds Read), not an RCE report.


SUGGESTED FIX


Bound the item cursor before each header copy in the five helpers, e.g.:


&nbsp; if ((size_t)(end - &amp;buff[lPos]) < sizeof(itemCSA)) break;


passing the buffer end (lLength) down from readCSAImageHeader, and clamp
xx2_Len to the remaining input length before advancing. The same guard should
be shared by all five helpers.


DISCLOSURE


dcm2niix is packaged in Debian and widely deployed in medical/neuroimaging
pipelines, so I would like to suggest handling this through GitHub Security
Advisory (GHSA) so the fix gets a tracked identifier and downstream packagers
(Debian) can follow it. If you prefer, I am also happy for you to simply
commit a fix and reference this report in the commit message - your call
entirely. If you decide it warrants a CVE through the GHSA process, that would
help packagers track it, but a quiet hardening fix is perfectly fine by me.


I am of course glad to be credited if you publish an advisory, but please
handle it however works best for you. Happy to provide more reproducer
material or test a patch.


Thanks for the great tool,
Hou Wei (h-o-u-w-e-i in Github)
Content of type "text/html" skipped

Download attachment "poc_csa_oob.zip" of type "application/octet-stream" (1432 bytes)
