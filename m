Received: (qmail 5265 invoked by uid 550); 18 Aug 2024 09:03:36 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5824 invoked from network); 18 Aug 2024 06:36:01 -0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=qewSnGDGBh4D9S8Fihe77YCi9YfO91/H4AA0DK0YoVOTc5g8JyMiY0s5n4q5f8VXGrt056fkjqSfnRjsY9qE+aljqfCAHyLsD+aJ5SEQsteblaDZVhYQl8/dI9DgAqi+eMqML/alrJ99gT5NRzsw0BCQ/vWpXotE8xlRnjPrwJUE4eWO8+rVIY4lJ2bkzekZ9X5M6eXsTv2iUd6azpsi/QcvVdEYT2vPKaeAOg3oM+VQFHrbBZWfCrJ9fDEgizaMwM6YDNXEQM9JxyY+pS2GD/9ROhSRM4wNqLCts8QBeTAoOk1EWpqZiDicw1eDN2E43z7wy63ewNwZBC/8eQGn1Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=OMXHEQYwPGO8oBxsQZJ3VOamvPVEhwlmKO7O8CxmoII=;
 b=k0Lf2N9XqW9BvJVoLoZDFl7Do172zbnQdfolwkpfO0ehSccnb+61xqGb9dA/KC4xYb9MFVSR4t3sqtDQohCCH98yKJ3MZHoAJWjuH1c9zwsHhjjoXQp7jlWSl3nVuPo2gOAKJM97fM9/TuROIzlRtazI4OLMLyUWyNgWbitg5w0T4Ln8gflJedIMvXrO43WoLak6aAe/OGSKdHBDxtZ6ZSjDE+XOzOLGwgq5e/VvhPD1CYLnL3QWkXcKrl1E5UAwPhfOY8skNqP6cdacGQl78yCA6vw9ufUyWYENIRevEVsIUOWy98TyX7P0vvZ8sDI8fmuhvCCjUbJ12Wptln2ieQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cs.auckland.ac.nz; dmarc=pass action=none
 header.from=cs.auckland.ac.nz; dkim=pass header.d=cs.auckland.ac.nz; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cs.auckland.ac.nz;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OMXHEQYwPGO8oBxsQZJ3VOamvPVEhwlmKO7O8CxmoII=;
 b=GnDssQQX3HJ7fEIbuhRNBIt/0OXjaZOg4GwfP1AkUnbBSB6stfhguqAEErMjPiL4Fsd3sfNxl69NthgHH3n+A+Sa1JD2/6NYqYx8WmkvQxL/Fz/+XUgObMkeuZdHhGFQ1+fZ66agGKuDfC/c1eV32eJ5dPaR0kCRWO/ukWnvd9jHud/KFgsBERTPY9HOdoD2BubbkXE027/L8ZDGom4hbzyanE6ioCf5x47TDBJX/2Aqrt/6xj2s/DVXhFcguva94XnrIFes/Xv7tONDl0lPMXClpJ10qweVLX8q61kgyO+n2ezWgz3ZjWh1Q/Kzinw/TKe7HzoIkvL42bhYKavoIQ==
From: Peter Gutmann <pgut001@cs.auckland.ac.nz>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
CC: Neil Horman <nhorman@openssl.org>
Thread-Topic: [oss-security] feedback requested regarding deprecation of TLS
 1.0/1.1
Thread-Index: AQHa5/PQ5IYqx7MyhkSG2U2pFEx0vbIoGFyAgAE6YgCAAL3ygIAA5VYAgAGrfIk=
Date: Sun, 18 Aug 2024 06:35:48 +0000
Message-ID:
 <ME0P300MB0713D8A7D829DC25E6520BA3EE832@ME0P300MB0713.AUSP300.PROD.OUTLOOK.COM>
