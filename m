Received: (qmail 31890 invoked by uid 550); 14 Nov 2025 02:59:59 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 24340 invoked from network); 14 Nov 2025 02:58:54 -0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Xs9YMlEuIDbxsnoJfjlabZMmgLMYZVnft73/Tf6b0cAQSQ8DCPevWafOYR03o0Y6ZYcNudoVWu0yOeQpiVTw8RGj09QTOF8ZvK2N0bqtvye11qWRvFGgrv4q5ctxsD+nk3OU/ahCd6NrWM/9PkeA7eyvaGoBRlut1yWrOlBJ41I07+us9IGaDTr6J+pNXAvdo2oWnaajiSMgK6mlQ+JBx2R6hDS3RHIs3syAdLBIivwdgiaLEHpWhiuQK2B47nGQZ1MtsjnBacxoTuStfdwCOL8jI7sIcvCYwooyJaT7q1e3OOxH3/19kmGWHLfdO8UJURU6rfnSe0kPGW9wYUYEJw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IRwHfdeWGTonz3x1oa0hKkS/ldNNKplenjZco9j44VI=;
 b=n4PKyjdcPoUplg/MfwDb7vzts783m83LiomAsl5DsDAr7wOdh3r04Wz4Z17HrFOByCOxKDCs7+hLwWzNYdkWtIu9fRHaTjvPDWjfsVY7rgpiClh8V9ymE4wsPLLMoBcqPSkecgD2QJa+A9CXF02zn0Kit2/MBHIx3se3jtTHEEb2VcwBmcAT4t02PfDhDzp9Gzf+IcUn4qamnBchvZUH1BdX1j2En6IBARXtUNfasMLjwnknueDD3UqBl6hUzngBJiIWZ3IoVBVQGpMxTLBWV0pcgegaDxzS9FwV9LMZk/il1ONxm5uwQ1CyQ4qxmIzKzF9pS96TdPyP403F8c6OoQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cs.auckland.ac.nz; dmarc=pass action=none
 header.from=cs.auckland.ac.nz; dkim=pass header.d=cs.auckland.ac.nz; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cs.auckland.ac.nz;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IRwHfdeWGTonz3x1oa0hKkS/ldNNKplenjZco9j44VI=;
 b=sxerzri9u0YBZES4AxhsqDKlG1rRzuG/RnXFj8ZPADyTII7pkDJZUXpTLuSseJ3TLp73SyOe6pDrqFx1+vMCLtx2kSeSAtwp9o6Bv5Wxf/tzAEDTUv//SW2odAeYcqqFUgyHcnT+Pj+c2ny8HNHlppPjS3HLaxWchSWBPimAMHEVG4DpmQUS1/uvGNrsOQe9VXqDTUXuVL/6IjuoV2qZ4cBgL5qHvMudQbh1omlXF00MW78siTLaVTQzVKzzreTqUJD3ZViul1w9J64AJVAp5Ng5usSmrt79isDPP3nKWHQo0EQlc8TfPlCQyrMZEZqsTs7weylzY6mKfcrV7ArU0g==
From: Peter Gutmann <pgut001@cs.auckland.ac.nz>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>, Russ
 Allbery <eagle@eyrie.org>, "jcb62281@gmail.com" <jcb62281@gmail.com>
Thread-Topic: [oss-security] Questionable CVE's reported against dnsmasq
Thread-Index:
 AQHcR1/QuJANdEws/E+/DnYb1yrL/7TWXygAgAAmlgCAABqVgIAAKweAgAX6QoCAAGMdAIABFob1gAKzW7CAAFW64oAOsCMggAGGTgCAABdDyw==
Date: Fri, 14 Nov 2025 02:58:42 +0000
Message-ID:
 <ME0P300MB0713341818938D79AA60A145EECAA@ME0P300MB0713.AUSP300.PROD.OUTLOOK.COM>
