Received: (qmail 11564 invoked by uid 550); 24 May 2022 17:10:55 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11533 invoked from network); 24 May 2022 17:10:54 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=from : to : subject :
 date : message-id : content-type : mime-version; s=corp-2021-07-09;
 bh=NXop5UYrpJFDYQVv9MAN/KWSuJhkQkVV+xXMR7XHZSc=;
 b=c1NvGGSomqruKdmhxX/B8kb4EW4ZvgktQK+jbR3WlSbMxSTGQdm04fVUxZPu1RmMKWAJ
 G5iqbNy70yPVrLelQx7UGqj3Nq1MrHiw7ye+bQ7R7yj4U9RqSV8xGjEJLI6QQhht/Otm
 sXIF+AwBqaEthz5e4SmgL9dYRSJhqtAEfDqidb/TQk1B69Mlfiglou4X81KA//dpKOWK
 QG/nvSiIruD2Umvi/oxmftGvNEU58ZzfpkxPbhB+S1CPJBP9D6CB5PGMUZxx6GeSvHjP
 MCzvCcIcTOkd49S6+nU6CBmEQWts/VtuuJm3HaDreReX0UnxzvO9YA8zeEUwsctyX6Bk pg== 
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Jp6mtdMytPw23OP9YYB0iHGRmKSPceXNjQtrq1faOokI70E18rJTQWiWfAz7P7dsd9Etvt5Cdo9OvtYqWQsRkRCsLmiqF6hSQwYOC1Whu69Pq3mKYEsVuKIsTEDejEg3HiOApVPP7WoCvkRu5EI4Jdbsm0Aqf4+AKtiisbdQitouUtPVBemzHPVggeCtpgXYJ3elUX09CK4zj444K+4rMKNEySj0GdK2FJIumPTcFB/LD7uL4wxsUPITwhAk0Qf5H78HHLeDKCEMsPgAT8F48/OBg8JX15aI4STeb9H2x0mqs7jeJNq0RY9d6zTOCLf451sZPV/iThFCHFavzjIMjw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NXop5UYrpJFDYQVv9MAN/KWSuJhkQkVV+xXMR7XHZSc=;
 b=WpbtVsJpBIX+qzxropTJlhdvqjaOFR5sPvicWv1xmIlh3kmn3VjXLQO440WzpBQ/WGFeEdSQ0S0oHUrhLIk/LovN7ToyS1HxrCYDuV5gacp/eDU6uVaduXzr6crAw0rwNDpIGohpwM1IpLCKSDQCsWMrwSyosvRA6UmyifrSGlcotdIPbEmGYiJsk+48D3we5Co+M1IaoHXhph2jpPPLEc5u8FK+VZuN4S5yTzqoeW2yonWvA6CarWDLgNEYHLRA7mXDsUI9RKCr2JiNP8CilgwLYaYdXGwyiDqUB2Mtghpis8gqHwC+PtjJU2ZhJOwqdKQWvooIb39vKczlQnuh/w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NXop5UYrpJFDYQVv9MAN/KWSuJhkQkVV+xXMR7XHZSc=;
 b=bxlw37f7t35zuhy30/GY02kAcyPtYo/43eAa6gWvIwcIVTYC6PxLduqE7uceJEeqW/bNDzuS/RxjXGDMRrKxiVgaf3mPVNr2uBoA8eYOOE6NVyXOQaQfkre5thmpwsyeW9v8fermb8PQbGrbW61CRL4xF2PwgxEl1TFxM6l8kHU=
