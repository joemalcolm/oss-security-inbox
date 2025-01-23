Received: (qmail 11999 invoked by uid 550); 23 Jan 2025 12:24:47 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 11957 invoked from network); 23 Jan 2025 12:24:47 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualys.com; h=
	content-id:content-transfer-encoding:content-type:date:from
	:in-reply-to:message-id:mime-version:references:subject:to; s=
	qualyscom; bh=HAmrvm3DeLUq2qEBUzlFj97rV12bPdyEP7Gu7WBJZXQ=; b=rJ
	J4hl6z8xEX46MdpEAIvs8JFJm0k08tfvVfv8RuyhV0FYyxmcR9Je3A5DvBCarr6e
	6soBnmpRKp8uGd9AebvlYUODB5jt3OI3zDZXjwInpZ7yBM/GnVUILXHEz+LDS1/M
	iFeY+lnP5Cq4Czt+Bt4NgRtHN1ZdT9YjRbyzc6fXrdf3DC5nHUO4ei6RVFMRTma4
	XkBOaXvOjrVBypiCC14l8bO9Aa/pjISK+pU5SblVtrxRyLgar7QQ5P4aRc0mA9o3
	EzJ9OpsA5qFM334EOS3wNpBPtIy/470UWEuF7V1j05DVbhHHMDYuLTrw/tH2NEsO
	f6+IDu+cYNIaBH5Euq2A==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Te6LRXQ4e4gvXEI7BDbuJP5MbmFVY6mJjk/hunMJgJPQ/Cx1MNtkqi7tBY3ZnsVDbd9ojLXZ7zeSwYuMi0T5gePJ49ewSvZJcpkBfhHFYERypH3+dskJyE+C868Bu3bcWnUfmhkYZg6I60SQeB5C5CAW2esNAI3t7PHYHzQRe+meHQR6nGkTBlVt7ST6zkmzL5ZDX6d13uKKFJUQL6iWze2fHqBMXn+VB6eCCkndfHlAN/j1oxylYQVOhX0AkaZskGgT3au5uZC7jjeK9RA40UU2jhZzG9KKZU/X48aUWYRKimoPot0bKR+V4ClHdo6o25IvmpUn9iyRPu/ZX7+rdw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HAmrvm3DeLUq2qEBUzlFj97rV12bPdyEP7Gu7WBJZXQ=;
 b=rzPJW/tOtF1IqEXwxi4uS//cbFNZqxcnE+WMakUbuBS1rPrxvHiCnMI4IrKgWlHrpuX/YwE0gIx/xdby/qjYYjw0nhFgBejgdHYYXEC57EYILRM+anZzUljCAc725jYP575VhKD0rabcPD756yqud2Eq2XFy4+p09Ao+ztQVzTV/+ilQFVLErwIQyOF8kOuYdMj6r10WnxUKwRlWeLIKsrSjg7/Pg6W6J5/2rx0Us+HbmElYyiDl7F77yLjwekQA/vs5Rx0+b4ukijD2NOQKdGjrnHMdevxPv9cbzt89VKgzDuHzg5t+t6Ef4dRCunw1QbWOQlchQUM4Tu2YMzbeEw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=qualys.com; dmarc=pass action=none header.from=qualys.com;
 dkim=pass header.d=qualys.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=qualys.onmicrosoft.com; s=selector1-qualys-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HAmrvm3DeLUq2qEBUzlFj97rV12bPdyEP7Gu7WBJZXQ=;
 b=N37CBmK0veBQ/9aVnNPKJ/REnXiqQ64XXWB6S+nwbz1Br83Nc1QNQFdxpiYzfntd5MDjPmB7jS/yzY9zmPPrTLPSxnynkaaMIbtaSOzu71VZVhQkOcouytTr2tS7T+oxnwM51KqgLJzY13M4iBE7G7gzpOBv+Cf4L6Mg1WaFWJRGjgnhhIQWye4hRsiwYZ4m7TmmpH4Edb9XSiw+kQ4BJNNUSi7JP4B2lNB8nXMMFaBUN6Bauf1QGNu9I+ljqXiSNXHYUT1g57OMMEgqwBQhV68x/3OEqQnDJmKIwfxnQrkIM3lhlUSPX4q8ObTfx4eHWy5kmLXKSpgXthLeJyNPVg==
