Received: (qmail 24434 invoked by uid 550); 20 May 2026 16:09:52 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 24401 invoked from network); 20 May 2026 16:09:51 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualys.com; h=
	content-id:content-transfer-encoding:content-type:date:from
	:in-reply-to:message-id:mime-version:references:subject:to; s=
	qualyscom; bh=HttU8gAJULxKE8D3YlASq5mfFcGw2XGc3Jun2v+wVyY=; b=xa
	boCGoUfyTxBo/xiEsJKlCUXycWT5Nt3H2mXhhgXziD5wwkjdE7QGJ7JLJEVMK2Zc
	uOLAN204iGgOQPaYBJ+MiYnjcMN+eZCZsWbq0+yUd0cn8lYovKszci4fi6fefc2T
	P88PemFmdtlkVEjo0PpzTtDqRoAudFmB10jM7TPtVw4F5TRtw7BlSuzgx1t393tZ
	Ikf7WX5HvAN541iF/IQPZNhfJwJm/hmlDPv1cDnejieELThkW8BzOewe8gw6eGmd
	yWLcBDK/HYM/LysDcAzJzRoYwrj29S0CYG0bSp3RJ6y/sgVfvZo1+12+iuOvR9Bp
	3aatRCYzuwa7eVWHEFZQ==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=B8MoSuJKxSEuACXUrvYdRqI4Wx/FBihCNGcfZ30KNRNAzt/NqoezN1KM5PvCQq1mabrOQsLUiX8W7MJrNZQQzAhcJxOH3QopDEdy9LhSL2ThhfAvcWt43KJu3euEgzRC9v5Lsax6bN5eKAArN+SWnM9H0vi0vyrzry7L3oeU3ehNjyoF+lkZDSBe7tpdkxL1iOZmRaHIbgzAEAPyIQfT8vdRDjG66JABO49lp2Y5zsc5B11qO7bCiVqomJ1e2q81IyWt0RXUqSk0VKyGNL69TPXQjZ+p0yJZgzRXfsO21mwNVye1FskIdRedxXB7j4AT/Bw1x1RpZ1IbCoes6jMrvg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HttU8gAJULxKE8D3YlASq5mfFcGw2XGc3Jun2v+wVyY=;
 b=W9oynMq7xAtC6pOL9TzVgQ6EzFamU3Y9Qj78Ik6L0WRfjld/Vb6pIo8Lgmk1JD+eypuL3vwIiohIr/uyU7mzcRAeO0qWlIYj4nToAgOPeqbmIR73GsLD0vjf1hEa0K5T+BSrqbtJYXjWITJngNAmIxRoVWpJa9ki45Rulgdn+h7FVcdWNAb4UBrDHqh4IGGo3DHm9KbWlJjg++aYuAeLbHr8kBUMsIgBZjHJfhpR3OfCSSAwUxAYEHR0fxkEzMdtOD4vyLNY7ImJMln++c6T+MxbBv1Tabh3E+siBpB67bitFiwEB71yRrap7jbWNLaBajGTyKjqDZkT2yvm4ifrtw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=qualys.com; dmarc=pass action=none header.from=qualys.com;
 dkim=pass header.d=qualys.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=qualys.onmicrosoft.com; s=selector1-qualys-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HttU8gAJULxKE8D3YlASq5mfFcGw2XGc3Jun2v+wVyY=;
 b=KM/8dzwiphPficT6jZIlSl8LPHxWA16J3+w5kG+Zfarr709+DpF8QSpedgy9OtRece3s1Xc3ET49yq1l3BfNZM5Iy7mi404hEFCLM355KrzDmrqSYC4rQ4vayPi2TmXb5Al0f8nID5EVdVvpZC7TB39uOKS5oO/9jrioyw8BtVskQ9CNsnSt/iKrl3D1b2elZkqMm1zid9yW86RV67m9Fo88wgdPo9ZIRLL9P5bcS/U2IjtGH4hkQBq3Duvaa7k6yhd6HzmQzHiuqC0Hh4dKtio1M4lmLPR5ZtHfxtvf4PrkBavRCurocCRlXTPaRmsltQmqegU7izduy1NHG1jf8g==
From: Qualys Security Advisory <qsa@qualys.com>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Thread-Topic: Multiple vulnerabilities in AppArmor
Thread-Index: AQHcsmaIKu96NKiXikGSCaV0fqpbFbYXgTyA
Date: Wed, 20 May 2026 16:09:39 +0000
Message-ID: <20260520160921.GA2689@localhost.localdomain>
References: <20260312212345.GA2728@localhost.localdomain>
In-Reply-To: <20260312212345.GA2728@localhost.localdomain>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: LV5PR06MB11218:EE_|SJ0PR06MB6909:EE_
x-ms-office365-filtering-correlation-id: be515755-fca2-4a1c-5c13-08deb68a31df
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam:
 BCL:0;ARA:13230040|1800799024|376014|366016|38070700021|18002099003|22082099003|56012099003|11063799006;
