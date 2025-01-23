Received: (qmail 6132 invoked by uid 550); 23 Jan 2025 13:25:59 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 6078 invoked from network); 23 Jan 2025 13:25:59 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
	content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=corp-2023-11-20; bh=P1VZ4jlbM2SkPSw4rZ
	3qfDM966ozUBRYeR4DbVKc+sk=; b=ifyHOMOxQOYMQ0VVX7ALqAhqVwueCKI/EQ
	35ihQkjy/RcmDISbkFjsEMbKB5UUU6u2e2k3QGh9kIXUNJSviV6tLpy9XcOzze5T
	8gGetG3LIJ8SvrCDBbj5vwHhRees58sE1N+3BUaHAzSEk5IrJbHjthSDSpuU4kM7
	t1qPnzTSOIQ4nySJOc8yunsTeQFWZAZ8MVWLr4fDoaBCPR5AldDOgBDami49rb/o
	JA+cSiPBN5FQrU+Vwr3Air3JtmNBp9+3JFQifd6A5IIlcSnJFCFZSRoUitplAAQq
	wVEpLsdfLUVWNWEhEm12v8Q9GaDg20Hqv0Pp+y+1PkFOEmgYtX4A==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=W327EPHeqJCTZm4p2AZwnPvFQkj48tdWxqiaYYGBq+Su/ct1y12O5edUksmQo85fm31+Jp1cSWP23N9RY5S2L/yhqZ9+7aIvDwvh5cEhpK/Wt62GgFhe838AvciOskgdA+5yshCfKcCQk+Ve2iAyh9e5c3VORrcVVPG/xd9KMzBwP5keNvrZy81tprX3rm5gNRamp7lJeZzUmGAslOsMWtV6QD85pYA48C7ceIpuxTiNUxyoY7MNCZDZQIaj3Odp9gPD4K78JtHN1AHTe5VK2/NeJfZDLq4zZzjhOwPVmUwmQ/o76CEbdGegsr8rQvzYtT+aey4WnDRtdW/ZLv+jbA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=P1VZ4jlbM2SkPSw4rZ3qfDM966ozUBRYeR4DbVKc+sk=;
 b=WjBirJIYZyz0JH9mT6iE1AIXrxe8EzWZdYFR0qSmOj4vwyfd3fTFVlDkVUzTFt7p9r6hjcX9s+pXcDx/SK2ntoW4MMTKd+/XWefK3X9sPIMjWknzPCHy/B11eAmg2paWB1WLpYl6DUssydIDkOXK+VWVk58D1wcgYTcTSYrtbH7rggkbnMvGUcTTzy426ApUUX5aO79k8xt+XyTtqVh5KXY33C+DNtIP4cfCTSuDc4CShigkhOE6se0P0qSdjxwZmlsbRnhtHwEo+12Mmj8IYxu61DqqBzdhW1ET2B0ZWaHMl/Y3Io4NfPyrshS2mp+npCxKtk0pNlPtZfTnbSpUuQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=P1VZ4jlbM2SkPSw4rZ3qfDM966ozUBRYeR4DbVKc+sk=;
 b=Wt3ISQVYGrjwFu8hAuHy6iH8GH0ORC4HOrcYW2DiH3IYDihP0Uf2hgkCAp00jyiPmWwcv6vzQDJRhrDF2ESZtliwwjUGjRRgRsBS/ECzR8oPnu3G0SSaSac38HzjyrkdZC96EF/7AO4ea/GrsMCVR2tq1y3D5b9UlaBtDF+GMYM=
From: John Haxby <john.haxby@oracle.com>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Thread-Topic: [oss-security] Oracle January 2025 Critical Patch Update
Thread-Index: AQHbbUDDYFPxP0QQLEGRyQpphIree7MkWg+A
Date: Thu, 23 Jan 2025 13:25:45 +0000
Message-ID: <9431A1FC-0535-48A9-A68A-FA2AB8ECE505@oracle.com>
References: <20250123024222.GA16803@openwall.com>
In-Reply-To: <20250123024222.GA16803@openwall.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator:
x-mailer: Apple Mail (2.3826.300.87.4.3)
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CH2PR10MB4151:EE_|PH0PR10MB4775:EE_
x-ms-office365-filtering-correlation-id: 9cdc0cc6-feab-4234-759c-08dd3bb1719a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam:
 BCL:0;ARA:13230040|10070799003|1800799024|376014|366016|38070700018;
