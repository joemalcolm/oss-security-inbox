Received: (qmail 24182 invoked by uid 550); 29 Jan 2025 17:02:22 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 24154 invoked from network); 29 Jan 2025 17:02:21 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
	content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=corp-2023-11-20; bh=D7OP5hzcueVaFAIQ8T
	5GJ1So4sMMXm3L7vnvd3NVZ4c=; b=b6ugZ3TJmfOd9YOBugb0I6f0FFM7a6aCXg
	z5bPy+rIuXGj9xfBOzRn8gxsp5BPCpTsEuw76N+e9pMJ8aNPhIurQ+ItF0siBceY
	8MqgKlc9Lm9U4aDyUGqBQwBFWdNkZ6m6Vbf/wRR9xYt/2GxwHx1wG//N5xJj2sHA
	sn7IrAVZyD1VRxzgbBAwJfqhvRNRqdbTIFG/tK4uNoJtv76/1IFAEiHxzNKoG47y
	OqfSzqRVh330VYhn916tNhBcq8DSFRrN3c16Exg5oa/R2GinDn6jm34V93QLcP5e
	aIE9ks5X8LReYxwyHSfyisBMey1QUiIL24QKjI6L/c+xgqsuLqcQ==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=DXUWctAEebKMd1m3P9ROzt2FqeZ3PRuM6wHDbaKRXq0D5wfSTTqj2Q5mrIcrLClaI8RrkC73v0yRm3BBdXSynDVaKr6lS13p6kj3J5VomCPvuej8FTxHYDUTdvhl+a1dvIio318C4LRJ8nT/8bKAMpJbJpWhlsPmK0E8vFsKCM6OPh/6+PU/hgjclQUVcO6SVNkbzyUSBwItXH6On5Vz7noeFnkSGAh2o3mMO62696qIohw6WJl0Hh5HVXnMIyZJwXBar/8LQ34rd2nsHmn8ZbEVOa+Eex6BduOptzLLBMfL5ekNSksrN0JEfOZhYhtblSq3HFvbtV/z/o7AXxOKtA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=D7OP5hzcueVaFAIQ8T5GJ1So4sMMXm3L7vnvd3NVZ4c=;
 b=EasTdpTM/kDh954kTmjgbI1AmzrWVh7GdfY3IocBEHnWQwZCkKu1xNMJNf64UjRDQlql3iX0A0cpXUgsUlyGl01fNb/0V14aRYkrHzTbGWzHAPGwxoRLuxAwLv9XyCiB2DRJxgQ51y3OUq6mC7YioUyle+MIcMbQzCZS3SMLY4Cj4RrWRy/YgQfx+Z+/sHyS67e9rcZiJ47tBz/x0H0hKZQMWqlfb+h/Bymtt2bbVoCmaGPiHUzmXJuKOKenCDEHIsF8r9qphnl+dzmm4ID9nrEQbXAflJBtvSFN8hy2bHIntZgWsV8FmuZYLPvB5xzmuQ6bIB7+tVSgGI4SYevH7Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=D7OP5hzcueVaFAIQ8T5GJ1So4sMMXm3L7vnvd3NVZ4c=;
 b=IX/+GerNPDxMsk7fwdGAOh6A2oJuZpzGTlFOV2qjfv/5L6X9TD+O6zFODwxMZtKN3EXQTwfMzAK8l8x3/Mb3rHN/ywlEFHTkyex1verQvi2zaaRH155eDhQEXrjErREyNi/KJOZ+EeTlGAO/vaL9KNFFPnHoUBtg4Qc45JyB0c8=
From: John Haxby <john.haxby@oracle.com>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Thread-Topic: [oss-security] Oracle January 2025 Critical Patch Update
Thread-Index: AQHbbUDDYFPxP0QQLEGRyQpphIree7MknL0AgAlnwAA=
Date: Wed, 29 Jan 2025 17:02:07 +0000
Message-ID: <CFC2B795-05B1-4F6E-B112-F291200C4C69@oracle.com>
References: <20250123024222.GA16803@openwall.com>
 <fb02293c-d4cb-4de6-85d8-2cd82d574ba8@oracle.com>