x-microsoft-antispam-message-info:
 WMxzzz8a0KlmS6GH2t/JzUbtZqU8l4kI83fhb1KTVFL7kEcdfI/OCnoX9mIBNB/CMdwCKTZXOesk3bwwNypjC+rj+GzcvCVjNYhjBKx4wExWVfGlM2eEfTjT5Yd0KE/ayRSBR9qxqwqCpb7KjDKenE25GwqHmB18xClXpCjhFnTOPDAgmDVj9KUlryOt5KOY6xtbopFeJmiEW8Fm+zg+DMZg9B2qQZStsQo58FLGAHXJ4QM+mD2sA0CUK8AtiYQ6O0OJ8cxoApel+qYAlnXk2VBBwLAkbTYeY+tAer1ImUiJeBTnl3puCaGnAH9rHdTs8Ht7kBDV/3P4zSujMm9JShnscpG8XHxNck2EhknIUGVXvXHof48XcrEy3OoZWRS4mZwIhjKfRV/KN/C1bl8mOe6wx9qmEdJ24HY0MnYYegn3y4Evw1bGFOMnOK6UqFm2tlGdSAO3xXQr369J0AXG5tjE10V3h6WGL1cMmrhtiCadvgd1eKlx07/+fgHSz2uXprdn2hDCR7FYuIESzDpa4Zm+LAVam9LmZk5fT/NVaI5VQjrjYqX2VQXb2E/gYAsVXsLj7U0+fPn0aG2iBql+qOxJptPL3cCZu0xddbos8q90N5+b4f9WBklvC+fwCHRcp76pRUvn3R3OAp0KZvzmMlw+yAcCKlmLlbvgmI6/GjSzli+PBa6CnWDBUhqpOl9bDVKlausW5DtWoRwalunndvEMEfgiMLklwFu3uiL/dlLrx7s5BoM7y24SAMZXfRx2
x-forefront-antispam-report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:LV5PR06MB11218.namprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(376014)(366016)(38070700021)(18002099003)(22082099003)(56012099003)(11063799006);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:
 =?us-ascii?Q?+Xa8nyNDUY+mN6pt0vw6lgUKkYY/N8ylDlHRDG5i1/yQYqdegPHJGfA07KGv?=
 =?us-ascii?Q?jrDTb0rwjL6wqaD5BYgvnwL+I7ihMKTm/MC+Cb4xKBakzvslz021Ahs7JkfF?=
 =?us-ascii?Q?NWZ5+HmxtPOZgCRQRaOCZ1Y3+/rmhheSGcBb2mxGRgWrR8MmjblZMvLG3OkQ?=
 =?us-ascii?Q?3bQORUNRDylCBmO18+0gJvFif7/eusok1EOP5hCkuyIHOH5+qpz4LG75Rgky?=
 =?us-ascii?Q?KJScrcGkhrWaKIrP8C91u5bqwwnHbUOiNr3HqOOkcJOpkAmAeGavKRhz4snS?=
 =?us-ascii?Q?FAP16an1rO1n1kZomiQcqkFHc1uJIU2X/cwni+t1vSXVn6F08ENCBcuA8cR2?=
 =?us-ascii?Q?A0AE47OMgIZ5z2jwh4wRwRGzPHgxLWfqXexmvAniyvneaMzHiaR5w353N23z?=
 =?us-ascii?Q?o+TzCBW/ojw63y0Us/FwypsLlrWKnI9jpczcXIFeCqshpdy6p6qFk4AKMpxv?=
 =?us-ascii?Q?uLRE381pukZoc+KpswEEo0ZcDicovoD/ZtSCI9QkO182Ai006ylgPis9wxy0?=
 =?us-ascii?Q?Ekk3xRuI0nkktjOU+V905irQNAdbo+hFrH5av/dpX6SwQjc+ug1edRwN4HIz?=
 =?us-ascii?Q?uZOwkLoqxZAfMBECuRrD3IVVBG+7Yac7tG2J1GZIWVQqWItal29/Ebgn6JaS?=
 =?us-ascii?Q?DEaL/n8nGX2vLbHlFJSkVnCVbMTBOxTqy5kscplWPpa9go/Glet3Txh+L9mN?=
 =?us-ascii?Q?s8XJPbvHI0MmDap3NjiINCi6hWg3tSMkyKBjTxlv9HtIBgGjjNcLaA4GkYYr?=
 =?us-ascii?Q?uzYS/A6eVpI9JLMlD3B5VvmpA1qSjd0xJTLUQwmUJ4Q5SQ8Og9pOHZBJX3kN?=
 =?us-ascii?Q?NkxpFoUTz8GHJnk0n3g/pKu7VuxP0Z65UU7fNh+1gqjOIOGR8q3em2D7vyJY?=
 =?us-ascii?Q?NH0VRYopG0wkqRdh9FaUzLARDzJl3OutKh/M0BYzvvzZ50cG/5xIpnwkHsho?=
 =?us-ascii?Q?dnMOtprUtaC0LOUzANdi5K0ZpTvomRSKns6t1PuaDb0t/ztDzjN1ATmYpaE1?=
 =?us-ascii?Q?b52YVDOS3qUwIfw5ZgC3q723cl40glIPDc60AiKtJf7QLSxBy5jEAjXNY3Cl?=
 =?us-ascii?Q?QFrijFfuUZJzqGTiYnmIY8oCQvDuzP05ZvXD6BxMQ9vanOUaA5c0EaoPhA92?=
 =?us-ascii?Q?h3XzqzxtnEbLc+zwlC5MaPdeJIzo5bZfcqGLqtQ4eSh75KgHWcii5UQJsHcF?=
 =?us-ascii?Q?lSK6kzGH7Z5XoVLn34eodzvYFZKxgRo2wwh0iOZnBdkCaxtf/0vHpMqj+geZ?=
 =?us-ascii?Q?H8yMY4gD4cCQLkpbirdRZWNCjkjJtA7PCSOayrRybE7ChOu4OrAJXROwuJJ4?=
 =?us-ascii?Q?lZVOD7Q8hJ01L8gWhKSDXAc71NrO7ROMbCwtiIGjfWnPBRIjbXCoKv7eMjty?=
 =?us-ascii?Q?gQ6wjMDoAJ2x3IVPJ0r2Vsq5weZlo5ZWXBn7oLfccmEbwhcZeRQGUkYD9sP1?=
 =?us-ascii?Q?XSz8+mg+pTpKrno9VNzW1lDS6BhbXAfndOzruETNzg08uQwlJ/HYE4Oe+COM?=
 =?us-ascii?Q?tV2XuKvVraDh/g0V/BaaqZD5WoxoKAZssn1nogZg+lAfP0zp0oqmwaCrIaCO?=
 =?us-ascii?Q?9D/4EaO/DtnEyzP+HDxc6v5eWgJDn4ax/RXYA7Nc+8qgYkfU1yAXVFqZ+VQE?=
 =?us-ascii?Q?Ceu2l07iXkVF10ng1Hp2NQKLsQ68IGSDka4nf3Ttu9aVN1VvcC3COSH4NPlr?=
 =?us-ascii?Q?OMEM/+exaNw/Rn+9e/VQb0ID1LTSh9MW+6L+nf8zhFne5o+/To+0JDNokqx1?=
 =?us-ascii?Q?e+BHqE9O+91ccTOO6JHcv3l18RtulRY=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-ID: <274261228F34F3408AC430A81578B553@namprd06.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked:
	aFrvhiGYnHy0JVxriLG5h15iPvNEc4oy36STzBNjJRBPIASRRG86V52uiSTrryluf7BD4NgWJvAjlaTOeJTEiNLoXo21Pr+ehgawes9Dr0afYNl+PK4LXNzkdP+kHI2BduiGZpJHj1QsRU0vrJgYSdbc7Ly4lE+A0flXyLaDa6BNa+Ga0dPcYOGZ5nmAJnOU/JeDQVtzSXLNC+4PH+otwgpfjmBbs7e/hsRFZx/bkI+PHITTGWxkpTLszZ7jq0pF83TRyOdK8T+FWXDPbyQBSoR4W9G75Clf9PXd/FHsu1KuC9ZOTL9zxfEhb0f6Jm4tWGcQh1P6mmBLxMghBdqhnQ==
