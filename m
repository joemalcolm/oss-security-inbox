X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2434" "Tuesday" "18" "January" "2022" "18:57:57" "+0000" "John Haxby" "john.haxby@oracle.com" nil "57" "Re: [oss-security] Linux kernel: Heap buffer overflow in fs_context.c since version 5.1" nil nil nil "1" nil nil (number mark "U       john.haxby@o Jan 18   57/2434  " thread-indent "\"Re: [oss-security] Linux kernel: Heap buffer overflow in fs_context.c since version 5.1\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] Linux kernel: Heap buffer overflow in fs_context.c since version 5.1" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5608 invoked by uid 550); 18 Jan 2022 18:58:59 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5590 invoked from network); 18 Jan 2022 18:58:58 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=from : to : cc :
 subject : date : message-id : references : in-reply-to : content-type :
 mime-version; s=corp-2021-07-09;
 bh=iFIeRwsUzfMNTObVp4xYaq46T1vUtcTwABc9qWIg5TQ=;
 b=BkNQ6XBCMdgcGSDTv3H40QyzuMcpTYKzv41gou/MaZ6hafTCpwzCfW2CbdqqCG/GR8PV
 1ISST8LcT654oaLQ6O0mjFDEuxUIJvBM+Csw18Ruu6MelLk4jiVryy7sxbgEPVeijcbE
 2gxKTvopX+/NlzYXuljz7rYb0qlzR1NMGrNKs91THfCxcARpwNZ+Ox0G7Nii0b6ZCLnn
 qMwZRji9AdrL1GEVrqJAFBZGb2MdxdRCMbeeIrmZthFTZDjOIm8oUrHCyLREYQ3HwyzJ
 gmq2qQTPnJVFsy/RJflJJSBnA1kNHRd1YkXZG7D9FM3BdqFR5ER2WtyFlqx1fGJDB5wF 7g== 
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jPuH+fpqArwOfHkpa8VYmX1w/h4mFXyaWkZR3ZmwOK7W04vQG5uSsxZiwOEXF9slJQXihNo+dzD2ZdXpRi5navX8qFH4LgcTbfT4Q70x0BGvifJTG1p76DmpF6W4L0kjyM0EHYzssq7Ziw5RqsAVjVjhkIFN/oBqutelOEVesTaw94+ofDMhAbEyd1uchL6bGNhw2CKMwK+6A8sHMpg1hZY15YEs2WdTYQ9ru4x4BNQ0lstWT0bkdYDjFTzG2RWsOkahiQ5rFyZxuddCHmdeXo/c6y7RjDTJ3Tuui2KKiOhD6A8BtJ9ji29ITI/tD5Mln+dlBr7XTBjxz5/QF0BWmw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=iFIeRwsUzfMNTObVp4xYaq46T1vUtcTwABc9qWIg5TQ=;
 b=Y0vjKpi8h4IXL0sqezar6jBkiiL2vEh3agY37WryekpxUZje/WN8YFj0kkKDbrc7Mfgqp6AFqLtfwEWK64S6IcbTsoUwNSVP+rU0St+Z2yph++nqEWJ4Ndl13NgoqHjlL9/gjRbAUpNR9X5L9m/XFIeaGEhmY/ZzEKnXn27GAynguBFRQpoGml+DpqtuRaLWrE1PA8d7wtIYM4bny1qkmifzC9ASGHjoduMyCYMswMmVP8UwanE59/BzMV3H/TCWTv7ePneRHfrF3kYDuDCeEvWypHtI6rGk+Zc7AzY7w+cxCJ2Sw2XAnadfNvUG7sM8i3UhPTAKtBtvMZnCmZqGQw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=iFIeRwsUzfMNTObVp4xYaq46T1vUtcTwABc9qWIg5TQ=;
 b=mGgFujsRltHnHpQAk+HDGlwZ/8ZMt2YVIVQ1wcQFsJ9o6nPF8EaqGvgm4RCZ9SWlibGbOHp0S0ZSPFDrsLWVQm55zcVDrSsmBCTVkyaP79vIp2hWWCi8db4QSJzEGjWQ50MBv9RxPv2fpP1SUZr8JvVwOuclaAylP9I5+z2JVUI=
