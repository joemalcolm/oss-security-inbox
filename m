Received: (qmail 22313 invoked by uid 550); 19 Apr 2023 17:06:55 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15505 invoked from network); 19 Apr 2023 16:55:22 -0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AGkvKgC+z1RSJo0tiIGINxV9NZr/ShWJj7vxm1jKbiizlLZsugZKpBNBLvffj+1PrqupxXM6NkTlv1jd/pb1WxgfxUDnkUKEaSm0iR+JsiwTtNkReOYZOMtKtlvHkpBUQx7ezG+6mXJce60EYlR2S61d4Lu0fTVIBAo7jVVeZJbZDL8xwnwxKgv/KJLB0a7PcnQXG/t9LhlOZorQ0+8qR4aAK9OcfdCPw0us74hI85LcXRe09u2zibXW8GzGoQmuT+ZK0JHz9v1l3KobSlLrX/kocMZmSkDzO49lDza6uOzndYmsXf2No3cdnKeNGSwyXzJ1O5uIXfESCLuZZN233A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pv0+rGP76iav5dPn6PvMaGJnywG83vpKl2odTla63uc=;
 b=TYmoOYPT7ebzrX92eeaLzrdQ10Q2zAX8/iZ3wIr441cNcV0x76MczIPtTDpzkO5YSvOdQnFq5wId7/8147lx+ouxtNiIXrtJry00+kRFeriEbw9Mi3Z7vHsjvt9m3MyuBNOnKSgfbhhUV1ZTcCjg1uatQNfIhymUxlfSn1utedBhDcfC0BQKL4Ro1bxmqy9RPI4hJGVndD74Irdaj9kAasYHx+3uWQQH1y9vw/FhKuJ/QhyWjM06dHvX6o5itOa52C7BZ0gF9HfAMw+4wM5B/emCP4RQ3xDhoJ/cvPE9QVwNKDGfO9DklYsfsHJDGHM1aoK0Cs2IYCr4EgjehS0EAA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microsoft.com; dmarc=pass action=none
 header.from=microsoft.com; dkim=pass header.d=microsoft.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=pv0+rGP76iav5dPn6PvMaGJnywG83vpKl2odTla63uc=;
 b=WAKNqCqZdAYx80OotU6XYea4JKrvzW1+BVaK0XezljNSIpoioP7OX+8THN0Q/lFZhfPGr+HTklTG/+EB9yo/+84CCdkY4oOb+tgwohI/5X0eb3Br0ArUJXj261dxC2z9LmVkCIljyij/lm1FCObK3SHyj19q5KyKkYvc9pUt1Es=
From: "Jonathan Bar Or (JBO)" <jobaror@microsoft.com>
To: =?iso-8859-1?Q?Carlos_L=F3pez?= <clopez@suse.de>
CC: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Thread-Topic: [EXTERNAL] Re: [oss-security] ncurses fixes upstream
Thread-Index: AdltfwDD46a6LDCbRpu0p4EAqVdOnAFUjYwAAANkTVA=
Date: Wed, 19 Apr 2023 16:55:06 +0000
Message-ID:
 <MW2PR00MB0444E2AA4D31DB0021B8AE2FA862A@MW2PR00MB0444.namprd00.prod.outlook.com>
References:
 <SN6PR00MB044717AE269F0AABB8456C86A89BA@SN6PR00MB0447.namprd00.prod.outlook.com>
 <eff48e8f-cb22-bda0-772b-d9c9c5f16fbc@suse.de>