X-OriginatorOrg: qualys.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: LV5PR06MB11218.namprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: be515755-fca2-4a1c-5c13-08deb68a31df
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 May 2026 16:09:39.1102
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 81a9ef9a-9a98-4b00-886a-895a603bc029
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: L5bbR6tYROcVplV3SKOgswjucMr3rw6ydaUpj6koM5j+wZBFi7d7h9C401zwxWVorFOUwGx4U8BC0yMXAUJO5Gifl4IcgOxpoBcON7cWmJg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR06MB6909
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-20_03,2026-05-18_01,2025-10-01_01
Subject: [oss-security] Re: Multiple vulnerabilities in AppArmor

Hi all,

Some food for thought. After reading Solar Designer's post ("I do feel
there can still be cases where a carefully timed notification to
linux-distros would work well"):

  https://www.openwall.com/lists/oss-security/2026/05/01/2

we decided to reconsider our previous decision ("we will coordinate the
disclosure of kernel vulnerabilities with the Linux kernel security team
only"):

  https://www.openwall.com/lists/oss-security/2026/03/12/6

So, for CVE-2026-46333 (a logic bug in __ptrace_may_access()):

  https://www.openwall.com/lists/oss-security/2026/05/15/2
  https://www.openwall.com/lists/oss-security/2026/05/20/15

we tried the following:

> Timeline
> 2026-05-11: Advisory and proof of concept sent to the security@kernel.
> 2026-05-14: Patch committed publicly (31e62c2) by Linus Torvalds.
> 2026-05-14: Heads-up sent to the private linux-distros@openwall.
> 2026-05-15: Heads-up sent to the public oss-security@openwall.
> 2026-05-20: Advisory published.

This worked reasonably well: by the time we published our full advisory
(including the LPEs to root), most distributions had already updated
their kernel packages.

Thank you very much to everyone involved in this release! With best
regards,

--=20
the Qualys Security Advisory team=
