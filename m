X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2628" "Thursday" "28" "January" "2016" "20:50:08" "+0000" "Sushanth Sowmyan" "khorgath@apache.org" "<20160128205008.2154F185EB@minotaur.apache.org>" "65" "[oss-security] CVE-2015-7521: Apache Hive authorization bug disclosure" "^Cc:" nil nil "1" "2016012820:50:08" "[oss-security] CVE-2015-7521: Apache Hive authorization bug disclosure" (number mark "        khorgath@apa Jan 28   65/2628  " thread-indent "\"[oss-security] CVE-2015-7521: Apache Hive authorization bug disclosure\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 25942 invoked by uid 550); 28 Jan 2016 21:28:09 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 5865 invoked from network); 28 Jan 2016 20:50:21 -0000
Message-Id: <20160128205008.2154F185EB@minotaur.apache.org>
Cc: announce@apache.org,, bugtraq@securityfocus.com,
    dev@hive.apache.org, khorgath@apache.org, of@oflebbe.de,
    oss-security@lists.openwall.com, security@hive.apache.org,
    user@hive.apache.org
Date: Thu, 28 Jan 2016 20:50:08 +0000 (UTC)
From: khorgath@apache.org (Sushanth Sowmyan)
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE-2015-7521: Apache Hive authorization bug disclosure
To: security@apache.org

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

CVE-2015-7521: Apache Hive authorization bug disclosure

Severity: Important

Vendor: The Apache Software Foundation

Versions Affected:
Apache Hive 1.0.0 - 1.0.1
Apache Hive 1.1.0 - 1.1.1
Apache Hive 1.2.0 - 1.2.1

Description:

Some partition-level operations exist that do not explicitly also
authorize privileges of the parent table. This can lead to issues when
the parent table would have denied the operation, but no denial occurs
because the partition-level privilege is not checked by the
authorization framework, which defines authorization entities only
from the table level upwards.

This issue is known to affect Hive clusters protected by both Ranger
as well as SqlStdHiveAuthorization.

Mitigation:

For Hive 1.0, 1.1 and 1.2, a separate jar is being made available,
which users can put in their ${HIVE_HOME}/lib/, and this provides a hook for
administrators to add to their hive-site.xml, by setting
hive.semantic.analyzer.hook=org.apache.hadoop.hive.ql.parse.ParentTableAuthorizationHook .
This parameter is a comma-separated-list and this hook can be
appended to an existing list if one already exists in the setup. You
will then want to make sure that you protect the
hive.semantic.analyzer.hook parameter from being changed at runtime by
adding it to hive.conf.restricted.list.

This jar and associated source tarball are available for download
over at : https://hive.apache.org/downloads.html
along with their gpg-signed .asc signatures, as well as the md5sums
for verification in the hive-parent-auth-hook/ directory.

This issue has already been patched in all Hive branches that are
affected, and any future release will not need these mitigation steps.

Credit: This issue was discovered by Olaf Flebbe of science+computing ag.

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.5 (GNU/Linux)

iQIVAwUBVqpoih6tt4FFMLreAQKkbA//f+r+DDDKiYPbymTXjOhCUqDIDirtiT2A
OZHBn3LTNad3eQPZ6qrYadbw30iJpU+SCMtN+gO7F27TJRIdBfk/g9HjrG9i/uLb
q4a/uzHEGbFFnfz61gXERtvyqHP/7RzbUz/WNBvCGitJJL2AZ/j3oTvUxc4r3fbC
mVXSCtkY7fj28fbi9/jhj/go9Qr7aL0Tk/Tkb6RQ97YwoZVZTvPTFh7ALmX+f2Qh
0qPMg7phL9clTXR/cNGRA8LUFRbDuTahP5hptHmE2KgGQJK5fjKwvisoH6lvVKnh
iv5UFs9jjcvPd1MpuBDRfHj/RA0L8emkDzz2/36XKM0AFyEB5gHf4U7ZT7AVj1P/
xwdxgNJZcqgRfSabkNIbNhEcYLVx9H2btIIAgkdDnu2HaxzCBErjRcv6hj7bbG5N
5NHQDcnjzj86u2D7XiA4hXPLnQE6JNJyc7cLaU4xRV18QiN9KzpDJQpIot0GvXs1
7q2+I6H6AxDxeotSCmQnwEE5NCVxl3ivUCKA8tA0jxEzhm8QE/bTaeM00OwJ+7wl
ruDdGkfF3b854U4Fyzh14WCGy1b74wjc79iOt8tJfLEh9kdRNbA5Jb7QZYNpCJ4n
Eb5lxZv5MQFyBvbJCttz59jgzxCcmunkyNZamGRGugmR3Dwu9jOQRCk2s+4pouCf
20RJ9WEkoXY=
=Q0SZ
-----END PGP SIGNATURE-----