In-Reply-To: <eff48e8f-cb22-bda0-772b-d9c9c5f16fbc@suse.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
msip_labels:
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_ActionId=04f2cece-ea2c-45d4-9510-c6e6ca2f6682;MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_ContentBits=0;MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Enabled=true;MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Method=Standard;MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Name=Internal;MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_SetDate=2023-04-19T16:48:35Z;MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_SiteId=72f988bf-86f1-41af-91ab-2d7cd011db47;
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=microsoft.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW2PR00MB0444:EE_|BY5PR00MB0723:EE_
x-ms-office365-filtering-correlation-id: f559b075-1980-45e1-7480-08db40f6d421
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info:
 QVht0g7hznohTazaQbJwqYb/Y1LZA2geQDTYssQs6RXzXu1lJpQ/6sJn9s9Riq2fpGZoU0mEQrw14ufpwvdxCzMxVGsnL1ZTQV9Jceyke5o8y8Nc2EN/UdXBQkrn4kxwuOn/VWn26w2CU524ZGME+LhT48wbGIR94ZIm2ZmLVFQDlorNZepmYwUVYf+hoC02hdxhjlrC8TwzeFb+eLzBKzP6TeJ3SpQum8vZSRj2XG4Q5PUo3fSdirpaBe7/lMK3DUwJokkK9UG4pCOuXJrJmL2hvvSj718DOQar8mmYW9F8nkeA+Zt3eBfi6RgzXh2wpqC2VjzfuHY4yXP4nCpuCsSwfSflXAJ2wkqtJn8XG/pP0ij+xCNcnEGt+6a7smNEDVdzC3fsYkjbF9ZPBPQLrVSN+3SKzfSZpiojmIQDzLOV+c4pmeXgajZKqaOuS6B5QhdAcfSMAlOF/VOTzh1UyOfBfsZ3QYivzTZKxkvmrC2vBrTHofuv+Rz+O1707qelefz0ouFaQ8GrxCa+GJPqoVUppSYphcTpdNj7H8Sy9lCuX/pytXn+U1y7asAZDVl5gkGpXZ3s1rRr6TRQ2HCFCGiivXWqcAgHefHQ18YDAtq/+85r2g/igdL1RmZGIPrA1Yd+YcrZAtDBEB5Z8eQoZK8H5kyKYfmZvCEscoX9qss+fonh42A4G232skFmrske
