Received: (qmail 21727 invoked by uid 550); 19 Jul 2022 17:02:29 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 21709 invoked from network); 19 Jul 2022 17:02:28 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=from : to : subject :
 date : message-id : content-type : mime-version; s=corp-2022-7-12;
 bh=RMly2CsANGK2ht64bwsNNQpmaN9d3KTsbR7B/Xp2hUs=;
 b=BxdeodgWh7NpBa6+NKqyECTyKmklbY8idaaI6yvgtTzkOHgpuBqyh0M8bfaQnaMyQFAf
 7SJSugJk5afaXe6SbEFNqnN31nnOfNobvtfUR8tgyZbvatAaEMdTHmMvmXjghORAtLtH
 1FurgR7iGcQRSGeIxgeibT6afbZJZJM36GS1xDdW+Y3IdYFXLvOkZ4Vuv9e4WNHNFR6j
 QUzKGjaenCqudJZgooOEnz3EzAetwRNuLyqRQXqShfQoW6iLK0uERrmSasw6h8RoMqUO
 RNI6aHFi2kshLn0SchCRSUr1YQ1n5vl+CXNqgRDU6FC+O0UHIr2Af1aCoPOpjxarfeMI 3w== 
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ON2Rxyuu6+zUIDgyYCLmEPDkln250z9Sx2DYtHoW0IuRBxmh5TXY53RyTE4J/V60cbJgEt3j04XPuSuEHI5Cw3vVd9bHjEP2rCoh2qau58Nyo82K8QPIVGxf/mEszfPzJXqhLbB8Wx66SRmU4lZ1vgHi21izgd0jFb2ej0D+SCkkOIrngGt3rwh1QTfU3HGfGYImiC+BPUtukdjCS9tI3xcoMKmpDnIob9roI0T3aljyM7BtZPq5SDNc23ifMUO1LfHcM3ORSDVzZ1ZosWnzwCVn3y3gi8gjQjTDekJvJs8+B2rsiteNqL0ITfBt2cfb+ze+dvIgWwQqxAlfVicDKA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RMly2CsANGK2ht64bwsNNQpmaN9d3KTsbR7B/Xp2hUs=;
 b=S6J3qcBJLTPcNHd5H0ZkoCpLhUuTFAiCd3DnczE34AVMhT6FaFOzclZcZwUb3/gKYjmk35JzWYrAVQHmpw9c/VZG+zBfmFwkbyUKumh1gPFLbeVJAa+cIjzJ5cKqCMrm1PKy/9P4xQ0L0i+famxt69oKjcPCZCiTHDzq/Ur8HQNrqrq+GOr0MEe/GH4nlHwu9pFxso8ME5BEGVL6LizP9fsMaApR972JUUUd4TwhTuO3tAaBXgyZBq72Ni/6EaPAHcL83qHgkm9cBL84ijlfXUrr+ljud3ik5E5BwTV1JZzRyMf2scix2Vznfme/7YMRgKxokMT+MotPB0C5O2ZffQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RMly2CsANGK2ht64bwsNNQpmaN9d3KTsbR7B/Xp2hUs=;
 b=M/jRMScxAH6QVJrCchEYMJv0grr4qWBlgMQE5NfMutWL1g8pZ+lA3qqO9y8Yl+pwdLQvb/u6hb2AGPP60zOa4RSKgaIpHT5DwwM377/IxFLpiy3YS6HCRoDhjRZtEED+FAQLml2105NBs5FtHK5kzA79NM93SEMRKM9HuCE3Mm0=
