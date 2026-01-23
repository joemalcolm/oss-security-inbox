Received: (qmail 17882 invoked by uid 550); 23 Jan 2026 14:41:40 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 22335 invoked from network); 23 Jan 2026 13:51:45 -0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ERFQciaizAPrf1khtOIYY8kCWyluYQF3F/Skq1BzowR3aPYkJ0N/ZzAFOcLi7cbNnF6T2WLAhUAFcBhTtHzmJZeod15k9ip0EHibQZYY/mkqNWMtKSC1i+Jt3S9SeH0dSY5q+NuKqKACUvfiUsTRO9vHOKapIBnus4NSv+W1vZpdsY4za1qrTiISFCPA24Melu8V3u29ubJcKtacyInRSVQOdHD6AzaMP8WopU708VvUf02+Wk+7dz5fz/+2/RLHOZvmtxQI8fJUPnPkZs9qT/yyGQbEQdv4hw4RzD3vc0GhEKFp4ntY5I9v66/Ba6xNpy0+zD3UCYXq7mNV58u1wA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/5hwABbrO+p2QhmWQq0mEp35SSo3yEZ6GpXoZNg8rH0=;
 b=yLDVh1X19DRnTaqxrCCTRDf0ByiA4huj7IQVT4XNjGHeyIii4XcgdXWj6x8d7rNU/lVo6S8DTV+Bbvz0tT4X7oTVmhfUe8Z9YH5Ruf3vfolrj/SC4zA6NHduD1shmW2+/DJGfZnRJf5bOaXBD11cEFE4oTh8WEEKIGl6e8R8pRIoeo3mWWMxM6dhLtMNjjAAARJnEcptlZmy4oc12+LY5JlLm55araPEae191GKx4XZLQj7uiBTEN6pVdEjYKEORl9Omo/kxyBvIOp4CKkf61eaSWFtbdHuIPPHpWP8q65v5h1lgIIWlv7uS5Di0E2L6JS4lVgeb1wep2XyeWcQTCg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cs.auckland.ac.nz; dmarc=pass action=none
 header.from=cs.auckland.ac.nz; dkim=pass header.d=cs.auckland.ac.nz; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cs.auckland.ac.nz;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/5hwABbrO+p2QhmWQq0mEp35SSo3yEZ6GpXoZNg8rH0=;
 b=A7g94i6KIOZhDe5bOA4bXFTl/VCqtyq6dGR14KelcvNLolwl12s7ovyjbb5dMe9LuTjRt14zsEY7kgLAAcWuLgfnLwWcGg6WP7a1l3jSlP3PCv9esO+sx7w7G3+PlatPiEWyZFnJ38Hfhv7d4mVmQc5VheSmcsbq1EllKbkzHep6KAiCmW74QT/o5ocuu5QLMeJtCq6CijHcgTFS71cH8Rrn4OQj476sAUTH49VBpIG6GrsldadtsXEu17/NQTVwVVtoqAP5KVqgXihsI/f8eegyP62Sz1sffrHQMLAyDx2v1H8AM1Vhtoq9vp/nPlEcuGJG+krTA/9g8gXEvZ9BYw==
From: Peter Gutmann <pgut001@cs.auckland.ac.nz>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Thread-Topic: [oss-security] Vulnerability management and Open Source: FOSDEM
 BoF
Thread-Index: AQHcjGm9/NdsdzeAk0KQ/XUk7XlK/rVfxc8c
Date: Fri, 23 Jan 2026 13:51:29 +0000
Message-ID:
 <MEAPR01MB36543C13D54D53A2E87C1942EE94A@MEAPR01MB3654.ausprd01.prod.outlook.com>
References: <D5B9E3F5-6C07-40DB-8303-15BE77956988@edvina.net>
In-Reply-To: <D5B9E3F5-6C07-40DB-8303-15BE77956988@edvina.net>
Accept-Language: en-NZ, en-US
Content-Language: en-NZ
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
msip_labels:
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=cs.auckland.ac.nz;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MEAPR01MB3654:EE_|SY9PR01MB9735:EE_
x-ms-office365-filtering-correlation-id: a92d5b1b-eeb7-4d5a-71f6-08de5a868281
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam:
 BCL:0;ARA:13230040|786006|376014|10070799003|1800799024|366016|38070700021;