References: <aP_msOoiyHJ_M4Yx@mertle>
 <20251027163220.8c7ede47-6b3a-4190-ad4b-e52761b341de@korelogic.com>
 <20251028014909.GA6430@openwall.com>
 <76f8e74c-d9cc-4f20-8061-488598f85fe7@protonmail.com>
 <20251101030054.GA3031@openwall.com> <875xbtlf4z.fsf@hope.eyrie.org>
 <ME0P300MB071302891271CE8EBFA6BBAAEEC7A@ME0P300MB0713.AUSP300.PROD.OUTLOOK.COM>
 <87fravyp43.fsf@hope.eyrie.org>
 <ME0P300MB0713899B74FA8CA28A6C6868EECDA@ME0P300MB0713.AUSP300.PROD.OUTLOOK.COM>
 <a2ac8e7e-e45c-40bc-b517-dffcd4def530@gmail.com>
In-Reply-To: <a2ac8e7e-e45c-40bc-b517-dffcd4def530@gmail.com>
Accept-Language: en-NZ, en-US
Content-Language: en-NZ
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
msip_labels:
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=cs.auckland.ac.nz;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: ME0P300MB0713:EE_|ME0P300MB0617:EE_
x-ms-office365-filtering-correlation-id: ea65b6fe-2e29-4596-e556-08de2329b7fe
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam:
 BCL:0;ARA:13230040|376014|1800799024|366016|10070799003|38070700021;
x-microsoft-antispam-message-info:
 =?iso-8859-1?Q?XEF9ZK6ydoNWApI4pBO2UwtmWDJi8MdAurUZ97hx4vpp/RXBXHHWngW2a6?=
 =?iso-8859-1?Q?h4ZpUvh6vUQ7WGo+KVA3wHRZPHBNF+Jepjf/2vUhTavAb3OIfAj24jLLr5?=
 =?iso-8859-1?Q?BTNCjRFnISP7j4lduWZt9NGptKsybIbrSAHuFpT5ktHm4e4/rFb5kWT+AO?=
 =?iso-8859-1?Q?NlRJCNgg6oQUawk9vDp3WnbI5wBMWJ+9Im18A4/y9+ox5mNx4vu/wQEFOK?=
 =?iso-8859-1?Q?pR6S3JLSi8Yhki4fHrpH0HgS4Zf6NnSb2fWEXQObuTKgRRWMjCHzjZn6Ac?=
 =?iso-8859-1?Q?6W6HBua+PoTnSmYaYr7VYEj23OL12mv0KkhtMFWmZ+1TJwZGuLoiW3atkW?=
 =?iso-8859-1?Q?CNP4BCw4BS5J4uMeyESGgQaLihgvKTHm2bQdKsgMSegbXFv85qYAWG6aEJ?=
 =?iso-8859-1?Q?A5w1wv49Dj+r52uqB2NOkBB32qRJhSxBduaVT/++jVl9Wa/e6hdGQSdYzY?=
 =?iso-8859-1?Q?y4xiMMYTFjEuCx8cociwpme5H6tQeOBaW0DJTMANJGBeDPGNahN/Wna6aW?=
 =?iso-8859-1?Q?Us17Fmna0V9KNANoYi5loq8NkoNCDnfoNzjING8kmkpa0S7oeq4l2B9wUv?=
 =?iso-8859-1?Q?c5s5H7jOZtTpNxkiWnZBa3uylC8LwwKMtOuCZUNsW9C7FkOAccL/2nJURw?=
 =?iso-8859-1?Q?0h/dFaOVvNnl3Tpfz16G74A3An6ofHi0z4McksqLXFuBDBrtKLriKRZfPI?=
 =?iso-8859-1?Q?bAoVeot3CviF3mrWflHCp5/7lsrBUDyqDd8CaAcwTw6DTYJU1czsxQ7+SZ?=
 =?iso-8859-1?Q?zNPYrSyaEgKrg50p37H5amA8H4Dvfi/pAElWU0xylsYVDqChCUBCzVEGq1?=
 =?iso-8859-1?Q?RRnLFvSGv6oAR6ah92WYqCgHDRK0gGR/xnWNJmrQOcGF2bqX/zaljXxhF6?=
 =?iso-8859-1?Q?mE26xx0AZSoPCrZLCX2Hm9HTJp2mIMMMcKmw0P7JmXIQ7ZNcfNbVeXHGUm?=
 =?iso-8859-1?Q?R9ahkVvFm+PL5/nuB8NNSjE/ADvThW7vhXYDzpY3r3QO48IP8IS6vPmLsb?=
 =?iso-8859-1?Q?PjD8mVllWmpeyfFYpTF1UoR1qHJPgoUCjQbjOPLKYPq0hViTNOH6fKu9eZ?=
 =?iso-8859-1?Q?ncPO+dmcKCpGi9UyBsgYJOq5vmTb4I6DJyV3I2U3VY3sXIkPWQGRgHIgow?=
 =?iso-8859-1?Q?tlLCMkmMVMFVFPT3ZSE1Eux7QbBu63uR1c+Z3U5V58O1eByUDxzP9Nmcia?=
 =?iso-8859-1?Q?vErUBC9apqbwdDL7eAxUJQ9PTULpBi2rRwtit1Ca6UcuyB9PtXE2O6MAUE?=
 =?iso-8859-1?Q?/mKhTf56bX8HIIG3AYj7CspwqcAW8+Bdzp7TpFCc2XtUJ7ECFde0RRRfRf?=
 =?iso-8859-1?Q?BhowBLp44B6l6aqmYVhQjBq873z4RV3TZbGA88x2IpNf6vF4cwdXDsRZTS?=
 =?iso-8859-1?Q?7crwHN/e45ahJrN1C+Rqet7QJ3wa7TsyMcZp82lGXpBJIM2FTE0uNc4jpY?=
 =?iso-8859-1?Q?VHFwF9ebl03i+NJ5mzykfxDJ6nHa8ycJg7CDevk/kgvQuIQyVqEnSSJmBh?=
 =?iso-8859-1?Q?1ePGo2zKgUvJcdRalPufmBbJxRW08YMDiLlgtQ6wNERnA+BCypMMmMx+Ta?=
 =?iso-8859-1?Q?2j83pEUmwjCHyvi33MIfTZLMl3+J?=
