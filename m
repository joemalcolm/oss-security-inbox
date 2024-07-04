Received: (qmail 30664 invoked by uid 550); 4 Jul 2024 01:32:54 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30637 invoked from network); 4 Jul 2024 01:32:54 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualys.com; h=cc
	:content-id:content-transfer-encoding:content-type:date:from
	:in-reply-to:message-id:mime-version:references:subject:to; s=
	qualyscom; bh=X9LQw4aJbUAcgXFZWYp8E3nDGpQ6WgxLkp4ejNJqe38=; b=Nc
	UPsGDjoqfh7ie7jYsE2+oJOE6b51j107XDGLQjZEdE/+oBLGC32j6ZnOF2z6SzO/
	9r8Qa6pPUAMNsgKdPZbqkTorZaeqZPYWV+ycfTFvhCmVIqCP6J/aYQeeS2LYeZio
	Oo/WwHZWOVfZ+xTZDWzGAc6HGAgWcj7235KoBfg+X1xer4ImnNUSPQOIY1V5Rnhn
	TmZu71ki9CIiuAQXlddKpbbPkazkXVZ0e3m5N5PynQB+q/Pbn0Rmc+Bwh87d6DIw
	pk33OGbucc2mIv6TGaHt6Ib67Cl1dIicsoafSPt13TYbBgKlOWgxjlRIeZXLXqQ2
	yy0RozOpf2ijAa2865Jw==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Vb1VEnvBRJvjbQlrUaMHsBRJmeI6Xiyao+uOPMlU5kcG9T5J9U40yIW8YbJfLVmA6WwKz02NBt6euQgx0ri+bMTGEKC31j35uPN+UOJN4ffjYmaz8l0G53TAoGLToTnJQqLP/u+7yNf1MO7/LudK77d7Unn7tSvmR6jO9dzfkSLRItAfwoda0OSq2slAx6X0ex6dl8j65yRzEzu+h6YxEnxrGYqwxjeoGEOFKdC23kfHNlgJPx0xX0c+DRXJZxaGj5GUprcpc5UcJEGJWZh9SZmut0tvZc2kVqIMXMbTeVymmmzBUkHF1TmUhVE3w7dWBlTlj3SZz8ZcDGyvCcD8lg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=X9LQw4aJbUAcgXFZWYp8E3nDGpQ6WgxLkp4ejNJqe38=;
 b=BEStzR4ZSfxeRD15gYFhIUo9Pu2whOGI8iwmpMrhyRQvRRR/FTDAIhLUqL7IJ+KpsQFM7XhbMRq9oUkOrhBQEU9mfGTYHLKIsemk7DzZ2wa4WmJWkbkCvsHPPZeFzOanj260OvjLxWa1iJwOmFkuo3JOoTEEcFMRX9MWxQGdHva/dRTArVv/RIt0IDmYj/1btyIS9o/P4vJPkkd2/8eK1QQH9UQTyVPXDI58vj1a7Wy22zUmIpaU+X9L3DV+IrQAY0IsjLRV/7eESXYZz5OfymaT1nAkq4Ng24eEL23rVR9dFzLOkYAzIsCrFmWNOi81Bg0GYeOateIUuuGsCMfyvw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=qualys.com; dmarc=pass action=none header.from=qualys.com;
 dkim=pass header.d=qualys.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=qualys.onmicrosoft.com; s=selector1-qualys-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=X9LQw4aJbUAcgXFZWYp8E3nDGpQ6WgxLkp4ejNJqe38=;
 b=jdqOdtD7y5TYeJ6Ron7N/Ezs+z7J7iKD+jXzCU+a8VPf7iAt9dib20rTuJkhuJBXtVQZp9CHGDR3aJFwaiIOPzzbXpBX/QCPrFkICAYjEMq+kPL4ydJBL7mDAlIGrimMov3scFMgyz/Ert7gxkNlZgUB4tK5H4TSLQJ8hp7YIxWKGExW2H+8U+6sdo6/BWHLxbC+H3qphIu4aFbnUpPUU3gdOo4ImVlNddesLSDbvRFkKrNzyCPGKVYyNczktg+QnOomSsV9hvoUJwwUZRBFEIJeHVpUSLu+dP1KbLmCylbaVzOVacDezBt8cnX1aINRQT406MhXIKpKDv+Te+150w==
