Received: (qmail 26429 invoked by uid 550); 29 Apr 2026 04:14:58 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 30129 invoked from network); 29 Apr 2026 03:43:11 -0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=J2mKrAdyoxxtIC1kO7PCMxOSiA1rjhXHsMQs96X5DDjEF867S2enVpdIH+Z9NjfzHGmW+w60R/79gdOFJ2owFk7g1okxdGeTMbhU87lKnekwljAxuSdY9wSOPGG2KHLxLEwwFi5d6dlA/fjC0Kzcs0Honz2H0Us+K2q7dJzBpCrApdwbi79URpWMOM/0Nf133RsMYlHcCwsNMg9U4RD/eTVTEhGAbbjbNzJQ9nn2sfSho+cSvlb1mYLjXPAXrJk8qdxXKeEa7NFzPqybANHYCj7pF5Y09Qi1I0aXw5t92NmAqsw5IHcQ2acig5NTevIHRR+xTFq8WZq7ax7gDgR/pw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=g0lkV3+PlmHXfY+AEgtezFSVHb2U1KahukAbP8ETtQ0=;
 b=j1sFxaenkpJCcb7b9R7eKG1A8I2jVAzF2xDW271ennI/BSyHyOU/KwGOKciPhYl2CgcCXehoq04oLGTcHW7Y1OV9E1xLLR70VQlSJR/7Rk8rgY9IZJ4Ff4mcIq298Sm332n1u3E5BXIcVg+Pv26F0DEOAh6wQGcAEhwnb0mCppLeYQJvdEyt5PxFNGzlZxa6xVuxpA4NAMjxqILQ+EhbGpZ8sCiINkfzpU2TAFe+9AyI0FcbFlH0aPMLrMiLnooymo1mveDEBlcnG1BtShPafvLw0dKmGN5UrLzTL5vRfsF8LtiqT8+yuV9Dy6uO73KxQPVKvhnNJ0vdTEOkMYh9EA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cs.auckland.ac.nz; dmarc=pass action=none
 header.from=cs.auckland.ac.nz; dkim=pass header.d=cs.auckland.ac.nz; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cs.auckland.ac.nz;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=g0lkV3+PlmHXfY+AEgtezFSVHb2U1KahukAbP8ETtQ0=;
 b=OOBSOLzvINgdX8gTxD11r6GlopwlWLp53UCY4XJIhrxFlOUXjjMd1VcW7pPIhrLZS+ab+dz0IVAUIcTBexJUTAuq1QmdcDYmHE0SklT4RnoBZ63OfM4mn2THLtdEAI9ii6VpNluXNEp+y2gCXUJ7EWUlMpzCUmlXq2x6mYbl78MLTtM8k70dnNDslEGuJ6K+QrQsoSdel9C+PPSytrMCkyyh2B+40W3swCF3r7K/68pVAg8j1qFxf+FQvYeRrli6sJGqM91dSXp9BHhlzCyh2avdcxt2oU2Gnj5h7eZL5GlIkWiY6KBtnez8lkkgFph5z7sjkwiNAByLDXJBvpw+wg==
From: Peter Gutmann <pgut001@cs.auckland.ac.nz>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Thread-Topic: [oss-security] Coordinated Disclosure in the LLM Age
Thread-Index: AQHc1x+ygfz+YvFj20Cplm4eqaZ3JbX1X1oAgAAEaqw=
Date: Wed, 29 Apr 2026 03:42:56 +0000
Message-ID:
 <SYBPR01MB6336AEDE4FB0E1EA9BBB6767EE342@SYBPR01MB6336.ausprd01.prod.outlook.com>
References: <afDLFWVMK-r70PB0@yuggoth.org>
 <521d0295-6a93-4a28-be55-332d663ec457@gmail.com>
In-Reply-To: <521d0295-6a93-4a28-be55-332d663ec457@gmail.com>
Accept-Language: en-NZ, en-US
Content-Language: en-NZ
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
msip_labels:
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=cs.auckland.ac.nz;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SYBPR01MB6336:EE_|ME3PR01MB8482:EE_
x-ms-office365-filtering-correlation-id: bd7fe941-d3b6-4831-5eaf-08dea5a1668a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam:
 BCL:0;ARA:13230040|366016|10070799003|786006|376014|1800799024|38070700021|18002099003|22082099003|56012099003;
