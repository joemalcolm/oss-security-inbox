Received: (qmail 1063 invoked by uid 550); 12 Nov 2024 17:04:12 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 1542 invoked from network); 12 Nov 2024 16:45:45 -0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=uNmGOJ+HYeZIqeqoG9LJ9lFvgSX2mbFLNMIo/VoHQMeXrBah+SJsTZNIQY5cOf/5mU4X2wWhSd19vgXrK1OdAjKop7hSHipeNzXqLn09A2OoE5H/YgSc7+NdzdFViA5/parPr5Q1uJxdQgrCVu1Yn215hTr7IvTbU2KaknZaCeNl6gA3WqNdbdz0DyTY0NFEuxPKBVBOU+C7CIun24I8LEScm2la+o6JvBF3JngQCZTn+fOz0QZwlfKIAta1+K8o2Z9IReodvDx+BcbMtrKIU1WMxXuTomW6/dvvLVD/RgM9FtBtC9Qw/DB2DdWX7oxcDHfuL9BCxc+/3gynms++wg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Tn/HVbK1P90scYwSEFHL9IZOOOzKKbNJqlZpwbKSw1Y=;
 b=SCWVa9ymMFoO7R7fFJNuB0Sq8rKJjbJ2N4avmtqHWY0tBUIkXlQXBiLinul4a0EkLEDd3TJ3irKrqt8iB3275dPu234WE1ZSN0VpzHejmjccAIF34EZjGRDAjwgTzVJGYcHzhqeZauQRN/krdfCkmjCaN8FNvpfEOrOfoOUWGgZyyGgjEiazM3n19LQJylRFEAdl2MQrtsucS+gQVbfBfN1uwUz+AcsiNFlBqjNLst4HfsuME6JcqP4P5HpSeeGQeTIIy2OLxRDOEJVlL6GvDmFy6ceJrvpKV7EttUf1+dXc6+YUMUVwfFrGGu9mc6GyDJL96IMyxQSSwjFT49i4uQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=witekio.com; dmarc=pass action=none header.from=witekio.com;
 dkim=pass header.d=witekio.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=witekio.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Tn/HVbK1P90scYwSEFHL9IZOOOzKKbNJqlZpwbKSw1Y=;
 b=DH/fGZNMEQNQbb+hwnmAVcSeaTy+SMEqhH6Lf6VZ6wYjeyXtiHRFRSIOmRRKbdf0O2LCOo8MiGOADWyNSkURKixUhZxTpXeDtmofAKmutGsGP/LUHMgWJeJ1fBj89b4wMWEN4+14tesj1XyzNoc5Hwb/APY2PKZDYPQw2qt1Z8+ajSVz8n7D6z04zndfeYkmBAsT2YawEwrSE0GuNHM8vtTpDKhiLSjeUcifri9+SVLQrlgttKtHkj29jw+lnXfHEWwymKGPSzNa9YY5ixZ4gydWonhoNirdNGfFrkB/XlqlrmaEt4sdI6G5WjvttWM0dL7f+KqVGog2vgm1zefS1w==
From: Joel GUITTET <jguittet.opensource@witekio.com>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Thread-Topic: [oss-security] CVE-2024-36905: Linux kernel: Divide-by-zero on
 shutdown of TCP_SYN_RECV sockets
Thread-Index: AQHbNRQC7IrNm5zxJEafMLw5n0kYMbKzwF4AgAAZcGE=
Date: Tue, 12 Nov 2024 16:45:35 +0000
Message-ID:
 <AM9P192MB1316E83ABA6427EAD52E3B91D7592@AM9P192MB1316.EURP192.PROD.OUTLOOK.COM>
References:
 <AM9P192MB13169D3C23104FC22ECCFD3AD74B2@AM9P192MB1316.EURP192.PROD.OUTLOOK.COM>
 <95ddd38e-2e23-4dee-b03c-a376d8cb9814@gmail.com>
 <20241112145853.GA6243@openwall.com>
 <D8A3DC3C-8463-4A6A-A3E6-CE3CD7D1BD4D@redhat.com>