In-Reply-To: <fb02293c-d4cb-4de6-85d8-2cd82d574ba8@oracle.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator:
x-mailer: Apple Mail (2.3826.300.87.4.3)
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM6PR10MB4155:EE_|SA1PR10MB5887:EE_
x-ms-office365-filtering-correlation-id: 3ceff598-b5f8-456d-5807-08dd4086a994
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam:
 BCL:0;ARA:13230040|1800799024|10070799003|366016|376014|38070700018|13003099007;
x-microsoft-antispam-message-info:
 =?us-ascii?Q?uNOGnbGTRAJOCNCed2b3+yeM18DsHE8CwouqzWMyubVdDrJW2N/xWdrVbZRv?=
 =?us-ascii?Q?H7hv37K8f9CCK18I1sXAqJC2DQxSLoMYJgP4VDctdJV4tzXMofzZPEUHx7kC?=
 =?us-ascii?Q?vjkutwr21YDtNABfuc+GL2uGnTV+C8Wt9FGG+jWShc/i9KWmXaAkMJJKs5oQ?=
 =?us-ascii?Q?aDHmBsrLq3MsKQFbjYYdWYtXqINMjQiDSVbjmq2guKSkFKSPGD7p3I8W9TNx?=
 =?us-ascii?Q?fHaN3MME77T8vTxbo1/zUq58l1nGKHtkwtIGro5uXwVruvoqiN+hl6jOdr8N?=
 =?us-ascii?Q?u9zY75ZlwDJTKTncQ4KqemxAKfpQnupEuC0B9mTyWgnfqJzSTB42y4ugY9aj?=
 =?us-ascii?Q?9ytDBxuPwvYhWpd3AX2HzjMc4EZ6oqEBPNJTnKvGlkWgSVqOKc/wTHy98sr7?=
 =?us-ascii?Q?PsVwuxazeP5C/NWNHz4n77y+Ni4f7rUxuucT9MST1DcArPExQJ3r9F2GO5TT?=
 =?us-ascii?Q?gn52a2zfXvVzQRMlYF8GUNJT/NE9IOsXrjg1TYBNUVGVvBiRDha/nIXEQIFL?=
 =?us-ascii?Q?rFmNFypvJ2CWmMO3qHjCgVBjuKmxnrrbbF6BLJp2iec9jS7KDRHvBWt2QiiH?=
 =?us-ascii?Q?iYUlAb4tojd0YdDL7Xg8wwSs1eakfRiQAb45qJf//iCotwMjmXqRn66bRvD1?=
 =?us-ascii?Q?6MUrZG+bQHI2WxDtJD6rroGctIJhRb1n83huLo1v5Y3sLPxaC1chMPZ0xHFg?=
 =?us-ascii?Q?hQl1EYcw0yWRvBAhU1kv0r9ja4/ynnWzZq6kQ4NlR8VkfYgFR91JOLJPZKJ8?=
 =?us-ascii?Q?0/01ze0Q3vccF4djipfDAXKK9A64TpsXdFtORkXb0qe3HMerFFnUoMvreN6n?=
 =?us-ascii?Q?GxEkTdu73nA/3DflVTGQcYRFpZ14uNkcpMaZI11Ld6MSp5Vc9bPkrieb49EB?=
 =?us-ascii?Q?S+QjJlIRAmXycYkh8UuRAbKHi+Kv6HHwPWmbAAVdBCiJaURU9vKUrsT51TDa?=
 =?us-ascii?Q?7mfuLHzlKgb0LWZ2/n9LjGsibMF4m5wED8PGV2c/UFSycdlaS6M1ht0hdBYP?=
 =?us-ascii?Q?q1eVZHY8RmuCcm3j33u7t3qVw2msJ93DhZ3W/mkJLOUgfUwbgkkjobkJClvB?=
 =?us-ascii?Q?pjWRORspCn2/0VOaZTYeCR6W3j/J8qUQRFyhTPxe+XpNR/fR37GKXNuOvvk0?=
 =?us-ascii?Q?ZVIGD2+YVlkmO23jtZYVUMZMuBN8D0mQFklo4h5vB/WCJVEK+hOVJ1ZcyjlE?=
 =?us-ascii?Q?MnWojhUopKghtkAJzD05zmiOrI+aZqRsBJ5HN+Ni27bMJ/b9gooqV2Uc9l8i?=
 =?us-ascii?Q?q77TFVPswKfhX5NK/v3bp2mPknCAMboNgWW3HI/o7B0keBzD8HJK8n2Ksh+B?=
 =?us-ascii?Q?maXmJAOD546IGy119SxCmOuEs01BtUM/AmKJ9oOxR6d88a12pxM2+bmlWQMl?=
 =?us-ascii?Q?TUx1+CbkHX1aw29arFY4qn+B4IXoWzm2dE6zAUpbHulzLO6QDw=3D=3D?=