From: Qualys Security Advisory <qsa@qualys.com>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Thread-Topic: CVE-2025-0395: Buffer overflow in the GNU C Library's assert()
Thread-Index: AQHbbNNbZRguQNWsWkGl8AAXT8Ti0bMkScQA
Date: Thu, 23 Jan 2025 12:24:21 +0000
Message-ID: <20250123122412.GA9737@localhost.localdomain>
References: <20250122134128.GA29327@localhost.localdomain>
In-Reply-To: <20250122134128.GA29327@localhost.localdomain>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR06MB6910:EE_|SN7PR06MB7311:EE_
x-ms-office365-filtering-correlation-id: 90006644-edbd-4c25-ebd9-08dd3ba8ddfc
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|1800799024|366016|376014|38070700018;
x-microsoft-antispam-message-info:
 =?us-ascii?Q?3MDL/D+5zsSg3DJRo8Qlo4LkY/VGFUIe3rPx9Hre+HpPEJz5n1VazbosjWrt?=
 =?us-ascii?Q?VPpN7pAhs+C4A3TxJ1KnhwM4lPMKs/+rE+AUK3+X+4JYpKRZf2/ETGFy8a7Q?=
 =?us-ascii?Q?wZvQF5GrBmvvFgJynHRktBiJTWMhpS+T0rkUkPBDU7Xq2go4Ln3rA+F37q05?=
 =?us-ascii?Q?5/VuFKpHmCbOHmfiOb8ySI+PTX8dvQSmNoHXbgFdL6cDlZFctUaxE26M+7Wy?=
 =?us-ascii?Q?SdXph5y9lyrIn6OGO9s6OEyBh7I4UciTz6qYgsPr/D4yrGEdIi2RsfWLTkGL?=
 =?us-ascii?Q?SEpySJ/MOfepX+aVoaYbCMeyU2HH4tVB2G3YJD5t76RYmLvOANqo7AR2b3Bm?=
 =?us-ascii?Q?vqKJBEC8O7Zd6N3jzXkDs9nIf5MNH2RvqYOYkrS9rQu2bYgfM7YNnSldgrhY?=
 =?us-ascii?Q?fVYvrIn5ihgQ+VjHMW94Z9RsSu8ZPh6aqK4Rk5cSQqNKZ2+kZ2YlhC95gBK9?=
 =?us-ascii?Q?gEI3SOhMtOPMdqBlutTukSepO2qTAbsl2TK++SOH/fnzlU3h/LrmJDcSBcGC?=
 =?us-ascii?Q?t6oe0NAxsUvNfq2NeqD3ZjVi6hmLSnPYf0PZb7gBZGZYeQ5C5e8kcHXSkZ7g?=
 =?us-ascii?Q?fEhl64D/ExvHCbiQPDLYCEsMGiEY4Yq6iCMhPFXN1wBjMB/boxYBXC+CvIEr?=
 =?us-ascii?Q?GkIFtHxu/PR69Z27cpX1tguUab5lccYrJ3TFZnRAFIXDRIupHhAlR40J5jHM?=
 =?us-ascii?Q?boNsnHm0qJyeIEC+/gV5mXIqUetpCF50maGIyIoFJCPpCJgVwrpIe4H6rRwE?=
 =?us-ascii?Q?u5xp4dkXZyWWW4it6Fxn3xT+iLmYDqKYIbfbMSmyCAlyEj2Kk0eVZO8I+R34?=
 =?us-ascii?Q?+yx0Be5wxw0soysWOoCNA38BdS4HNCMH6gi/n7UGluL6NHARvruK4LTlvNNT?=
 =?us-ascii?Q?lzXrhq3A0edfLHY//+Mj83zc/r1kFHPKR5YB7CkttKGpirQ75e2+4vhT6S5Y?=
 =?us-ascii?Q?ZFfdN5wfV6k41IiUWdg47Ypg0Bjhqo6UszrK+05CJCnti3+ceY3uxNxr9JXw?=
 =?us-ascii?Q?6h4r37pC6RuMVTeUlhbWsFztfAtt4OeDOgDhtRLPgv0BnA+uLBtCr0MtO1+J?=
 =?us-ascii?Q?dU8vwx25yom6AmusMkzZRw9ocuD54tbSurdXyIGp+e9ECVtiaNKCee5gA6I1?=
 =?us-ascii?Q?FMiZ9AM5ezDIZBgAhNJ5rv9OEom3ipADqcoHCQyt7guXSL6aWRdA5M/Ty3nc?=
 =?us-ascii?Q?d3b1pwzrc6ft57eh65tELh45uTzWdIhoY57q22N3pBJWlzTmwwZLngFRnwfv?=
 =?us-ascii?Q?S4+VioASFxk6Xjv+88zRJG4HqzVdEi9aPJMI4WZJLcT85DWqZ8AIBPsNJzYJ?=
 =?us-ascii?Q?lzI7xQFDKNJ7v/jln/C3HnluPH7SW5IthNkCcg7L6+ZwQ8SXbcvAZDMT06IP?=
 =?us-ascii?Q?00TUSPiySV+E50yx+MIst5kw8bFZ?=