In-Reply-To: <D8A3DC3C-8463-4A6A-A3E6-CE3CD7D1BD4D@redhat.com>
Accept-Language: fr-FR, en-US
Content-Language: fr-FR
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
msip_labels:
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=witekio.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: AM9P192MB1316:EE_|AS2P192MB2167:EE_
x-ms-office365-filtering-correlation-id: 71df3bde-1a11-442e-5539-08dd03396e93
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam:
 BCL:0;ARA:13230040|366016|376014|10070799003|1800799024|38070700018;
x-microsoft-antispam-message-info:
 =?Windows-1252?Q?FJv28fKP2Y0i9idNzSHUTZ7CgwLYRcXQ0WPs82FFmpT5D7AfQoTWGskq?=
 =?Windows-1252?Q?+wYn8DTrGLVY0klwOMAX2dSgIj/oA+saeh6mJVksE6DaeIuOVllgOJ2/?=
 =?Windows-1252?Q?heDRDisdmpfJNZPWUdTcyWkX/UKaf6lrDdLKncnYWa64CRjivUQilbcx?=
 =?Windows-1252?Q?2T58JKOlig40Y8XBgl0c1JfT7sH++dc1Wq06CVUL69cV1oj/iIxSVwX/?=
 =?Windows-1252?Q?5G2gEVw6vK/AQT0ezWxHC5x5MOcPduXZdQtie2op4OiMwV9QMs81Tonk?=
 =?Windows-1252?Q?gcliC3qg6XXNLGxg50GeoXJblLrWO8uulWLKzK7pG1Sd/MKlBvbKZzSz?=
 =?Windows-1252?Q?Mjdw3t+Tq/eV9bsbhGHg920n3LmUplu8K3AEoGTLgrNYUPGva2BeXn/D?=
 =?Windows-1252?Q?0MjePbcf7vFrXuuFrYwk2exdyBbsbhTWMA024MWPFh7xNH0N9J5gBa2a?=
 =?Windows-1252?Q?zTuOtZh8RoHbcwNAIQOrXXgY0jN5A0EY2DCsHXqm9gEnGNAwniPCOXlH?=
 =?Windows-1252?Q?9xILDMcRoVVee0OqeP1dT0P1sRQTeIaPRgUBX8UhQqy5tRrw32FUhLDE?=
 =?Windows-1252?Q?SERo63Dpq2zb/Kz6Yxm3NmF9eIGcWytMcahGHQJ3yopEdtTAbwiu375D?=
 =?Windows-1252?Q?aVRRpfAr53rB+w9GdzjLHpSX/Q4g3vQhKUHg03vJZTfDfL90WZlg7oOG?=
 =?Windows-1252?Q?uAUQuHjgX/Z3iyQ37WACS8gbwv0kogRVzPJQrF2rE2ckESo6EVf6OPIj?=
 =?Windows-1252?Q?xrSCphvTQ6Q+Yy9X9fAKTIznDAWTvR4JYNjSwky5NiM47X3MCBDFD6fv?=
 =?Windows-1252?Q?KRtfjWaFOQzftBAuTIPj2ENckLozeNoL+VeBc0A8y+R8uubjmGAAJafy?=
 =?Windows-1252?Q?i34hFhBVT2exDSaga1MInEk58CZsFwMYsAnceaJCym4TDgdUsFIamxAW?=
 =?Windows-1252?Q?A2mi2ebjqaQW7eUHsy2fzRn7zzV9akZnJ5kZ5kTVn+9KCXNsADuPZDRs?=
 =?Windows-1252?Q?Qi9S2qXlYpmpuKGx7KeWRGXeQNdDd/E4JhXOzKJGXY0mQqyjCZOGkyzm?=
 =?Windows-1252?Q?PYcse49rJ7MeuNLlisAU8aB3bkaVOX2qynFqKyAhdhMUtf/kJmrjaRo/?=
 =?Windows-1252?Q?7Mc4dyETqdAbebIOkYAmjP+U1nsVFaZBZzCPgmWRW/iLWekPlRl+nnDa?=
 =?Windows-1252?Q?pKZBxoHqh2vZpB5qINzN10jJ342clcclD0VUxPRIF0AywUMiahdlvxlR?=
 =?Windows-1252?Q?mS0H32OKHP6ccvffYOgZmuYB2hJCllS3na/wodNkM7K8pPu+JO2uani6?=
 =?Windows-1252?Q?Ld3s7V2t/CWZ70O4yLT1r6Pknrn+Tgr1c9nojftFNtQhXQ9IQe1v+ovJ?=
 =?Windows-1252?Q?2tOtsi/atyhy/iHYxf68iKhOlafJUrei3NOrCDIFww1HftvhYTZV6ULb?=
 =?Windows-1252?Q?4IonbGitg3IWx9OpV9akk55ysI+VKn8YiVudkzSYw4POsrm8Mu4YZeEp?=
 =?Windows-1252?Q?QcUhk7za?=
