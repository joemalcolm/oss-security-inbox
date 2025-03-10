Received: (qmail 20062 invoked by uid 550); 10 Mar 2025 12:01:38 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 20041 invoked from network); 10 Mar 2025 12:01:37 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualys.com; h=cc
	:content-id:content-transfer-encoding:content-type:date:from
	:in-reply-to:message-id:mime-version:references:subject:to; s=
	qualyscom; bh=/t8Us9qmE5knF3ytFxRTS+C8CjNct/mE+bh78htlLWY=; b=L0
	JHvErbyEVA6KVmXCAFWt15WY6XPVMcB6zzNHr3dCj4M1oZcAzCXbubH9XmM2QfXv
	xzzyTPongtU2id5V9QsV++85yTUsYfVwn6OpZ8ANvvOuCkD/7tc6dTgkjnmK86AA
	Lxgc1ik7hOgcOg4vUOqKA18paZ3ntKbJ8zXx5UBXROVDWDyd9hUEmQbZcQQGyfXq
	h1pjqs/9B5fdbPhItWfsyqUo81axPC5sVo8Mwwfeq6HwMWK3gqflabY5escGUZ9D
	lM8/TDokhaihuWVNMq08xHZ/x8kFlO3gzmdwSO77V/s9dEscU12sRsNBV3J7iZ12
	KT/7DB1kP0yKCu7GtEBw==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=N9E+Vry/ArUtM/UU4kLcSZEPlOw7Sz69B4amN5BvKz7F7feGnfx/da0hOTk/fQyta3vlxQ1v8Hg7AA195hdbDSUaOvsbXQvmCN1KjOQ/B4D5F4RyUomvY6gzo0q0UpR2XF27ZXPg6Pl5wDE+8FU0oDJ8UW+5SwIhBkPrVXP9BgOrnq9o7spYEJMq08RI3Og/ltC/uBUTbuNWvGkaSoDwRW1SkgghxAGbnTJkeizt76Z8I7O41c+06COe9BUck2Fl0sOqnRWJYtjAIFmKYpMeJDTguo+v4V8vsMsfqH57BN0tLYKOgEWAxLDV18tcg18pcQLOfJB1kt8qxJWYuNQJkw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/t8Us9qmE5knF3ytFxRTS+C8CjNct/mE+bh78htlLWY=;
 b=JQnqnGkK8Tn39YWPKV5bditqo+gq+Wj0L2YXEUSDRTXVOYwtboFjOT7PgZm/yp9wT7hLhkVgZdQrjBtHOirNoPzlAZobfcm3NT7MPKUh/VJ1ztFeAnADfQnC/aHSZG8dTrWhgEpsEHlpPZ5f/5L3+mi895tknfs3Uy6To8tm7EH/dHc8za6w/pBSVzl1mpHoBKrVAipjfMkHqVT+c13taORpupSO+pbbsNm8jxuBMamfmBrb+gNp6rqjvqWQPk19rFXJl8uxALT1CGtSd4YZ1f+lBjuxf7D33OrKfw+zMT8y8sSVZvYQjAzfxyYo41nk2+dtKD8kTzdzhtBjczntwA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=qualys.com; dmarc=pass action=none header.from=qualys.com;
 dkim=pass header.d=qualys.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=qualys.onmicrosoft.com; s=selector1-qualys-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/t8Us9qmE5knF3ytFxRTS+C8CjNct/mE+bh78htlLWY=;
 b=BLXAbIzvWUcYrcVoZPkx0+tx55YhFrD6E8oDtlms10HaS4MbRi4SJF9QBiZcNd/Lgw6SHls8s4AiQaRBnRObafcDvSVj9Hk3VWlYihSaJseauLUcZYOgeLPEb4TpwKnQYDWDCXbi7w2AiYfU236QrWbtGatq8tDji9wa9+grWoe1E1YpKbQEbvuPtCAwNJvCRGe8Ok6ElNKC4GNAwDrlqC7lLVInlscacJjGbDNP0W8WT2R7wBhxAAmyBc9UcuNtFZyuTaOg1U3DrikBC49USgcv0XkVaeGf1xmLO3I8l1NFhIsACXDJCTQGkZfC9c3wVZpSfCCo3kGaN1wwmi1aGA==
