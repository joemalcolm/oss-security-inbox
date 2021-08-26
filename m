X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2198" "Thursday" "26" "August" "2021" "14:40:59" "+0000" "John Haxby" "john.haxby@oracle.com" nil "81" "Re: [oss-security] Linux kernel: qrtr: another out-of-bound Read in qrtr_endpoint_post in net/qrtr/qrtr.c" nil nil nil "8" nil nil (number mark "U       john.haxby@o Aug 26   81/2198  " thread-indent "\"Re: [oss-security] Linux kernel: qrtr: another out-of-bound Read in qrtr_endpoint_post in net/qrtr/qrtr.c\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] Linux kernel: qrtr: another out-of-bound Read in qrtr_endpoint_post in net/qrtr/qrtr.c" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 4062 invoked by uid 550); 26 Aug 2021 14:41:17 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 4042 invoked from network); 26 Aug 2021 14:41:16 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=from : to : cc :
 subject : date : message-id : references : in-reply-to : content-type :
 mime-version; s=corp-2021-07-09;
 bh=SMyNtbvCTVkUjivYfDECf0Pg6YEIpOl7MUbyfhf81Bg=;
 b=HHiSPul6VNG2VQYTczXbEmV6cmVJiv67RGSJjDHSD+XYqJ0Wmv5yeVjJ5zUKMsMfWdSm
 0YuBvytWsMFmMq4Ydrb3gkzNNgEih8DIzvWf3ROtoTx1T2Mw3wvoIAdbChM1MZmZcJJ5
 aU8wBVi45St0PAYcVSF8Ounm6x1g5if/8TQQ4UP+Vp9K9m4Xtg3Hyw6VjHqSkoXu5qeO
 GEszMVwHKvzwh4O38jWoTPnj9mCZiIgSk7x34/LLbs322JrOxiJ//7mop88dkpwCgJJH
 R7XJ40YmlWDiAOHQQMOHwluQ6RijzFec2bAvvB9Ce1k9KOFUcS0J9/Z3z/UL1dAOzLT5 9w== 
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=from : to : cc :
 subject : date : message-id : references : in-reply-to : content-type :
 mime-version; s=corp-2020-01-29;
 bh=SMyNtbvCTVkUjivYfDECf0Pg6YEIpOl7MUbyfhf81Bg=;
 b=OsruH8k6chEVbJHTNKt0/VlJJB37iBGSIv2RNac3ip9UHuctDfsurUayFdd6IB3qqnKG
 1/+8S7WFL8ojf4zCWqROKZNR/SlooWNeN0yAPnIDN69xZm6Lxj+Xo+8DjW8y8Q75YMZm
 TMthEh6AQFh+FzkpyKSYQckd0q6PlcCLutuWODp/k/fhuPqvC7kVDR2Pj2ojqh2usB7n
 M6bNwv0CXTTCkl3UgRvsSDY3OouQpwVvDkwfXd877wS3Ox2JkZ/P1T/IxGNuUjA8ptz1
 8sRMjhrA+x4ZFaxFMGjr7ojbhSdyFm22qcdSeYJ2pWkUaz79nn2eK2gjQcP96O7Q61+e +w== 
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hPzpclMuS62nDFhv1yLksAT8GnutjJwRVqroXqJtgOcgWqgZX+El2jPcsjZz8ofmeHCAkw0PPJV5EVgM2bq3p2mVvUhavhTxq1W6EQy32THAIVYnci4IkeBexIvl5KPFN2KwnkDMEYSJN7tKnUC5ZP7htG0kg511hr6OMqJ3LnNIj0KOkYDAXKyPo7S2YA3IgWLrUbzDFlCKiNAxHPYC6///qOQAQOw9TNsckPc5IxhF8VRY0LxEEOB0pBfi+cClZvf+R7BbgA95S3CieFoI5uY3mxg4zWvSEQjNcIubURn2lUHD2xGYYShh9kjAgp0hEvbjt4AAIn7omeE8GUh1Qg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SMyNtbvCTVkUjivYfDECf0Pg6YEIpOl7MUbyfhf81Bg=;
 b=dY6hgH4kgYv/4ofpGZYMwWCQ5M2E4rK+OIo8N663jsMrDHYMSA9FihThGnYqlxYIW4HS5zyP4p+uQyummiRpIvQIgw+hOWLOSQna8UbY4hJ1sKLuZDrIg9LYgCM7eDq8H2pK3BQf6TMHqoxITZeKySxT3epMx0h75lu0bYZzSDWiuQAqfJQwc90puoCe4doGkhUQIlY5CdR/gluk1+fp8yX5gOwSY7K8CrVv4m34vsvg11GjiXFgQ/HURnI4OnpznIr3G5JQhzro1vXc1GblCOaQ6P+edcWeVrPo7CR47MWm/WtLo975Z8qaFFdrQbx0y1rQFdjO6+G3SBtL4ufqew==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SMyNtbvCTVkUjivYfDECf0Pg6YEIpOl7MUbyfhf81Bg=;
 b=P8xXSFn/JS/tw/o5It6E2DCuaet69ZhkY+Zv94xVmz8F5HsrDuSwqDjJlv/8MdIk2j/gEobtdBYOrRIGBTx4qvzJqrCaIVEirO2TeTZ5K1tJ+fMIiLfxbyn12e/vmpiKpzAOBxNtlx/Z097YrM7BXPsArhgSVGFlK8T8QsH5mQM=
