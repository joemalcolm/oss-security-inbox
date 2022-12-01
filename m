Received: (qmail 1762 invoked by uid 550); 1 Dec 2022 00:01:33 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1723 invoked from network); 1 Dec 2022 00:01:32 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualys.com; h=from : to : subject :
 date : message-id : references : in-reply-to : content-type : content-id :
 content-transfer-encoding : mime-version; s=qualyscom;
 bh=xUxvQPGWHVrvH8sMr5ZFoxXHNbIHD+qk+gL06zqvmRo=;
 b=fTyS9mkkmMX96cSUXEM8SxoStnfeF1G4HeQcF6p3hygh+L8kGCsB8ubpDfZLaKwDeKwY
 Ro20ZMk7Pv07TquCg/y8FrArE3V8fVUnA4qnZZnElslgy3fd7N8VhDEa6CKHSRDE/FLz
 UWmBGFdiP0IBcQK9aCF6ChjmYDCwL78Oi3NyZmkLAuLo/lnbxbP/Yg3O0ii7ZvdFvkPM
 AoYmbjaRLqBl6r5yeGeYbwjcV2iq7xqYo/0/jiT5w363eGEmk5MnvRmdJdRSdjgZrUH3
 osOxlAHa6YSfKMtSbVWN1ZfemfUuzdqrMaA3L2e88d5cRSp/0k3gZkjq/NtoPMK216Uy sA== 
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Mnx42kqG18Q6Gg0EhCbGJOLiad9/chnKr3ofb7OEWVPeZlEhxj3r+nBqeLx4ZaJB3FX6WxWN10a6/rjj/2iJpPhzDYyq1E0HC/kGgA3wT6N2uKb4qLDtzYgcTwlBlf3922mej0TpZf/3wTFDxNH4eVugpVFuI7h3wHuRfCAybaWHf9HeMUR0j0000U+pRo1BjKeC7MnA4vwR6THP4ZqkcgLn71NT64eZtTIizONLfzvYXu6Sv/i/nhFy5J06sdo8uNTceK+PTqJntmL++zMIrTZ4tXYdp47PRKVWl1TXE12/i610Mlpl/Yh+HrEJJz4D2+R1OUFV3JRZHxHysAz5rA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xUxvQPGWHVrvH8sMr5ZFoxXHNbIHD+qk+gL06zqvmRo=;
 b=grz1/3cM3ZgnFXEZVCJpDiOZhfHXyT1WPRgYZRWZ8R86W2LPwN48WW2LYUOhM5rc0NxuC8RXUn+G3iuluxlOrYZm9Ao+XkN3mKNF8Fs+hotkvpNfOqN+MxmclY7K47FZtM+IKkHGpxS1kw1k/XezAx7eWZmPK/rQPmpckmgCBY+qUinIo/A9A0CO/zpMNVAhwVqBM10hLyIHePU0hICb1Dou3udYzRt4uTDfFXVqrIC6ZNGxuUPqb60cpRt7lWvzojXz9vM3vOA9LuKtz+Pp3AJS7WgIguXkmG1ieJuw1EPIcTuheZDAZec5Zi9HFDrvbZHpqbnujFbtyel7OGkIEg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=qualys.com; dmarc=pass action=none header.from=qualys.com;
 dkim=pass header.d=qualys.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=qualys.onmicrosoft.com; s=selector1-qualys-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xUxvQPGWHVrvH8sMr5ZFoxXHNbIHD+qk+gL06zqvmRo=;
 b=Z3U2FfxSme6d+2pU+BF1gu54cbmUdi9GMKrwB1kzPhUqQozg/u9rm6aBNgHEGBjpPm7BG6QMiwFn457FjfDgGGbeLUpyb94v25Z6moTXcV6UvOxQWV74gLDlmAnFX33ckHDGNPXWyPrpxuDnmxN4nS3r2tulwlZC+P7AAqz7R9xMtlRSStkZk1D3d1XQiUvw1S3i4DmNCfub+vOHkjr0DgaTHiLdU6NKZbgn4ltToTuAIBJlcXTnxdmofTD4HL5dD14uIUXG+m3S5EHfm9TSmu1ibd57v/O4l/44iiseac3BjaBGg1SWpYHD5u0PkUWWINoHm0oT5fWKBcb9G744FQ==
From: Qualys Security Advisory <qsa@qualys.com>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Thread-Topic: Race condition in snap-confine's
 must_mkdir_and_open_with_perms() (CVE-2022-3328)