x-microsoft-antispam-message-info:
 =?us-ascii?Q?n+ur8pMA0YGik5ZU03he5qcPSdZ4D8xDZZSSkpeLOzj9/mBw53DDY8DsOfSk?=
 =?us-ascii?Q?FoJvFxjJa44m5/X3WNHd394NPeHprmaJ9vdd2XQcEx5YzIXDa3enxiFN8PLo?=
 =?us-ascii?Q?5LBhejL23mQC075VHsJ/OYXid5U33IPhARWckoE2/ana2Gs+GllQiBcPV9it?=
 =?us-ascii?Q?Z0XpF7uHDnhQ+/p2F7AaOz2v+jLSK93OF0dJLXtzcQgGiAc93/jZjZcvDsTT?=
 =?us-ascii?Q?51Qm51xyTV+q0s/7u1/ybKAKxVSwxPdoUOLUOK/QvH2Ju2e7e7Q9Mcs9jWGC?=
 =?us-ascii?Q?kSbI0+WjFcG+hY6Mv7k1DF3QabwApWO4sR6/u1nMTHK0mmBMf84oxZ9NfKIw?=
 =?us-ascii?Q?tsg/cZLq4a+dyWfTOwL5NgxBYJrJmZkJl5LxBK2jcvq2zdNao7Ho0CEPR+RU?=
 =?us-ascii?Q?zrP43RQafdmsnB3t5K0Lwc3/P3IZpFE1qmxuu8EQYTXLnERJQh0CXc96NLCM?=
 =?us-ascii?Q?KlRZdSQxGEnhTQ9+HlfjhEiaf20UZEBKIUhQEFPFRpXx2Mn2PIqP0JnSWpcf?=
 =?us-ascii?Q?lVZ6x/rdBMLMCLqggtJB8BEjcFXp5wfXDsOBI3ulUEnkzJGYXdIY0Ctyi5mH?=
 =?us-ascii?Q?x3GgAERWlYaRexaQuEVkcuv9j5oEPuSAazyuL6bqR4bJB1mcPcSuOcPqIUcG?=
 =?us-ascii?Q?TRNJLAv5Ot8l+DB0wVvGn/31tO4U7H6tPxHtxtFd5cA1bvYRYWtdK6c+7exV?=
 =?us-ascii?Q?5eAAEnUP2PaDtqwAgtlvNyotyl9Qgr3nwOVaskh3PWvJUzLbOzeDIIDfqoU4?=
 =?us-ascii?Q?bsUrPP7QNJ8Q4yBjfsLzc1QbB875PDosHQmr9sFrewztbflDq0gg1vU+Cl2q?=
 =?us-ascii?Q?XYVbeopaBg0dA6cawLMyY9AhJA/9BOmaN2jWsG4r8sbvBnkz/7Q2/fTSCzIK?=
 =?us-ascii?Q?k/Gmh5/G4W8XhzPv8P8HnsQv4TWMqGmYOlHKxMxn9Zb0xU6oHY9shZSHuoIZ?=
 =?us-ascii?Q?4CxyHaq482WEzK648KIE9Y5ItwYUVONK3Ri2qNphRh3rh1RO+mq7snwAFiWx?=
 =?us-ascii?Q?dlJorBRRm0zApb0h8s9CypuoocsawIclGtewhQLrwhaSeuG2hAZ+EzqeRrmo?=
 =?us-ascii?Q?54f7QUd//U5BM/uUuyy8gaKqzBT5HH/X//+py8P/TjVC5zm1r8h/VOt06ZlK?=
 =?us-ascii?Q?gfeo4Pgn2xeqMHbecfORkneBSSBn56xS4M880/ybRefinEm2+v8zBG2bDPbe?=
 =?us-ascii?Q?bpM5vZR55n7Z4EFYF1dTeCkPD+IybZcoGm60KtSYw7odDco6ZzVKM2JulM51?=
 =?us-ascii?Q?s+b0+3Wv5b7/+y444PieOsLW8J4AVokqmARR0AsacXKGGDdD0CPaav1V2a3L?=
 =?us-ascii?Q?UR8sL5ZtKdHnmE0iDN/luq9MJvujIpDxJpnor76URP2ohknEIqzeRQYyIsGY?=
 =?us-ascii?Q?EO6WkJRvVw8n44u37fMf3c/6lsG+b71WKyMYethaHW5BR4pSRQ=3D=3D?=