From: John Haxby <john.haxby@oracle.com>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
CC: butt3rflyh4ck <butterflyhuangxx@gmail.com>
Thread-Topic: [oss-security] Linux kernel: qrtr: another out-of-bound Read in
 qrtr_endpoint_post in net/qrtr/qrtr.c
Thread-Index: AQHXmYm4XNRJPpze2UC2esE+3ytxUauF3bAA
Date: Thu, 26 Aug 2021 14:40:59 +0000
Message-ID: <66DDFEAA-E5B2-4348-B5D9-ECCE66231F44@oracle.com>
References: 
 <CAFcO6XMiLJqwy=QW0Mv-yruhytSFRwb3yJsdMRVg3Gghm_5u7g@mail.gmail.com>
In-Reply-To: 
 <CAFcO6XMiLJqwy=QW0Mv-yruhytSFRwb3yJsdMRVg3Gghm_5u7g@mail.gmail.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
authentication-results: lists.openwall.com; dkim=none (message not signed)
 header.d=none;lists.openwall.com; dmarc=none action=none
 header.from=oracle.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 2fddd3c0-471b-4fa4-84bb-08d9689f855d
x-ms-traffictypediagnostic: MN2PR10MB4335:
x-microsoft-antispam-prvs: 
 <MN2PR10MB4335C1A922FF902F35633EEBE4C79@MN2PR10MB4335.namprd10.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4502;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 lk6yoeqm1iajAqXKeeXBx3JpVkC77AhqDY44I7jMq58oQZQM4TDFLE7dPXQ93OjhmcfsE2Fc/k9WYWvyrzas+leHuXZISMbx9TNfZ6w3mhRrcOgPuNJ22wNCgS0h/PpcAwNWHfipiUXlpWCYq8NN+Xrs5cCg38HTG6ITQZaqTEq5NV05O08D8JioPzSXMJf+9q7qUp3HtvhW6xBwKBcNZfCFS2UJQgee2Vd+IEMyg3hAIyzpV+sMga+2Pik1gVMai3M63SSX32LRMR3Fggt2PpuchhV2SsNeajfj2JBeVjlyTKzTN6yKEbShCH1Bo3DQkES6HwLwtMmZOcue6TsLys0MtD4Fw2OneNlpHnBx9BbKJLFD6xo5j/iNXGUvQQMXv3OitKaSCIKMOcYAga6eWmIZRNi7s0r1RMfie5fQGCQLqIu9o1hIjmnnpb2YEAQuLVJcKQAh6L7dyQEkcTOy2fX8yW0YFAOxM02bSsFYPqBSJmPjyghTJFyHFfMiv51FFnAU37eY881QWGhnf2axoou/FAz8FE0I8ZdLRkNpl5ZKKB0U7LhzsQMAqv4oFHB1OwmkbPp+x9a29VHnUEXeKF15e8k5dlUz2m/HoCSY+nzBPAUVFFwbJlyDaIBYynb4d9kC3+UOOk/CIgxpkSKnHsV48uS4TQV72KlBz1sa8kwBgSOIjWixPObE6n4lkxjk+ZUazutAqna8N96v1SbfLnUMDqqepeZtmzxUeLVAPE0DIG/d17//j0zkb+7+FGCkoGoc1Di1UnbI6Urzti2DWXvweGyiJF6Ez1Ug3kTdZNfSce89MUx5l9mT6+P+w4ZRhCasMx+iO0PT1BRf91eq/g==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BLAPR10MB5332.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(396003)(346002)(376002)(366004)(136003)(39860400002)(83380400001)(36756003)(38100700002)(6506007)(4326008)(53546011)(71200400001)(6916009)(86362001)(966005)(478600001)(2906002)(6512007)(8936002)(8676002)(6486002)(15650500001)(66446008)(91956017)(66476007)(99936003)(66946007)(33656002)(66616009)(66556008)(64756008)(76116006)(38070700005)(122000001)(5660300002)(316002)(186003)(2616005)(44832011)(45980500001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?pJOSMwGimBugMT36nmKxIHpFQFmCtAO0pBxfq0fo+j2Rr3XCPUNPzV0CwzG3?=
 =?us-ascii?Q?7eegJSdtXNzS1B2K1oblN86J9N7Ku9fZ35vhp3n5AOBJgvHKawo4PKp0K8Sv?=
 =?us-ascii?Q?wkvhR5jrNgNLkxUsk6+Y/MvvZ4YKFuqJLJ+MnRY+BRc7qxAgertFNih38nOh?=
 =?us-ascii?Q?ubEhdzXbUqp0v96QRAE0ejwMGgkWZCuloN76s1UoGNO9xOy6OuJDwnDrq24+?=
 =?us-ascii?Q?hhKxFuqNa32AQKXKnC/4eMssU00EIQYevDvWkNJMFqkWHpLEZiwC88Df9Y7A?=
 =?us-ascii?Q?81qtfBdRNqx7te8Su9t8e/LjimVCIYJVTQkcbs7q0rJLX0qYfaT8d6T5OuNA?=
 =?us-ascii?Q?qgyuvzG/zywxzq20RN2hpw/ttZMn7B3S6FQ7JL6epfijAGk8Q40Okx6rpZzL?=
 =?us-ascii?Q?USvHWSwfhjz5s0RoUvBD7eTzvbY7E9G+VIh/26Nz7gfWBeVL8d2eka8u2xpZ?=
 =?us-ascii?Q?UbWTX+qwL/g2t+wytHY3ujlBS5OL8ZxZMVoT5F6kfe/2XISno+DkpZWJaTqo?=
 =?us-ascii?Q?eCIM/OOYOrqMlwMKZHgkj+52Vv3BTNg2E8P93eoEnGL2PSamFzgh4hsJuBZf?=
 =?us-ascii?Q?XQGwQHXSy0LQLKUOiCfVX3kvAbvs0twH3yFyawP5WpxF/8fotEz5890NYkWq?=
 =?us-ascii?Q?ZcE4TqwdChk/5LQHyVHYRQSfIARG8/M3x4ufziL7k8efZ0QpeCAJpfHYwFq6?=
 =?us-ascii?Q?YQL6/fuvcfT+j29cmD55hbd78LLNuWSr4MnL5fzWLdKdaQJtOexUZaoMSto4?=
 =?us-ascii?Q?E1gEUXL1EVsr/daEqQVIbR6+UkoMJ5MAXFf7w8nguOhkMUeyuhU5ptWq2I6D?=
 =?us-ascii?Q?Nq9CRmdXCdMHtP+QjFkHWqKa/I5NUepTHRjKwsvMgYECR1dGP6OscxaBnv3Y?=
 =?us-ascii?Q?Bbu0txwFVb8yBHRaJ7uGyEs3KZ+lw1rN9hGvzAhxzeOMFjAQYR8YT4Hlw+jJ?=
 =?us-ascii?Q?ALXss5Ew4wxL0SbemstucjwW10Ugf7JMEykmENKxEcIt09GAHHnlrZ0d3NRA?=
 =?us-ascii?Q?jk7h1Kzg1qZPKn/BqKqOh0DhZ8f6RHCWa+ezwWvdJMOo5lmD9y1PMj0Rr8hQ?=
 =?us-ascii?Q?YgMJ0JBcQVQxCuAeeCj8Qlq0GRf1CEjytDiVkwfzze+59pzei5tt42PESFll?=
 =?us-ascii?Q?GeJpAnePCYdMgpCxp9qgZtdlV6fbki5ILyopaeFcV5a3is0+O+BfERR/pOcK?=
 =?us-ascii?Q?0gUIHy16mbVhdc4f3R6Y1/r6dPSsVW6SEHBvx9PDJY4x/3DG4udXdwis1Pre?=
 =?us-ascii?Q?uCR+DNHUCzi/18L1CP0pmAG1isgi0B3hsu6s3Cnibfe0FkyKPlZTlp1t6vg2?=
 =?us-ascii?Q?zqu9Gso0hbZ/ixcs82JCVQxyqSh0iIDm+zbifPU9tqjT4pg02ucXnu5LIeag?=
 =?us-ascii?Q?g06rWgAjsNQcsUBAtDATbro4FOAn?=