x-forefront-antispam-report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR10MB4155.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(10070799003)(366016)(376014)(38070700018)(13003099007);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:
 =?us-ascii?Q?PiUMjIbJEobA5IfhaZgAzTUEkmEsqDViRzsZr/rm9p/97R7GWnYM/7xOEeWe?=
 =?us-ascii?Q?tojQ83QsA6mnAbxMdXYIrsRG420ChCo6JXrqW9oroerYDxO+41LNb7h/EOJy?=
 =?us-ascii?Q?2Kf33is3DivbYtyI2L3Pca2jQy312nO55F4rKqFJNGHFVJUGsDlbRywXS1Hi?=
 =?us-ascii?Q?X3S9UN2DhjqJJYavA+GEFbQV//BM+ea1a75PBmk0XOn5ZDfZY5UmneHdzfik?=
 =?us-ascii?Q?unCry8FiLwBuAzPiFViqF+1lNizWOJ4zhlnbk1mE/HDxXbIvBZdpuiB1oYaU?=
 =?us-ascii?Q?zAyg72vPXvHzEXbZiNTUi+H00T0ll8E8WEMt4QqFEJznvmKF9J/VwxBVU6gn?=
 =?us-ascii?Q?+EdogMEGNmQ/+Fs3dZWg/WSw0hOmitPJWT3okhh2CvDwbkuudZHaj+aGmK2t?=
 =?us-ascii?Q?xDiZ0yaA86+jXLSRJmLc6AKVtcRaG5HzHY4vKdL1gru2ScHjw1AC3Ji/BCoZ?=
 =?us-ascii?Q?gctTZSGvKCTMXy++nO9rdwaEoGztwRzkGSPV0ScASbF75cQ3FBcJuYz5pMSv?=
 =?us-ascii?Q?te5Ef7XxyjvsACJlv5p/fiBAMhjY66CEOfkvlS6TSO3widGBUP8nrYUEyxb5?=
 =?us-ascii?Q?XQ6Rxfba+wEu9Pu7etojEN3BPES7qy18of1c/EbkHrVhsIIuEivYnyl65/GL?=
 =?us-ascii?Q?WFUneVfAIr0FYjUPzWw3iZZb2aCOpkJQUJ1tUhW4hsr21k07L7SlJwaWtKwu?=
 =?us-ascii?Q?+MW7/nYkOkrFnKBVyOl2jswyC0cDjrCq4PhBBBiLXsxRGocZ553gjHWvLbIp?=
 =?us-ascii?Q?TeQfQMTV1/L1hwz+3ZMPbsOvJ/yoJSXxfbPOpQLx98ScJKr45ykRLOxQme9i?=
 =?us-ascii?Q?ifpnSYZCr4WDP1qwTwT0Jyxk38YaGLnUIt0r40Lws2DtKcwh/xcC3hmBoKtl?=
 =?us-ascii?Q?NBGiiC3ucCZcexMJiFrmMmykw2WUu98xnkQqGEGUGLtZ5W7RE2+dbs9XiGPP?=
 =?us-ascii?Q?kMOmq66c78kjm0NIZtpNJKWThuq63oaL7tJKS5eyizctAbbGMZOylUs9I0/w?=
 =?us-ascii?Q?nCs8lNVc/hQ8lEj/X1MpAajM2fFnYQZkH6DfR6QDTfMs1qMUvf/sYpQQ3B1+?=
 =?us-ascii?Q?wtGaCYmYhWoFNWsDEBf7X7FIs0YzvjPsyh9YeCsTGrOgpDUcrAJP3nFyJj4O?=
 =?us-ascii?Q?rX0i1buJa8Am531JtYhAa/VEqxlXJ5ElQyhMJ7hiHa6+WJRnTUYPrcBKBPpJ?=
 =?us-ascii?Q?sJN+4O13ubobgvpgvgp3JpjOD5+qhVA8bImXL7VSbNhvmELDw/5lTwGfnK+K?=
 =?us-ascii?Q?gdGh8PetzkpgJQJ+FDpxcSX4wOZ9Q4tk83N6H4mIWfInxgeBDX8/qukbbO/r?=
 =?us-ascii?Q?Wtv0gtSw2ldJVu6JZ8hTRGAUf/0eYJ2Pc9LhqMJzZ2dKfI+/woi1XcqF6ESs?=
 =?us-ascii?Q?W6eC+Oa4GJLri1EROL2ci5esh/RSNmo91S+smn0BeBJGZsIU40GRnWawl/aB?=
 =?us-ascii?Q?zBMgzuCdeTimV9/RXXRy3qV6E4jgGEtf3jcMhkkOTxC/oRG00GgZJYA0LsZP?=
 =?us-ascii?Q?PKB/5zlpBNks3M6qLQprziHnDXhdilZNRXTMLyYpWkK7nDLGFFPgSBsuCzCA?=
 =?us-ascii?Q?2DZxzp7KwmnbOhUuXfCb9JyE3sdYgkbMHSG5c+ype6OhajaAHG6nf2kc7FJi?=
 =?us-ascii?Q?04LgPjRQ66RjfX5XWwwlTOxsbv8+PndR7EymD8uxJC3n62s0JgEYhWoy+xvw?=
 =?us-ascii?Q?/7V3ug=3D=3D?=