x-forefront-antispam-report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CH2PR10MB4151.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(10070799003)(1800799024)(376014)(366016)(38070700018);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:
 =?us-ascii?Q?4vOYGr9kXQ/XTbbSeDmyL4Tiiq5XKQJDm78eSSuEttHuz4wlYw1PdVgidk2f?=
 =?us-ascii?Q?qyjSVLWpZyQ8Z2JJ2bfC0xgGyZC+wXsiLBzoUlawKwlgdCVlB4Sm/f2MpbHV?=
 =?us-ascii?Q?/iem1swVEiQwEKgQvC5pHzlGzpCSpPXOViH0Fut1+f1oL/g2xaFxl3W8bph2?=
 =?us-ascii?Q?pzVZp1Fa7Hr1cnoM+DJ8Z6GoMrPR4JYPC1d5LEzlb17jOusekpA9zDjQ5VXl?=
 =?us-ascii?Q?VplOTUQWPUeJxPQGVxPt5KG1aC1iPnQnw5bsL83OvVg4Pqdmt1Ocdujd0psM?=
 =?us-ascii?Q?gXYo66S1FZMUdFUCviSN/HahFJZvyE3fyBm5q/9+2vs63cHqeBMBvncy93U5?=
 =?us-ascii?Q?uk3putkeB6Km2Uc1UGIhmkWmnDrF1fnNoGZR15CRqnPw+pAN8XwnpNsv7Usa?=
 =?us-ascii?Q?P45RWvoUbGLm9FeKiJRk1c7hZD443E7jOUNFmPfYNrZL1EiLpPsSoXGkYxBO?=
 =?us-ascii?Q?GwA4GQ9Fo6MFui7RIoclMBuvMCzxsXSWeT8/whZC5EJirlmQ14UNWLAiSkce?=
 =?us-ascii?Q?3oc5QfMp96UZv+DurWT18YxDUB1BJNnGVgHxoGfI21m2cudUgFYf+hZO7aAw?=
 =?us-ascii?Q?5c9bujcLiS1sRxtYoGiKDCWEM1GQeMLBLvRAZaRF3bLiBqJWRjjZe+zMcyVQ?=
 =?us-ascii?Q?OuHjgyOAWFGva2KMHN3C+aB9+G9DJtnxRhlF431NXNF2NSELCFtHkvBV+3EV?=
 =?us-ascii?Q?0vb97miPYIFreIHaN8D97Pq0IKoa9qn5q0O1+VwqzCPHa44PPXI/bLaa4rJK?=
 =?us-ascii?Q?tIA39ojB2Wo/cpGr/mhvtVVCMPFl5DgkcQNxWPPFcnoHBy7OVg1QD68h5CoC?=
 =?us-ascii?Q?ko4sN3X2I8NOS5daeIVlfPAN0HGbF1Lk5RGpLGc/LKLHOStPow+GBXB6erq8?=
 =?us-ascii?Q?0ehQfFL+qJPPCAArGP0qJjAbIq2PvmskKTACdP8c8fwBIcGz1cSHtBX3JxMp?=
 =?us-ascii?Q?pItEpSYO/6yymoK6K5L6AVH51sO16XIINcaMVd6cQDWDbiEretcZo/k9xN8G?=
 =?us-ascii?Q?MWW9egnUN6weH0/ujRfjSdYdEQlFG3W0uibD0wI2G6Bp5sJvxINXOgHWEz+Z?=
 =?us-ascii?Q?55CgwVGDavbtUpp9rzyHx4iLlLbWKoH2LPPO9iRLyXDBqjbPiAf/PaLv3nY9?=
 =?us-ascii?Q?xP08sSuGssIUCwTzeJzsUJ3ZdnzKjO6KVDYS0mhEXiVstizEcaQpjp6+Icf8?=
 =?us-ascii?Q?+UYdLHYpLqW8qtUpUJl64nLAqciRUlnO8GXllpUwhm7L1W6WYA6ZS+dczXfC?=
 =?us-ascii?Q?F9eB58XFW77eJ24kKGXnUTdd2nJwYAKezuIY9rVgbhQpfwfhvpAL61JjT1Hb?=
 =?us-ascii?Q?6wRs6a1ER6PFnfb+O8H8pDGppTDYxu6COO6W6QKnEq/Zt+scSbVM7mZXYeLZ?=
 =?us-ascii?Q?8Un5zohB9iYfFmwFrxST8P9uczPhoFheZl41QWEzd3qbGUzvwTG/fFNaqKRF?=
 =?us-ascii?Q?BHg1ZAXah3XqrG5HcE93FLuhRZPqrtv4EwbITUNVQms7CuKauEPIoYjReao6?=
 =?us-ascii?Q?IyPt4o+D9sHvxGnJ5J4b0IbHHIqHuyZp2XzpDpsnKHhpLYX20OJA4d8lNN9l?=
 =?us-ascii?Q?rWzcRJen0AS0s4PJVITCCVtba+Pfrn8F5WcHge9brb48mILgTbEcqC6PX96I?=
 =?us-ascii?Q?AXJXvSXVW5zWeyNmcQ07oILAPTf3IIWbesqn55Kmy2yJ9+UWIKfxyNxeNi6a?=
 =?us-ascii?Q?LQJaSQ=3D=3D?=