x-forefront-antispam-report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM9P192MB1316.EURP192.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(10070799003)(1800799024)(38070700018);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:
 =?Windows-1252?Q?u0hg02QZGi9gLtf1iZjutHvZmdMcvSAjTCBINI3IzwG4J981KdV/uz+N?=
 =?Windows-1252?Q?7gxOJb/Ywpa5TucOhhHsa7DYccTdAgHtQHFyYSVb1Zt8jK6xvHVLQo6I?=
 =?Windows-1252?Q?ZlnErpxzjDUNF/KXkNPBoihFC2cqsfqjYU42wsjVizOCJRdU17whzxZI?=
 =?Windows-1252?Q?HNypnolhsuxhb+Ja5Hne91fEYa5UKZmOGDvd/ghQKggBcGnwZqajkb2w?=
 =?Windows-1252?Q?smhnHiGGzPrPIno2Tg282dhs9c7KIs8n8jkG+QnrYBWYtgNWZoNk2ZzB?=
 =?Windows-1252?Q?/RoHNUjoQ6VPnWMS1lPzA7uf9RhsE78cqvLOMu0kC0M9ziFx9G1DqOPB?=
 =?Windows-1252?Q?30wNNXG7yz1OyX1yzADP8Dji8CD7W2gBcF5qs0IKKr6FIcr6AfR4kFjG?=
 =?Windows-1252?Q?3XEveJ2Yl0z4C5uoPBHr28zHl3V9FM1Vf9F58P0f0z2Q8Q1KxfJJgui3?=
 =?Windows-1252?Q?pBTOlB0gBCA4AlucE8euSwg+QB83N8xioI3N66jIZ0WjcItL5G/ENyA2?=
 =?Windows-1252?Q?FSR9ezQ8fxnllFO0pXenQvmB17SgQEZuecZfJSKQLbu7avxgpIN/VxyU?=
 =?Windows-1252?Q?BDTkbt+5Tdk6YXXVFdg+LeybK/WhPNZ6KBdFu5E2/4Jsxo1xGJbnnkmK?=
 =?Windows-1252?Q?ltAFYmCbxVDQ3SwYvb4epQICE7nGnP4PyohjUT2J6lLGZZVlzlo4hjZ8?=
 =?Windows-1252?Q?1XhsJpVAVrk1XOmvFIMeVq5FHYIwg9aBue7cwd4ILFpZG9WVBLg5l8OY?=
 =?Windows-1252?Q?B59XcrQum7VrfXlHHK+z5EZ0pudYOMegtucCZsCKzF1SyoYRETOJE5WP?=
 =?Windows-1252?Q?3WaVjsXGoy1rPNUzztfOvT14CcXWqywHmb4yP07+vLGM7Wqeb9GXf76G?=
 =?Windows-1252?Q?rtK4TQrVhrU8AZ+EzFv9b5E1kiYyIkovEjyqUcfpmZhsWM+LRxYul6Oq?=
 =?Windows-1252?Q?Juqwlrwm0srBvCIhqz+6i+ibxQ6A5dWy+VyN2nZ85jrlGboMBoWJx7bh?=
 =?Windows-1252?Q?Puy3YaEnGzwXIhb7cV/6qEYjpL/eT3/ZxVICUlky52VRWztQJvSZKFfK?=
 =?Windows-1252?Q?QPYWM6sQtqQRf0a8aETF/wGkWOGrU0oWoN5nLgsJPZjhvRgOBKoaD8L9?=
 =?Windows-1252?Q?+ZChR89J2mUmhwJoXIUMboKrDKbnU9AjVyGcalrq3bYIcixH9W5B5rt0?=
 =?Windows-1252?Q?SydPd9f1VkWnHr7DVk5dvGko2bru+0yFYw5BlT1YLAFdBJH9HrnLtAgA?=
 =?Windows-1252?Q?R9Neg5e0oH9Wp+eShFexw501If4rj5fMtVjzZfWhqHPy5dWUHPvVGVMA?=
 =?Windows-1252?Q?sEvBc4OV9YOyhBHOUWhhbVx3A6x7fv+ZD/slkCYTpASR+xwxeqEBZN1D?=
 =?Windows-1252?Q?Ih9vynvFRWa0x6z2PWyLdPGN/WWfe0fe4TKvKYQP8NEncIY7ay4tIglq?=
 =?Windows-1252?Q?PLFrD0rUQ/jXeD1ej2p/ipN0kmdmRncjt6ba0bmu1zFmoBj3YiKgZg0v?=
 =?Windows-1252?Q?swHYLSLjw1/+L5FdQqsi9SaTEHv3kzcXrT9O4ByXHKQJCQFsfWOPcvT2?=
 =?Windows-1252?Q?w5nZHcKW/G6fH6bo30Q/QHvaUu+LgxDg0paBqH6JJjeaTxay1j6bQYYg?=
 =?Windows-1252?Q?BKfanLYBXERZNrYvMteLUT1enf09dgMPFm1Y29AQuPa14/qPEZDUaEGi?=
 =?Windows-1252?Q?zuXL5V3t8kayq4Hk3v0qUp+NzaQD3Q0S5sk6WEf89b/j6/fv6wzjgbKE?=
 =?Windows-1252?Q?rxN4lOdOx/3IAeJfW8FXaF+nHG2Rd7drTe/yKDIJ?=
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: witekio.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AM9P192MB1316.EURP192.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 71df3bde-1a11-442e-5539-08dd03396e93
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Nov 2024 16:45:35.9298
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 317e086a-301a-49af-9ea4-48a1c458b903
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Gd3hwhiPhZ2TGOVL3z/QfyejIPtLyglabRGBNzb1E1b7sZBVHeycE9YUUmegDaODXGx86F7zUNdDaAG7fQffoQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS2P192MB2167
Subject: RE: [oss-security] CVE-2024-36905: Linux kernel: Divide-by-zero on
 shutdown of TCP_SYN_RECV sockets


