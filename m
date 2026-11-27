X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/27/12
Message-ID: <10160f48-a41a-450c-85e2-725ec042b2b6@tuxera.com>
Date: Sat, 28 Nov 2026 00:03:30 +0200
From: Rostislav <rostislav@...era.com>
To: oss-security@...ts.openwall.com
Subject: Vulnerabilities in ntfs-3g, new version 2026.11.23
Content-Type: text/plain; charset=utf-8

Hello oss-security,

Multiple vulnerabilities have been discovered in ntfs-3g 
(https://github.com/tuxera/ntfs-3g).
New version 2026.11.23 and patches against version 2026.9.28 are now 
available:

https://download.tuxera.com/opensource/ntfs-3g_ntfsprogs-2026.11.23.tgz
https://download.tuxera.com/opensource/ntfs-3g_ntfsprogs-2026.9.28_SR_2026-11_patches.tar.bz2

SHA256 checksums:
827f909955c4c2ae549f431617ded00e753adcda7e2feb5a33d70904e5a197c9 
ntfs-3g_ntfsprogs-2026.11.23.tgz
ca36941adc5a9d8e44514743c5e51372c5e23f0b71bb90f2c47a33bab791d94d 
ntfs-3g_ntfsprogs-2026.9.28_SR_2026-11_patches.tar.bz2

The following vulnerabilities, having severities from Moderate to High, 
were fixed in version 2026.11.23:

- Heap buffer overflow in ntfs_make_symlink()
- Heap buffer over-read in ntfs_ea_check_wsldev()
- $ATTRIBUTE_LIST entry stream is validated lazily and incompletely - 
unbounded walk and heap out-of-bounds read in libntfs-3g inode walkers
- Heap buffer overflow: ntfs_attr_size() can under-report a security 
descriptor's size
- Three out-of-bounds reads in libntfs-3g/ea.c
- ACL declared-size mismatch in ntfs_inherit_acl()
- MST fixup overruns INDX buffer in ntfsclone
- MST fixup overruns data_size-capped buffer in ntfsdump_logfile
- MST fixup overruns undersized $LogFile buffer in ntfsrecover
- MST fixup overruns INDX buffer in ntfscmp
- Negative-size memcpy() in ntfsrecover log replay
- OOB read in ntfsinfo index dumping
- OOB index walk in ntfsclone timestamp wiping
- ntfs_mst_post_write_fixup() usa heap overflow
- ntfs_fix_file_name() heap overflow
- setsecurityattr() heap disclosure oracle
- Short index entries out-of-bounds read
- Buffer overflow in set_namespace()
- Local privilege escalation from resident attribute value-offset overlap
- LPE chain in ntfs_ir_lookup() and ntfs_ie_insert()
- LPE from sparse mapping-pairs underflow
- Local privilege escalation during resident to nonresident conversion
- Local privilege escalation in DOS-name synchronization
- Local privilege escalation from VCN overflow in mapping pairs
- LPE from MST usa_ofs header overlap
- LPE from MFT attrs_offset header overlap
- LPE from nonresident mapping_pairs_offset header overlap
- LPE from $AttrDef FILE_NAME invariant bypass
- LPE from nonresident name-offset header overlap
- Attribute list parser: out-of-bounds read in the 
ntfs_external_attr_find() extent lookahead when mounting a crafted NTFS 
volume

We would like to thank for reporting vulnerabilities and coordinating 
disclosure:
Andres Berbescu
Elias Hasas
hextheshadow
Vivek Parikh
Hafiz Farhad
Joshua Smith
ANSSI (Jérémy Jean)
Jay Vadayath
Nozomi Labs
HaiND (Nguyen Dinh Hai)

CVE IDs have been requested for these vulnerabilities. They will be 
published separately after we receive them. Detailed security advisories 
will be available at:

https://github.com/tuxera/ntfs-3g/security