Content-Type: multipart/signed;
	boundary="Apple-Mail=_194BDBC7-5D18-49F3-BB30-9424AAFC6BFF";
	protocol="application/pgp-signature"; micalg=pgp-sha512
MIME-Version: 1.0
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	w9Jcan0pczPekr57U+KPRiKGmVdNnubEcRa7qjFSX1BSpt4KzXO//x2sZkx+NB1V7/t0arB4pQ2qdgwwIPbk8pZx7iA8hLv54GHsxArblYBuS2XxUEYJsauGVcz+S0ghPhKLv1/3XG1F0k7CjX7XvNSu7ELjfM30kN1E2uKc7lvjPTXAIHSzUcL83PA8D4bvoSBmMuPF9njmabbvQ5p1FK23D97tyimLfx+nj2/QYD1x0VHOQx/4APyL87w4m6MmhAL7cG0oU6V+6UCdKeQ9wQ3ZNsS9UcbUNcUzBU7jn/v2TkBmFwHNxqTEwi/UuA1+5TMjq32F638kigzM3ZVssYWorhSBxRlUbxzwsJUzAN0L3hXBWyfWjTemem7pjG2SYRC55oQg2tE6QaYGDA+hmIvbOTY937c+VzfcaZf0gMXJIaegkODLh9I1Ug0922bXWjZFDiFLeKtVMyIi5IVLHtCFX0vbSmWfyAtpCDtO9+OwuqoEp6mBDygINdg6MG/aQ7f4Di9aCUGnWZWH/Wz2AYu7v26nNWLETEddzPiTnSV8T5XnOEHxGwBLCAmt6WLnRx9MQAhdkWmUvsW+3tOD5M5ePFxMwVt67NBBXaW74dE=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH2PR10MB4151.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9cdc0cc6-feab-4234-759c-08dd3bb1719a
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Jan 2025 13:25:45.7586
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 2enFgTwnBDlk926VWsZJ5Vyx+jBEVWTRhkWM+lrtKVt9NVJVVvU+SoESVp8vgJ60YTRi6fLQF2TXqnsbiN4DrQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR10MB4775
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-01-23_05,2025-01-22_02,2024-11-22_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0 spamscore=0 phishscore=0
 adultscore=0 bulkscore=0 mlxscore=0 mlxlogscore=999 suspectscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2411120000
 definitions=main-2501230100