From: Qualys Security Advisory <qsa@qualys.com>
To: Yves-Alexis Perez <corsac@debian.org>
CC: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Thread-Topic: [oss-security] CVE-2024-6387: RCE in OpenSSH's server, on
 glibc-based Linux systems
Thread-Index: AQHay5JGa9eb3rAM4U2ijmTpt4nx0LHlf0EAgABNRIA=
Date: Thu, 4 Jul 2024 01:32:32 +0000
Message-ID: <20240704013103.GA20170@localhost.localdomain>
References: <20240701083838.GA12787@localhost.localdomain>
 <4ba5ff088a2619fe98f73b0d853fe6b3c682479d.camel@debian.org>
In-Reply-To: <4ba5ff088a2619fe98f73b0d853fe6b3c682479d.camel@debian.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR06MB6910:EE_|CO6PR06MB7363:EE_
x-ms-office365-filtering-correlation-id: 26983fd7-687a-4658-b31b-08dc9bc92cee
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: 
 =?us-ascii?Q?PB/Ma5Oz8YQl6MVmRX7xsqTAdGE0TGA0e5638JFzbAQoXVcc/uA/p7m/j6a7?=
 =?us-ascii?Q?DXi5a5W+mpyXzq0TOOdwEj4VYWTPv4UWsc4XaPnvdG2vrDOmrt5HRkkiXHyW?=
 =?us-ascii?Q?BiGqdROI2+c7gXqtsFct0s8jJVWali2VMg5T02LBDsSvnB3uO32bpJHTpSE2?=
 =?us-ascii?Q?fQiMqveHsz/UVHb4ZNFryFBNS+SxP3/yrGF10wTFBEY1sGQbI+JLyU/1cqT/?=
 =?us-ascii?Q?YAUL2G/Wm2yeUO8gd/mxWGAwPZ2keqsXEjVqc7iM+1umUUJuwhYRpZQMj73F?=
 =?us-ascii?Q?Bf6xQfzbuLgd5vE2RL4TOeVYpRAlh37ZFvg1KpmdT9jwcLKLy0VFmwe27xMX?=
 =?us-ascii?Q?oVdt5mSD2RjpYGUOjgVvSBYZ8Cr4TK+WiVbcRWl1XcBcxRh35Ve+VSDrpWLB?=
 =?us-ascii?Q?mMdGqsC36LiexkTRNQRJ0mA/kCl3FQHfM5jaMW94GgHz6t15GNDkIIDAxNVP?=
 =?us-ascii?Q?NAR2mEKMCfYiftrE2of26n05XvYG0BPsRT8TPvPGfpjhUVlyl4OZ7wQjEAsg?=
 =?us-ascii?Q?lh5ZE4m9Lsiibpa9LK7P79UHPUMf+f4dEZ5ssFqUevSFfp8+FBORgzHYXjAN?=
 =?us-ascii?Q?XU2mffMgms/uW3+Zuo9Vx3OHogmIIeMbaEBW5DTzDQaHv2qaPVNcel/tz+BW?=
 =?us-ascii?Q?bhvZLNqKLq6r0MPEX/7kFbtPDb9PrPkmR9rfxPdX9BPbZCkX1dNTLP+vyfn7?=
 =?us-ascii?Q?NKytL0npydpJ8cB1WCyw2kyPQZZKkZO7qur+kb3cKyO3yO6glQdkAII3zwds?=
 =?us-ascii?Q?525Q79783dy3Xg7vq491PhiBP1+qvrp/qbk4Hz1wqvwsm9qqlogTjpItuxS2?=
 =?us-ascii?Q?D7PPnB61cdx+Sbm2FC4QzIinV8KFu6BfojmUajf8jaXHP2oU7joEvRI7Z+hV?=
 =?us-ascii?Q?zJF0eHKJtPbc7o1Aq+vF1kkMBfWVY7wjTSY7W8eeSxrMshLpaHIzvgnZuW9d?=
 =?us-ascii?Q?WDQjtKWGbEYb6qCTnT2Phfc1CWp1fKsyMczn8WvnOJgW6PRtWoePyl0M7I5M?=
 =?us-ascii?Q?9GmwBaeoHb7TseqzOFvDWhukwZvOAXThE5DlhMIoQwBTfJa4Ko4hYAhvCsFr?=
 =?us-ascii?Q?kNT3bngkTaObgIHJEXYyblp17ZlWbp/RPSzHvZVnHaUgRHyhWMRICLai65aC?=
 =?us-ascii?Q?82Owl2lbmBnJUNsqu+oTHOrgnhgD05OOL6Sc7haG/HWNYdvqTJSUKSCSQ3f/?=
 =?us-ascii?Q?T4tdXdEkBlLX6LQTBDwndCCXT9LkMmzEc/Jl4507YCpnpgF5mjKAEM0r3FY/?=
 =?us-ascii?Q?zPmKuLMLXaNnAUIyaNFB92/xC041lGIYc8Q20g5s03B12jtXsBM1ew2cv9qj?=
 =?us-ascii?Q?DPALwPlnL5WuxjbgCNL0hrs/nkQWAVUZo6Lqefs7zjPbsmP/8+6rWw/PtvUv?=
 =?us-ascii?Q?lVzhzqLIV3vgzzqFXf/8Uw83+R7/uTW/hpLGTHml4mnNCmTbvA=3D=3D?=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ0PR06MB6910.namprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(1800799024)(366016)(38070700018);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?AW4PVDut5+EMjlpEuSvpPnghBqkl+0pa7OQQrM/4VFsYkh5Vk5rp7wihAjqB?=
 =?us-ascii?Q?Dd40ER6t3u56cmcClGJ88CqtO/aoUxZtdvCZvkQcQtaK/M10NDhnxZHxrTQW?=
 =?us-ascii?Q?bAw+IBL/8r1Yb36DfO10rfGHPUdgIhQbwmvYf5pLwRyD7FyeEWxjexOljvO5?=
 =?us-ascii?Q?twb/k4Cy+4DowOQXJRZgzor0GDtFue9DZvN7pRR26hcth3MVrb00hiYCZaZc?=
 =?us-ascii?Q?cSm46LDqQ9x0Gh/LsP6odaFyYFeizabCZ/O4+oPrh20k7yF+HlQVjPPfWclJ?=
 =?us-ascii?Q?32e1GUR+zxR8YrHyDJhKJN/+4KIOwpUK1Xz4N/7xwQgCLqdffESB2HVi28HN?=
 =?us-ascii?Q?U5NtOZOHDk52m05x7ccok6Dk/p53Ctgo2qt5F3ZB3y9qhWTsg8WHMrBmtRVu?=
 =?us-ascii?Q?vsALCP/K2ULYDkpV5rSvdPKtIQJj302oEobeVFciulxrmoPk+Urj88V6a28J?=
 =?us-ascii?Q?hupbs+71JWsnZzfL0sLxAFgTFv4Mi4qdxRaY7EQ3pQfq6uT9gbglaLnBPvwK?=
 =?us-ascii?Q?scLymo7VaayYNry7JuX0hLFl68K3iMTHPsIUJfw2snVqJBSmwR2YsYeZZhDY?=
 =?us-ascii?Q?h+COjsSHI8DZL7ML5g1gWNdqDu/T/mLrtCXCmc6NKuSOUWQ7siAp1KPfEvay?=
 =?us-ascii?Q?EEA/bkhGX8nguNOnRR6y8RmKD/43dvoAQTolhu6741ykkFkfmcbgO0CBmNmk?=
 =?us-ascii?Q?EvybDhJ7wET+C+vHyWzKYYcuptdQWbiRi1LGgaYyvQCLYiiQ3UX/T0M7bKJn?=
 =?us-ascii?Q?nq4hp0Qh6fgObuAdcGuipITg69XfoHwXklI8a9FLZiaJAkJ2bbl7OC81NyDQ?=
 =?us-ascii?Q?RSAUeROId8AzM+ZF0ssfoAOgIZ5MzTTgHa5xTDrpfxvlYxDi5knOuBkhEe//?=
 =?us-ascii?Q?O1pxmES+OxT8znGYBYjUfyr7qHTTKJ+nq+aEI2hrxsgz2T/++biYx7eHIOFn?=
 =?us-ascii?Q?wGZKM9qonB3DwUmQNc5KAgq02tEyfKHTRstakBoq6eYBYSk6/9cVjmJxCLBm?=
 =?us-ascii?Q?fh7yh4+9EHUZihTGdrx+aD3uK9n3MPA+6UX5wSaJ864AzD/tC0ApsnshtdSV?=
 =?us-ascii?Q?gAZ2XTJJqxoVKmFzCCBsNB9nHhiM8eVLKvwi1Q2rsyQuQOPS1Arhfjj6QIlz?=
 =?us-ascii?Q?+DVTLJ0dtxPh8R7Pd+Ri6Hiw7qtCw0ridXGpE0oD5HaiDJvCclCM4zeVUhAB?=
 =?us-ascii?Q?Ne1EhmlBMJEKz9Pk/kw60ZpleSGwRykqwN+atqAWfHKqymXyCFh+zBvB/E3d?=
 =?us-ascii?Q?arJoPq7HfY0j2Ws5OmImfE9/JP99A3Ut91m45YzuIkvl/QMBY9BLPHXQZw6N?=
 =?us-ascii?Q?3Oqzu57Wk/s/hlNrdwt8peONiIw9cIwL3dpKxGXWqKCD114Qq4XvS8Jf27Pu?=
 =?us-ascii?Q?Elds/dhI2/VeDvj3OtziFA+ChcJTkeVCp2gNwbPeLjtxXqG43ZPpDwMCqjuf?=
 =?us-ascii?Q?gJNUo+2ebueAUqgUATDb6PX9wAIUZCO+ok9pqvJrQYt/pD9idb4FGQr3prwU?=
 =?us-ascii?Q?bECD+BRuzKm3aJlFvUl6dP3LJG+3wMaXikaAInwnKfSV5YeI12Cmn0jOeVJ2?=
 =?us-ascii?Q?3l9kgLV8nPjjGevkqa/yg5hqARlDv72UJcONftz0JOuBeOJI7XQyscP0Y39c?=
 =?us-ascii?Q?GA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-ID: <89ED426323E2F4419236DE1A7B20CDA1@namprd06.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: qualys.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR06MB6910.namprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 26983fd7-687a-4658-b31b-08dc9bc92cee
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Jul 2024 01:32:32.4128
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 81a9ef9a-9a98-4b00-886a-895a603bc029
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: O0Q7wgDNTFIgC/vF2Dd7dh5YXDw3YqotYj/YHZnEACfOUSjRW6yiiEsvteTgnLcoWtlIvPOcRJepi8YswufYQZOPKvC867ktZwb0BOpMdJs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO6PR06MB7363
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.28.16
 definitions=2024-07-03_18,2024-07-03_01,2024-05-17_01