x-microsoft-antispam-message-info:
 =?iso-8859-1?Q?NO8gsTLj2zI/II82TGNl8zFXZdJuxWfdjmXcZNRg8tqCekOD2p/xFEwjp9?=
 =?iso-8859-1?Q?5gpbs+0CB6QhZ2LY/QlOIOFpG9xcB71V5NjQRfjPUEI7U3vlcloFcbOcBc?=
 =?iso-8859-1?Q?eoKPoZfDb/cCuWpaSwpWB+cfPsCPYwbDk+wz5MysgdZ7cYBaHVZHJfmad9?=
 =?iso-8859-1?Q?wG63du822z4+7cmuJ9cUnf4yxhwjEfgVwAKFk4+RiktJK10iaeZLxz1pfG?=
 =?iso-8859-1?Q?dmJg6q/RZsBG1phNqVKSVhg8n4k7SANLGRWsUFjFtaw1G29+blL8ZL2ljL?=
 =?iso-8859-1?Q?cqMR4TMYAApZ46mtSwd7rRY6edFF/d1HPo+dvnJ8DoFSKAcFFc1zEwtJxz?=
 =?iso-8859-1?Q?USQIbjaMBO55TT3+2ujdVseOOWH9f5EUJvDZl6VwmUC/+gcWUtgY/Oc8/c?=
 =?iso-8859-1?Q?APytgiasLBvIA4NYjhBJKblHeifGv2EaLqwDCe41sGHxb5TIEbx0KPwzj/?=
 =?iso-8859-1?Q?L7j+dXKY8CtrzrUmTvb0ACgLPshV5NDWtgMD1Z7eTILsOAKlEqFQXsQRt1?=
 =?iso-8859-1?Q?1/zkmAMlkJJfYA3b+ueli6vATAewOsmoQbF959J3g3V/FpUWXCZZO4bI98?=
 =?iso-8859-1?Q?YZtQevpncgd+8slwmrQlRsc+gLyF4miFbLo0Wv0KDOwrtO4Secshi3qdij?=
 =?iso-8859-1?Q?DvV/EYHSPzF/VBnS3WxiEmTvG84UEn9HDpVfhK50jwogC3sfnptyfxqzd9?=
 =?iso-8859-1?Q?sTWU2kdBprXr6HFO6bLjckV6nEPp/Myfm+ELFsE7+SuCvgVqweT+mvFKCr?=
 =?iso-8859-1?Q?88prW9jYpAjuP5aC38NugOcpvy9lBbJKSzvMbjviiDoqduQ5UPORDr04/l?=
 =?iso-8859-1?Q?yhYjMs+hSD9+W9fLr9w/MLFE6/FjzuU80Hyy+a3qMh/j9RT/kfwz1hKsTi?=
 =?iso-8859-1?Q?ZRdJKw1QXURaTnGQV76ykd7QyrMM66iQhSJsAwbKYLmJ6PIR/Q+smNVYWZ?=
 =?iso-8859-1?Q?koQn+bOGp82p0Frhi2DjEFqYghohAZYNYyop59lbgyS4H6AlLk8An1roqe?=
 =?iso-8859-1?Q?N/9et+T0P2ibV97B5h04QvECf4ddd8mk14QEQlYAGQtp7C1Up2nJx3YSRX?=
 =?iso-8859-1?Q?/ZbttQzLti6WgdDNet6udWEoP3N6MlO7TanDi2OVz6PdFGXKePKOfU2QgY?=
 =?iso-8859-1?Q?iLQd/NDqCDfhMun5Uzd4YoK8HWtyWtGBBGIejb3CYwj+1M2g90vjOZzAWA?=
 =?iso-8859-1?Q?f8XoZkDw9zsXt78SbEYLr+J41Y4YjEcjwYPQtaEbfM68zVpeHvN4yJ2fcH?=
 =?iso-8859-1?Q?xW9TkuTE7Na55Hg6Cs8dlmm+STkOPezJJx+16HF1FG5XLbYFcQ+8rojJR3?=
 =?iso-8859-1?Q?/hqF8Qnfn8FLUvfUKTXDRoxkTW7UHdeNAqfngGgCNWDE74XzRvolIoilLz?=
 =?iso-8859-1?Q?ct/ZBNxVpGgtp8GWddTUhVVi6SuGdHW7knUX2qkydT71vTvMPJt7shko/9?=
 =?iso-8859-1?Q?gBuF8uJr1Y6LgiyviyGp7blRGamKlf2vz5bTg5IN7uRroed7ibsCr0jGwA?=
 =?iso-8859-1?Q?EziFlAOh6igSbKMfHuIL1TTTQrB99EGBq4/O+jYxfrmhhZr4BT80Efb3hp?=
 =?iso-8859-1?Q?MPpDw4N13C2X5pxo0MtWwnWieUGo+EcaUO+n9IQSNKemUHbaqI+9yEi3E9?=
 =?iso-8859-1?Q?n7VP14YHtMj2cUGmDdYLqbrHckbLVMq1Je?=