References:
 <CAJbOq16ebWS21u439bcV764HhaeQHF+eO64LdMAAKFgjdDLrMg@mail.gmail.com>
 <20240815111847.406cf6c1@computer> <66BECFB0.3080704@gmail.com>
 <CAH8yC8ndnyhyMNaQu3N_uUM_yXhd32PwR9odEOeoDe7jC5fQLw@mail.gmail.com>
 <66C02F68.1050609@gmail.com>
In-Reply-To: <66C02F68.1050609@gmail.com>
Accept-Language: en-NZ, en-US
Content-Language: en-NZ
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
msip_labels:
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=cs.auckland.ac.nz;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: ME0P300MB0713:EE_|SY7P300MB0494:EE_
x-ms-office365-filtering-correlation-id: 2d742778-8ada-48be-502a-08dcbf4fff46
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|1800799024|366016|376014|38070700018;
x-microsoft-antispam-message-info:
 =?iso-8859-1?Q?WB+RWD4t1lAMmOxUYmqXXrkyUijL9Hzzt57E/NAN98u24LPbqZLlQoC7ca?=
 =?iso-8859-1?Q?50TQJIXd1mj9kvOF0oM8RvQQyqnySWvqLEHVsRQe8uDzP7YjuJP1XlKMBn?=
 =?iso-8859-1?Q?1tRmwXO/7KZAvKt8KR8aD/qopEToMdhwxS1b86gA1nntc7jQ/lzCLllrbo?=
 =?iso-8859-1?Q?s4bwxbH/0SETytRVGJzr/5dl5JMoRFVhG+WK6hBKQ7NkrBx5mc2ztMS+K9?=
 =?iso-8859-1?Q?Gt9j0LeRBydKohiBVIzVdzsot4rYOGfE0ZK3wPgmAmFdWF0EsZhnnwdN2y?=
 =?iso-8859-1?Q?plaiA//PUqF+5ldFunrBsZ/ileEkhfnmuCNDT6k8xxUeaE/2xM9UNrOcmc?=
 =?iso-8859-1?Q?Fn/T/Txh2H7cTxzmi5b6WP6h5CskeSkVl5IHNExHVILiqd3wk0cJvaG/iF?=
 =?iso-8859-1?Q?E2DJwHJ5uMWXpgqjVhT0fLUhe9Xsf2ufslsvFFMKl5QBM8wHQ3LuLQFXTP?=
 =?iso-8859-1?Q?C5tJh1nEWGA2J0jdZMogElau5vKDW8S/UD4fiQ016OiiSGfF19K3pX2N9U?=
 =?iso-8859-1?Q?Kn1068FUb3ftKuZRvpA/ZuQ/gaV9CJQvBv5PGhtFiMjWzlCvmoKfT2bklg?=
 =?iso-8859-1?Q?7p0YzoG6S6ht7T7rHrvwB9vxjXeQm0Cwxq+RL9pQZ3Aao+ZzlZrKnecm6v?=
 =?iso-8859-1?Q?N6MqvOZOuOTWwrIZSvjaF5KrSVUtsi4/F7k8tw7Giohx5lM9VxhVJpVH4i?=
 =?iso-8859-1?Q?qwCaP+Tzdq9mw+tHu6kNR3Uq6lMigxDpZIUU9KpdASET1YNLfYgw46RLAd?=
 =?iso-8859-1?Q?7g9Ze9DwspkEGI+N2mtcGOHR3tCGTRY2K9Ie2WTB5yO8d+hnmVjTpsgv8Z?=
 =?iso-8859-1?Q?l9SKil/QvOdo1wnpQD7LlLX2ObTeDXf8vvNP/89mW7hWTIgPheBa9wo5aI?=
 =?iso-8859-1?Q?nqzzTlEuQbjxAGePNlWH7sndZmHvoJzilFpAibkV+Vx55MEbs3IK7Dz8GM?=
 =?iso-8859-1?Q?MuhoDlMfM7TBULMjbvTgCbP7acz2zTFHKP0OidDTWqghqYUwC8QbFmEhLI?=
 =?iso-8859-1?Q?tcgmptN6ixGiV7x9q8xUMdB+XvTGEaLEOG8k/h/3+Z2xaO9jHDh9sWMr1K?=
 =?iso-8859-1?Q?gEy6DC/eYpTbLY7jgnmOtPpg7hhdaHUu1vet8DHxk/KfYrugmK4AQU5wKo?=
 =?iso-8859-1?Q?BDQWvgKAcO1vcPFLxzPJ4dkCGBppKfFN1VTXDtbARg7S2+FB5nULCEatJB?=
 =?iso-8859-1?Q?nUpdYOPJ7e1DY+va8MzK/YIqbwsncmnKGvru6kP75xNlOAg3ZV/97C2pLL?=
 =?iso-8859-1?Q?ZYt8IdjBrFRJ2kuG4i/YvIPD0IXPpe/61SmpWUnHRS64tvVSu9y89u0lKf?=
 =?iso-8859-1?Q?VH4zc0QZz2blc7cBKD8Ly6f0ENnrm9M82Z0L1SrT/1iUYRWu+ik/Fj9WGO?=
 =?iso-8859-1?Q?3i2FIgayxt6ZQzabFc06s5evZx82FGtCsqLhif3DbkNsGgb+UYnGsMh3jm?=
 =?iso-8859-1?Q?Ephk3UF4rP2VU9n+TGbTU2IKw9rCFqx3uE+wKQ=3D=3D?=