Content-Type: multipart/signed;
	boundary="Apple-Mail=_680CEB6D-7E9E-4DCE-8BD7-029D756A9F70";
	protocol="application/pgp-signature"; micalg=pgp-sha512
MIME-Version: 1.0
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	XCCW23Prwnh0tAYCSh4lYbg8HY5xGsF2Te1p3n6pix/Y1NseZ9JohrnorHiuhMqdT3vmSYG7Afy44GudIBWeqkin5jOFXt1sS+EOQENrLQsrfPPFpVsO54eK4GPVT//6DcaVWni3U/dUiFgpPiaW67dGAtQx5pietAj5XLVVMj5wIgCZgBtZN/mAw3Qucmavax50r4CPpRKqujayuqkUlorYXVw/AblzWw+Vc0XPlUQCxCIwXlnrxzeW4rGQPHoHCVEFU6pB4UZ0KywbRMMQlP8LmArdVUS7A9bPehgvybNbtXHjYVk5MTEmMhLyfVdqXxG4LMpALwM8kN7rGl3EhUMvC9GmyaiDiM8wz1AzNsHazwYm1kfsQqv0qGZle0nEWt8SnMYvzLX4c41vdGg4nw9TIJb/WHDXVwg4aqP8oYlMWoliVn7D/4mi1SLDIH1YB1bRxjTqIjI7g4Y15Kd3UyzdT9jDqf5MqOimzQUtLl/ZSl5/JSr9tH71lQpuftOR8+7Eq1GZUPsW//h1+FQy66JrXc/NxlzibaymwGGdxr6RAKvkt/G8+tnSJIy5JDJYDTRK4TDUGkhriA3WUZsCTJpOkOpeCsheqDGjOlTgaOM=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR10MB4155.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3ceff598-b5f8-456d-5807-08dd4086a994
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Jan 2025 17:02:07.0843
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 5/1u+t95kXvZx9dOI1HITenGl0LvcH/nUJoHk5Ssdi7x9ARhl5SfgEclFVO9GYkVNy6YWJnKF6s6i4NiijnjWg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR10MB5887
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-01-29_03,2025-01-29_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0 mlxscore=0 adultscore=0
 malwarescore=0 spamscore=0 bulkscore=0 mlxlogscore=999 suspectscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2411120000
 definitions=main-2501290136
