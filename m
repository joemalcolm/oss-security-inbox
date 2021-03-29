X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2240" "Monday" "29" "March" "2021" "12:57:46" "+0000" "John Haxby" "john.haxby@oracle.com" nil "73" "Re: [oss-security] Linux Kernel: out of bounds array access in dm-ioctl.c" nil nil nil "3" nil nil (number mark "U       john.haxby@o Mar 29   73/2240  " thread-indent "\"Re: [oss-security] Linux Kernel: out of bounds array access in dm-ioctl.c\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] Linux Kernel: out of bounds array access in dm-ioctl.c" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9325 invoked by uid 550); 29 Mar 2021 12:58:03 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9298 invoked from network); 29 Mar 2021 12:58:02 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=from : to : subject :
 date : message-id : references : in-reply-to : content-type :
 mime-version; s=corp-2020-01-29;
 bh=jAJ4/h50zVeNDVMJYUrWkQUEfEVJh87bq+Tbonr1IpI=;
 b=XRPAdM2q1+UON7EYDoYCCMGRGLeWMZ53li4rlkQqYXhfb9zlaoQ+mZg+OUwafV7kHP8e
 9gZpbTROf47F1Irtsm31cSrgpKAEtdVUKTdv/TUQ4Aq4Ia6gN/gaxRRA62CcVafzpvOR
 buL1z0mk/qkKvx4YdWsYggpCuVtHZQcp7BC+A0A1T12GR6r4KhXGmEF8IX83LXV/FucJ
 qDy7UWnu5UL+U9BilyxOycTpnFaWLbgAQl+d4/HMaveV0FNfQ87p8z+dV+7TEGW2hMXf
 1xHY+Sz5+2miYa4SwkXhTuxp7c4+/bbbNyEQ5FSUQicfZa3lbCwwrCQzCNkYa23nEZL+ TQ== 
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GeHyFQ58FbF2bTLKws+cIpiRpr0YMkeNOaaPpDOWjSKCkWIhBkdTkxaYnke8ThRuMWKEFw7xIk+vAzHUo6WVanChoHEFGurVibL7kYBGcqPdoXqrHbu0dl/0fZ79TgUJztU37GTk2M9xJ+EEQfBdpS6L+GsV88a9iKUzjtinbTRhpqGBm1kt0GvDh5lx0Q3lJGv9zgtqVa+wfN6UDy5o037GAN66mKPrVRE0cRwYgk5PA03caaKeXIVGJAMExClxjU16L3iaLI2xxoumIxokMGlt/Ksii8uQWFAqc39TFbX8+XsqtUzVAOR5zfTeXr49lIIANNdJ0R4IlOHAtK9ZiQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jAJ4/h50zVeNDVMJYUrWkQUEfEVJh87bq+Tbonr1IpI=;
 b=PK5XOptPGvaOpuCZSaIywR+YplxgHXxTwNkyJXmQie96JDc5+g+i4QnmTmT/KeQrLNF+lDszMoFwz4K0bkrPNIoNBaMqfCpD7s9KZteV6P26NAGz/5iLQv4yy+EPOdVmR50EUAd+KeFFs3KQP5erT1UGfZGFSnerNRSU9O4RlCOujB3VTXRulLybf0CjhDpMwpjtORs0aPL6sj7ERf0dyn7kqzMQL5utZ7PYsP2tdEWIPNTaw5mBXn8Cd5CtcvhIphW3/tfO/owOoTdVT6RluNkKjxqN+PXZGLggvdgBPmonKoTjonYqu1h4dQiPdH+OVpe5l2Onhvo7790Adqsntg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jAJ4/h50zVeNDVMJYUrWkQUEfEVJh87bq+Tbonr1IpI=;
 b=T+9CHvDWEhwx7E28RFsX+lGai+D64X6F30+mpryhnurA/dc+3XwokYS1vkVSMGiFIwDBT23FvBSNPalXy5aNse9XADJHwA5jZLtiez9xXYo56kIMHbpTfFFJPps1l3OOEjUbZliQT+TUrCW7LeGaJT+3l3xHFrRcPdYUv/4mprw=