x-forefront-antispam-report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:ME0P300MB0713.AUSP300.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(376014)(38070700018);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:
 =?iso-8859-1?Q?xam52AlJVB8C4+BlmZUurigdzJ6ZtFtQsxQZxqbjvG6fLp+qqF2LyffNJa?=
 =?iso-8859-1?Q?GxMfT0LeU3hP3DjlM3w+8C8vnINEESpmW8ylqebeHz5r7/rojTH3Q7nCnU?=
 =?iso-8859-1?Q?z6odgjixNIWS4m/111ZfH9MbfkFu8umJgTeTIUQXNCfZnR4BNW167KBosR?=
 =?iso-8859-1?Q?Kn2JlmbcW1CXPjgRJHoQ6YVV8iveYxxZa2IywyXe6barEaUtRjUZOrlQsk?=
 =?iso-8859-1?Q?duxb0ZAGhjOyyVXAK8EXVQa/Xytab+UMTDxoTo3p/xzA12UCL3tV+6UBSa?=
 =?iso-8859-1?Q?fDMz/4gZeC6CboSnih/2dJhmsYnmdp/Qg6NV5La4Xb1ukzpQzYkZ9nDPDB?=
 =?iso-8859-1?Q?NCbpbCcqJJWvF/325tzutMdcpD3e4qe5Evo30J/bo030dZk+a5EarSLQQ0?=
 =?iso-8859-1?Q?Fk1Xd/oODp8IAT26syEB+afD670ltjHnJfpjdWvb/AqqNKZ/2jWEeoMZsU?=
 =?iso-8859-1?Q?5MJHAvX+ofXd2kninEsb34oCzo3onj2ZZGEWuzuMwbzdzH2/efFU5ygifS?=
 =?iso-8859-1?Q?jOxH2VZNvbPoJ/VFQYh2Q69PEIyAVJnE0k7wxQKpQ6nwU5/GSkcPhz03FL?=
 =?iso-8859-1?Q?JyGOkISzi3N/WoTqLpvISJ61pUq98+fndAhWk0INjPB9jKrsD0EAGD5gw9?=
 =?iso-8859-1?Q?tTMLxohqejGNxlQ/DDKKMHKlCMd3FU2Q3mfOSNpmt4MIQHBBYddOOdM8P/?=
 =?iso-8859-1?Q?Dyl1hzZG/V5WAAJmI3HaxovR5FSuFlBjINNV0BlGIQePQKoUUC82oLU8vp?=
 =?iso-8859-1?Q?XgPIywjVkmxZOIURAgV6FR0BySrzPC6dcjk4Gy6JCCxy7+siNw1jVExojA?=
 =?iso-8859-1?Q?pnhIzfKG5gDPH2LQWYmOjej8qUY6Gn9Dpt1jUL3dD8YYd+gzc2hDGSrh+g?=
 =?iso-8859-1?Q?BCgftZeUIvFRFHQc3VcroH3x7F3UH6fD7hXwJgJ1pdJq/1zLiTyt/go5zA?=
 =?iso-8859-1?Q?35JXo9xPeFKuDPc0uoG8hCL52+HSQVcy4ABdFbUQITIN8cQd4Gx2BpVokH?=
 =?iso-8859-1?Q?2148oYB3leLdQ0zGp9td4VmxZvIdpnr3CCfFVWzULZZCet51Kgj73yF/Iu?=
 =?iso-8859-1?Q?8sRD+lyBBElDhEDEjH54eFMOIeseHo2ujI9HobjXpxEc46Zz8s+KkxsL4r?=
 =?iso-8859-1?Q?BgXBxVSkL2psrTKh3cTkIHeB6fj9qLhwm6Zip0F9Uw3VaY/38vY6CwkNHl?=
 =?iso-8859-1?Q?ghxhAwLdSv7K1DjEsMC5uXAvl+MDHHngjOInAlY6Is7akbLFMGIYCzBB4k?=
 =?iso-8859-1?Q?WoF/EtNKAi0NjfMr3b+TYHd95KZI2DhTk/fGEvX/sS3GmnfiFiwaJdxrUT?=
 =?iso-8859-1?Q?0rZXdn0Wt9kjS29oVtVLt3zvZFu6sYKv/mXN/6jLA+jC8/vv+d4D6cBYv2?=
 =?iso-8859-1?Q?yheSvxQu0MsM4W4xEVOX6blfYH9z3U5Xr2IgWBmOGaH+i/4YU5ljusSCic?=
 =?iso-8859-1?Q?6K1p7Ti6PvjByvUe0yOGQaCuFitlMFrlV16OYvCSU37H1/hADBzj+6mm+X?=
 =?iso-8859-1?Q?i10SqpRrvtr2KMFae/GbOM2M1RG/4w5bABFeB2S/OPHMxL7nbnFIuhx79p?=
 =?iso-8859-1?Q?PR81B4Y+Dawj/PtDFUjm9QYwwvmwteZqugatBMIDYlS1b0QB6NX7Sak9R9?=
 =?iso-8859-1?Q?nH+z9mpjiTHOK6d6vAaVSjS4FLLMwSMC/yanRuRNArE64mvzjo+p46Hg?=
 =?iso-8859-1?Q?=3D=3D?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: cs.auckland.ac.nz
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: ME0P300MB0713.AUSP300.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 2d742778-8ada-48be-502a-08dcbf4fff46
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Aug 2024 06:35:48.5536
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d1b36e95-0d50-42e9-958f-b63fa906beaa
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: lfJmXEM8V0ln/7w8WAxDExF7yDQ8hgpXHakNq1lPge0DGPJzuqPFG24O1IvHBF8kY0vpP2T12wH9UXLOIbcYf7bMUmR3SoKAsNYKuKaGa4A=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SY7P300MB0494
Subject: Re: [oss-security] feedback requested regarding deprecation of TLS
 1.0/1.1

Jacob Bachmeyer <jcb62281@gmail.com> writes:

>The AtE mode has problems, but is still supported in TLS1.2.  (Why was EtA
>not also introduced in TLS1.2?)

It was:

https://datatracker.ietf.org/doc/html/rfc7366

So you don't need any new modes, just an extension to signal its presence a=
nd
swapping the order of the processing operations if present.

Peter.=
