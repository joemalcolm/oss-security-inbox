Received: (qmail 3737 invoked by uid 550); 15 May 2026 10:23:33 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 3701 invoked from network); 15 May 2026 10:23:33 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualys.com; h=
	content-id:content-transfer-encoding:content-type:date:from
	:in-reply-to:message-id:mime-version:references:subject:to; s=
	qualyscom; bh=SjQMbesgSJ1AGn0OmOaBxRdj8j40VVsiaOHDkEX72oQ=; b=19
	PBpk92cUk/QLLEeoVc8c582XWChxDCM1ncwR9eOksIs9g8uhBwgztaAbfvQQGZNv
	s6R8zEn06bklAe1Z8iHYnxwE0so3i5HGhRHRMxezJ4GWmkMKdO1Ukd3TlPfrz+Pm
	4XMYztpfT6ILgv1sW8LJbMxcQpTp8lHCQ9f1tqdKPSF3t3XHA4WKVZeSn5lbB44X
	sPQdm0u+6gnyUTwTnsOlY0ArtHrFGETrhWDYY87yN8d4eGPpHWXOuT3Wf7YmPHLq
	MjF8t9xuoyn4jychhTyYa8ymbEOaYQct9dPUirZr3VpCWGvstWgAJ3Qn4GFuI9DO
	yxGDjTQQcXOa8c5Bcvyw==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=kpAqVfr1PBQuSjGFv7yGuJ/ffdozIltinIeBanE5bSUXBswBKc5JoQpWhM/KsudWwuUNFrvbdwEF2v6FDREp95H6CYzcfYjaDsJqoI/J2QjR9aHh8uxRfp9m537hpxBRAAESOXDUXCymORIjexWCbZNWslXgsLja87WKBNLx4WNtiDPX2EmCYaXOzqHaE8Ccap4AG2ftDn+7HnLhQeAseK42rjweUAMJBhm5Bir0J0v/tvglQBxkTHHTGupr+AOSGjInPM8zcRJ19mgm6mxDxsj5d0m+0rHEK3YIqquPeBNV0v0JW2QxWRU0KYti20TpIsv+YlTZJ4iQ14JuyrES+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SjQMbesgSJ1AGn0OmOaBxRdj8j40VVsiaOHDkEX72oQ=;
 b=AWK6x8MxcJTLgSxfFLOQGWD461A1syyUT5HHpVq58mXIYtJ9Cw+WgTfOkrApJ4p2f9HKTC1vojMhcvfMDGm0kM+4GPKKXL1OVGBa8VK9gquNuwjsf7k5JgF7rj4M8V3gtBA1Aia2YV6ZOUIuxDECNCQrBF1j5U8PvVoaO5OlQKg1R7fK4/YfmID+bXoBpHmgS+2CsyLexaZNPaPw+2owBvKnhuzij2lmkYtv40EdAblEHASuLZCwygQAyYjDHLq7mvTzmqxVbcO1nH8GTpCkOx2IA0+hx30maJ6jy7n7Ufm4vFlB9MUP+HB/7w9NKV9QdyaFgWTKEj7WCDpVHTFf8g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=qualys.com; dmarc=pass action=none header.from=qualys.com;
 dkim=pass header.d=qualys.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=qualys.onmicrosoft.com; s=selector1-qualys-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SjQMbesgSJ1AGn0OmOaBxRdj8j40VVsiaOHDkEX72oQ=;
 b=ng30c4DX2lknI5gnGDEv9OJ3qSTKba8gdiq2X+oIXHkOClq2+PiaZe3SkOmeWfbtFPwEry9ePpoGA8884paNKfQwUpxbmQJH/j0zNFGJIBpiDERaXzDND9ZQmmYP9etBCEigeHHUO3xD6W2tB4gRExUJKVpLMwAwGADmPZeHRq1IZQAJfOBQQiX2WpWfHyE4ic1ek7pugVd8Bn3YeyehtSqiSBMcNOiBNX7/RjG6g+LO5b4v43maHZ3iRIylGfbHjvwar7m6zYP7dJSHULknDvWXXkZaM5Cs+9zIAS90kl2GdXtWCi5mTykinSBdEiFeTiD8p35KkJP9lcUN6RGc5A==
From: Qualys Security Advisory <qsa@qualys.com>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Thread-Topic: [oss-security] Logic bug in the Linux kernel's
 __ptrace_may_access() function
Thread-Index: AQHc5BFx3Z6qen8xFke8NWRPdnY9HrYOXUwAgAAtUgCAAFbhgA==
Date: Fri, 15 May 2026 10:23:21 +0000
Message-ID: <20260515102305.GA21592@localhost.localdomain>
References: <20260515022033.GA10889@localhost.localdomain>
 <87cxyxe76j.fsf@gentoo.org> <agarKP9wHQMGuV_D@eldamar.lan>