x-forefront-antispam-report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:ME0P300MB0713.AUSP300.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(376014)(1800799024)(366016)(10070799003)(38070700021);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:
 =?iso-8859-1?Q?LeuiZtNCHTGHyKbl9ruveKpjEv5Hjhs5q+J806l3P2UFx9RlR5vIXTmGiX?=
 =?iso-8859-1?Q?rJIrM3XkuEkbqxOwg7sXD/oWUpmIMgS1TUMTAiwa+wHQsRV5r7chnhBWMO?=
 =?iso-8859-1?Q?9435uJNX+Vfi2NHW28QLJ+NBV0s0RHMkvXTEuQcdwSz8XTy1sYewyhPyFw?=
 =?iso-8859-1?Q?rAcBKb8gtnQm1H4AWULE8DqRZ/9puCjynGUiMOL0g/KJzBnAukRuS+0eCI?=
 =?iso-8859-1?Q?idbK1JEUXZk+qp5k9eNrTINZhwIx+D0Hc9MDUddKHP4yHXyNRkmuv58RPm?=
 =?iso-8859-1?Q?NhNQQBKHLjVbilHmssQZqJVdZqKQxlfwYggW6P4wyOIiK9LY6J/oSt7LoF?=
 =?iso-8859-1?Q?F8kXK7/TSemY7HdwQ5utnaMI05SPb6cgKHBQy/AL/M6P9S7uP++4o6zvK5?=
 =?iso-8859-1?Q?hGzuy/iojNvvCFULhWqtP0Z5PYYrJtXpUW6gh4zXXWQzfFMOluLxdd7Pnb?=
 =?iso-8859-1?Q?9LovxM8D0H2H9lOxxmqp7jwNaLv2Rt+6IA4WXysTYhFoBuyTnRR1mu7lN9?=
 =?iso-8859-1?Q?WHn7ICiaNzpfq9XO6ABLaJcZ/QhxlDJlPgo7Xd05TJginK8mB/PoeN1OBQ?=
 =?iso-8859-1?Q?y+rCBS04q6taZeehhB838pcXm5lZgzMJpblVt7VvSK7RFQFJhcHMNwDkPx?=
 =?iso-8859-1?Q?Vd3X/e/I0yWnw9sLpy74wOPjN7t7D6lG8xKmMKKC1Sy9AydGZvxNBMKqh7?=
 =?iso-8859-1?Q?au0uVh+Kdml4Mg8CnD6ZLZ3TI2wkQBbURbH4A7HXHIJAZMWHFymc/8KLY3?=
 =?iso-8859-1?Q?PIAmXzlFBwRiDnq1qj214WtjCQ4Bn9xe+qCrLn5ZISFhIYl7LCJRlMzRZV?=
 =?iso-8859-1?Q?2Aaxs+pp56kWYLAgoQApuZmQeofw+mcxmmBK+ji1Uy1vYTndOn+3lRVJbK?=
 =?iso-8859-1?Q?0TIiyrpY5VVtnBi4tk1Jd6ur2jREaeKSTLFVOU0IkRr0xldi5w4ijj3/w2?=
 =?iso-8859-1?Q?3+8N+0q9A/xSqNhamE3ZkUgPgem1KgL4MKtqctWi/jZ0rqZ1eIVHOGkNGO?=
 =?iso-8859-1?Q?ZlfZ1nUORyYYEZQmxGrQlG5xg3AB+o9YmYAZBvoZldPINI3QxWWM6DwcxM?=
 =?iso-8859-1?Q?fOp9zIu0RPAFa6eXAy5RpMa0xLfgCwf1FRxTSBzMsz6nbzxVXrQisp1dZJ?=
 =?iso-8859-1?Q?EV0e/VXH0B8Pu3lSDGzMfvCqySH1PRMWUB3KDeK03yk+2H2gGv+rc+kEeI?=
 =?iso-8859-1?Q?s5QRwgak3ipO/relx0zPiFBcKOQzU7XMa3kw6ci7Ih9Y4JAd3E4/FwHjgf?=
 =?iso-8859-1?Q?7f6g2FVPeutI2FXe2mjQ7c7QRamPjO/nf+eFjqdaFNsI01rMwzyJt2B4yn?=
 =?iso-8859-1?Q?cQUo8pmua/HvDANRHq4kVURs02XAiyig7GKRq4lD0XsluBN4G7e11hURvp?=
 =?iso-8859-1?Q?71lP87s0BkLU1NpSem/1W66VsJKNZTfe+ES67nisnZ0bjquzEfgxrwIIsE?=
 =?iso-8859-1?Q?6GpnDxIm7/AX2lDJ243a3PMJoa0hGILFeZGM+amkCpJ0/Mih/Zbd5WICIi?=
 =?iso-8859-1?Q?N1ZiCXAonoIX84BmnbEaGjZdlLMHWIIcF5STqleWs6o4QuANZyYe5aXoGj?=
 =?iso-8859-1?Q?EFrod02IUhSJQE0EAARd1+SQJU8KNJDigq5KJhunDgs2LcZBm9XCTNsMM9?=
 =?iso-8859-1?Q?qk9NGlHjaXdbteaaBC2BQFGyGnqt0pK6VllZcbd19b3BuB77hblQc7E/q/?=
 =?iso-8859-1?Q?HJgRpccnZFc4Jh1P8MUJF1aRByEbgN/0fO9TDE/8?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: cs.auckland.ac.nz
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: ME0P300MB0713.AUSP300.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: ea65b6fe-2e29-4596-e556-08de2329b7fe
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Nov 2025 02:58:42.0304
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d1b36e95-0d50-42e9-958f-b63fa906beaa
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: CmQ/Q1Xe3f4By3N7l6bqFIfuobc/N+rdTx8/p3K4fxzjdz0/UD6uz3BRZxfoPCYGZuS1XsO3RWwoPOtmBAa6VE6/twr33yruU4oHbeKSwqA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: ME0P300MB0617
Subject: Re: [oss-security] Questionable CVE's reported against dnsmasq

Jacob Bachmeyer <jcb62281@gmail.com> writes:

>Ah yes, the universal arbitrary code execution exploit:  simply replace the
>program text with malicious code.  :-)
>
>Can we call it CVE-Zero?  :-P

The best one I've run into is enabling an undocumented internal build option
that turns on extra code for coverage/fuzz testing, then reporting it as a
vuln while ignoring the fact that the debug code also implements SSLKEYLOGF=
ILE
which dumps the plaintext TLS master secret to the diagnostic output.

Aside from the OpenSSH pseudovulnerability that started all this, anyone el=
se
have any interesting stories?

Peter.