Subject: Re: [oss-security] CVE-2024-6387: RCE in OpenSSH's server, on
 glibc-based Linux systems

Hi Yves-Alexis, all,

On Wed, Jul 03, 2024 at 10:54:30PM +0200, Yves-Alexis Perez wrote:
> use `-e` on sshd command-line as a mitigation measure.

An interesting idea!

> I agree with Hector that at first sight the `snprintf()` call look OK on =
glibc
> (no dynamic memory allocation or complicated handling that I could spot
> either), and the write to stderr is done using write(2) (which is async-
> signal-safe).

We also agree: the glibc's snprintf() only calls malloc functions if the
format string specifies positional parameters or floating points, which
is not the case in sshd's SIGALRM handler.

We double-checked this on Debian 12.5.0 and confirmed that the SIGALRM
handler does not call any malloc function anymore if "-e" is used.

> What are you thoughts on this mitigation?

Perhaps surprisingly (given the above) we advise against this mitigation
in the general case: unlike the "LoginGraceTime 0" mitigation, this "-e"
mitigation still calls the SIGALRM handler, which has a long and complex
history in sshd, so there is no guarantee that this mitigation is also
safe for other distributions or versions of sshd.

> thanks Qualys for the outstanding research and detailed report (as always=
).

Thank you very much for your kind words! With best regards,

--=20
the Qualys Security Advisory team=