From: Qualys Security Advisory <qsa@qualys.com>
To: =?iso-8859-1?Q?Buher=E1tor?= <buherator@gmail.com>
CC: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Thread-Topic: [oss-security] MitM attack against OpenSSH's
 VerifyHostKeyDNS-enabled client
Thread-Index: AQHbhFtXVbPRNnZ9ukOo2d2n1ltThbNSCpqAgBSmXACABa5yAA==
Date: Mon, 10 Mar 2025 12:01:20 +0000
Message-ID: <20250310120048.GA17485@localhost.localdomain>
References: <1167011785.77274.1740140560949@privateemail.com>
 <20250221175431.GB2391@localhost.localdomain>
 <CAAyDpL9t6DA06f_vpREvW1FiXVntQr3FRh6iA+smeg+2muiKQw@mail.gmail.com>
In-Reply-To:
 <CAAyDpL9t6DA06f_vpREvW1FiXVntQr3FRh6iA+smeg+2muiKQw@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR06MB6910:EE_|CH5PR06MB10672:EE_
x-ms-office365-filtering-correlation-id: 23b8574f-d7b7-4d8b-6c6d-08dd5fcb4573
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|1800799024|366016|376014|38070700018;
x-microsoft-antispam-message-info:
 =?iso-8859-1?Q?tsLijLDjWD0PxdAWXAjX89Yypx+/TzyjyJL/sZ5479HTk/8exOXnG3Zf+u?=
 =?iso-8859-1?Q?1MCjbQgUgnHn78Bn+njltBgbg7HkXr0IGHI7EjN26sQICMCclx7s3apixA?=
 =?iso-8859-1?Q?KRJCihJEbP0rGOsEgPPJY8i+CksnlPg+C3piS+C7B8i8BG8lxbZWa0uPWx?=
 =?iso-8859-1?Q?XlD24JTJP7tl/vPzv5/3U90dp77oOxYutVhSh/na7PjkhbyxC/XjrBH/23?=
 =?iso-8859-1?Q?K+5R1NlDqMxmLSx8FQrDjlUygVRTk0Po9uKGoWrk1byzphmBJigtl8kJzC?=
 =?iso-8859-1?Q?Yl+WOvZixapPyyNKozhitsz39hVSVIzLWZeP/HsmLMu2Ck/7+6P3FUXMsv?=
 =?iso-8859-1?Q?HlQ9Clp3dgQWXpfyZNHneZgT8aJp+sbGSGS8kz6k0Eei7DEyFl5DWKx8+m?=
 =?iso-8859-1?Q?Pg1yBahnFqdWFomxRjIU97s1ZPgtUABgLCrdzUKCF21nka8e1NiuIHtvvn?=
 =?iso-8859-1?Q?qdiB+hJ4ajIGHX3F7l+AVTu1H4E/Ps3LwmVWyYawtCE480/Jbh+ZdLDmdK?=
 =?iso-8859-1?Q?jcwMU1n4nvwa88xzD9mc714RIFPV8tRpmXcPFz1Nh0ZYc8kfQs27AMGTEL?=
 =?iso-8859-1?Q?xmL2IN4sieUYSSrj3gwU+VfucY53hsBsmRAsjk+BBhcN5/A4EotcOG1hu2?=
 =?iso-8859-1?Q?PzNrrC0gBTlEIWpkziERkJsPZ8BemIFJwONGFGYdiJF3bcZokmeERZFUUC?=
 =?iso-8859-1?Q?aJYPLXJe7P2n8ZZZhigz29zoDJUXW0TEpN+l5SrhnsVB4FnDJ/bv2t9a2y?=
 =?iso-8859-1?Q?NxcBdREjiN9J/KAIeO+i32h54CRZqkn/fgxbeJ1zzqZ+SuGEaU0g93+5yz?=
 =?iso-8859-1?Q?nSLAxS70KCI7c1qD5Wg/I37UePH/D3TlHUHFomRN2Ce+XMX/HBts+WVDRZ?=
 =?iso-8859-1?Q?bdQu2A64ch2wHbMPkpPzBPbxJeVuo4G5bksIvg+aAG5SPSUfBAWn5eATfY?=
 =?iso-8859-1?Q?vC6Cb9bpelTFuqK4qMCBszwtyYu77DD9dofPl1Kfl5hUDYRRtMg8q6eUF6?=
 =?iso-8859-1?Q?T+mi4h5vtzFslgrfL2Lr5UTIyrXncP2rjYrooT9JTJit9tPUhZwt/i9JP3?=
 =?iso-8859-1?Q?LXWCVDgJzklUXa3SCbmehbk0/y3+wC8mqgp2+HmHQheGtO3KtIaofGa7E8?=
 =?iso-8859-1?Q?Tr3K82BJyAVcBs2Gx8XwKCyY1a6ZwRtMGRf+ODkzucaWOLJyKO4YD+lhvl?=
 =?iso-8859-1?Q?ZUZsVteHi7JJfXsxrJJqjbOCktF4BA2fZrEYAb6CFHCArNDqhM5Ligis6z?=
 =?iso-8859-1?Q?mueRhhOAal74FjSmRDWE+x9FowZt3QZsnXCxk9OWL6eE9VAxl1jzy/Znfl?=
 =?iso-8859-1?Q?6qZMbiWFGOmiaQMzDGEJ7TYRXwkjV9e25tMN4kgvuSvJn2BVkSsB2Ue52K?=
 =?iso-8859-1?Q?asbITvmDM99CoXODLYqdPCyF1XkgLtZANlglBplfEpHH+svIk9wWWQvDwH?=
 =?iso-8859-1?Q?1swGNmjpL4HXlvm2kUssNc9PhtLIce+VqsttPCRuz/P6baz7MHxJ1OQ20V?=
 =?iso-8859-1?Q?ybxgCLJyEGYoaq3IqWGKq1?=