x-forefront-antispam-report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MW2PR00MB0444.namprd00.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(4636009)(366004)(396003)(376002)(136003)(346002)(39860400002)(451199021)(5930299015)(66899021)(64756008)(6916009)(4326008)(786003)(66446008)(66476007)(966005)(76116006)(66946007)(66556008)(316002)(186003)(53546011)(9686003)(6506007)(45954011)(66574015)(38100700002)(83380400001)(8990500004)(41300700001)(8676002)(8936002)(55016003)(478600001)(10290500003)(7696005)(71200400001)(82960400001)(82950400001)(38070700005)(33656002)(86362001)(2906002)(52536014)(5660300002)(15650500001)(122000001);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:
 =?iso-8859-1?Q?64F1Q5QS9akoaaDg8Pgo6RmFdvnz+uFYOlsAjYjK6qm9uEKTB11zvxJDVE?=
 =?iso-8859-1?Q?zL/3GZg2s3nQdMTCf+1XZzzyNSi7p9zp8DgjhYz6awvNGQnmXBLcw9SegN?=
 =?iso-8859-1?Q?/1S8uabwvR7+IxsvbSQHtBTBZ6EX13wfEvXNflTDnQUzkvnepSLTxptZ2C?=
 =?iso-8859-1?Q?kIM87NBoa8TBMwHvwmiie6kotaBMLFU8e2CC64Cu9ix5lHf+qtcyjWrIWW?=
 =?iso-8859-1?Q?WnRHOZzeUpTY9Drs/T6SZ7JSppmBJaBMFZ9dU6KNtRFKl3Z+L4LG2aqXok?=
 =?iso-8859-1?Q?puvMmOjwFUyd8n5lKMX/2UntcUsXWIJKFte39LYej3O+d+9NV7MGiH9Cpg?=
 =?iso-8859-1?Q?hpgQWCbojCY7AxuPleUk+VNU+a41Ka067FUFSXW0HI5qrICu465gbzu2MU?=
 =?iso-8859-1?Q?/+iGDtmQAR2KSjX30RnAsjNqcfrN0QVuMMBjZ2QzMth4H1SquVEJeCyZNu?=
 =?iso-8859-1?Q?28kaqiE6EvhHOUnAKIdgEqgvQelx+IZF/52XZ0BQWbjoySULYwY6JPqCm9?=
 =?iso-8859-1?Q?1doced+fgNn+ivunv8VLObd3Yh5B8gjsfR9Qz/WOlfPo4lKVFeyRXnmscO?=
 =?iso-8859-1?Q?hNxsJVOkhFCQpxpyDwxvt6FI+a+slybXQb2dKcETRbBLNn8QxpHw0rUCgk?=
 =?iso-8859-1?Q?ujCXFoCSTwGzhEIPec0FL3BBSw6XwnA+T1UOb2/ipzmAXO2lbBSEgjj9BI?=
 =?iso-8859-1?Q?utVjBgJiLsU8xgL+ZoJUqnnDDprc3HyZd0y7kTsLyN6KqO2dPRUT6h+BNX?=
 =?iso-8859-1?Q?fPdxCC1lvQev81EcmfC2QSXUz7pWL/nkDJmFnzZgNuR9sftnZcVObpQorB?=
 =?iso-8859-1?Q?MQzzKoev6AyAO/QCwpCUravnREG9O1ERgLhgi8OKbv+blS5iw/GwQHkhGo?=
 =?iso-8859-1?Q?RwfG/QOuKJzLNo54A7t7LlYXihsXtEHSrnipSku54zawCbqWWYBUt4yWOX?=
 =?iso-8859-1?Q?O4/nWcbyhAKyHUbqS9Fv5lmxD+l0fbFb3uk3eF5KTY6fdZBNCRz+NPdUuT?=
 =?iso-8859-1?Q?EnOSFOtdLVUphnl2uMLIpy+8ZfYoVncQ6mFd7Zy6POrqi7BP3MLICM4npk?=
 =?iso-8859-1?Q?bY6prxF3dPq2Et+HJ4Jsv1yLejL12ENeU2eEX5oLaGA8/kX2gNxi6QYf5X?=
 =?iso-8859-1?Q?SXhD6WYgTZT4CQzGYmle9ZrX+FDvugdUbEGDCTbYufpB+f4zzf/u/rnPYk?=
 =?iso-8859-1?Q?5nWiHYlXuhCiGcAPUfG2kI+S3V0Mltw/bxJSBfJc3QqT1Mwb5Fr5uQqoyX?=
 =?iso-8859-1?Q?6WLrglu2xdBf3hSlVoSYtIxARC3LFuisDoSxOTxhmR9VxRF9BX/efHSzuM?=
 =?iso-8859-1?Q?Kcw9jojGQwsj+IbAfimeMtq0i2J9LdzXmllxQoB6sIRidGz47wVN01ovsx?=
 =?iso-8859-1?Q?a2ZsynE2fjzQQP/RK+b4ba+GyAz3NW9190Nm8+QCqvwzgEWBIcQCXgNabk?=
 =?iso-8859-1?Q?oxCPwEWvE2W+NA/Q4ylD+2AMuut3fu/iBR2oH58DTF7TvxD1z3c7tMP/x8?=
 =?iso-8859-1?Q?8L/z/NCCRBQprsOQK0plsFts+LCqNb9H0qu9b4PvaZyBhibaelvzTbaVHp?=
 =?iso-8859-1?Q?p2hLvs9ebxq7vYQ2FYQ6Glb6+vmbA/gDHlzKh2bu2XmoeX85Hrpn7KuRbK?=
 =?iso-8859-1?Q?WvGyZgeUnQIAy/P5fQLcgY5Y4NjZK1uXLd5DqwxxO/wsZR/or44OdrDWzH?=
 =?iso-8859-1?Q?V26nEzIOS3aaNBptWnPAEJJcNVqCDQ7XxD6FPmCK?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: microsoft.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW2PR00MB0444.namprd00.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f559b075-1980-45e1-7480-08db40f6d421
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Apr 2023 16:55:06.7683
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 72f988bf-86f1-41af-91ab-2d7cd011db47
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: slcQ2eC5DdFX2ih4+mYoC1/kKN6jU77u9mdZFVWjHuQuRH/NAzbmWSVpuTqrT79T3WbsXcbT2V/uqdqwptMwjg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR00MB0723
Subject: [oss-security] RE: [EXTERNAL] Re: [oss-security] ncurses fixes upstream