From: John Haxby <john.haxby@oracle.com>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Thread-Topic: CVE-2022-21505: Kernel lockdown bypass bug
Thread-Index: AQHYm5FKGok5/MHzekCJ1Yd8pydPkg==
Date: Tue, 19 Jul 2022 17:02:12 +0000
Message-ID: <84A9FE84-665A-4750-9C36-07FBD9222C9F@oracle.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3696.100.31)
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e22f399d-9adf-42fa-3f34-08da69a86cce
x-ms-traffictypediagnostic: SN4PR10MB5799:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 dIAEx6qNDyExpuYyL5jTL7gGC91LgTxptnBRySxQM59RQIZndSq0m/ZqxvH9o3tzKZiAdw8E01dVa6JT2i4hNnW7J+azpGFTcn0QeAWRQgpV6tjmLDbmKdDi9Kw2SjnreBlcLRDSS8lXc8zowEq/aXbbHmpSANyDQbSEzPpiyc9j4XKSk1ezCDbQfiQ7DV6ND1xeuh5EDalN+nTqaioU1/gYTiBxRrCTHBdLz7xTOuNbnZYc7ih3kmuTiPJn5H+QB6QHgQ1HjUTwFtddc8P/qMg/zcKNRdyMiF4DK7DcU++r9eoTqWJaOvPx3CEe/VCPLMiPCe0DV4T7Y/rWCjDgUe7vh0StqdY+jfCmO14nrolZ/dXT3vhQwo43yTNreN4SLDIymP6lIr8WpQ8mmu9BgYYqKn7GuK4oZUXxspOfEPxxdlhKFFYi2x4+PQsT9/fZHY2Nk/pw8GL/CVrQwRVsag1iJbf1bFlDVsY2Wosm94EFFhLvBkwbRy0A7eRgIRGo76XcmSuzIsOW5VW8fvqradpXOOT/YkHeXnJ2sD3z8bgmpdN0LyLLI4bAKQDS7S5GwA4wC+1DrgOb+FSs/+RUditG6Eew53AdcpRzYKN+7rSpLT9ymGaZljPT1KFZKJmtyqAau7p0ePKhuxw7fgUQyqlUiRr6vrf7XcY0wQSRyJsDA4NNZOaXtjg/FfJ9Rh1bazFMfHBf9sZpIYIJ7/YFEwqrgVV83Lr0URggeryb5H6hu+4eIAP3qUfEWssyLP/VPceloImT6IznyGXn+3XYAiOzIU3l3BHRvDBxSgl95cHff82/iGzi+ub6Qv2rYj3jtOOcXPJYpq5dJqfAOj0h5w==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH0PR10MB5660.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(39860400002)(136003)(346002)(366004)(376002)(396003)(38100700002)(38070700005)(83380400001)(6506007)(6512007)(186003)(478600001)(2616005)(5660300002)(44832011)(122000001)(71200400001)(8936002)(41300700001)(2906002)(33656002)(6486002)(91956017)(66946007)(36756003)(66446008)(66556008)(99936003)(8676002)(316002)(76116006)(64756008)(66476007)(6916009)(86362001)(45980500001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?5FePmLebxqIqZmGCHXeHQw7i+FQdMvlWYbLUXV4RlCJj4GEWuwqIVk3d6zuf?=
 =?us-ascii?Q?Oo+JxfDuCSSjcj2KmBqjqJK/s9oKoDmRhZEfbZNlV5dBBQcl8e1hYDz+xA2f?=
 =?us-ascii?Q?K0WYtfJdcTC9w+8nnM2C/1rhwyD/f+cGEZ4fwnMRxRm5I1Mjh9YxD9UtlzAt?=
 =?us-ascii?Q?R4DUSTf6cyHOweNTJmeKRzoqbDoNOeFJ5p0idBzekH6icLdgZy4vJQiDij25?=
 =?us-ascii?Q?Jgh0/js7cWsIH+ZkBNb32YfHZ44yx1at+G4tVKKWCyKPoC27oG2nn03HIAxp?=
 =?us-ascii?Q?QlKCwTBbNh7/1u3UMVK+Eo9A9+NkfvH9Lj3MbpTk0rqhi5a5VcIRMLbxslCP?=
 =?us-ascii?Q?iRQqDdmEpuxQ5fOayDknU3gXuEc/wQnLpl5sF4QiB/sl1+vCbEtbFL45d6Yu?=
 =?us-ascii?Q?85Ldrh3unjWYxDAa9yzRGdVv8Ayz0Bc0sqWUN/5FlAKZ1Mz37XNtXX+2kFy0?=
 =?us-ascii?Q?zP1Alk7qg16oPR9lydkmj/Yy/QVw/LnoOBDLE/n35IUV9/Hgb+WxZ1cibriX?=
 =?us-ascii?Q?S18LKlqm7I6pI1KCQiDl2KTcyjQ3mSW6VXTMbldu8h4tLD2z8OmzDQUDC2yI?=
 =?us-ascii?Q?VSxi9g4c5YrH5BDBDcK0Ugq8FCNG5+VMCmDulVLioDq9g+2LEk7yxbrYkExo?=
 =?us-ascii?Q?btbp2BuMl5iP++yZkjrGliWyzwKwfCV17P+fL98+tycEIyenbb10c0+k03DJ?=
 =?us-ascii?Q?GisiE2Hs8W9ZyJnozUdeN7d1l0Zg4uCKSC7UGITxgZGDBX/yqjd1nGRjb4Dk?=
 =?us-ascii?Q?9DijepfECWzGEp2KTDB+l+I/BQwaamssbZevRXJm0+OoEWNBdwBnFoxv01Cy?=
 =?us-ascii?Q?d4U/B8nwfdxuc+ITY7I06Pl4KiusgjgXOs8F3vXWZCJmk8zUtzMOL4xkGQMT?=
 =?us-ascii?Q?AL7FgUcal6TxIfgCcnxcCEzzQ8PM8PBgcAKIi4IK81pb02gFCQBocnVhiKcr?=
 =?us-ascii?Q?G/CtSE6a94IuDr+H3zwx+qdpO2JMheb4KgHrQtkMdoRArlcgzidx6S3oUH+6?=
 =?us-ascii?Q?TW04WN5gP87RBtKmb3TScsq9yeKRGGZ4k3+b5YblPOf2cPniKb90pPWFF5kT?=
 =?us-ascii?Q?UxQOu8dJOJjRuoGkZoH5Zelzyh6N29W6OQZ20Ko/fvHk8fvfHJi0TL8Ys/2s?=
 =?us-ascii?Q?FxgjOABC/8wweJE9bS5YJs1W1v9zdFhUfBsFBEO/Xhmhh0+A26puGllY2BW5?=
 =?us-ascii?Q?R6GdkM+GVczQC+qTNGCvqPWK56Uf/T1cua4+28T9CJzI/6dmIr9sj4KivO3w?=
 =?us-ascii?Q?z2SJmKwNfHC3+fPUJeiV6MYqrHQfnj1voLw5SJl9lGnxmrdwUnyj2cLibYqv?=
 =?us-ascii?Q?PFhKOSNSNGICB/bT6eV9bzusVCwbgo3V3tuRJRvgTdWShItTWQWPDu8cMf0j?=
 =?us-ascii?Q?RDqc25DVkTOiirkyrVAd31I15L0JjLcgdTd7LkIVdToV0Xrs9XrNYzq+u8G+?=
 =?us-ascii?Q?e5BsNIbo+97ff3Hl/T4yeQ005XRiOpNCM1fjPP1uBl1GrzoQu03J7RhoiVBC?=
 =?us-ascii?Q?+ILSjI6bx3Z0HthbtDKmTeQNPAJrDkY37ZWdcmmBXPIPlEvDXL6fMBKAY3RW?=
 =?us-ascii?Q?MSt2pXxYYhYUbr8bvmwT21ulfLOPf/peGhTrhn0aE+v/RjOOHtlnpISfHBQJ?=
 =?us-ascii?Q?UBV0AtwlMHjvK3oQ8SLAQFU=3D?=
Content-Type: multipart/signed;
	boundary="Apple-Mail=_72D282AA-2377-4B24-834E-E93E57FD5E10";
	protocol="application/pgp-signature";
	micalg=pgp-sha256
MIME-Version: 1.0
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR10MB5660.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e22f399d-9adf-42fa-3f34-08da69a86cce
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Jul 2022 17:02:12.7068
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: SVikNoF+5UnxuIp+Wdpkf6UY7wnjpCP6daAg4cNKanmmHQq/FyXGNZxoMiqV6OeW1d8X9qCVkJjFgVXYv52MrQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN4PR10MB5799
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.883,Hydra:6.0.517,FMLib:17.11.122.1
 definitions=2022-07-19_05,2022-07-19_01,2022-06-22_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0 mlxscore=0 mlxlogscore=999
 suspectscore=0 phishscore=0 adultscore=0 spamscore=0 malwarescore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2206140000
 definitions=main-2207190072
X-Proofpoint-GUID: 5GSEoMQNJV65hty4yJg9LF-kdihccdyo
X-Proofpoint-ORIG-GUID: 5GSEoMQNJV65hty4yJg9LF-kdihccdyo
Subject: [oss-security] CVE-2022-21505: Kernel lockdown bypass bug

--Apple-Mail=_72D282AA-2377-4B24-834E-E93E57FD5E10
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

Hello All,

We recently discovered a bug that allows linux kernel lockdown to be
trivially bypassed using IMA. See the patch, below, for more details.

This has been assigned CVE-2022-21505.

I've included the patch, below, but it has been sent upstream and you'll
probably want to pull it from the repos on kernel.org.

jch


~~~
The lockdown LSM is primarily used in conjunction with UEFI Secure Boot.
This LSM may also be used on machines without UEFI. It can also be enabled
when UEFI Secure Boot is disabled. One of lockdown's features is to prevent
kexec from loading untrusted kernels. Lockdown can be enabled through a
bootparam or after the kernel has booted through securityfs.

If IMA appraisal is used with the "ima_appraise=3Dlog" boot param,
lockdown can be defeated with kexec on any machine when Secure Boot is
disabled or unavailable. IMA prevents setting "ima_appraise=3Dlog"
from the boot param when Secure Boot is enabled, but this does not cover
cases where lockdown is used without Secure Boot.

To defeat lockdown, boot without Secure Boot and add ima_appraise=3Dlog
to the kernel command line; then:

$ echo "integrity" > /sys/kernel/security/lockdown
$ echo "appraise func=3DKEXEC_KERNEL_CHECK appraise_type=3Dimasig" > \
/sys/kernel/security/ima/policy
$ kexec -ls unsigned-kernel

Add a call to verify ima appraisal is set to "enforce" whenever lockdown
is enabled.

Fixes: 29d3c1c8dfe7 ("kexec: Allow kexec_file() with appropriate IMA policy=
 when locked down")
Signed-off-by: Eric Snowberg <eric.snowberg@oracle.com>
Acked-by: Mimi Zohar <zohar@linux.ibm.com>
Reviewed-by: John Haxby <john.haxby@oracle.com>
---
security/integrity/ima/ima_policy.c | 4 ++++
1 file changed, 4 insertions(+)

diff --git a/security/integrity/ima/ima_policy.c b/security/integrity/ima/i=
ma_policy.c
index fa5a93dbe5d26..748b97a2582a4 100644
--- a/security/integrity/ima/ima_policy.c
+++ b/security/integrity/ima/ima_policy.c
@@ -2034,6 +2034,10 @@ bool ima_appraise_signature(enum kernel_read_file_id=
 id)
	if (id >=3D READING_MAX_ID)
		return false;

+	if (id =3D=3D READING_KEXEC_IMAGE && !(ima_appraise & IMA_APPRAISE_ENFORC=
E)
+	 && security_locked_down(LOCKDOWN_KEXEC))
+		return false;
+
	func =3D read_idmap[id] ?: FILE_CHECK;

	rcu_read_lock();
--
2.27.0

--Apple-Mail=_72D282AA-2377-4B24-834E-E93E57FD5E10
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - http://gpgtools.org

iHUEAREIAB0WIQT+pxvb11CFWUkNSOVFC7t+lC+jyAUCYtbjlAAKCRBFC7t+lC+j
yNywAQCHHH3/5mCE4a40c4gLgC7vYtT2sT8ODbRgVwRJ46//WwD/aBdLJnaE0lQJ
pJysDAOzuL5/JGhV40j9I76E20CJNW0=
=cqhv
-----END PGP SIGNATURE-----

--Apple-Mail=_72D282AA-2377-4B24-834E-E93E57FD5E10--
