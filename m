X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/12/8
Message-ID: <20261112224654.1c2b2d0a@hboeck.de>
Date: Thu, 12 Nov 2026 22:46:54 +0100
From: Hanno Böck <hanno@...eck.de>
To: oss-security@...ts.openwall.com
Subject: Fw: New cabextract 1.12 and libmspack 0.12alpha release
Content-Type: text/plain; charset=utf-8

Hi,

Forwarding this, various security issues fixed in cabextract and
libmspack.

Begin forwarded message:

Date: Thu, 12 Nov 2026 10:18:43 +0000
Subject: New cabextract 1.12 and libmspack 0.12alpha release

[...]

cabextract 1.12 and libmspack 0.12alpha have been released. This 
corrects security issues and bugs reported recently, mainly:

- An LZX uncompressed block header with invalid R0/R1/R2 values
  followed by a verbatim/aligned block referencing them can make
  libmspack write up to 2GB past the end of its history window
- CHM PMGL/PMGI lookups can have cycles, leading to infinite loops
- CAB sets where the first mergeable file has an invalid filename
  (blank or over 256 chars), and salvage mode is enabled, causes 
cabd_can_merge_folders to read already-freed memory
- CHM files with undersized ControlData/ResetTable files or invalid
  PMGI entry counts can make chminfo overread or underread its buffers
- CAB MS-ZIP and Quantum match offsets greater than the number of bytes 
already decoded makes libmspack read uninitialised memory from its 
history window and write it as output
- CAB files can "hide" entries (which other tools might see) using an 
atypical FileOffset value. libmspack warns on finding this discrepancy 
and salvage mode finds the "hidden" entries

For more details, see the ChangeLog in each tarball.

cabextract can be downloaded from https://www.cabextract.org.uk/
libmspack can be downloaded from 
https://www.cabextract.org.uk/libmspack/

SHA256 sums:

ef9819bafb09bb125c446606150abdcbe6987f4a44f7663dced8e8bafab3876d  
cabextract-1.12-1.src.rpm
1b141240dd7b1be4d16f7b1d118418bc786ae50da6b432d3072ed5a8d81ce9a6  
cabextract-1.12-1.x86_64.rpm
8f39ad5f9c076b9c62c67dea4f8649e75dcc16899a2d8122ca32ba68262cb713  
cabextract-1.12.tar.gz
1834d1079a6e8db9546fa95d3a1fc2cf676124a8a60bbdd7f30b2db4eb4ad683  
libmspack-0.12alpha.tar.gz

Regards
Stuart



-- 
Hanno Böck
https://hboeck.de/