x-ms-exchange-transport-forked: True
Content-Type: multipart/signed;
	boundary="Apple-Mail=_EFA639CB-92DA-4DAA-AAA2-BC1DE5A19466";
	protocol="application/pgp-signature";
	micalg=pgp-sha256
MIME-Version: 1.0
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BLAPR10MB5332.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2fddd3c0-471b-4fa4-84bb-08d9689f855d
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Aug 2021 14:40:59.4829
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: kcKWQyOvOh4NRu57A1v1duaPPOKa0wwxFqVz3qaQrrhuKSdePjpKR9E4pYy76pP2GMiMsujgZ160GLIO/pw88A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR10MB4335
X-Proofpoint-Virus-Version: vendor=nai engine=6300 definitions=10088 signatures=668682
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0 bulkscore=0 malwarescore=0
 spamscore=0 adultscore=0 mlxlogscore=999 suspectscore=0 mlxscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2107140000
 definitions=main-2108260085
X-Proofpoint-GUID: UuYyI1_7oKt7S-M-KGodt_9gy74eyejE
X-Proofpoint-ORIG-GUID: UuYyI1_7oKt7S-M-KGodt_9gy74eyejE
Subject: Re: [oss-security] Linux kernel: qrtr: another out-of-bound Read in
 qrtr_endpoint_post in net/qrtr/qrtr.c