In-Reply-To: <agarKP9wHQMGuV_D@eldamar.lan>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: LV5PR06MB11218:EE_|SA6PR06MB10688:EE_
x-ms-office365-filtering-correlation-id: fe26d532-67d5-43ec-13a2-08deb26bfd2b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam:
 BCL:0;ARA:13230040|366016|376014|1800799024|38070700021|18002099003|56012099003|22082099003|4143699003|11063799003;
x-microsoft-antispam-message-info:
 xMV3XvLEY6oK1GoNViFSJwq4f4QI3tKbmvflfpxhp1QkV3u9bVU0GV/e6k0piRIpGCKXwUOAjv3zTgXZLoUxG1GnQTsm7BeItD8jbW5Qg80kJaPYH9FwTsc1gqDZ+znONbB4p+1nfqJZY/d6ede3d0a7vZLDeOFxSDKY00BI+4XMidqqcakAfx7yA7rhFnJVBbZlvEnr0CgC6xRY5oaBpxzVXbFoE9gFDm1P03SGTd7+o3SO8AW3sSMY0thFdiWE+vwabfxz7AfdXvpf5DVXbnm4e6TQ06F7gicczwFZNxuntoBoCkq/nyKbRdQQP9lw0t87jNFaCyDMFZp2o4RWTbD25OY/ct3Ki3WLOxPeDn7Y47MAiSFxxZpnKJfemEylxDUIXu6goZ1gXGZGyOA7A90R6SrWMt6P/pkdIKT5uVlIxRO7ccrJ3nC2wxQWIq36Fu+LxEn8X96C8JXji2cq5yA340PgENOQek2BUMCFLjFZRZn7x65jK6d/7PiojN25/i93Yy5hflM9vhmMiBUQLsYalX9LS6Julzac02sDkotTaabbY6a3CZT1UbO3EwxOiMzSSeQrZFIzNffpnO/dLx5puu36vwr7JF8wJbTN3hNX8RbqlY7mLfM5qGenoIAIb38Sq7+pebRp/gcYYBWOfrE7DGNqOL/dhxC4zyGiWw5y32fb6ljx1tjvMb2L0lqu6ARQpssp+1Sxz7tJCfGnb0UT2cjqeGUA8npDwhMMSY/uPZ05coSro8Hdj71xUZF+
x-forefront-antispam-report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:LV5PR06MB11218.namprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(1800799024)(38070700021)(18002099003)(56012099003)(22082099003)(4143699003)(11063799003);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:
 =?us-ascii?Q?WakqlgtjlYrEkysrk4JazKyPfciYs0BoBQorBBioAC4xC0Cn0C/K4foTOI0i?=
 =?us-ascii?Q?F0DsF8MurCVCjG/dgZvo2L3V38WTdrx/pv1CnnhEqnmItZaPmqMrchYj7ouP?=
 =?us-ascii?Q?KgRHOsp0RqMahSSwlGdA0XnyW1EvkGoOpFfKX7XiLMYL55EPH3eZnVWJwXvh?=
 =?us-ascii?Q?r7Ekk1dfvhF5Qs7TRFzV5RDB0tjG26Oli81Hh+ZHh7oZIYvXo7MXXdIdSNGD?=
 =?us-ascii?Q?e9a1k/V9Kk7rs3XvnwHRxXR6heIlJESKDWY+0iISZyf1blktAL3RKeDy46cT?=
 =?us-ascii?Q?1FiklIpSh5ATte6bSDrWlu5+jA2FJKy66zeyA5xRIVeGgOHVoh/aryaHmb/e?=
 =?us-ascii?Q?ejKcRez+vHPgy/B3uTstwW70djAFz29G1PWfZcG6ZiN1tFBAaafMdmQmVWvq?=
 =?us-ascii?Q?YRsWZCIgXo5dfS/CWx0RqLwTpEGUPVMLAioKf/qDO1uNiKND1XNGYQ4FCHFi?=
 =?us-ascii?Q?DaHh589pNa07qzXCYGNAVqELtK7octv8KAgR+qSiL+3LckPL4Xg90AyOi1YY?=
 =?us-ascii?Q?eqKUYHRMsx+IwFkpdHHj3YNrqT12ONJIaOWU0xcpUIckxDpDMP9n32X1Qq9B?=
 =?us-ascii?Q?YGO3dl2K6DMG20byRWTI5+2VekFGlt+b8aG/hEUlIZDLb4czv9DFj3rho8hp?=
 =?us-ascii?Q?eTSClTy5m8Kql7XWkiCXLo0I6NrRiJ7P8jJ+QXDApUjWZ8wvG8GUbmvkUuDy?=
 =?us-ascii?Q?fmcD5G+hkUHiQ7YpsZL1Uh94cZhBGDb4JqNexbrclzRKQmMIMIIfOeYrGL7g?=
 =?us-ascii?Q?frr4gy7UxB6lIQu0DCHGF6b4qf4DouUzqNEJeaa7RJ4fW3o7TlBixQiW90br?=
 =?us-ascii?Q?ZW2bKVpXpFl73xR/eiSq34Gh2UX4BTf0Zq49SuIZVWLbboAcBA/QeQfzfHon?=
 =?us-ascii?Q?5ZBqFEF1Ybyrmc2Wc0NlF1HD01NZYZeUttA3ot+xrJRZI0RHLBDNlrc2TYjH?=
 =?us-ascii?Q?dVWg+j4u/MZpsIteohpxFcAXr4kYkLA8uy4TZ6AjquZyC/JLoVB90iu9FD+g?=
 =?us-ascii?Q?Ci5TutUTi7xFzmZiRdbyImTUBOgY9+WrMoXf8OJQWFqJg9xlRF7OYkAbUSoQ?=
 =?us-ascii?Q?T3Qf6mkx7m4CK9Q0jRdG80n/400GXnTYUnB6YIOrkS11f5QNoxJPZSs/5XUX?=
 =?us-ascii?Q?/ye1JYjqZNWk1rI06AIjRJEOYFQfm51f3zuY6PIW8WGWQ/bZBnmIAjPrdK3c?=
 =?us-ascii?Q?wzwGtp1ck/aqYllODFVBMvKar+FDq+R4hh1vMnetGi0C8s5uoeJccbEaiYD9?=
 =?us-ascii?Q?BYttRrrc3TYbYu1/KGT1geTmc4ekckAgLOe2H/PFzrFS1sLuE9l6ZcdQNqdX?=
 =?us-ascii?Q?kKke1xmBWRi3VHSCgVjoEMb+E+mGmj+mYmZ9DwQTCKICe6636lMHQWHObJ12?=
 =?us-ascii?Q?QlJ174HwhlJXZ4e01RcpCzdZru7pF+LULzi68n9mOHp+VpnEVm9bqFGfe8AI?=
 =?us-ascii?Q?DNsgtE7cB6CVx9rrTlWc7tQgUw75c5pIfSo/7poDJzHzapJRuQbO/DIDw0X1?=
 =?us-ascii?Q?2QrtkeD86Y5HArXZ632Cq8RPHSxUVV8gQWk+9prViDiQdr1jccFuofIhuGHZ?=
 =?us-ascii?Q?ONhF6nBbeFclPFya7OBVhoY/blL4HKdt52tl+gLC3jVbE96ahA8pFUgK3JHK?=
 =?us-ascii?Q?RUl0VfdefFgrGs6VHH8tKtXQxsvTLQK1lZxWDuJxAhJRo5qWa4TGmEN3E6Is?=
 =?us-ascii?Q?OfZKKlTxnZJabw9XiG2q12/aS0w7IltkCniOjCOoDausjrXkikvB/JlLKDhm?=
 =?us-ascii?Q?Gj3vFavbEgaC/BeuIrTvOnNr/YEZhmGLRih82mN2eIWKHDIG0Lic?=