x-microsoft-antispam-message-info:
 fwy9GNtNkG97hjfuxvKEkxE8R6H4ocLDaETIF7mXOwnsAGrs0QJgl9PvpYf7HcrdQJBn1Yh1RlODbZ7v7dlmeDLPx3B6cUDHaMIJpkxHnkzli1sKLSRTLUGUdld701bVTISrVIvir/6vIQTOGxOki0/XwWagJGRZOZiN3aEQGh7CRP1UPsPWu0njbIi9PKuQQwPbhEU/AsOey6WupEV3xA99HD1AZ+Pf5MDe0Yl1m3hjv/22QQv/4cAYedqtBP5qn4lbRUOgmvxapQ+6SIdiJyuLruNSuyhb0zJPn5snGxppJ1SBabpMi1xxtJFmTFjoKpU8a8gwift11kTyqRGRf/jojN6OJVeOKoUq2vfDD7pGgqYX/GqWAlc+O2ZK+m6oIe1mN5c5iyYowOjJrUyPFkH/cihJuTEOhZwIwvbO3++Zyji9uhPOvWWD74JIvDydGe29QMd2k13Sj4VUfuoUZLwZaW2ykemTgqD4Qe/taGaVYmEvM/VzFAayBYGmYN/O9Mc6N0Ijna+WS1JKWQ9HE6llpPontAWHlW+ym30dx1RZIbtXdIkKuuOy4pson/MJ37zE7aSZBkJ4pqqhu0SzTJfm1XkJ6CcoJPWES3JNf3D19DEutVCAQKqd/2Cv5xzH656jJcUyTY2MqQEVsXBwtOxL1TIm4BXm5O7pPnUKyLnMJHJTYiv6ts4nTNvGuYbvWR9GvzjvNuYscLGTyyvEXnk6gKL7dxTHGE6NAX79p23sv/MGTK7xziP+QVnXZ/OutNcHymkqSpmtTH6eVu1smALaDqRRXErJmRLSz13972c=