x-forefront-antispam-report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ0PR06MB6910.namprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(376014)(38070700018);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:
 =?iso-8859-1?Q?TZM/zR7sWpMZOlscf9sEjLoLMErMAEl6jUWWG7TYJmFAxYy+7UmwWS42z3?=
 =?iso-8859-1?Q?sGGt6qCxC7bSbTwjPSE6/WuifWO7ktmkRrsYTCTSyZT3QMHzhWKdVbp7PI?=
 =?iso-8859-1?Q?uJiZZuvzgcN7Fm6GzD9h6dTMhtMB7BrRT+VQyT2qqn3wG87FrgZLvTjHlL?=
 =?iso-8859-1?Q?19nog3lIiopdRu00kTWRqGRrOA6Q3Rv+oF/F7Sw06ZYyXMk7BwItxMkeyN?=
 =?iso-8859-1?Q?apYaRtj1IKkRzxG4Vfmvwe8rQi34fgHmHCQWufon2h4RIExqnHao54Zops?=
 =?iso-8859-1?Q?kFc6oeSmbFSfOLn6YBdJVgSs1nMJRlPvTLrglXsOYTKXJzK2VsJgcathN/?=
 =?iso-8859-1?Q?K+l5+y+qEJ7Qzqsr34zktnd6ROR9srNNIOLUn+6YnMsfS0W2kD6+z4Iy/X?=
 =?iso-8859-1?Q?UlMxmaLOMKwoIp2NgCteQ6FVJ+hT/00Gn6XI4eqqEO2vznvnwGYb1qeFWC?=
 =?iso-8859-1?Q?1sq3g4V7BwcMRI/zxNT5NPVNlFr2LixRymS1ndJx2q75Z322iOL+dyJsXf?=
 =?iso-8859-1?Q?VHNVF9WAJdAVwgYDSCwPy1Ag+KimlFABEpHsxz3sKwrDJFCo5byLysOyOZ?=
 =?iso-8859-1?Q?rThBC3FVnT0XVTicCUibMgaf7fzQNB+bwjjGGCQM1WdyWMqXjRxpzMnUHO?=
 =?iso-8859-1?Q?4tRICSYQriE3KadK8V9lqTh0N0nSWVmHAWBPN16hspH9E9NueiCQOEqvkg?=
 =?iso-8859-1?Q?VD260R+PCfSYUYyjq/GCFOFR2RSXEvA25HSbIqqsFP3iGv0Xk3zS0h25t7?=
 =?iso-8859-1?Q?aaw5GS9urRghGrh9TLDBaFnIQX/3vCQH5S4evLwbnpx2cC6BJ8YyvDtNKz?=
 =?iso-8859-1?Q?dsHN/URm53g5FOW1HmoXFMU5e+FL0OyCQ8JwHmOhdwJUC7VkKaesyCgY65?=
 =?iso-8859-1?Q?LxgX1tpqxD7yK36Fi9XlkbkHWEhcWi6zBofaghLl7i3yzU+dvGxIffqqow?=
 =?iso-8859-1?Q?wqS8aWrg6W0+Oj/lu4FSvi46NDbolbMRST1jEX+GtGfy560s1PrmTXp6OP?=
 =?iso-8859-1?Q?KP9fr2bnIbM/IXORYjXx+cIkW+LXy2m6+LZkYhstTX16cNOHs4hTlhWvwj?=
 =?iso-8859-1?Q?CHXGkUDnZGoxFAW3OX9jCku7Lx0cqR9/0RbTnmGl5g6DOtBiIyHB7BFt8t?=
 =?iso-8859-1?Q?4EILrOMY/DYXv96W1b4w9b+xv/HUQFlO50bbYz6QGWBsR+z7+xdHqjtnmj?=
 =?iso-8859-1?Q?osdVwS2XK2TP4FlnlDjoF/uOVf/wqobAs188AZKMvENFvO1cf5EaCExrUm?=
 =?iso-8859-1?Q?DlN2B+e3un/+Ypfv7Ng++1mzMd48fsNd8ExeuFrSVXdiaG9YtJIAGTe6jG?=
 =?iso-8859-1?Q?D8n7eT5WUJJaJ9zH7VwEw6Hvw+aDMMdoaeT7AAX8em/R7ACJqIWT1m3SlP?=
 =?iso-8859-1?Q?7hd6AwiquHP8/8Pnszb6g8zurguV0xq55Hgj5SkDPYwSo4SjpGCZehnsAx?=
 =?iso-8859-1?Q?dTKJVku5Wi20QbqgsQJW9uzn8bzfAH6eHn9Jfus2tCj5PF5czw2sK7v4Ca?=
 =?iso-8859-1?Q?tLFzJIMIZHEyYgAFx0nS1Rwc4ksigKFC2igfhlN3La/nXKShVP1NKXaVRD?=
 =?iso-8859-1?Q?7jK1bpUMRqTKo4kMV7a99RTfvgIWsRQpYl8pW4/CLhqjkAMw2scg5GB8Ox?=
 =?iso-8859-1?Q?1RPVCPy2FEDLT9Hbwbz9/x62VShtle2gpxUHKPZAoidgAOKt4+lsJGYWgA?=
 =?iso-8859-1?Q?Vy/DUT9caarXoNU0RX8=3D?=
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <0228DBA295E196458C9AF80477A3AF57@namprd06.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: qualys.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR06MB6910.namprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 23b8574f-d7b7-4d8b-6c6d-08dd5fcb4573
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Mar 2025 12:01:20.4529
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 81a9ef9a-9a98-4b00-886a-895a603bc029
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: /eKiTM3YEqFsSG6RK1AZcqx1QAQVEuN8kFtjmK1E7whyBxwRo4fFPohI/yWNm174vv0bwohj7OeTgJLXsbQDFZ3T6vyLJsNeMtuV1rtirYk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH5PR06MB10672
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-10_05,2025-03-07_03,2024-11-22_01
Subject: Re: [oss-security] MitM attack against OpenSSH's
 VerifyHostKeyDNS-enabled client

Hi Buher=E1tor, all,

On Thu, Mar 06, 2025 at 10:15:08PM +0100, Buher=E1tor wrote:
> I also gave this a shot and came up with this query that uses
> data-flow tracking and also uses StackVariableReachability as
> suggested by Jordy.
> I also wrote (much) about the development process to help tweaking the
> query further:

Wow, this is amazing, and your write-up is a gem, thank you so much for
working on all this and for sharing it!

Just thinking out loud, but would it somehow be possible to continuously
run Jordy's and/or Buher=E1tor's CodeQL queries to prevent the
reappearance of such issues?

Maybe someone from CodeQL or GitHub Security Lab could chime in or help
with this? Again, just thinking out loud.

Thank you very much! With best regards,

--=20
the Qualys Security Advisory team=