From: John Haxby <john.haxby@oracle.com>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
CC: "jamie@hill-daniel.co.uk" <jamie@hill-daniel.co.uk>,
        "g@gnk.io"
	<g@gnk.io>,
        "misetichrvoje@gmail.com" <misetichrvoje@gmail.com>,
        "alecthechop@gmail.com" <alecthechop@gmail.com>,
        "isaac.badipe@gmail.com"
	<isaac.badipe@gmail.com>
Thread-Topic: [oss-security] Linux kernel: Heap buffer overflow in
 fs_context.c since version 5.1
Thread-Index: AQHYDJpcwic83a0ATkeWhcLTs2K6j6xpIWYA
Date: Tue, 18 Jan 2022 18:57:57 +0000
Message-ID: <215FEA11-77C7-42C1-97AB-8B3F637F9C61@oracle.com>
References: 
 <nZdp4o4iHdicJfJwEJ-dtJrhs5aDa-cbvA3psbItS3dkwOwxmzwXanoaslI0T5nXjCNz0Cm5csVgCJxDWPWIaKDbF6mxaYch5xJo3QT-8_0=@protonmail.com>
In-Reply-To: 
 <nZdp4o4iHdicJfJwEJ-dtJrhs5aDa-cbvA3psbItS3dkwOwxmzwXanoaslI0T5nXjCNz0Cm5csVgCJxDWPWIaKDbF6mxaYch5xJo3QT-8_0=@protonmail.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3693.40.0.1.81)
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: cb8fb361-e16d-4b31-946d-08d9dab4710e
x-ms-traffictypediagnostic: PH0PR10MB4661:EE_
x-microsoft-antispam-prvs: 
 <PH0PR10MB466105C6FC91A7BDE89888AFE4589@PH0PR10MB4661.namprd10.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 Z4cejr47w52tpyEIZrzYFXmuCq+mhOCkntKIW9oGueCg+3mrsGEEJSMpnSrXxFqEwqXrPC2ozn/AZ23WwpaydjzPlje25/4/ta7sjBGRw3sW5wyuUjczdUwvEDdO79g8cRYMRY5Y3dU1QgVaRPVFl08CJ03c14nZ4HdIeQl/0Q0yiaro18El3FAut0/PPimG5kUhY1YvmMrBBnmLhDn7OyyvKvS0i8A4A2Fyp/APc53raHT71Q6mWZOXi67R8Myyq898RlKV0I+Il5eFONEn70rxL5Or/HNfvSzuRfiRftwgq7WWqjhDeep0TjGP+tNjZG8qoBIGNI8yQpaKWFG3XSbYBWj7e1Huy7JVjg63GhQHfkjH8xtViouNjtz4Y1OQSnwzwXcKjNRhTyLBZ37Q23BHQuTRiAiTiie+jDWH8Jv8GO1eQdP74dDcSzILCQe0lW9+y29mpffWPpUOEXY7Rb7IrtcH3rynUG4+Pll4KvskOuRBSGQTZAmA+u1NTGBarZVPPccnMjDT+qr5/pP6Jwg5RKGNPL68dsc/ZPhi+AcRvfZfDt/gUaQdNE+/KF9aYdylhJ9peSt91w0wcIKmhqyR07RkSpsC7oX4MZLY/4CPM3vjSgGJG0lXO5HtIiP18nVZgr058gUWtaaFtniL95PyTBuO6Vek03iyEk8hG402aBHF/o5VUVZPZdrqDJjYqEOCc8SZtGrlFTeJhEb5t8b4FzfLeDHctP9WBK9MfP2/WBVfy3JmggJ3BFpZYRmk4r+JVQaTJGf1LvxovEmWe+YMc4cVxaYTEb9G5LbSxqwscu60wOjPz4PzDxW6IzG54KgQJr3eIrerioSYBPIN2o96T8kFKz/3CHhdCSXWne3As1E3h3OJ8Y/v4WMTTC4k
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH0PR10MB5660.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(366004)(83380400001)(4326008)(316002)(186003)(508600001)(6916009)(86362001)(6506007)(53546011)(6486002)(44832011)(6512007)(54906003)(99936003)(2906002)(5660300002)(38070700005)(2616005)(8936002)(33656002)(38100700002)(122000001)(36756003)(66446008)(64756008)(66556008)(66476007)(66946007)(76116006)(91956017)(71200400001)(8676002)(45980500001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?Uo9Cu9yV9d/bpRadGQy7kEyt7+LMS2HH+hLibjUu2j++nzZuN9106Z/YclMa?=
 =?us-ascii?Q?Ar2UUyvDNhk80cw3KBsq9njmyZLAuF4Gxa5XZ95he9l2AxlbN/55QSaqK2Dy?=
 =?us-ascii?Q?L10BOIBRVut+YcPgxQpc3Q17+k90ANONfvgb6Tx4RaAojw0THenk7AzRJMWP?=
 =?us-ascii?Q?RI78qaHbUfBWblQ1Ui+oAdSw33b3icWIZhpLBYairF8lX6Jz0od6mTx+h5n/?=
 =?us-ascii?Q?Rr97nta6P0g03pfGtXyETYtgkkj31aJfLrb5stlhv1eAWz2pgXrc1ngOL8Gv?=
 =?us-ascii?Q?r3jG3JGKuxbrkCHRYSba5I1dlOzlDD+FtlHEMaHDOM1DOULYFuTTeuPhoTOu?=
 =?us-ascii?Q?qyspfHmvL4Y2JENpX3sbeHXOqBkhW2kaxM4vYtQ/6kK9CR7+vsqDrMH/prwx?=
 =?us-ascii?Q?R8dYsnWtqntVm0TH2BvF4K1LtAZzAiVGADjtmZbR5D4N7DISYYsgaETSTp1I?=
 =?us-ascii?Q?jdfvTu+5UMuTm1DqBj+6bhrBQH14SM5sPNftoEHvm+B5UsbhFmsi3b5p2gn5?=
 =?us-ascii?Q?EOf9YqEw7B1ayQuZ441eeujrv1EtsWAmxIbAjKzz6b63HzfnqXBCn8Wg7QHb?=
 =?us-ascii?Q?WgxStrtZiT6zPaifwI2gcsslut+Lg7Mpy3pTt3vlITtJjJ5a5Ca9xXP3Z+1q?=
 =?us-ascii?Q?i2nHyNyBK2PV+Xta1cI76YLraTbj4xQ54O4AmB0AJDQUi/BZZGit7aJVnwYK?=
 =?us-ascii?Q?LCndYINqgk39eEzdu69TgzBpEvfqRPZILrwgmRAtWnsfQesU+I8lo+61UoLU?=
 =?us-ascii?Q?W/obPIc7vBMmQ9Cs2DeOijZ9pXoCJS/dbjqW6g75OoEr2sY7aBn4hwNJ1S3i?=
 =?us-ascii?Q?1+M7XxEBZ32uIM6EOflixtaAhHcc8pFYBzrR7QYACIl1TwKuW3djlFvat/yQ?=
 =?us-ascii?Q?kxKsYRP2vOuhrYceNP++A4c0yUPfu+ez0sElK89TTwEIg4o30Je7cT+9+UhH?=
 =?us-ascii?Q?v/BIVBLvON4e/0NeNJ7byRfzppIBU3OStZMyfYyahUzojPj6iQn1NsJsr3RS?=
 =?us-ascii?Q?wepBPJzuSyR7dwx/UoPJ2Sshb6HSy0/k48wlG4oDMkAg4YV4NOrH5APYAs5T?=
 =?us-ascii?Q?QvbyUqLcWCGdLxzz6bnG45UqKrl8ImitE9mV+ZW8Tdz+Es0z7yb9GZlbsxXk?=
 =?us-ascii?Q?rCSSIpXh5wrzM4Q9TIzmNkgc9E3AV1UBLsEetM2JBS7+c+pFdRzVy1lNbUK7?=
 =?us-ascii?Q?sux4EqAeXdjm21jbu1HHont1mmEeim+t6lKVp/YjExmxUdiBBKmLSE1Y3e3s?=
 =?us-ascii?Q?RMrJVasQtn0pRI3ai+dQMz4w+TyhMetGCG5mnVhUsGEa10Ii1u9MKugVIHP/?=
 =?us-ascii?Q?H0nY7PFb1qG/M00wHiq14Gvu1DduFLyt+BpDhVe8PlWGYAxlfINs/OIDYOKH?=
 =?us-ascii?Q?GTonppG5aDW5j6RoHvtzBzFKXtyZ4ghmgNE4y26u9d8BgnR4Zbi+5MzJrb2x?=
 =?us-ascii?Q?Udzjz/pLNcdRWYvj91zDVQuD2mKwZ5x4dLFnuQetvmADDvNGSgY8bymegqQK?=
 =?us-ascii?Q?nqBTRJfxwq1JeC09VyJkzia32JWpV8TCq8lpjjviGa0Pzxz9OxVWfD2UWsOm?=
 =?us-ascii?Q?yHISiMZVwz6k7EhOmIaWDsAkUvJn6OC3mEE0RxXA26wk5Q/i2P+Viv++MGJb?=
 =?us-ascii?Q?B9uC+yvJBvr0M2GWnUITFY/uNClcjnCL25d6tYsxQPG0TirixwQNFq0CV3e0?=
 =?us-ascii?Q?+Uax8hTO3PSvPhmXPguj6ubCRHI=3D?=
Content-Type: multipart/signed;
	boundary="Apple-Mail=_43A3623F-1B40-4616-8631-A5B73751189C";
	protocol="application/pgp-signature";
	micalg=pgp-sha256
MIME-Version: 1.0
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR10MB5660.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cb8fb361-e16d-4b31-946d-08d9dab4710e
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Jan 2022 18:57:57.4447
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: o2kFjIwMh97tFNTE1ZKvoqpsNNxMGOBCPNMoEt5f8K/gRipGJetL5tRqQl00nPm0b7RqGe9FjvijUDNqMEXFOg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR10MB4661
X-Proofpoint-Virus-Version: vendor=nai engine=6300 definitions=10231 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0 bulkscore=0
 mlxlogscore=999 adultscore=0 suspectscore=0 malwarescore=0 mlxscore=0
 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2110150000 definitions=main-2201180112
X-Proofpoint-GUID: q1oSdMteChis7M6USLE4eNuuFjw-3gc3
X-Proofpoint-ORIG-GUID: q1oSdMteChis7M6USLE4eNuuFjw-3gc3
Subject: Re: [oss-security] Linux kernel: Heap buffer overflow in fs_context.c
 since version 5.1

--Apple-Mail=_43A3623F-1B40-4616-8631-A5B73751189C
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii



> On 18 Jan 2022, at 18:21, Will <willsroot@protonmail.com> wrote:
>=20
> There is a heap overflow bug in legacy_parse_param in which the length of=
 data copied can be incremented beyond the width of the 1-page slab allocat=
ed for it. We currently have created functional LPE exploits against Ubuntu=
 20.04 and container escape exploits against Google's hardened COS. The bug=
 was introduced in 5.1-rc1 (https://github.com/torvalds/linux/commit/3e1aeb=
00e6d132efc151dacc062b38269bc9eccc#diff-c4a9ea83de4a42a0d1bcbaf1f03ce35188f=
38da4987e0e7a52aae7f04de14a05) and is present in all Linux releases since. =
As of January 18th, this patch (https://git.kernel.org/pub/scm/linux/kernel=
/git/torvalds/linux.git/commit/?id=3D722d94847de29310e8aa03fcbdb41fc92c5217=
56) fixes this issue.
>=20
> The bug is caused by an integer underflow present in fs/fs_context.c:lega=
cy_parse_param, which results in miscalculation of a valid max length. A bo=
unds check is present at fs_context.c:551, returning an error if (len > PAG=
E_SIZE - 2 - size); however, if the value of size is greater than or equal =
to 4095, the unsigned subtraction will underflow to a massive value greater=
 than len, so the check will not trigger. After this, the attacker may free=
ly write data out-of-bounds. Changing the check to size + len + 2 > PAGE_SI=
ZE (which the patch did) would fix this.
>=20
> Exploitation relies on the CAP_SYS_ADMIN capability; however, the permiss=
ion only needs to be granted in the current namespace. An unprivileged user=
 can use unshare(CLONE_NEWNS|CLONE_NEWUSER) to enter a namespace with the C=
AP_SYS_ADMIN permission, and then proceed with exploitation to root the sys=
tem.

This is CVE-2022-0185

jch

--Apple-Mail=_43A3623F-1B40-4616-8631-A5B73751189C
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - http://gpgtools.org

iHUEAREIAB0WIQT+pxvb11CFWUkNSOVFC7t+lC+jyAUCYecNtAAKCRBFC7t+lC+j
yJGxAQCqPD5sOKmzuFrxTM1VMOztY0q9RQNH9PmCVej9DmE43gEAqXDgx4oOzeQR
Cv7+GZeeRbEc5VokL9zD/6Hy/jilXzs=
=mZfZ
-----END PGP SIGNATURE-----

--Apple-Mail=_43A3623F-1B40-4616-8631-A5B73751189C--