From: John Haxby <john.haxby@oracle.com>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Thread-Topic: [oss-security] Linux Kernel: out of bounds array access in
 dm-ioctl.c
Thread-Index: AQHXI4XhsPhJjAedVEmnfZffM7Vb5aqa7y2A
Date: Mon, 29 Mar 2021 12:57:46 +0000
Message-ID: <6C2649B1-621E-40B3-A9CD-7252FC4FBA66@oracle.com>
References: 
 <CA+-U7QC-zxn_XYLJifSm=cDmsW0_Rs+juQuoCUTw1+TQmdfpGg@mail.gmail.com>
In-Reply-To: 
 <CA+-U7QC-zxn_XYLJifSm=cDmsW0_Rs+juQuoCUTw1+TQmdfpGg@mail.gmail.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
authentication-results: lists.openwall.com; dkim=none (message not signed)
 header.d=none;lists.openwall.com; dmarc=none action=none
 header.from=oracle.com;
x-originating-ip: [2001:470:1f09:58d:49f7:1e10:a4cb:7b0]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ada63483-d319-44c5-b218-08d8f2b24032
x-ms-traffictypediagnostic: BYAPR10MB2758:
x-microsoft-antispam-prvs: 
 <BYAPR10MB27585BF78F07811394FD658FE47E9@BYAPR10MB2758.namprd10.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2803;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 oooCecBYCD7Gj9RV7te8IfP1mLtyliabUFzcvxwfWD2uABTZRYhVC3uypyv564jf2oETsDZse79hpI8JR1l3+IQ7GKiVnn/zS+zxmeLBdde0pS/gYD6+zvzvENqmiWFRBHl8tEI1LvZ9+qphB9i+ha9CY16nAi647A03uFF7tDdSKhyr1BgpctCM6nDie04Q6LWvk9NP0opdG/4U9FHlqA+dO4HcB3mz9G7RfSlRHLd0ZILL992RMka9Flr1bde1iUVmKWSTmnxCDkgkfyxhdZyunCAP6lgOAIuIn3yoz3jyNhwhlzMUxQnCQ2DymS+Z9BuTeDyHzZmGDouMqDGVZWwDdJkxgVcoPvygKksoQikGPBgMGNkl2kQ3E2ryXt9u1gLeIt3d81ZEPlkxhJut3CEePtsxg/TD90qLHHO85de0xdogIat+s8kymgXqCYSaRQo2NShSsohBQmZd7HvUxhwvUIeFYqqVjIRW76Sq5HworswuVy6+RyoNyb1DpKQMjtm4rvDEtGHMUkVoOglkVNhlyycValHnkhtAsbBhVeB4r279JMLHP4YOcGMLsNBIYnagBF0zX/hVgnWVcunUOHrhcrBomT+usNt16dxgNjIO8T5qjziRurQHlFXIGobuPkme5xA5uAH4AneJcHBT117Kz0KkqMZFcMOVGsOs1PI54MKA5tncQjGdNNWwXEIbGiJiRJ0yzsRWWZuIQ06FiLjb91JBmzn8L0CeBmJLNE8j5FTn/JQYI8nKyPcybQ3EsrQjUy6B5BgU23+CzpqQGA==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ0PR10MB4429.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(366004)(136003)(346002)(376002)(396003)(39860400002)(44832011)(966005)(316002)(53546011)(478600001)(66556008)(186003)(6506007)(8936002)(83380400001)(71200400001)(2616005)(2906002)(6486002)(33656002)(6916009)(38100700001)(66476007)(86362001)(36756003)(91956017)(5660300002)(6512007)(99936003)(64756008)(66946007)(8676002)(66616009)(66446008)(76116006)(45980500001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata: 
 =?us-ascii?Q?kHokeBrjuGgrWDQ6s5PTRw3YYr5v+b/mrWPxCupjkiWW/HKZiaT8dvLj5cIk?=
 =?us-ascii?Q?dDRGxAsCjvLARJB9aW2h6lSzGg7ls4Ooy6BKpyaO6L7xqngjudo8rU/SHw2o?=
 =?us-ascii?Q?l7ANbUgqQTLoclxqJJdqbvjk7GjvUrHx7t7iWFQ0aXBRJH63jo3iGQRNLA/Q?=
 =?us-ascii?Q?8+mot8QT34m327nRO25/44C75oLg4T7sJ8D/TIf2VE/VOfLlWTirTnczjps4?=
 =?us-ascii?Q?Kli7nIGTS2c5bHL6mQv0WP8xCAuqMuiKdEsa7Ry+vXjQ2ybBh5XbRFcigGDL?=
 =?us-ascii?Q?3WJM7UwjfEB0TtqxKy4SN5ss+7S5tnXGQ4URpKzVDlb8W42ORvV6SrFIBJOI?=
 =?us-ascii?Q?wPcqCwkcbJHo0vKiwi65yKVegRwPj26rJKZ4HKtBNjZTYnH3akLpumS6seS0?=
 =?us-ascii?Q?fjOMUZXPW+EaObwBWvaSIUd2hDhU9cui6pJZDsI1wOeekzqZRic4HraWc35j?=
 =?us-ascii?Q?XI5vTa8/ibn/ZK4/EqMhieiaM4/VgCf0m73HrbGUsqXHe8Y0PdQ0YAasmwfC?=
 =?us-ascii?Q?pHoDZRFBWOtmMdiYSLG5vvQfoMHO3uQWvkvJOVM2C1CxQGwWcTeZlliw1bhD?=
 =?us-ascii?Q?MyryYLJAhzEeOWKe+1L52aRdlQBmtLco0XypJMj08U/pkR6THE8Va3TvQFsd?=
 =?us-ascii?Q?2PeyZlMqXZziYo/4tBf+m+vBymqJeoQZE2KOiDpbvClxk2Nsg1DBnTVB6Lhs?=
 =?us-ascii?Q?vs2nI40QsMF3xjx2g5TaJDits5aP50jucx2C3SQrLywyHdYva3305Ej2p22k?=
 =?us-ascii?Q?sMU5FT7A4gE5PTPG7glk6+vPYc71Vm9P9zjSb6rgBB29pkvPHUZI61sS453J?=
 =?us-ascii?Q?r0466VNd4JlZJL+JyUAfURiRd0LEwictB74/44ayt3KEek3Iw5DC5/Sn9APe?=
 =?us-ascii?Q?r8xbJdgUa5kOROsYICFY5/K948o1jUiYhwuFnXMtXeLr3TRxm6zWb/SMjV6w?=
 =?us-ascii?Q?uOswofMCgYlBVSLARf+SLEi9uiamk1L7os3QtekoINKTOidOXpMVYLkBS4TO?=
 =?us-ascii?Q?FTSJDoLfu5o/8fXzzuR09XTtvz9JJC4IugjbsuOgf7myt4kHsQgcSZc54EgA?=
 =?us-ascii?Q?zC5XxZ86MH1ifSn3oZAo1PtTq11O4qDJiazH5kYka0CXj/2qyuzvcAFrmnLA?=
 =?us-ascii?Q?TN+YDU8VPCUL65/UrIS5gY1Y5HJYe2DuZjofzbo+3WenHAPCx5Uz4qN1rhdI?=
 =?us-ascii?Q?G2FjNd4teT+26fV+LtV7BVSgblEGWbd5+EKfnCw7m9RsIt4ECFq2z2s5frUg?=
 =?us-ascii?Q?8eSxECWaiWngwieyhpWb2hh6huoVp9EE9tznnG4FVUl3RpIaBk2by9R2sW3K?=
 =?us-ascii?Q?CMJdNFv/UV82yGBOCrLOcRPz+kE6Og5fRb80bAMG2b73bWfPElM1ODWrZGYV?=
 =?us-ascii?Q?GFIJD8hvM111j0Q7/1M5VcU+Fm4n?=
x-ms-exchange-transport-forked: True
Content-Type: multipart/signed;
	boundary="Apple-Mail=_316BB58D-F1CA-4E80-B1E7-CD97977B1D5A";
	protocol="application/pgp-signature";
	micalg=pgp-sha256
MIME-Version: 1.0
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR10MB4429.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ada63483-d319-44c5-b218-08d8f2b24032
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Mar 2021 12:57:46.7064
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: kUUdmzNPACMDf2ARbuKhYEGr5DqKj9FbO6htrTsiQkvsUxNI9EYNOi+Aa5zVlga8lzrkwnUNglVYBSwVhfbWYQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR10MB2758
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=9938 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0 malwarescore=0 mlxscore=0
 phishscore=0 suspectscore=0 mlxlogscore=999 adultscore=0 spamscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2103250000
 definitions=main-2103290098
X-Proofpoint-GUID: YQuaDztBFw726ShapAxznbKDOIiFK6Pf
X-Proofpoint-ORIG-GUID: YQuaDztBFw726ShapAxznbKDOIiFK6Pf
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=9937 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 impostorscore=0 clxscore=1034
 phishscore=0 mlxscore=0 malwarescore=0 mlxlogscore=999 suspectscore=0
 spamscore=0 bulkscore=0 priorityscore=1501 adultscore=0 lowpriorityscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2103250000
 definitions=main-2103290098
Subject: Re: [oss-security] Linux Kernel: out of bounds array access in
 dm-ioctl.c

--Apple-Mail=_316BB58D-F1CA-4E80-B1E7-CD97977B1D5A
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii



> On 28 Mar 2021, at 04:47, - Nop <nopitydays@gmail.com> wrote:
>=20
> Hi,
>=20
> We found an out of bounds array accessing bug in drivers/md/dm-ioctl.c, a=
nd
> reproduced it in the latest kernel (v5.11.10).
>=20
> The root cause of this BUG is :
>=20
> The field "data_size" in function ctl_ioctl is fully controlled by users
> and this argument controls the size of kvmalloc in function copy_params.
>=20
> When the data_size is in a range of [0x131,0x138], the allocated memory
> which is pointed by the variable "param" used in ioctl
> "DM_LIST_DEVICES_CMD" is too small, causing an oob bug at line "nl->dev =
=3D
> 0; /* Flags no data */" (
> https://github.com/torvalds/linux/blob/0d02ec6b3136c73c09e7859f0d0e4e2c4c=
07b49b/drivers/md/dm-ioctl.c#L538
> )
>=20