x-forefront-antispam-report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MEAPR01MB3654.ausprd01.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(786006)(376014)(10070799003)(1800799024)(366016)(38070700021);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0:
 =?iso-8859-1?Q?kj8uURHMb7nHI5FAMs8unI/TbGjiELboSxs96vik3w9VFhrr4tgkY8sDeC?=
 =?iso-8859-1?Q?38IUTjV20W4BjRNLvQPGcYpFn7WsCyamByByBnokQZPvmSHx+WnYNhXZB2?=
 =?iso-8859-1?Q?12VVn6M2nxexi2kSSYr90mGGSm/ZwOhyqF/YF4VY6dyAh1djwBg1NvKEkl?=
 =?iso-8859-1?Q?7KNEFUholT50n0lXeqDSqS3pFQhslQSUSkdhKzOVEj2hly2k2tWfSJuXjs?=
 =?iso-8859-1?Q?Cudm5XMobwgw92dcCV1jnkRSGeizX70oPuZwfZiIvriABIVQxap+rB9MWs?=
 =?iso-8859-1?Q?sXys3V6LHr3dB3jzwbPtprC3ubqAhzEaHCyVGH/ue/hoO86il5KgjrwN4J?=
 =?iso-8859-1?Q?2XZcyJD2lWA86utUldoHtwrB3zP2x7zJzj97N3ERcm84W/mNN3u/Z0R3QT?=
 =?iso-8859-1?Q?+Mrb8zmhWJX2fEiAamnWTRapZdHTN4Ehio4XZvr4Y7K81zYApGBvJNLv9v?=
 =?iso-8859-1?Q?CGLYWqyiAMIe8zvCJ/ctY5nk6bC+C9cdfFHWvov/eEK4SoFUpqajBLb981?=
 =?iso-8859-1?Q?zpRIx/pwm/Rhra+5BzNJ3uQzpzMsQc230etP24vkqZW34NAMbh77orlwOJ?=
 =?iso-8859-1?Q?zWINH/4v9sSlvFSf40YYPfDteG4EY7UranGC6Dgzj4xwbC5vunDLwyViZW?=
 =?iso-8859-1?Q?pTzzJcqfxaF/YVjJ6hRLaWSiTZa6SIIbSPXsBx1DNict5X7HncTXFKSOCd?=
 =?iso-8859-1?Q?H5t0bBxSFTeB2pJsUT1CT+FvqnluNt4LjxtpiXbk/okMLi5HXvPIxz7/lS?=
 =?iso-8859-1?Q?pj2T0FjNbdb7mBNQo52ChOkyzNml6nLMxMdG4R4r3DxiuQxGMjte+FeDa3?=
 =?iso-8859-1?Q?S5hcqX/yxeINqZxrEwiCtY6SXVLLHJSSZ0TSfgG/5aNMP5wdP7i95e9Hxk?=
 =?iso-8859-1?Q?gIJORjYtDv51YYr/iqdqpm30hzM7Jq4EUqkbjCrewPLJxDY5PyDSda7bHN?=
 =?iso-8859-1?Q?UD87Q1eojMCtWuAfesH+y1Ig7QT9DjO0LJi+psrkXEzRQ6xCp6sN2aS8pF?=
 =?iso-8859-1?Q?Gb74qeujkBJ7F+gOJmAzwRohu9HYW5NdyitHOKNPtjn7AtK8J7vnv+mZ9O?=
 =?iso-8859-1?Q?2dv8RObumKXjFAaDziiClTevfgIVk/HPBy71T6eGb9GHswmFmMfkcRW8aT?=
 =?iso-8859-1?Q?FRGg15KP9aEh5GlXP0jxFHEBYa7cVCoGwTS6zoq6IcmSNxeL85LI50YOBK?=
 =?iso-8859-1?Q?Rrezf7AxlqI5FkJAj3D4mGuVF34vVJ2ETlMDgkrF9j7QqoDYaMCLTzHoOx?=
 =?iso-8859-1?Q?B6qQ2jVK1Kf4oZEQ5pkJIMA6l0wfZB3HukVvi3ZHzFNzuC+wlCThARAtra?=
 =?iso-8859-1?Q?3HVDF986BY+Pq/99US0UKoBTd6U6srIrw0KF6t7ujQv0tzv1vw7Z+FcaTt?=
 =?iso-8859-1?Q?TCyFunBzlAk2lrY7Y1UldWFGgmy49CxqWHi3EGtaJyDMh7YNeCHKRAmu8W?=
 =?iso-8859-1?Q?fcbATmCyoeOeXGxIC5zWRDcWeYaeU2YLdnwUtSQLmCt9wbNybDJS37Mtp6?=
 =?iso-8859-1?Q?V8l6E7lWlLycFQSAEOUVUnsCemKlqoIBibRbGD7FKQ/LwmaCOHFr6HKFPl?=
 =?iso-8859-1?Q?+kfTsyR2bbEUbaciqRbUhXTchVr5wy5t5jlsWcnUbayFTf9cpI+KrkuL5c?=
 =?iso-8859-1?Q?hGf0/xHHNHJenIeNLhx8ifKuQLgGlE0u7r+A6o3TYZnrHtwdq3bIbIRnjS?=
 =?iso-8859-1?Q?tzjCvc0rkDuZXrzhNtWq/pPTf1e9ZHEalTikQt+7y7KFc4OBNDTaKKlbjl?=
 =?iso-8859-1?Q?BRCrTW9/QKXZIsCLs9NejK83hz5QMGi26Xz/PiGAQMGkWsNxxQY0TAkJyG?=
 =?iso-8859-1?Q?DZvLSOvpB6znAMZqJDSc/LN3wGAHWjaf/5q6NwdD2eKbzKPak5vMUR0957?=
 =?iso-8859-1?Q?7H?=
x-ms-exchange-antispam-messagedata-1: 6mL6oblKqS15uQ==
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: cs.auckland.ac.nz
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MEAPR01MB3654.ausprd01.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a92d5b1b-eeb7-4d5a-71f6-08de5a868281
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Jan 2026 13:51:29.4346
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d1b36e95-0d50-42e9-958f-b63fa906beaa
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: eDYNJPncjq8DKbjPW07yjpicrH0EkcvdueHenV35fJS7bdfkVuXEGaB087aZgtP4DD8OLbNdoZF7gPFNKCQyEq53p3lQldvPnCa4M+y9O8w=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SY9PR01MB9735
Subject: Re: [oss-security] Vulnerability management and Open Source: FOSDEM
 BoF

Olle E. Johansson <oej@edvina.net> writes:

>If you are heading to Brussels next week, please mark this session in your
>calendar:

For those of us who are nowhere near Brussels, will any of it be streamed?

In the meantime I think the cURL folks approach is worth a mention:

https://curl.se/.well-known/security.txt

(Third sentence).

Peter.=
