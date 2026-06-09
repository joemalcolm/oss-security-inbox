X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/06/09/12
Message-Id: <E1wWv8f-00CQlI-1D@xenbits.xenproject.org>
Date: Tue, 09 Jun 2026 12:01:01 +0000
From: Xen.org security team <security@....org>
To: xen-announce@...ts.xen.org, xen-devel@...ts.xen.org, xen-users@...ts.xen.org, oss-security@...ts.openwall.com
CC: Xen.org security team <security-team-members@....org>
Subject: Xen Security Advisory 492 v3 (CVE-2026-42489,CVE-2026-42490) - domctl lock open to abuse
Content-Type: text/plain; charset=utf-8

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

     Xen Security Advisory CVE-2026-42489,CVE-2026-42490 / XSA-492
                               version 3

                       domctl lock open to abuse

UPDATES IN VERSION 3
====================

Public release.

ISSUE DESCRIPTION
=================

To create and manage guests, domctl operations are used by the control
domain, a possible Xenstore domain, or by a domain controlling a
particular guest.  Some of these operations may not be executed in
parallel, so a system-wide lock is used.  The way that lock is acquired
is, however, not providing any fairness.  This is CVE-2026-42489.

Furthermore, with XSM/Flask in use, the lock acquire will, for some
operations, occur ahead of any permission checking.  This is
CVE-2026-42490.

IMPACT
======

A less privileged entity may stall an equally or more privileged entity,
potentially leading to a Denial od Service (DoS) of up to the entire
host.

VULNERABLE SYSTEMS
==================

All Xen versions from 3.3 onwards are vulnerable.  Earlier versions use
a different locking operation, but may also be vulnerable.

MITIGATION
==========

There is no known mitigation.

CREDITS
=======

This issue was discovered by Andrew Cooper of Citrix.

RESOLUTION
==========

Applying the appropriate set of attached patches resolves this issue.

NOTE: The staging and 4.21 patches include an adjustment to the default
Flask policy.  When custom policies are in use, a respective change
will need making there.

Note that patches for released versions are generally prepared to
apply to the stable branches, and may not apply cleanly to the most
recent release tarball.  Downstreams are encouraged to update to the
tip of the stable branch before applying these patches.

xsa492/xsa492-??.patch          xen-unstable
xsa492/xsa492-4.21-*.patch      Xen 4.21.x
xsa492/xsa492-4.20-*.patch      Xen 4.20.x
xsa492/xsa492-4.19-*.patch      Xen 4.19.x
xsa492/xsa492-4.18-*.patch      Xen 4.18.x
xsa492/xsa492-4.17-*.patch      Xen 4.17.x