Thread-Index: AQHZBRNykEN43eVBck+2ajiDoj/Wt65YJZYA
Date: Thu, 1 Dec 2022 00:01:18 +0000
Message-ID: <20221201000006.GA20004@localhost.localdomain>
References: <20221130232713.GA19464@localhost.localdomain>
In-Reply-To: <20221130232713.GA19464@localhost.localdomain>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR06MB6910:EE_|SA1PR06MB8005:EE_
x-ms-office365-filtering-correlation-id: 79dbe468-5a2c-40ee-71b6-08dad32f2c04
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 79ZzWRNPSnTJEvKs32sVNaQUTIon1luCjUv7hSV0XYTQzpcc8OgglauSHVqiFkYX3VVIRCxLMyCHe+dzEzOd7awwZxermXdFYIvOGE4mQUo2iV6Xy6ApfE5Nb59ANxU4ay8jEaOrZNnpDsb+1ofa0zRmkfa6XvlFLwbk38dD2z6XP3LSymrtUZrIR1KzS/P9L9XTCsX1ErjdtTKgPYfhorynoOWXjSJXSpB1lv/OQNN7eMXqjSC9tGzOvsuAnvdbTlgY3u0/pAYC37HYU6ApcU5/oP+R43Qsaha0+2qtgDsowsYMi5Hefv6wFc63nSPssO1/EHBN8/SzOHf++ZWKt+S0dKhV/D44SUOND1vsMbX2baRVKVKCkTEpHHVQ9ypZH7uu7Sh9fSIsqMLFmzlJ2e7A2sKKxVnkHTn6dH/ZotZKs8zxDL2Bo65obzdg5AtLG72BJJJfUtftVjK1wAWNKn7A5SmKmdNB75Ti1rh3tT64W7nX9XBZqED66gTHv/xKAt7IIlgUEkISpSUpwft78dhoCovk6Ih/4SxzyqrRWS8jbLreUswdP2R3vSxBUYrs9LMBDvkdahPh/cd3IAUbhmNGkZ2QDywKsi+eRSR51I/3PUgCmmF0qW5Ly/Pp8cUHwn8VM7QMclD1C6dwPhaIe2ZIzkixyvpHI9Kq9o/MS/Aije3MITzVDdHx/ff+Ures5+jBYl0JdashxUOZGQMGRzTV941MoqDh81lxhv6XYFf/3cp0CKWJRyUUIiZAjw2Hz8mpqTB9dhBh8yTrB9/Img==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ0PR06MB6910.namprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(396003)(376002)(39860400002)(366004)(346002)(136003)(451199015)(38070700005)(2906002)(26005)(71200400001)(122000001)(86362001)(6486002)(478600001)(316002)(66946007)(6916009)(83380400001)(76116006)(4744005)(8936002)(966005)(38100700002)(91956017)(1076003)(64756008)(186003)(9686003)(33656002)(6512007)(66476007)(55236004)(6506007)(41300700001)(8676002)(66556008)(5660300002)(66446008);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?U14Ag6o3WBdrG6Tqc2Ht07tYgCbsEyqPqFRFKahvcrNKTKSn4QOV8U2VPKxA?=
 =?us-ascii?Q?m33ZarL97TQTweERrd4BkIIx6QUxVHux1ViVqqmID7I3ewoAJSFA0Ed8a1Ik?=
 =?us-ascii?Q?IXAuxs3r6N1cIlKmwbz31Ftvhmb2wy2IVxDQA9HoOru6pdeeU994DorccV95?=
 =?us-ascii?Q?gJMR65/xQNJpTqxWwAwjE8jzyu/WKxAKblbxu62rREmKjSS+zNJ2UpWLSVQ5?=
 =?us-ascii?Q?ANNoHBIqZCx1h74CeOn6PHceQHiw4MQ23zy4ddUUcGtWJNCo/+wSSLerP3Ar?=
 =?us-ascii?Q?rIVoNcaSlgBT+T795yWdmhGBWnBFeqncLiw9J2+K5iNLNihzDPI5MEf/qLei?=
 =?us-ascii?Q?lYgWok25Z/B4wLNBhz6hqBy3G2OQTMA8A315z8rJLfzzccCtibcbGxoI2h3H?=
 =?us-ascii?Q?xnrM3oUuBaBtAnFJ+rIc5wUlm6U9YEFCReSx8Iwjv8VxNqBi7OPZ1elmphV9?=
 =?us-ascii?Q?N5DsKx1bJ6qO07X3Tk91UWIkf6Jv5xO+33YrqV3BlqlbBmXRrEJhyXk/wqgy?=
 =?us-ascii?Q?lJOjI7GyiQGhpJA1S4f4PWwT1y4K9o7tcH/dYLkvTzgma96NmCDr86PL5Wvm?=
 =?us-ascii?Q?JBP5UJ0bv9J3YHODW4Z9K+Osqppbc77cJ5Lxbuh7XHVncm+LfuNo4uhtqro6?=
 =?us-ascii?Q?E7LEztqSsxWkhSS0yLL5X5bY+EqWoUl/2ZOYa6lWrVxCrDN5YzzmoAwfNiXs?=
 =?us-ascii?Q?wGejSRuvcTOcMXTjin+uRlIUIBwZz41QeMRoMDKx8uWDZG+NVzv0DV2Fy3nP?=
 =?us-ascii?Q?VI0dkOFt5GHb6JcCDQ1+xlI1OFNDqfbu3ub4kQEJSt72RRI9ZpBbok04gYuo?=
 =?us-ascii?Q?QBAD4YutQExEQaXHZDtbgm1Xa7bwv+IK2BNKc5YRe7gK0VTfQ94Tx6mp1QSA?=
 =?us-ascii?Q?HvVZDlrFpWoYH+V1LRHM2U9g4bWr1XGwSHzjYxwy3BM2kdUeZ3iah/QkyA6s?=
 =?us-ascii?Q?1RQsGbqBEzW5I0eWb3g8Jt7q3nblezjnbhCr6BLGkVhhV5Atj2lsWqj4AL15?=
 =?us-ascii?Q?Z18XfQoL3zTFmMlG90cL5W0swnTyNPYDCaDta5gWC/6JDBHoRiT9EA5wztL9?=
 =?us-ascii?Q?4Ng19xk3QU+aCinq7PZk2+0W9aSqAhyu2FCDDmSzQdaMMlD0G1GSt+V+xebl?=
 =?us-ascii?Q?nOVwQ4WrcE+bsDPhNzhZN0r1r+1rFxA3Vr6Tr/+W0CbrG17lDzANQMswBjvh?=
 =?us-ascii?Q?h78T/QH7RcCXT9+dhnMCRvlMmTuIdcxubWawiAsMQa8YWsxg1VV5EA+UC0Nm?=
 =?us-ascii?Q?uwh5Ch9TDfvJNkvNs/sVaAhcoBOpO0d+G3wiJlbjrm9kjHRROauVp0lWxUXD?=
 =?us-ascii?Q?KkwmXNrxQhksgnRjYl4Y6sCzUVEACUh20iaiGP+wN749kr8ES/olB4XVlo1F?=
 =?us-ascii?Q?yElmyoMiSrS7HXuJw5fnXRTaZ462Rtn7XcLDP/zXtaYBLEkJGjcSN0x0QKn3?=
 =?us-ascii?Q?CDQTETVB+A6DFjACyKjBe5iB1oIidG64t5waSMUbXs+elyGoo1Xd4BMlIiwx?=
 =?us-ascii?Q?6TG0L6lEDqLVIN7auow2mIEwaQOuMhRkx19erwym1KJx/EFsXlhaKvedC/Ug?=
 =?us-ascii?Q?3vI38E66KiBt9yfeKjPbnoiurexS8s4uiVX9GaN8Mb2/BA0Y9nZYJ/81LCYs?=
 =?us-ascii?Q?vy0z4P1oydv9kwsLuplg8ls=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-ID: <A5A0AC4ABFA93146BB66A239272E53B5@namprd06.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: qualys.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR06MB6910.namprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 79dbe468-5a2c-40ee-71b6-08dad32f2c04
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Dec 2022 00:01:18.1447
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 81a9ef9a-9a98-4b00-886a-895a603bc029
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: OCZWam6QDzIJ+TPGQISY0BTYGG6j+OcGS/yjsm+yrlUy85jXrdJck5+V3lplS4hmInUCJcFZgHPjPwI2U2iuEpwdGhfmU58FwG8DDkD9VlA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR06MB8005
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.219,Aquarius:18.0.895,Hydra:6.0.545,FMLib:17.11.122.1
 definitions=2022-11-30_04,2022-11-30_02,2022-06-22_01
Subject: [oss-security] Re: Race condition in snap-confine's must_mkdir_and_open_with_perms()
 (CVE-2022-3328)

Hi all,

On Wed, Nov 30, 2022 at 11:28:27PM +0000, Qualys Security Advisory wrote:
> We discovered a race condition (CVE-2022-3328) in snap-confine

Patches are available at:

https://github.com/snapcore/snapd/releases/tag/2.57.6
https://github.com/snapcore/snapd/commits/release/2.57

Thank you very much! With best regards,

--=20
the Qualys Security Advisory team=