DM_LIST_DEVICES_CMD, and in fact, any function called from ctl_ioctl is lim=
ited to users with CAP_SYS_ADMIN.  Without that root-equivalent privilege I=
 don't see any way to exploit this bug.   Did you find a way to exploit it =
as an unprivileged user?

jch

> Attachments are the poc, kernel config and Kernel report.
>=20
> The patch:
> https://github.com/torvalds/linux/commit/4edbe1d7bcffcd6269f3b5eb63f71039=
3ff2ec7a
>     * Grab our output buffer.
>     */
>     nl =3D orig_nl =3D get_result_buffer(param, param_size, &len);
> -    if (len < needed) {
> +    if (len < needed || len < sizeof(nl->dev)) {
>         param->flags |=3D DM_BUFFER_FULL_FLAG;
>         goto out;
>     }
>=20
> Regards,
> Bodong Zhao of NISL lab, Tsinghua University


--Apple-Mail=_316BB58D-F1CA-4E80-B1E7-CD97977B1D5A
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - http://gpgtools.org

iHUEAREIAB0WIQT+pxvb11CFWUkNSOVFC7t+lC+jyAUCYGHOyQAKCRBFC7t+lC+j
yHiEAQCY/T1fRdcspmslC1dVLZx7tCQ0v4auHXw8VkyCI8kvqwEAs4zUH5y3BKBp
J5MuRuFTJPwHH+swcwEtFjkp7M7SMFo=
=YjGr
-----END PGP SIGNATURE-----

--Apple-Mail=_316BB58D-F1CA-4E80-B1E7-CD97977B1D5A--