X-Proofpoint-ORIG-GUID: k1IZFtaUbm-GALZp73xRzHdYQ99335jn
X-Proofpoint-GUID: k1IZFtaUbm-GALZp73xRzHdYQ99335jn
Subject: Re: [oss-security] Oracle January 2025 Critical Patch Update

--Apple-Mail=_680CEB6D-7E9E-4DCE-8BD7-029D756A9F70
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii



> On 23 Jan 2025, at 17:24, Alan Coopersmith <alan.coopersmith@oracle.com> =
wrote:
>=20
> On 1/22/25 18:42, Solar Designer wrote:
>> Hi,
>> Once in a while, Oracle publishes what they call Critical Patch Update
>=20
> Once a quarter, per the schedule published on:
> https://www.oracle.com/security-alerts/#CriticalPatchUpdates
>=20
>> documents, which list many vulnerabilities addressed across many Oracle
>> products, some of them Open Source and some not.  This is great, but it
>> would be even better if Oracle also communicated to oss-security about
>> those vulnerabilities in its Open Source products, perhaps one message
>> per product (e.g., MySQL separately from VirtualBox).  I hope someone
>> from Oracle reads this and will get the wheels moving.  Anyone?
>=20
> People from Oracle have read this, but it's specifically people from
> the Security Alerts team who publish those documents who would need to
> do this.
>=20
>> Perhaps there's more Open Source software listed in there, which needs
>> similar treatment.
>=20
> The open source packages delivered in Oracle Linux & Oracle Solaris are
> listed separately, but these are downstreams, so I've always thought they=
'd
> be off topic here, since we normally only cover upstream issues, and don't
> publish every distro's notices that they've applied the latest fixes to
> rsync, openssl, glibc, or whatever upstream was fixed this week.
>=20
> For those who want to see such downstream notices, you can find them at:
>=20
> Oracle Linux:
>   https://linux.oracle.com/security/
>   https://oss.oracle.com/mailman/listinfo/el-errata
>   https://www.oracle.com/security-alerts/#OLBulletin

Yhe errata mailing list: https://oss.oracle.com/mailman/listinfo/el-errata =
is an analogue of the late lamented red hat announcement mailing list and i=
t's a bit too busy to post that here (eg there we bout 20 new messages toda=
y which are announcements,basically, of backported security fixes to the va=
rious bistro versions).  The quarterly linux security bulletin is unfortuna=
tely about three months out of date by the time it arrives.


>=20
> Oracle Solaris:
>   https://www.oracle.com/security-alerts/#SolarisThirdPartyBulletin
>=20
> --=20
>        -Alan Coopersmith-                 alan.coopersmith@oracle.com
>         Oracle Solaris Engineering - https://blogs.oracle.com/solaris


--Apple-Mail=_680CEB6D-7E9E-4DCE-8BD7-029D756A9F70
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment; filename="signature.asc"
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Message signed with OpenPGP

-----BEGIN PGP SIGNATURE-----

iHUEAREKAB0WIQT+pxvb11CFWUkNSOVFC7t+lC+jyAUCZ5pfAgAKCRBFC7t+lC+j
yGqIAP9qbW0Kmf6GtD8A/YkBPHo3eYQD4ns0L4Vbvjr782MjggEAlqZ/P5Mmp5G6
QFoWFnTY3bo64xqxY8TGXkVbBd7FB04=
=w0wC
-----END PGP SIGNATURE-----

--Apple-Mail=_680CEB6D-7E9E-4DCE-8BD7-029D756A9F70--
