X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2743" "Thursday" "18" "February" "2016" "01:26:59" "+0000" "Sushanth Sowmyan" "khorgath@apache.org" "<20160218012659.A394618DA6@minotaur.apache.org>" "68" "[oss-security] CVE-2015-7521: Apache Hive authorization bug disclosure (update)" "^Cc:" nil nil "2" "2016021801:26:59" "[oss-security] CVE-2015-7521: Apache Hive authorization bug disclosure (update)" (number mark "U       khorgath@apa Feb 18   68/2743  " thread-indent "\"[oss-security] CVE-2015-7521: Apache Hive authorization bug disclosure (update)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9383 invoked by uid 550); 18 Feb 2016 01:28:01 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 3735 invoked from network); 18 Feb 2016 01:27:13 -0000
Message-Id: <20160218012659.A394618DA6@minotaur.apache.org>
Cc: announce@apache.org,, bugtraq@securityfocus.com,
    dev@hive.apache.org, khorgath@apache.org, of@oflebbe.de,
    oss-security@lists.openwall.com, security@hive.apache.org,
    user@hive.apache.org
Date: Thu, 18 Feb 2016 01:26:59 +0000 (UTC)
From: khorgath@apache.org (Sushanth Sowmyan)
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE-2015-7521: Apache Hive authorization bug disclosure (update)
To: security@apache.org

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

CVE-2015-7521: Apache Hive authorization bug disclosure

Severity: Important

Vendor: The Apache Software Foundation

Versions Affected:
Apache Hive 0.13.x
Apache Hive 0.14.x
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

For Hive 0.13.x, 0.14.x, 1.0, 1.1 and 1.2, a separate jar is being made available,
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
affected, and is fixed in the recently released Hive 2.0.0. Hive 2.0.0 and
any future release will not need these mitigation steps.

Credit: This issue was discovered by Olaf Flebbe of science+computing ag.

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.5 (GNU/Linux)

iQIVAwUBVsTAYh6tt4FFMLreAQJwiw/+JqSYNXefO6dAckvDke57Hv+TYqB36K06
pQt6JiRBQ1Ov084TkfrDESj9ftIIdxnL4MD8o2wmunSJSL6an6aFFR3uxMjmYDrW
6cTr1noxl3t1WQHVf0oE4aAKCjmYBp+6qtlymt4y//PKNxaVq+8bQ53jArMt78YA
UZHV3ET+9vxQM2uoseh1QbdonFMsNMVFY2SfDiZ9OKk8o5eQuF9XhjJWpNKyboYR
hxQhjCfZxkCcqA6ulG/lhpxjRvaqEN8JwePQfpNxEToTm6Y68PrQbR01ry+MENS2
Q2KQ9H8sr9LQMXM1U+pvf1NUDnEA5m6sWTC7JcLoz/4KP5aLy1yxSAoVKhDF5ewI
7d8ECRFsCtJo64yQzy1k7W6vdkg8wuciVKv86KVYaM926wFK0Lj9VFjxFO2G1AY5
nBDMxgEnGk0AiNb9qa8fnVSsiDTwrvfBglvQlmTawdCeBUBWFaNONvxP+9lohe04
NYZz3FKSUTFaqluijfw+2x+abP+0qbwy3JfnUgTdttXJ8R5Xxlf2vGmlj2mAJYI/
+hwfBgBkVeITQ5YK/wNaI2tr8FSFOitX4np/FtJA860ygGxi9C4P/Sl1Xj97cCJC
HSfZjIOsJ6j11W+DFmI85FE5Pqp042EHq8yqIPrlcKAlmrNT3mtXyrWqdBXjESxs
BXyP9rHZJxo=
=5PjL
-----END PGP SIGNATURE-----
