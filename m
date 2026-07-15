X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/15/6
Message-ID: <51f9d7f3-b4b6-401b-8ae3-98e42e2ba171@tuxera.com>
Date: Wed, 15 Jul 2026 21:29:10 +0300
From: Rostislav <rostislav@...era.com>
To: oss-security@...ts.openwall.com
Subject: Multiple vulnerabilities in ntfs-3g
Content-Type: text/plain; charset=utf-8

Hello oss-security,

Multiple vulnerabilities have been discovered in ntfs-3g. A new version 
2026.7.7 is now available at https://github.com/tuxera/ntfs-3g

The following vulnerabilities have been fixed:
- (ntfscat) Fix heap memory corruption when processing a corrupt or 
maliciously crafted filesystem. (CVE-2026-42616)
- Fix heap memory corruption when copying index data from root to an 
index block in a corrupt or maliciously crafted filesystem. (CVE-2026-42617)
- Fix single-byte heap buffer overflow when decompressing maliciously 
crafted compressed file data. (CVE-2026-42618)
- Fix heap buffer overflow when copying the tail data of an index block 
to a freshly allocated block. (CVE-2026-46569)
- Fix out-of-bounds read when processing symlink reparse data in a 
corrupt or maliciously crafted filesystem. (CVE-2026-46571)
- Fix heap memory corruption for maliciously crafted or corrupt index 
data descending to an out-of-bounds tree depth. (CVE-2026-46570)
- Fix heap buffer overflow for maliciously crafted or corrupt index data 
during a node split. (CVE-2026-46572)
- Fix heap buffer overflow when building inherited ACL data. 
(CVE-2026-56135)
- Fix out of bounds access when clearing an index root in maliciously 
crafted or corrupt index data. (CVE-2026-56136)

Direct link to download version 2026.7.7:
https://tuxera.com/opensource/ntfs-3g_ntfsprogs-2026.7.7.tgz

Patches that can be applied on top of version 2026.2.25:
https://download.tuxera.com/opensource/e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855/ntfs-3g_2026.2.25_cve_2026-04_patches.tar.gz

Patches that can be applied on top of version 2022.10.3:
https://download.tuxera.com/opensource/e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855/ntfs-3g_2022.10.3_cve_2026-04_patches.tar.gz

SHA256 checksums:
d67b769025d32860549d35c2147e45024d172f81c540d750390ce3602c059dab 
ntfs-3g-2026.7.7.tar.gz
769a955e66330bdb13c60e0712d6183700ca7592f37b9a3648e22fb57c15bbbe 
ntfs-3g_2026.2.25_cve_2026-04_patches.tar.gz
ad33d9ed056d865e4bd618f00dbed57d9b61c5f37321fc18b75935ae88cfa821 
ntfs-3g_2022.10.3_cve_2026-04_patches.tar.gz

We would like to thank Nozomi Networks for reporting the vulnerabilities 
and coordinating disclosure with us.