x-forefront-antispam-report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SYBPR01MB6336.ausprd01.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(10070799003)(786006)(376014)(1800799024)(38070700021)(18002099003)(22082099003)(56012099003);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0:
 =?iso-8859-1?Q?aX/7h3sxQet4yj2hBwhqWRAd68ldS9E9yY9emNtnecCl1DofYJr3xErep7?=
 =?iso-8859-1?Q?kBIdIxXpKCxuSJWms7yIr3G6dY8SAeAHVuAOJZWx2d8rOdYjD22yFoL7U6?=
 =?iso-8859-1?Q?IqN//v+EFvxHUV9/H5JQgqn4xVPMxjvgqsd5Y7K7G00bhsW4Xv1aaMxNrB?=
 =?iso-8859-1?Q?aGUoy5xIrGXyNq5spDaUxoqrtHjdr02/Oaj3bQkL4nJQWj3kaV4/YmGDqa?=
 =?iso-8859-1?Q?GAx29a/1QL5A4OaH45a74RS2prvfqy2hMXh3ubhwP+9Gc0XAWg1WCK/rti?=
 =?iso-8859-1?Q?2lvX66MweT+TEsQ5H6RVTKmWtcWXPoGjnKZ+tEW71rIFBpiSqYo3Pcn9Dm?=
 =?iso-8859-1?Q?3JVAjaF94GP7YpMEc/PPr4wR6++ZjPLdWmNuaaUj8BC0wA0nqeEu3hFpw3?=
 =?iso-8859-1?Q?ApLXyR7nwmLCMwuFsZkyjbm7eaBpdUUz4RwZopvdwoML4D8DZoxcyfoALg?=
 =?iso-8859-1?Q?WEl3RDyXHUMzlUJp8p7YeZoa30idi+krwK6DfuqsiermLEcQpPE/wDsEHc?=
 =?iso-8859-1?Q?ztIK/ev0nGx7PQrD5dHLHD8ohfFDzT3DRUyHqGOkNm+SBM+nhO5o6dv+F4?=
 =?iso-8859-1?Q?RRwBF/X1NR9ptAJ/suiaP4jvilvK+h3h7MnGO6rL6G/k7fxes1WmlPTi2t?=
 =?iso-8859-1?Q?dmffHgUbjo7Q9bM22MgTuAibFYOky++K46s18Qbr/1XtpORGRekflJfiC4?=
 =?iso-8859-1?Q?x4SvcjfDciECADIzO14hRE3X9EB9pV8VcnLOwhjTfI8hXCE50Xb7u4OiIa?=
 =?iso-8859-1?Q?0TpghtH9StOZMa3GHcvG13W9Ld77ntFfndkYMBm7c9meDvs9c8RSGdcnII?=
 =?iso-8859-1?Q?Ev2MOW0VQEepOhSWnlbVMbV/feGdlBDzjY5sJ/bcAvVjmQBRRx4XMn5sol?=
 =?iso-8859-1?Q?1GmmPqCnnGK51dQ4gQL2hCsWoq4wWQER8VLMTZvEUhumju7ZHYF/KFYA0k?=
 =?iso-8859-1?Q?TbXhiJxF69I/dxZghD7pwJacmIkgvIOl8MYykcYnK98mPyIBV+Gb1PKEas?=
 =?iso-8859-1?Q?CKnPqXtLIKfMFYpnZAeDIHcSjCvYiScSr4Lbr3HxPvF88GnP//79UBtZQI?=
 =?iso-8859-1?Q?y/xtjXEzHZrAABM14MXZd5mb1S9eOQcznajSm8+8lUo5POEau67qR/YW04?=
 =?iso-8859-1?Q?yGu8RUTnlq+X7kPioa7uafD0/KtjeHuGYs3dOR2dPX+WMCVqKWDP6F/SUv?=
 =?iso-8859-1?Q?2q9atdM6mf8hO2n2qhe1ILln4uRc9Qc24zgNSxY/ZlL5zU85sZZ0QkI6V6?=
 =?iso-8859-1?Q?awSQwWYutTzkJMf53Mzpwv7QGDZFJQUTXOn5Fv9VIzWgy1OctNIyRqgE73?=
 =?iso-8859-1?Q?OCmXy3MTN1uHj0Xx8sIPX7oEHOlHmZldgB8WHY5X9MehZIBHESqKqM6pD3?=
 =?iso-8859-1?Q?FqRSbqBcAXH2ZbsiDKcFiLSwiskyrAPK3+FUTnB4zD0TjnpyYrm/ioBrmV?=
 =?iso-8859-1?Q?rl2gKgJ73DXWvbRLSfxB2WsdBUM5E2zPBLO2RelnXURDqd8biTz8w8kEKe?=
 =?iso-8859-1?Q?qce0CT68RSmU3C/rgi1OtZNJXcqd0hhZXh5iYLVLv6oXgcD5jKq2ohCtjn?=
 =?iso-8859-1?Q?7ESfDisg1KD5K1KVd/Q7YAtmSPQhWx2iHA2AgVEAJogowogRFWeVp6XZXG?=
 =?iso-8859-1?Q?wB2XM7Sii+bERvkXBSU/VouCTKWWYFnAGQR+eOrXCLFFsYqlgGi0y6d3RQ?=
 =?iso-8859-1?Q?JalzBAcFB2KhXlMVI6WJvxT6bSYVOm/pMMvqS1KzwTshv0OCEpJiHvPRlm?=
 =?iso-8859-1?Q?vPBUWT3FcfwnKdFD7ztQxm5G+wR+bi1+a/yYK6uNLIffSsAVDfKDuBoCAg?=
 =?iso-8859-1?Q?Hr0G+JtYvlaEb8cVI3MTsbe4o4N87U9NkyIljWLZBTotLWSuhl05Y3pWMI?=
 =?iso-8859-1?Q?Fu?=
x-ms-exchange-antispam-messagedata-1: by8QZMewRPTxIQ==
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: cs.auckland.ac.nz
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SYBPR01MB6336.ausprd01.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bd7fe941-d3b6-4831-5eaf-08dea5a1668a
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Apr 2026 03:42:56.1413
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d1b36e95-0d50-42e9-958f-b63fa906beaa
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 7A0xI5SCAER8u1Mc6N/+gsMeBBgDBF6gpZSKw4S1VtFPloOvr07S8yHux1hWm5aJkhM44BwGwHkRTHdD8epPLhSWEOKiltN9RlO9GdSw7vM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: ME3PR01MB8482
Subject: Re: [oss-security] Coordinated Disclosure in the LLM Age

Jacob Bachmeyer <jcb62281@gmail.com> writes:

>You are correct here:  you should assume that any LLM will give a similar
>result to another person who asks a similar question.  In other words, LLM-
>discovered vulnerabilities should be considered already publicly known.

Not sure if this makes it better or worse, but I've found that Claude/Opus =
at
least gives different answers for the same query run over time.  If the thi=
ng
hasn't fallen out of context yet it'll tell you that we already did this on=
e,
but otherwise it comes up with at least some different stuff each time.

Peter.=