--Apple-Mail=_EFA639CB-92DA-4DAA-AAA2-BC1DE5A19466
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii



> On 25 Aug 2021, at 03:40, butt3rflyh4ck <butterflyhuangxx@gmail.com> wrot=
e:
>=20
> Hi, There was another out-of-bound read bug in qrtr_endpoint_post in
> net/qrtr/qrtr.c in 5.14.0-rc6+ and reproduced it.
>=20
> This check in  qrtr_endpoint_post was incomplete, did not consider size i=
s 0:
> ```
> if (len !=3D ALIGN(size, 4) + hdrlen)
>                goto err;
> ```
> if size from qrtr_hdr is 0, the result of ALIGN(size, 4) will be 0,
> In case of len =3D=3D hdrlen and size =3D=3D 0 in header this check won't=
 fail and
> ```
> if (cb->type =3D=3D QRTR_TYPE_NEW_SERVER) { /* Remote node endpoint can
> bridge other distant nodes */
>             const struct qrtr_ctrl_pkt *pkt =3D data + hdrlen;
>             qrtr_node_assign(node, le32_to_cpu(pkt->server.node));
> }
> ```
> will also read out of bound from data, which is hdrlen allocated block.
>=20
>=20
> #analyze and some details
> https://lists.openwall.net/netdev/2021/08/17/124
>=20
> #patch
> https://git.kernel.org/pub/scm/linux/kernel/git/netdev/net.git/commit/?id=
=3D7e78c597c3eb
> now not available upstream.

Hi,

Did you ask for a CVE for this bug?

jch

>=20
> #Timeline
> *2021/8/17 - Vulnerability reported to netdev@vger.kernel.org.
> *2021/8/20 - Vulnerability confirmed and patched.
> *2021/8/23 - Vulnerability reported to secalert@redhat.com.
> *2021/8/25 - Opened on oss-security@lists.openwall.com.
>=20
> #Credit
> Active Defense Lab of Venustech.
>=20
>=20
> Regards,
> butt3rflyh4ck.
>=20
> --
> Active Defense Lab of Venustech


--Apple-Mail=_EFA639CB-92DA-4DAA-AAA2-BC1DE5A19466
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP

-----BEGIN PGP SIGNATURE-----

iHUEAREIAB0WIQT+pxvb11CFWUkNSOVFC7t+lC+jyAUCYSen+gAKCRBFC7t+lC+j
yEkIAQCMQv0ni5wFVc0w/JtRAhfzDpaeclhxXSISoXl7wj6kRwD+OzIrOxyJAksM
EfF6spe5NiZAyS+NC5/6VgB7fK9M+qw=
=TgSs
-----END PGP SIGNATURE-----

--Apple-Mail=_EFA639CB-92DA-4DAA-AAA2-BC1DE5A19466--
