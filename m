X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/23/4
Message-ID: <6db2826a-e05a-4a3a-8f5e-2a75a83b597c@tuxera.com>
Date: Wed, 23 Sep 2026 15:04:10 +0300
From: Rostislav <rostislav@...era.com>
To: oss-security@...ts.openwall.com
Subject: Vulnerabilities in ntfs-3g
Content-Type: text/plain; charset=utf-8

Hello oss-security,

Multiple vulnerabilities have been discovered in ntfs-3g 
(https://github.com/tuxera/ntfs-3g). The vulnerabilities have been fixed 
in version 2026.9.18.

Below is the list of vulnerabilities with their CVSS score and severity:
[NTFS-3G-SA_2026-06-1_20] Heap buffer overflow in ntfs_acl_owner()
CVSS: 6.2 Severity: Moderate
Credit: Jurre van Bergen

[NTFS-3G-SA_2026-06-1_19] Heap buffer overflow in ntfs_same_sid()
CVSS: 6.8 Severity: Moderate
Credit: Jurre van Bergen

[NTFS-3G-SA_2026-06-1_12] Denial-of-service in 
ntfs_inode_attach_all_extents()
CVSS: 6.2 Severity: Moderate
Credit: Jurre van Bergen

[NTFS-3G-SA_2026-06-1_11] Heap buffer overflow in ntfs_check_restart_area()
CVSS: 2.9 Severity: Low
Credit: Jurre van Bergen

[NTFS-3G-SA_2026-06-1_10] Heap buffer overflow in ntfs_ea_check_wsldev()
CVSS: 4.0 Severity: Moderate
Credit: Matthieu Olivier at ANSSI and Jurre van Bergen

[NTFS-3G-SA_2026-06-1_08] Heap buffer overflow in ntfs_external_attr_find()
CVSS: 2.9 Severity: Low
Credit: Jurre van Bergen

[NTFS-3G-SA_2026-06-1_07] Heap data corruption in 
ntfs_mapping_pairs_decompress_i()
CVSS: 2.9 Severity: Low
Credit: Jurre van Bergen

[NTFS-3G-SA_2026-06-1_05] Heap out of bounds read/write in ntfs_ie_add_vcn()
CVSS: 6.2 Severity: Moderate
Credit: Jurre van Bergen

CVE IDs have been requested for these vulnerabilities. They will be 
published separately after we receive them.

Links to the latest version with fixes and patches for older versions:

https://download.tuxera.com/opensource/ea5899b4ab87d243f6bed2f8fc13e6e5ff1f6d51fdf22b2ccbe708c8c0256166/ntfs-3g-2026.9.18.tar.gz
https://download.tuxera.com/opensource/ea5899b4ab87d243f6bed2f8fc13e6e5ff1f6d51fdf22b2ccbe708c8c0256166/ntfs-3g_2022.10.3_SR_2026-09_patches.tar.gz
https://download.tuxera.com/opensource/ea5899b4ab87d243f6bed2f8fc13e6e5ff1f6d51fdf22b2ccbe708c8c0256166/ntfs-3g_2026.7.7_SR_2026-09_patches.tar.gz

SHA256 checksums:
bcf3cf301a79e42d330128ffb52d4cf615bd1d30c10a92d9d8d14f2bb4fcd9bf 
ntfs-3g-2026.9.18.tar.gz
cee152395dd784e4c5ccb6f8766d7612da51bce38a4941d62e96a50d7bd5425e 
ntfs-3g_2022.10.3_SR_2026-09_patches.tar.gz
051bb6d0ea123087cd3ffa029ca7969b43489fbdda9ce8e5767eed098cff49ca 
ntfs-3g_2026.7.7_SR_2026-09_patches.tar.gz

We would like to thank Matthieu Olivier at ANSSI and Jurre van Bergen 
for reporting the vulnerabilities and coordinating disclosure with us.