x-forefront-antispam-report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ0PR06MB6910.namprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(376014)(38070700018);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:
 =?us-ascii?Q?gc8xdbAbuKPaKIVBChCaEOrudbDlvdUv/c70+z1f9CCiKSMPf9HjknJEZG/u?=
 =?us-ascii?Q?ofmJMwnT+twO5JdRjeezD36e5PMrkRjkSwxZwQIZhrflri8BoWoP/tD90h6D?=
 =?us-ascii?Q?ILU3bZAXkb5g2v8QLq5UP9G590iqV6D5hE3LKAIAx8Oy74t0yskG4CBRrBB+?=
 =?us-ascii?Q?5RCwC8zXHv4TXfAl3GyoKGVOjnP2yo+kKLYsDsWEU+8JDHAwfsiTw0FRNCHi?=
 =?us-ascii?Q?RgD8p7I2js78ck5B48plBUwPkms79tjpyBoVTEQN05jSonJeNFXn6gk4ggy7?=
 =?us-ascii?Q?N6IWUCbmWu/B10fZ0b3fHVKxMV6Rc/PQFJogdkcVfp5BtPQqDJrNPgTk/ABH?=
 =?us-ascii?Q?rG7KQNUruD6BtdKMzXlCvN5fknpvohOyWrgdtERC8FG3jYanI+OF/IoRFcOR?=
 =?us-ascii?Q?8kI5fdZmdM8hnxEuVVEjAvgAXE+xlCfE51jDwtv41VeuMaE/5TID++jytcQF?=
 =?us-ascii?Q?Szhz+YErvqZUENVf+mvn/eNfDDqXIJZ8m7M3x2R5HAQbSRqzqP2Xb0zwppTX?=
 =?us-ascii?Q?1z2MhqUqjo5b5dvxxZPB7Cc6msjZOGR2qDRR4x6klPfXOdJCH5P6ZVFFDCCZ?=
 =?us-ascii?Q?sw6D9Be86aAkTvvu6kB6ZWNsgcW1nhNbbcZ0tbkAA8BmoO4v8jKP6oBgdTsF?=
 =?us-ascii?Q?jYvCO7GVCMwU3mAUFhfC0AmOzXLJ7qXxPHwhhm97tvnZ016Aaj/kamHvQryS?=
 =?us-ascii?Q?EZLxQmvyCJEOiwy4ZatWgMUdRgXCN8+DYpVTejy62nmlk2idVirNud/nUHKt?=
 =?us-ascii?Q?3C97IzBiqJryMnT6NUEIU0RsWTUcm0ehFs3j1mcYccilXCnWP1XOqzqpZtco?=
 =?us-ascii?Q?wzuYFCYjf0oeCjASGzH0Nkj3eYypfExYb8zJOwlVc8xrHYDRPmHQUdAYyect?=
 =?us-ascii?Q?+fmr3m9YnigGjyorF04zdKGAPNiCDatUS2beNYEbxnj6QpVdkwsrDGeuWBb5?=
 =?us-ascii?Q?FlNkmOaOR9qjiARfyAet49J+5L8cBC0jFG/KieT3NQAfpzc1Q2CcpO0tpAp2?=
 =?us-ascii?Q?8YKxcfylQg77eScympolC/0phu/YlicKITfUVlDW2HhreZTZN2sDk2l4AcYm?=
 =?us-ascii?Q?O6PEGknliHtNVNKCmC9BD+LYSzL2QaUkIvXQRxQXTqZ3eZL6aNso4WPZUYux?=
 =?us-ascii?Q?Ow9ws+7HeqNdnTpSEMhsNfbMmJoyEo+drv2xTtPZ34MX9+FlUw1dpG1gskb5?=
 =?us-ascii?Q?kbTbfMOx4MAtvn+YEktsbVLcOyAk5sO5mbOoew1HnhYEXPYDxsfF7tpolprS?=
 =?us-ascii?Q?YUW5ex4iGrK60vvZS33Uij2B9F+c4fwpal5ZPOnJ6qDqAFw856KoMOCz6jpy?=
 =?us-ascii?Q?jLo3rMPLMVhu06jPkaFFi9Zlclqro0dTiGa1q5aCciMj1m/M/W1DClmaCxoq?=
 =?us-ascii?Q?3Bgh8C7wnN/aexDuik143abmrLQFVuZATHW7xiDRx6nBQYMJ4rPQ7ZPq8X9A?=
 =?us-ascii?Q?k3tviFfJoyAhUcX6VM5XP9aPzJfVgwMRT3b2NhT2u7N8piGaAuvrPcG9ZBkD?=
 =?us-ascii?Q?l5pRDQrm3Ai5fFwd1bZSW5G1ZglkFHNfzmLOiffZDb2/fLZ5t7Z8Y35X6ODN?=
 =?us-ascii?Q?X4CUNm6hDuvY7ZHWBm09soaKts4EwrJ++bSZ6Qt0JJ9zFvRPp2nCYALTx8xA?=
 =?us-ascii?Q?H1Jl9KOg22ZzQvQH78UYLOY=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-ID: <75F11F4F79B6B343A4A3C73AB63AB9AB@namprd06.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: qualys.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR06MB6910.namprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 90006644-edbd-4c25-ebd9-08dd3ba8ddfc
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Jan 2025 12:24:22.1280
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 81a9ef9a-9a98-4b00-886a-895a603bc029
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 98dJHufdIbdQEHD0knMkv5RQC2aPrlCHAnkLkcdSUeNz076SnN85AWuhjqgElASB0AGls7Ryl4oepIesqJJ2SBB+H96wA4lIyus03i7wbf4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR06MB7311
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-01-23_05,2025-01-22_02,2024-11-22_01
Subject: [oss-security] Re: CVE-2025-0395: Buffer overflow in the GNU C Library's assert()

Hi all,

On Wed, Jan 22, 2025 at 01:41:36PM +0000, Qualys Security Advisory wrote:
> Today (January 22, 2025) a Bugzilla entry and a patch proposal for this
> vulnerability have been published:

The final patch has already been committed and backported, all the links
are available in Bugzilla:

  https://sourceware.org/bugzilla/show_bug.cgi?id=3D32582

Thank you very much to the GNU C Library's security team for the quick
fix and their work on this!

With best regards,

--=20
the Qualys Security Advisory team=