$ sha256sum xsa492*/*
63352768b73f07b930185c5e02a57d6cf01f803020baf91c0868d4d13c328ada  xsa492/xsa492-01.patch
c4621381aa70785f78cba48c2a83a61a397941d907ff96978f6a0ee53e272c6d  xsa492/xsa492-02.patch
fb2413fc6d250cc3bbebee3d6d9c2c13d8cb22670e02d92ffdf4e6d4c4cd1781  xsa492/xsa492-03.patch
1d8e4fb30145ec084d6847624d3445074cb3d2d11983555e20e83f47fa6b082b  xsa492/xsa492-4.17-00.patch
3ebd555a3a95ac2f3569566ae8635258029512ea1209ab1cc87a0acbbab0371d  xsa492/xsa492-4.17-01.patch
0f2fc5f48cadcf8ebcb47363e4a355b209ce43e9d29f296fea62e7e49961b6cc  xsa492/xsa492-4.17-02.patch
9f33b50c4ae0836e40891d2dcf106e9bee178394557563747130eb60c8d80d98  xsa492/xsa492-4.17-03.patch
57b988d15a5c76b0e7b828c64150a9ac7ebc3fd82cced5b19f5e7986e498790f  xsa492/xsa492-4.17-04.patch
f8e0eedaacb535158fadd5b8695f78db630075c417ffff60e50cdc9bd4ef9809  xsa492/xsa492-4.17-05.patch
dd9a6f79ba21ec3840f8591656819117e8b6cb5c43cd8d556b3bfc43eff0e866  xsa492/xsa492-4.17-06.patch
057c2b1e57fb1134054c9f31bc6a21387d3f56880bdc270f12a277028d3d3f0e  xsa492/xsa492-4.17-07.patch
bea7d3da84529768a55022196dc72e56fec49f48c933acc0c130dc530e479fed  xsa492/xsa492-4.17-08.patch
32c322e2d9c9c2d7159e8aea4f8e4c66f9512046baf49127554b8485f0a6b233  xsa492/xsa492-4.17-09.patch
0a5d858d2c07990e3f0f86f1433199f06a5cbbf71013e67e92ea42d29d855f08  xsa492/xsa492-4.17-10.patch
f06d1cc9fa48c1411bbee4bd27583268b4bc6e6dfffbb816d16b238759b819c9  xsa492/xsa492-4.17-11.patch
0a1f15cade87920b68d6725444525845eebfd87847ac3bd79edfe8034ee7d69a  xsa492/xsa492-4.17-12.patch
3a11ab04730d06bf513ac1cc138ced306972dcfb574dcedd96c0af3e1825e792  xsa492/xsa492-4.17-13.patch
2b4b541a620a0e0d6b14b664d414c33807fbbff0328878332025b331bf367152  xsa492/xsa492-4.17-14.patch
362f412392e6deff71aa27a849f84f457b231d78c0b0ce5ff8125acad6d81166  xsa492/xsa492-4.17-15.patch
9d38b126c62e7d6e37b88a3f8879e3f96c3cdc0a8b087a1541d3eb2779dddc28  xsa492/xsa492-4.17-16.patch
cc88c36af3ad28c5f782c05afc2972cfa5f2d10933c2f10bb8651b35fb3fb5b9  xsa492/xsa492-4.17-17.patch
28fd452acfea8b6f47fe5315a4e9125e06f073107f4da81b8cf9cfd405c1fb81  xsa492/xsa492-4.18-00.patch
965778b12e11e65963f3ae1641699384fec3274e09038ee945f137ecb214fda9  xsa492/xsa492-4.18-01.patch
e4dec4550afb6e010f12ffa782b168d428976697206985ed9b478dba1ce6d087  xsa492/xsa492-4.18-02.patch
d1b84fd8b60bd3e68a403f890a99975b4600447f018a2454ec96e6d36c8133bf  xsa492/xsa492-4.18-03.patch
399a32394bafe04834d0927dfebb25b676e8186303414cc2d00aaf7496ceb7eb  xsa492/xsa492-4.18-04.patch
971d8802dce02250dfe0b97488ac7471c9ec40ad59e712c86628e6ed085052de  xsa492/xsa492-4.18-05.patch
69fb9b404942a001102ffa473c821fe6f2ec834ec61c0c096a5e099988a5184c  xsa492/xsa492-4.18-06.patch
eef5610ac16c88764a24af7d7a88766b7cb35fd7aa2211d5251418e1e24cd73a  xsa492/xsa492-4.18-07.patch
81a98a4ad7bfe80d5ab9570fc24618b6b0d8ad1bbea0c7b64e111db12c3d880d  xsa492/xsa492-4.18-08.patch
ac8666d08a690dbf6a418befc259d3c9120a7bab4b5aee454d96745e81d1b7e4  xsa492/xsa492-4.18-09.patch
0f5dcc2c22f0635b9dc2a271dcb0d3d518c29e32847dcd53523ed833b28cb388  xsa492/xsa492-4.18-10.patch
20e49ae722a10f834029aaed14cc130e155396e23505dc5b7ea8bf534538225d  xsa492/xsa492-4.18-11.patch
e6992e7dd686ed6c973754889a5f751e3c330268f373041a50145387c7cd0017  xsa492/xsa492-4.18-12.patch
c06ad87cd7262f20e560320b35cd90f5354d244aed7912d01e03914b4e8dc429  xsa492/xsa492-4.18-13.patch
dbf79d33d0c8f0d3d846f450e8ebac7c191996d824ef391ff9f8413a6d733060  xsa492/xsa492-4.18-14.patch
d7c23e1acbff4154fbabf4ce6bede0ad212a9a1673f1f3f57dc313a694497b79  xsa492/xsa492-4.18-15.patch
c5347ddf16789ab7d6b96e89e55116f248b56ee5bcac2fd5398563cffc6b7d06  xsa492/xsa492-4.18-16.patch
952b09b60cdb2c8a27ead0e77744add60d48e053ad0515019928d1a4d839e12e  xsa492/xsa492-4.18-17.patch
b8fecc7c43b3c6e6df00f77be89127fdd628f6ee0f819b622af4ce92b99c7948  xsa492/xsa492-4.18-18.patch
44b826e2c6fbac8e90b383c1e556ef92272c14186aaf8b83feb417eacd9d1d5d  xsa492/xsa492-4.19-00.patch
965778b12e11e65963f3ae1641699384fec3274e09038ee945f137ecb214fda9  xsa492/xsa492-4.19-01.patch
e091273f87c80fdf3671accfa3e74bf55f1931f0a4828cd81bf6bcb835d85e1a  xsa492/xsa492-4.19-02.patch
e91084d7d61a737e9d5625aa6c4582fbf4ba7bd0b5dcc963fa88cf530cdaeb46  xsa492/xsa492-4.19-03.patch
c778eaa47fcedff1db398f1301ed05e41e1dbd4be0ea5ed95f46ed30dbcdcebd  xsa492/xsa492-4.19-04.patch
d645785ea47cdcf82c1aabe31c2a3f0cb3f3977152abc7226a72ac00861f3981  xsa492/xsa492-4.19-05.patch
f73f4316859ee6579cc76cc9a1b83976151ffaa6504cc0e31c5f8240a08de1b7  xsa492/xsa492-4.19-06.patch
778c9862ff28a9c0c717c749f598fce59ae997287a2784d990a83cadfc1d33aa  xsa492/xsa492-4.19-07.patch
bf115087899d1245a28438a032701b5cd7c6c23b54e2b8c371fd63a0f03fab33  xsa492/xsa492-4.19-08.patch
24d59c55d5cc50b02fcbeb6b6c6803460d5cd9c5c570f758d2350431d2eaf84e  xsa492/xsa492-4.19-09.patch
274520906d1d700bbb8fcf6b20ae2241b7ac348e629e9ddb74ee1954a70a8421  xsa492/xsa492-4.19-10.patch
fce37cbb80e2c117c181517bf8970cc017e34ab6fe76177d4248b0de11ed5def  xsa492/xsa492-4.19-11.patch
3f4ce0153c1f72afc7aef1249bf3eda984fba0a33bfb743b044ea00a6a8a649b  xsa492/xsa492-4.19-12.patch
851a1002916655dc6080d9dfafe0ec3ead6b0036a75417abe578bfd0feb62d81  xsa492/xsa492-4.19-13.patch
e3942ee271b1eaad57a994fe1fae66cc419bd6e1906d63f76316080d06ebb3c4  xsa492/xsa492-4.19-14.patch
e4ac87f343a4a07f13f71128612a2c2291c3488a91e3a4f9450e1ba3f6ad5387  xsa492/xsa492-4.19-15.patch
3fc255759588c8c5c38b23231f4cacffd1b74150489c8469c9a2fd033960de97  xsa492/xsa492-4.19-16.patch
de1b799184e192c42c6880fd881c0c2b5d875cc59e1d7311b503b91607598493  xsa492/xsa492-4.19-17.patch
545f7bb417976dbabe347d035a363874b8402877168ab789f3629008d009d45b  xsa492/xsa492-4.19-18.patch
9a092bba381acc3061dbbaa73a237aa6eec3e9313d3ce0da61e18bfb88a021ab  xsa492/xsa492-4.20-01.patch
cd0da8fff3874e6ef120cd2511d9c6820f9fe55c26e6df2dbd1472c0001a9a18  xsa492/xsa492-4.20-02.patch
47e0903d30b4d8c1b557fb924cbd8af4ed29bc799972a539f38a04f89bcead60  xsa492/xsa492-4.20-03.patch
c878e0d086032948de3c21b15258ed3fb94f935e02859030e19d3238ed5c38bf  xsa492/xsa492-4.20-04.patch
765ed1d22e8c3c16f85b66846ea4b61bab5214445c72785acff67441331ab797  xsa492/xsa492-4.20-05.patch
2a16e862743f2e0a276bafb37847b5dfd97249ff93daa92d75bf839905a0030c  xsa492/xsa492-4.20-06.patch
8053a4fad16268ccaddbffcc52fffabae8a47e6ff4f1f83140c3ee7bccf97305  xsa492/xsa492-4.20-07.patch
223298c5fcd68cac15d87026141a6adfbc07f5f05a1577e58b7569a6467ab6ed  xsa492/xsa492-4.20-08.patch
649f634aca4943886cf9ab02650993eb0e4ca7d2e1648239813ea68f4a0df015  xsa492/xsa492-4.20-09.patch
7666dce350ee5e4eb4d284c851a074423252282dcf2e0d5621a0277da00c05bb  xsa492/xsa492-4.20-10.patch
57f7d845972af8c595869857b16658345ca03956e0a82d6c9e87542f02b5fe98  xsa492/xsa492-4.20-11.patch
55a8356f6a8dd2f0ca1904c21f25bd77abcebedf37b33710b7cacdec4f34f230  xsa492/xsa492-4.20-12.patch
9e75bcd02512b28133b0c608c67e17bef038df7d4fdd6f91813c42d5da294fc2  xsa492/xsa492-4.20-13.patch
34f19a0c48fb23ed0669334530f8c4206bec76f53f584c3d7a99bde19503edfd  xsa492/xsa492-4.20-14.patch
640fe725ddc35c6f3b70468a1f4d5b16f17b9c9817e70bd48b1628efdd75a4a1  xsa492/xsa492-4.20-15.patch
d56f9d42acc925377b81768005d524801d1841b3afe0351e23f99ee06a40a01f  xsa492/xsa492-4.20-16.patch
65165d7a6337d416eb193c50b3cfcb9d0ae85e7e1bdfcfa2b87449547e607c85  xsa492/xsa492-4.20-17.patch
f04d3a090e30d5333191975e1486fe905fa0d26dcb98b84bd05ec37a9fc0875a  xsa492/xsa492-4.20-18.patch
8b5c37b6eb1fc7f6b996dfd27c273e54b552a3a47c5b886bf05f512741491ede  xsa492/xsa492-4.21-01.patch
7d0991610408600cb61b045fa09dea0e378a0ff7fd69dde3fc12dfdf857f7175  xsa492/xsa492-4.21-02.patch
a0e60503408cbf7ffcdfe10ea9989631e924bb98040629ef1e544b4b771a8109  xsa492/xsa492-4.21-03.patch
2c8dd916a2b23dffc96bf3894a9b1213af87ca969549cb1f4d43b20b3a4fcef0  xsa492/xsa492-4.21-04.patch
b97054289876287980ebbf07fcc2f8b2d493388f70c397aa047856664475199d  xsa492/xsa492-4.21-05.patch
31677c9abcb3ede946a55401fc5bf5a965aff0b151b20144946400dd33d9de16  xsa492/xsa492-4.21-06.patch
04c9ec91ffa0b719b78dd95325433b7a9b2a36f712aaa11d4d86568454d62bb0  xsa492/xsa492-4.21-07.patch
89d80c6d0ac31aa55964d6d6f5aa9cd73c7887f8c51caf047d5312cbba64cbf1  xsa492/xsa492-4.21-08.patch
9ad936500fed5a4346b59d13ae0dc158a3199921eb4f24b0dc769fba046dcee3  xsa492/xsa492-4.21-09.patch
566de44fd6cc63f8252eb4cb617881497706f46578cea5bec24c94059f9b2ec5  xsa492/xsa492-4.21-10.patch
348ae9e83eaf8f4f5d7af19a37d24b8ab98849aa0d0afd60d20139d3c3de287f  xsa492/xsa492-4.21-11.patch
46ffaaab2aa919edc29c6ec3eae47573879481a5f1dc86887177b5669469c0b7  xsa492/xsa492-4.21-12.patch
7b183f27d264b9dd3a1f0daf758b6563493fb91dc434ee443754972fdeeccfc6  xsa492/xsa492-4.21-13.patch
6ad6e6d3c74ab675f156efea374cddf2ec6253d541840517db466fd81ad07407  xsa492/xsa492-4.21-14.patch
5af5ba298c1119a569c17f4cc30ff6b000663bae0e88daa77fc760517039c296  xsa492/xsa492-4.21-15.patch
78f4273344aae2f16c725a4914bc3f6c3e24a6daf4b2989dc6fef8a415721a90  xsa492/xsa492-4.21-16.patch
d178ebc53aa010692f77f45f39eaaf80ac3c2f4289a22727e355c530473cc5f5  xsa492/xsa492-4.21-17.patch
7724f047e4466ed46a53acc0b2a7bbbef5cf187bb459385810be40b55222c921  xsa492/xsa492-4.21-18.patch
79f24e539e1fbe1becb12abc0acf5ae2bfc8eb050fbaf45a5e8dfc9bfad66e45  xsa492/xsa492-4.21-19.patch
295260a51fdf5605f7a55c5f78639baeb17b820e28d6c03a93e7d8da3ccd16a9  xsa492/xsa492-4.21-20.patch
85fa36453fc4dcabc468fa870dd81efe6945ec5eca5da84eda8b3317527255aa  xsa492/xsa492-04.patch
c6d225644365a7d6cd284fa52b8240333baf51ff7bf6ff9264b0496fb6c60eab  xsa492/xsa492-05.patch
a6e99b4d9c6db7305a1ab426aabf16d296e01b1f1e966c9773e4c7e2a8d045d1  xsa492/xsa492-06.patch
e1be3cd0c991d3626f3cbdaf8a70aab756b2c7c0cec734f7f6f5f3fc776167a0  xsa492/xsa492-07.patch
5308abfd84083cb6ffbcc8f8eb3ff4452da09666adf7740af203c764770c9ff1  xsa492/xsa492-08.patch
d150da12954c776b47bf813f553eb784ce792c674464474ff24fff172b1249e1  xsa492/xsa492-09.patch
db67d1342177697dd83de757b8c29477ccb71fb91239b0362f23c722e2e744f8  xsa492/xsa492-10.patch
ed8140d31c764763cbb1fec06653d066fcdcd3a2862edb1a60e51096ba731d46  xsa492/xsa492-11.patch
0323bdf50a97f30f9a98b145575c466d9af8eddedb8a2e8c3d7a643b46cab3c1  xsa492/xsa492-12.patch
61605cec3fcbf980e89b458c48742dd9e911b6dc217ed47f3806c0f049b39129  xsa492/xsa492-13.patch
533e227aefdb4d2dd06c0ffe6c3caa1e865dd12a7919b0e5a55f0863a290d1d3  xsa492/xsa492-14.patch
5f47dee12852e252116d2e4cbf5c7a18f412316e00346ec3845185e2c77eb438  xsa492/xsa492-15.patch
1300425e6a4f7f759cb08d02f5fb20002e9af275985144e987b5357b6cc3189e  xsa492/xsa492-16.patch
89075c922eca804d6eda4dc5a7200a750ce16718a791e58813c2a869e09bfe90  xsa492/xsa492-17.patch
552d430465b89dbd15165cf3a03fa95a9d2d9cacd29cd3fc5c44c511596d39cf  xsa492/xsa492-18.patch
e7fe60cfb996eec460e9de2acce7a32b0b3fb3557cd35945faec67b4909c663d  xsa492/xsa492-19.patch
15edac4769d98a09085bef4845f9485017611ffb9b0a9c65ac32cae557531ccc  xsa492/xsa492-20.patch
$

DEPLOYMENT DURING EMBARGO
=========================

Deployment of the patches and/or mitigations described above (or
others which are substantially similar) is permitted during the
embargo, even on public-facing systems with untrusted guest users and
administrators.

But: Distribution of updated software is prohibited (except to other
members of the predisclosure list).

Predisclosure list members who wish to deploy significantly different
patches and/or mitigations, please contact the Xen Project Security
Team.

(Note: this during-embargo deployment notice is retained in
post-embargo publicly released Xen Project advisories, even though it
is then no longer applicable.  This is to enable the community to have
oversight of the Xen Project Security Team's decisionmaking.)

For more information about permissible uses of embargoed information,
consult the Xen Project community's agreed Security Policy:
  http://www.xenproject.org/security-policy.html
-----BEGIN PGP SIGNATURE-----

iQFABAEBCAAqFiEEI+MiLBRfRHX6gGCng/4UyVfoK9kFAmon+5AMHHBncEB4ZW4u
b3JnAAoJEIP+FMlX6CvZ2VEIAJ77x56m0qwMOSA7YRUFeFEAS4u0C597ooGMskZW
mLcehR/NpnGetfiY6/XbEUiCXzJiHsSeG4OWygw8LRpRztPKR8VpA+seJx1My3iX
vBsFmzVA4tXRKSorV4/kZx5uIUNXtCMFY9Zm0BQGlrmBoel7/6/Mk91sS+dYJtc9
SZM8MDSGlPAvENe35+IzmCnTGIZhtgIaaoIYjbRRO/oV0Zfz/S1yXGyD6yzwSkbV
qNfgOV3KDQn0AmJRZsHBuw3SMFG+lFQhLAWpqTfu8d8pIc5wGqtTs02uJrC7gY+O
WRl+hfzIPhG2cH6SNsaYq/t3OSSWeYQAwf7gm4Fg/OZ32ac=
=Sg49
-----END PGP SIGNATURE-----

Download attachment "xsa492/xsa492-01.patch" of type "application/octet-stream" (8305 bytes)

Download attachment "xsa492/xsa492-02.patch" of type "application/octet-stream" (3579 bytes)

Download attachment "xsa492/xsa492-03.patch" of type "application/octet-stream" (3015 bytes)

Download attachment "xsa492/xsa492-4.17-00.patch" of type "application/octet-stream" (1841 bytes)

Download attachment "xsa492/xsa492-4.17-01.patch" of type "application/octet-stream" (8314 bytes)

Download attachment "xsa492/xsa492-4.17-02.patch" of type "application/octet-stream" (4850 bytes)

Download attachment "xsa492/xsa492-4.17-03.patch" of type "application/octet-stream" (4857 bytes)

Download attachment "xsa492/xsa492-4.17-04.patch" of type "application/octet-stream" (2845 bytes)

Download attachment "xsa492/xsa492-4.17-05.patch" of type "application/octet-stream" (5421 bytes)

Download attachment "xsa492/xsa492-4.17-06.patch" of type "application/octet-stream" (6903 bytes)

Download attachment "xsa492/xsa492-4.17-07.patch" of type "application/octet-stream" (3348 bytes)

Download attachment "xsa492/xsa492-4.17-08.patch" of type "application/octet-stream" (4246 bytes)

Download attachment "xsa492/xsa492-4.17-09.patch" of type "application/octet-stream" (6052 bytes)

Download attachment "xsa492/xsa492-4.17-10.patch" of type "application/octet-stream" (3870 bytes)

Download attachment "xsa492/xsa492-4.17-11.patch" of type "application/octet-stream" (5618 bytes)

Download attachment "xsa492/xsa492-4.17-12.patch" of type "application/octet-stream" (3740 bytes)

Download attachment "xsa492/xsa492-4.17-13.patch" of type "application/octet-stream" (4097 bytes)

Download attachment "xsa492/xsa492-4.17-14.patch" of type "application/octet-stream" (4176 bytes)

Download attachment "xsa492/xsa492-4.17-15.patch" of type "application/octet-stream" (3467 bytes)

Download attachment "xsa492/xsa492-4.17-16.patch" of type "application/octet-stream" (12855 bytes)

Download attachment "xsa492/xsa492-4.17-17.patch" of type "application/octet-stream" (3655 bytes)

Download attachment "xsa492/xsa492-4.18-00.patch" of type "application/octet-stream" (1813 bytes)

Download attachment "xsa492/xsa492-4.18-01.patch" of type "application/octet-stream" (8295 bytes)

Download attachment "xsa492/xsa492-4.18-02.patch" of type "application/octet-stream" (3516 bytes)

Download attachment "xsa492/xsa492-4.18-03.patch" of type "application/octet-stream" (4857 bytes)

Download attachment "xsa492/xsa492-4.18-04.patch" of type "application/octet-stream" (2727 bytes)

Download attachment "xsa492/xsa492-4.18-05.patch" of type "application/octet-stream" (5421 bytes)

Download attachment "xsa492/xsa492-4.18-06.patch" of type "application/octet-stream" (3379 bytes)

Download attachment "xsa492/xsa492-4.18-07.patch" of type "application/octet-stream" (6898 bytes)

Download attachment "xsa492/xsa492-4.18-08.patch" of type "application/octet-stream" (3348 bytes)

Download attachment "xsa492/xsa492-4.18-09.patch" of type "application/octet-stream" (4246 bytes)

Download attachment "xsa492/xsa492-4.18-10.patch" of type "application/octet-stream" (6047 bytes)

Download attachment "xsa492/xsa492-4.18-11.patch" of type "application/octet-stream" (3870 bytes)

Download attachment "xsa492/xsa492-4.18-12.patch" of type "application/octet-stream" (5701 bytes)

Download attachment "xsa492/xsa492-4.18-13.patch" of type "application/octet-stream" (3740 bytes)

Download attachment "xsa492/xsa492-4.18-14.patch" of type "application/octet-stream" (4097 bytes)

Download attachment "xsa492/xsa492-4.18-15.patch" of type "application/octet-stream" (4176 bytes)

Download attachment "xsa492/xsa492-4.18-16.patch" of type "application/octet-stream" (3467 bytes)

Download attachment "xsa492/xsa492-4.18-17.patch" of type "application/octet-stream" (12837 bytes)

Download attachment "xsa492/xsa492-4.18-18.patch" of type "application/octet-stream" (3655 bytes)

Download attachment "xsa492/xsa492-4.19-00.patch" of type "application/octet-stream" (1813 bytes)

Download attachment "xsa492/xsa492-4.19-01.patch" of type "application/octet-stream" (8295 bytes)

Download attachment "xsa492/xsa492-4.19-02.patch" of type "application/octet-stream" (3504 bytes)

Download attachment "xsa492/xsa492-4.19-03.patch" of type "application/octet-stream" (4859 bytes)

Download attachment "xsa492/xsa492-4.19-04.patch" of type "application/octet-stream" (2727 bytes)

Download attachment "xsa492/xsa492-4.19-05.patch" of type "application/octet-stream" (5427 bytes)

Download attachment "xsa492/xsa492-4.19-06.patch" of type "application/octet-stream" (3399 bytes)

Download attachment "xsa492/xsa492-4.19-07.patch" of type "application/octet-stream" (6898 bytes)

Download attachment "xsa492/xsa492-4.19-08.patch" of type "application/octet-stream" (3348 bytes)

Download attachment "xsa492/xsa492-4.19-09.patch" of type "application/octet-stream" (4246 bytes)

Download attachment "xsa492/xsa492-4.19-10.patch" of type "application/octet-stream" (6090 bytes)

Download attachment "xsa492/xsa492-4.19-11.patch" of type "application/octet-stream" (3934 bytes)

Download attachment "xsa492/xsa492-4.19-12.patch" of type "application/octet-stream" (5668 bytes)

Download attachment "xsa492/xsa492-4.19-13.patch" of type "application/octet-stream" (3736 bytes)

Download attachment "xsa492/xsa492-4.19-14.patch" of type "application/octet-stream" (4097 bytes)

Download attachment "xsa492/xsa492-4.19-15.patch" of type "application/octet-stream" (4176 bytes)

Download attachment "xsa492/xsa492-4.19-16.patch" of type "application/octet-stream" (3467 bytes)

Download attachment "xsa492/xsa492-4.19-17.patch" of type "application/octet-stream" (12831 bytes)

Download attachment "xsa492/xsa492-4.19-18.patch" of type "application/octet-stream" (3622 bytes)

Download attachment "xsa492/xsa492-4.20-01.patch" of type "application/octet-stream" (8295 bytes)

Download attachment "xsa492/xsa492-4.20-02.patch" of type "application/octet-stream" (3540 bytes)

Download attachment "xsa492/xsa492-4.20-03.patch" of type "application/octet-stream" (4859 bytes)

Download attachment "xsa492/xsa492-4.20-04.patch" of type "application/octet-stream" (2727 bytes)

Download attachment "xsa492/xsa492-4.20-05.patch" of type "application/octet-stream" (5952 bytes)

Download attachment "xsa492/xsa492-4.20-06.patch" of type "application/octet-stream" (3399 bytes)

Download attachment "xsa492/xsa492-4.20-07.patch" of type "application/octet-stream" (6898 bytes)

Download attachment "xsa492/xsa492-4.20-08.patch" of type "application/octet-stream" (3377 bytes)

Download attachment "xsa492/xsa492-4.20-09.patch" of type "application/octet-stream" (4246 bytes)

Download attachment "xsa492/xsa492-4.20-10.patch" of type "application/octet-stream" (6119 bytes)

Download attachment "xsa492/xsa492-4.20-11.patch" of type "application/octet-stream" (5224 bytes)

Download attachment "xsa492/xsa492-4.20-12.patch" of type "application/octet-stream" (5671 bytes)

Download attachment "xsa492/xsa492-4.20-13.patch" of type "application/octet-stream" (3740 bytes)

Download attachment "xsa492/xsa492-4.20-14.patch" of type "application/octet-stream" (4097 bytes)

Download attachment "xsa492/xsa492-4.20-15.patch" of type "application/octet-stream" (4176 bytes)

Download attachment "xsa492/xsa492-4.20-16.patch" of type "application/octet-stream" (3464 bytes)

Download attachment "xsa492/xsa492-4.20-17.patch" of type "application/octet-stream" (12831 bytes)

Download attachment "xsa492/xsa492-4.20-18.patch" of type "application/octet-stream" (3622 bytes)

Download attachment "xsa492/xsa492-4.21-01.patch" of type "application/octet-stream" (8295 bytes)

Download attachment "xsa492/xsa492-4.21-02.patch" of type "application/octet-stream" (3579 bytes)

Download attachment "xsa492/xsa492-4.21-03.patch" of type "application/octet-stream" (3015 bytes)

Download attachment "xsa492/xsa492-4.21-04.patch" of type "application/octet-stream" (2797 bytes)

Download attachment "xsa492/xsa492-4.21-05.patch" of type "application/octet-stream" (4869 bytes)

Download attachment "xsa492/xsa492-4.21-06.patch" of type "application/octet-stream" (2727 bytes)

Download attachment "xsa492/xsa492-4.21-07.patch" of type "application/octet-stream" (5952 bytes)

Download attachment "xsa492/xsa492-4.21-08.patch" of type "application/octet-stream" (3399 bytes)

Download attachment "xsa492/xsa492-4.21-09.patch" of type "application/octet-stream" (7002 bytes)

Download attachment "xsa492/xsa492-4.21-10.patch" of type "application/octet-stream" (3453 bytes)

Download attachment "xsa492/xsa492-4.21-11.patch" of type "application/octet-stream" (4325 bytes)

Download attachment "xsa492/xsa492-4.21-12.patch" of type "application/octet-stream" (6151 bytes)

Download attachment "xsa492/xsa492-4.21-13.patch" of type "application/octet-stream" (5228 bytes)

Download attachment "xsa492/xsa492-4.21-14.patch" of type "application/octet-stream" (5659 bytes)

Download attachment "xsa492/xsa492-4.21-15.patch" of type "application/octet-stream" (3689 bytes)

Download attachment "xsa492/xsa492-4.21-16.patch" of type "application/octet-stream" (3857 bytes)

Download attachment "xsa492/xsa492-4.21-17.patch" of type "application/octet-stream" (4176 bytes)

Download attachment "xsa492/xsa492-4.21-18.patch" of type "application/octet-stream" (3468 bytes)

Download attachment "xsa492/xsa492-4.21-19.patch" of type "application/octet-stream" (12941 bytes)

Download attachment "xsa492/xsa492-4.21-20.patch" of type "application/octet-stream" (3622 bytes)

Download attachment "xsa492/xsa492-04.patch" of type "application/octet-stream" (2797 bytes)

Download attachment "xsa492/xsa492-05.patch" of type "application/octet-stream" (4869 bytes)

Download attachment "xsa492/xsa492-06.patch" of type "application/octet-stream" (2727 bytes)

Download attachment "xsa492/xsa492-07.patch" of type "application/octet-stream" (5952 bytes)

Download attachment "xsa492/xsa492-08.patch" of type "application/octet-stream" (3399 bytes)

Download attachment "xsa492/xsa492-09.patch" of type "application/octet-stream" (7002 bytes)

Download attachment "xsa492/xsa492-10.patch" of type "application/octet-stream" (3453 bytes)

Download attachment "xsa492/xsa492-11.patch" of type "application/octet-stream" (4325 bytes)

Download attachment "xsa492/xsa492-12.patch" of type "application/octet-stream" (6151 bytes)

Download attachment "xsa492/xsa492-13.patch" of type "application/octet-stream" (5228 bytes)

Download attachment "xsa492/xsa492-14.patch" of type "application/octet-stream" (5528 bytes)

Download attachment "xsa492/xsa492-15.patch" of type "application/octet-stream" (3689 bytes)

Download attachment "xsa492/xsa492-16.patch" of type "application/octet-stream" (3857 bytes)

Download attachment "xsa492/xsa492-17.patch" of type "application/octet-stream" (4176 bytes)

Download attachment "xsa492/xsa492-18.patch" of type "application/octet-stream" (3468 bytes)

Download attachment "xsa492/xsa492-19.patch" of type "application/octet-stream" (12941 bytes)

Download attachment "xsa492/xsa492-20.patch" of type "application/octet-stream" (3622 bytes)