Content-Type: text/plain; charset="us-ascii"
Content-ID: <AF15740B4E62644A9C32C51E8F98CBB6@namprd06.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked:
	RxD8wbbzfuv3xmn1BpYFn9uVJMNEXdSsz9OBjZgPv16c5FK0t0pvaKcfQ6b9CE129/pAqCZSzj7ccckeL6XZ8k2XWvaHy9wyQ1rFeBlJRTjnhNhlOhCRaYvWt3tClasCx5gjfUquUkN3AYiDuRPnekiWrHukYpJgSi9ibUYIxsBf90HFp6pgW7jvXTYCM7oBIDJSbBOuVUF1mJfAnguRJZFhurxbndLFnRoy4NSUcxM0fppgdsSIXi2gCelWV2PuRVkA4TRcjWOle37eW1TuI1oGSYW8ik0kllgi/vwDgm7dBMkp5tStj/02tEXe0JNEXgZsEKsHj6xoCLRgxjb/Lw==
X-OriginatorOrg: qualys.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: LV5PR06MB11218.namprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fe26d532-67d5-43ec-13a2-08deb26bfd2b
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 May 2026 10:23:21.1852
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 81a9ef9a-9a98-4b00-886a-895a603bc029
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: YO8r2idmKFmX/bwsbDfrOZPCVf4Pc1OAFtqCylUuWtVATl2AmyaISKVYCwJ0gSqHp4t1NV2xoLKz2yDB9mBdDUcYKFxEHy9Rbj4uLaqoViw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA6PR06MB10688
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-15_02,2026-05-13_01,2025-10-01_01
Subject: Re: [oss-security] Logic bug in the Linux kernel's
 __ptrace_may_access() function

Hi Salvatore, all,

On Fri, May 15, 2026 at 07:12:08AM +0200, Salvatore Bonaccorso wrote:
> I'm not 100% certain, but setting restrictive kernel.yama.ptrace_scope
> might as well serve as temporary workaround. Can you confirm?

Excellent question, thank you very much! We have just now tried, and
setting /proc/sys/kernel/yama/ptrace_scope to 2 (admin-only attach) or 3
(no attach) does in fact protect against all the exploits that we know
of (but in theory at least other exploitation methods might exist).

Thanks again! With best regards,

--=20
the Qualys Security Advisory team=