Hello
First thanks to Alexander for reposting because I was not able to do so!
You're right Clemens, I have myself ask the question on this github (https:=
//github.com/cisagov/vulnrichment/issues/130), but still no information for=
 the moment.
Joel


________________________________________
De :=A0Clemens Lang <cllang@redhat.com>
Envoy=E9 :=A0mardi 12 novembre 2024 16h12
=C0 :=A0oss-security@lists.openwall.com <oss-security@lists.openwall.com>
Objet :=A0Re: [oss-security] CVE-2024-36905: Linux kernel: Divide-by-zero o=
n shutdown of TCP_SYN_RECV sockets
=A0
[Vous ne recevez pas souvent de courriers de cllang@redhat.com. D=E9couvrez=
 pourquoi ceci est important =E0 https://aka.ms/LearnAboutSenderIdentificat=
ion=A0]

Hi,

> On 12. Nov 2024, at 15:58, Solar Designer <solar@openwall.com> wrote:
>
> So a question for this list/thread may be - where/how may we dispute
> CISA-ADP analysis?=A0 Maybe someone would reply with specific contact info
> for them, and Joel would proceed with that.

I think the source for the CISA-ADP data is at [1]. For this specific CVE, =
the relevant file would be [2]. Their readme has a section at the bottom, w=
here they encourage feedback:

> We want to hear from you, the IT cybersecurity professional community, ab=
out Vulnrichment and ADP! If you see something, please feel free to say som=
ething in the Issues, or even better, open a Pull Request with your suggest=
ed fix.

I=92m aware of at last one prior case where a similar case of (IMHO) overbl=
own CVSS scores was discussed in an issue on this particular GitHub project=
 [3].

Somebody seems to already have opened a ticket for this CVE, too: [4]


[1]: https://github.com/cisagov/vulnrichment
[2]: https://github.com/cisagov/vulnrichment/blob/develop/2024/36xxx/CVE-20=
24-36905.json
[3]: https://github.com/cisagov/vulnrichment/issues/93
[4]: https://github.com/cisagov/vulnrichment/issues/130


HTH,
Clemens
--
Clemens Lang
RHEL Crypto Team
Red Hat