Yes, now that the cat is out of the bag there's no point - you can find som=
e POCs here (not every find is covered by a POC, FYI):
https://drive.google.com/drive/u/0/folders/1XZiHbH7W7is8cwTu7DKrpwBTYuYfRZqE

Note not all of them work on Linux - some are macOS focused too.

As for Taviso's remark - obviously using "iprog", "rf" or "if" capabilities=
 can be used maliciously if an attacker is able to affect root's terminfo f=
iles (directly or with env-vars), but those capabilities are only used by a=
 bunch of programs (e.g. reset, tput and others). Normally putting an "ipro=
g" and calling another ncurses using binary (e.g. top) won't run that progr=
am.
To be honest, we focused on EoP scenarios, and specifically macOS. macOS is=
 the most sensitive here, since "top" is a SUID binary and doesn't sanitize=
 TERMINFO (or HOME, which can be used too). The bus we found are several me=
mory corruption issues that happen during terminfo db parsing, as well as n=
curses functions (e.g. tparm).

JBO

-----Original Message-----
From: Carlos L=F3pez <clopez@suse.de>=20
Sent: Wednesday, April 19, 2023 8:11 AM
To: Jonathan Bar Or (JBO) <jobaror@microsoft.com>
Cc: oss-security@lists.openwall.com
Subject: [EXTERNAL] Re: [oss-security] ncurses fixes upstream

[You don't often get email from clopez@suse.de. Learn why this is important=
 at https://aka.ms/LearnAboutSenderIdentification ]

Hi,

On 12/4/23 22:40, Jonathan Bar Or (JBO) wrote:
> Hello oss-security,
>
> Our team has worked with the maintainer of the ncurses library (used by s=
everal software packages in Linux) to fix several memory corruption vulnera=
bilities.
> They are now fixed at commit 20230408 - see details here=20
> (https://nam06.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Finv
> isible-island.net%2Fncurses%2FNEWS.html%23index-t20230408&data=3D05%7C01
> %7Cjobaror%40microsoft.com%7C0102d7187e894898280408db40e85af7%7C72f988
> bf86f141af91ab2d7cd011db47%7C1%7C0%7C638175138959984222%7CUnknown%7CTW
> FpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6
> Mn0%3D%7C3000%7C%7C%7C&sdata=3DuRH%2FEXS1rhbBT9vsPN92PjfwjFw9UNLehU9ksP6
> TX8s%3D&reserved=3D0) A CVE was assigned (CVE-2023-29491) - it's still=20
> under a "reserved" status.

Are there any plans to disclose any proofs of concept to test these issues?=
 From the distro side these are not only useful to check which ncurses snap=
shots we need to fix, but also for our QA teams to test the update and dete=
ct regressions.

For example, we are not sure if the build option `--disable-root-environ` d=
oes anything to mitigate the issues.

> How can we ensure those fixes get deployed upstream, in major Linux distr=
ibutions?
> We've reached out to Arch, RedHat, Canonical and other popular distros in=
dependently.
>
> Thanks!
>                               JBO

For what is worth, we have not been contacted, as far as I can tell.

Best,
Carlos

--
Carlos L=F3pez
Security Engineer
SUSE Software Solutions