From: John Haxby <john.haxby@oracle.com>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Thread-Topic: CVE-2022-21499: trivial lockdown break
Thread-Index: AQHYb5ExXDqtvIxvwE2GdhHtEAAPow==
Date: Tue, 24 May 2022 17:10:40 +0000
Message-ID: <0A7B7D99-48F7-44B2-9E0A-C18C9EB9E2FA@oracle.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3696.100.31)
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 6250b0d6-c30b-400d-f6ee-08da3da85440
x-ms-traffictypediagnostic: MN2PR10MB3197:EE_
x-microsoft-antispam-prvs: 
 <MN2PR10MB3197FB755EA2B95B95CE511EE4D79@MN2PR10MB3197.namprd10.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 Kz+gYPtNAbcsStOSDTHEi4ekntevthHE7Qqdeem6awfBPESn4XQgAnLbEqTnNGMWvxkExQazIH132Px+pj6rkfQ5UK5Cah+uYqSR1IjtUa98GlZRpzNJTTv5smKfcpbnzQdsQ7NzwYPkwWIdSEdjEECp0MbxX3BXy3pJkj3H0+yYd2ncnaXCB8pbYZpaOSV36PsCvwKaJBMxd56oyLHbyeLZQUW//0R0ZiZfAl4VGihTWAW+61ZRSw8NAtA9jPQ+ucGRLIG86ETWvZHCJohSNTsfnmU/7sIFS1vAXwOOQ+8XyYxD4GOyPyjmn6uS2JV7rx9L/Tbh/t6Zv+6FehCDmFSK0q2KAzcRgkw0rGSsNVkPFZAEwfyiPirnJl8XkBrNDzF/fwOhOsNjA144duhGljCQDaGU16NvswpU/m2qL9X+VepaSY5G5qTLqZYJ4uQTG3uafViZ80QRUIh4wLmzkYoeB1HFbCr1wojwAbfpHzfEQJAe7ZpKHiT5yKn8tfclSkbG0T2amvPk8RpvmcF5ykRGa2hKipXIpPFLw2zqH96cH6wx2is1Bbn4Re1bQ1SIZi5XclH9+0lJWhMXGX6cgIxCH81rVAu9rTB6cgBmZ0PwCG3HkBB1WgrkC2fYYYpAdiFKl/Ie2iGg7BqUjW2LIuiJVYusETx9h9xv6bPgul7Lv6zn9c5EE5OBp2h5we+q1SGi6BQ6LiUiYJJ8pOgE50cTqo6RkkQ18TYXKE1nqCH/NELTvbRYcWziBr4KK+Jm
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ0PR10MB5662.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(366004)(122000001)(6916009)(6512007)(38100700002)(36756003)(38070700005)(2906002)(6506007)(99936003)(5660300002)(316002)(66556008)(71200400001)(8676002)(8936002)(66446008)(66946007)(66476007)(64756008)(44832011)(33656002)(186003)(86362001)(2616005)(508600001)(91956017)(4744005)(83380400001)(76116006)(6486002)(45980500001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?AfFXnlucp2pI0qngMpyJeVJpFE7pkmoTklR7envGF/o1I0y/d3+4BS9/zIvp?=
 =?us-ascii?Q?3CSsRh9/9z+X+HNvjG7L6ZLRX6riHLzeHcMzsAFpe48a3eW7vMjBoQ7V2Bk4?=
 =?us-ascii?Q?15ciwgtCyUpIaKet8HNgcYksgrRHwq2e7ZSR5gXjN65WCT8TSb4wm+9hn4vQ?=
 =?us-ascii?Q?CMHAumDJSs23mHPhZOrFLxY8Xe7y0L1UCE//+oDqiOB4U6CVy2JBy23Z91K5?=
 =?us-ascii?Q?Q+rhWUVlQFB893ekS72su1PSCLJv7O5QH6CmXFZUIXDJlpjr+09mJV8NSZ0j?=
 =?us-ascii?Q?cY0dqYwtiOSAopiHtyDuOBqWm4U2GxLUdWMCA0UsIfhEnizKZ9PLGxCp4cn1?=
 =?us-ascii?Q?6VynI1MqeKjujLrtAXsLcVzU+CiSJae1LTkA1VnODd5host7sThtRAcrB2RM?=
 =?us-ascii?Q?5+KxNPVogkJZgzcjHVMUVIcZ3EdjrSRZPixoR+MJQseNAlNFuskxQAj+8cDi?=
 =?us-ascii?Q?mHad4x6yv4xgt9wF6Hqtj10CmntaKmpqK14YFxmOZnglr5HfwPlPIaJKlqGs?=
 =?us-ascii?Q?AWsID55Tr7b360DoLalHRTveCz1But6u8GCgQnl1z5dedLFnVZ8KMm4HTk11?=
 =?us-ascii?Q?5v4wAla/EjMV/7yGOQPbtl+PMN6uWNkG7GRTxJNdfTu5fpNQKA/k8xHq0XLM?=
 =?us-ascii?Q?RIj2q7s0OHD19aoADAjlpc+G1ogf9fVkU11uhN2NiC7gKT4c3EQHkaO9jRRs?=
 =?us-ascii?Q?ZLXqJ1HtYh7gqWCpTZ89WStKXanXb5QtH/Y4ZB4r1YBrmXQ7rqt0ZYEzR0GM?=
 =?us-ascii?Q?MC6XEoNBNY5HjZZo5a8cWjmv9AfGEUZjl37YkNzxnD5M2DKqDSiB6LwXZ17P?=
 =?us-ascii?Q?VFEr//Dn68XOAjeESB7w583dx+ty1Qrx+x753jwI9FgXx7wy1ziW1PVXbqE7?=
 =?us-ascii?Q?dvXyr+Mv33BpNQXclYAGZkXEQF9ALRCuyGCJjda8pdXcFpBpWlC38X0yQSRS?=
 =?us-ascii?Q?My085Pqb2gj745mj/XHMyeqhwZXADIG9jo8wRqzWQYGxrBTvJDdbhX6CecJ0?=
 =?us-ascii?Q?aHZlJdxQ7wMExIqtqja+alu/XpVN6fnpZtK4BZOIS+0Zm5PGJcJfSKYnOk1S?=
 =?us-ascii?Q?ZdM21Nax1kmKqiJXZgAr6gjxc215Lgg3OwDqP0gN8A9oOMp7FRH0EtLJGT4K?=
 =?us-ascii?Q?ERw/Eh8NyzwzHadUI38N/hAcrOldPF2LSdZUkP7p6rYO5o/QslmLBdqSb02b?=
 =?us-ascii?Q?Hgq0qyM2l78JVvBzYc6/rMsqrf6u9ErMljhULRbQCf6UlUUpn3fRqOlNj07g?=
 =?us-ascii?Q?uCYgKLnLQ+VH+ODNChhvkDH/6VldIrAHLARH9czn+YKmvTT5RCUOM65I0XOs?=
 =?us-ascii?Q?a9b8tsPP4U79jJStTQv+vGMUmWCVuLePx54iKFfH/OJiLh1wJt+5YvUiXm1x?=
 =?us-ascii?Q?Hhfb5pZoQR+CWxOPvEn7Q8jct/UorYinl+TFisfwk3xH6gMOAuWc+hWfEsSN?=
 =?us-ascii?Q?7vjeHMygPnmsnC5fnSuFroY7bawoyy/QoKedBngTizbaSsL1hkoVSIfggqd7?=
 =?us-ascii?Q?f4Wu2KyYK2aDswDyXfFUlEuUjb+UJl72mabcusD46BGN1prcu2Le0bpoXNTY?=
 =?us-ascii?Q?30/0dKG56I/m2Q5gaoo4lVyY2gN3wHrsnGhso0BIuNirpe64ZvW6JpvjroCM?=
 =?us-ascii?Q?uBxugh7GVoIVN8LdT1S9q4JUHQpsk3uetesykrWeHTKM2mehzS6ZazwZ6+hr?=
 =?us-ascii?Q?anljFGON0h7yYLFt1MwAUdlQdjUeZRWJ+JSelAz55r/Pz7ST8Mc6L9gHx4tc?=
 =?us-ascii?Q?Rjn3TgsKmZ0C61f36ruEwLXDsvxh5lkPEJGr9lvul8MJXDPFIw3u?=
Content-Type: multipart/signed;
	boundary="Apple-Mail=_1C7B8823-8977-4532-8B66-E5F585265C99";
	protocol="application/pgp-signature";
	micalg=pgp-sha256
MIME-Version: 1.0
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR10MB5662.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6250b0d6-c30b-400d-f6ee-08da3da85440
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 May 2022 17:10:40.3221
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 5wdaIxcg7L2eVIN+dX9VMjMMDxUuANcZobl7cI8cUxbddMkHO2c079O5u2jZaYr4mpBxqQ+ovgiq9EHi63u9HQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR10MB3197
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.486,18.0.874
 definitions=2022-05-24_06:2022-05-23,2022-05-24 signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=617 adultscore=0
 malwarescore=0 spamscore=0 suspectscore=0 bulkscore=0 phishscore=0
 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2202240000 definitions=main-2205240087
X-Proofpoint-ORIG-GUID: YWhsCz9DjKzPwhzAI9_TKhTgFhk86xkR
X-Proofpoint-GUID: YWhsCz9DjKzPwhzAI9_TKhTgFhk86xkR
Subject: [oss-security] CVE-2022-21499: trivial lockdown break

--Apple-Mail=_1C7B8823-8977-4532-8B66-E5F585265C99
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

Hello All,

CVE-2022-21499: trivial lockdown break

We recently discovered that it is trivial to break lockdown (and secureboot=
) using the kernel debugger: you can use the debugger to write zero into a =
location of your choice ...

I originally posted this with a preliminary patch on linux-distros.   Since=
 then we have developed a better patch that takes into account the differen=
ces between integrity and confidentiality modes.

The updated patch will be available in the Linux mainline kernel at almost =
the same time as I'm sending this email.  I'll reply with the commit ID as =
soon as I have it.   If anyone wants the simpler patch that I posted to lin=
ux-bistros, please let me know, but I would encourage you to take the full =
patch.

jch

--Apple-Mail=_1C7B8823-8977-4532-8B66-E5F585265C99
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP

-----BEGIN PGP SIGNATURE-----

iHUEAREIAB0WIQT+pxvb11CFWUkNSOVFC7t+lC+jyAUCYo0RjwAKCRBFC7t+lC+j
yFJWAP9nXwn/pOPyLq80lw51ZFwfc/bgNfB8prfu+DGz6vD5+QD9HXG7vUmpLQkD
dSolQLLWfC3L/w82Gs9xgqx1AE+h1TA=
=89Bk
-----END PGP SIGNATURE-----

--Apple-Mail=_1C7B8823-8977-4532-8B66-E5F585265C99--