X-Proofpoint-GUID: NCwalqE4Fxjwd6t6uxoyEDChGDCUEdY5
X-Proofpoint-ORIG-GUID: NCwalqE4Fxjwd6t6uxoyEDChGDCUEdY5
Subject: Re: [oss-security] Oracle January 2025 Critical Patch Update

--Apple-Mail=_194BDBC7-5D18-49F3-BB30-9424AAFC6BFF
Content-Transfer-Encoding: 7bit
Content-Type: text/plain;
	charset=us-ascii



> On 23 Jan 2025, at 02:42, Solar Designer <solar@openwall.com> wrote:
> 
> Hi,
> 
> Once in a while, Oracle publishes what they call Critical Patch Update
> documents, which list many vulnerabilities addressed across many Oracle
> products, some of them Open Source and some not.  This is great, but it
> would be even better if Oracle also communicated to oss-security about
> those vulnerabilities in its Open Source products, perhaps one message
> per product (e.g., MySQL separately from VirtualBox).  I hope someone
> from Oracle reads this and will get the wheels moving.  Anyone?

I did try.   The people that publish the CPUs weren't interested :(

jch

> 
> Meanwhile, the latest Critical Patch Update is:
> 
> https://blogs.oracle.com/security/post/january-2025-cpu-released
> https://www.oracle.com/security-alerts/cpujan2025.html
> 
> For MySQL, it says:
> 
> https://www.oracle.com/security-alerts/cpujan2025.html#AppendixMSQL
> 
> "Oracle MySQL Risk Matrix
> 
> This Critical Patch Update contains 39 new security patches, plus
> additional third party patches noted below, for Oracle MySQL.  4 of
> these vulnerabilities may be remotely exploitable without
> authentication, i.e., may be exploited over a network without requiring
> user credentials.  The English text form of this Risk Matrix can be
> found here."
> 
> and links to:
> 
> https://www.oracle.com/security-alerts/cpujan2025verbose.html#MSQL
> 
> and lists additional information on some CVEs not included in the matrix
> itself (duplicate or not vulnerable).  With so many CVEs, all of this is
> rather long, but I imagine someone from Oracle - or someone external -
> could copy-paste the "English text form of this Risk Matrix" and the
> extra notes on a few CVEs to a separate message focusing on MySQL.
> 
> Similarly, there's info on a couple of VirtualBox CVEs here, which would
> ideally be a separate message with copy-pasted detail:
> 
> https://www.oracle.com/security-alerts/cpujan2025.html#AppendixOVIR
> https://www.oracle.com/security-alerts/cpujan2025verbose.html#OVIR
> 
> Perhaps there's more Open Source software listed in there, which needs
> similar treatment.  Not only this time, but each time, please.
> 
> Alexander


--Apple-Mail=_194BDBC7-5D18-49F3-BB30-9424AAFC6BFF
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment; filename="signature.asc"
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Message signed with OpenPGP

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - http://gpgtools.org

iHUEAREKAB0WIQT+pxvb11CFWUkNSOVFC7t+lC+jyAUCZ5JDTwAKCRBFC7t+lC+j
yCY5APwIPhRveaR8KATYMyn/YAXOiXZ+rIrjVRp/+6PL6DRkXAEAkRVukAipWXGk
bWU9Hd+oNZIWJJSHZSiDBhMcItDBDRU=
=AX/D
-----END PGP SIGNATURE-----

--Apple-Mail=_194BDBC7-5D18-49F3-BB30-9424AAFC6BFF--
