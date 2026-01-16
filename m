Received: (qmail 17978 invoked by uid 550); 16 Jan 2026 03:57:48 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 20390 invoked from network); 16 Jan 2026 03:50:19 -0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=j/CUG46mDQuavPErluNiHIPj9p86fzxv+5F2vJsdpPikieQjp83XW8puu/TFOeGrA/I9eB4ZtTCVubN/ng4HSFVXxASvt3ytTW9m3mADUFWATl/5NBM0NSdvtHBDscOb0YRMI3I0Vk+ukRoUCh3NtpgG93n2QaZEhjPTAD1eQKrmanjP7ureSwWIG/mvkiyxvoO7hMzrz5PRlPgF/lKroLsVETmHfqaVs82TrB3Ctv1jtJpqXNQedDsek8Dtgvj1lHuSYTdbLlDml9A016PqPXWuXvF7DsmynTUUN+hbq4I5x+Z0z66sj+HqMt6v0rz8sHa9MT22Xhl0sT9hQM/J0g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ojTH4ILH02MJR5FqnZifjTtqc8scuoEw8SMQQdmev3c=;
 b=OSX7ERe5hkf0q0QJbWtVBusckFsXZTHa7hHK3aHNOQKAbwHmXOVPpuNuzrV2Q7Q070xnQ9/0Jmp6yHNPo8xfV6iILLUhMn0HnyzBxU6x02yaGubEuOIKw335NYmoMqwL9LZxjW/uUmrAce8qSY/lMfDH/hF/0aixkEZkPLxcFVsY7MDY3Dimis6PsiP/GxpyWvLC6NWYau0eTfXyiiVeCnEG3vFN45GY9F0QNd4TUtjcjaU9wxY52VF/nOrbPPhLG4NCbYHqbjV1CrG3ladbQ1Q0IUzr04S0l296HLeo4tdJgWsXx43BZ7X3Cfa9pgnUZc5heRK7M3U+8tdEmpX5gA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cs.auckland.ac.nz; dmarc=pass action=none
 header.from=cs.auckland.ac.nz; dkim=pass header.d=cs.auckland.ac.nz; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cs.auckland.ac.nz;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ojTH4ILH02MJR5FqnZifjTtqc8scuoEw8SMQQdmev3c=;
 b=Gw6FYcvd6IGbOCw90pOpbsQrY9vvvjAzk8vjxMeyHn6IMPWy/6IJuAVn6q7+HatqAO+HsEx7X4sarEW4hO6rImbN+zJCWjLkXlCXqNdO4cECK6Z2th2+gSwebWQ1G0+Zwo5Jn6pGySAE3B3/lUrDeEUpwsvfgqBzf2rkO6ywIVN5BDDgEpxfTImB2jbK4jGtSgq/XJp5WJhF3m9k8GIL+YwKooXEnitN9E3spchl8ZFbN7Q0ZBK88MpiLjSQnU/kWtgUHL0M17VW+msEM++NYuC/NAfratO4dH6PncDP3pmzawTPT7prqYW+5LbidpNV2Z8n5R9hP+I506nh68WoyQ==
From: Peter Gutmann <pgut001@cs.auckland.ac.nz>
To: Demi Marie Obenour <demiobenour@gmail.com>,
	"oss-security@lists.openwall.com" <oss-security@lists.openwall.com>, Collin
 Funk <collin.funk1@gmail.com>
CC: "kf503bla@duck.com" <kf503bla@duck.com>
Thread-Topic: [oss-security] Re: Best practices for signature verifcation
Thread-Index:
 AQHceOWNA9ZyWfnZ5Um30+gCdhSbFLU8L3lzgAAuSYCAAYX6a4ABIUh5gAHr2QCAAP8OGIACCr4AgBBI/0E=
Date: Fri, 16 Jan 2026 03:50:05 +0000
Message-ID:
 <MEAPR01MB3654EED3E6D2079807952CCBEE8DA@MEAPR01MB3654.ausprd01.prod.outlook.com>
References: <4bb0e4f7-a4f3-45cc-b519-2044b4b2871c@gmail.com>
 <928709EE-07AA-4995-B9D3-E83AC18353CC.1@smtp-inbound1.duck.com>
 <6F979157-91AD-4C55-8CCD-5CC5AA18BB50.1@smtp-inbound1.duck.com>
 <878qei6bq7.fsf@josefsson.org> <87ms2y1d2m.fsf@gmail.com>
 <87eco91kzi.fsf@josefsson.org>
 <SYCPR01MB3661379F4E31EE1A57A2F310EEBBA@SYCPR01MB3661.ausprd01.prod.outlook.com>
 <7002eb83-6227-4de9-aa3a-bfe5cad62320@gmail.com>
 <ME2PR01MB36500CA1987170A857BCF637EEB9A@ME2PR01MB3650.ausprd01.prod.outlook.com>
 <908a0911-1f3d-4359-b080-bea1a595a601@gmail.com>
In-Reply-To: <908a0911-1f3d-4359-b080-bea1a595a601@gmail.com>
Accept-Language: en-NZ, en-US
Content-Language: en-NZ
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
msip_labels:
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=cs.auckland.ac.nz;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MEAPR01MB3654:EE_|ME5PR01MB10092:EE_
x-ms-office365-filtering-correlation-id: 6b0b6ba7-3dd7-4105-1e52-08de54b25614
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam:
 BCL:0;ARA:13230040|366016|10070799003|1800799024|376014|786006|7142099003|38070700021;
x-microsoft-antispam-message-info:
 =?iso-8859-1?Q?q9XdHOLmu5TgmqxvLZOQetb/UUXx/U/cxHfoFzH4M3ARWF9JFQeaOTjNFW?=
 =?iso-8859-1?Q?P/9ExIhep9/HpMfoXwGLLL8aWgOlIxTHzzbseocCjb+NwIib88qL3y0QwC?=
 =?iso-8859-1?Q?55PC2CCxmpkniK95FE/kFHSAetZp9/nQjd1zKrzFY0/GrYpdPK7228OQE+?=
 =?iso-8859-1?Q?+Nm1FOuw+jr51Lj9YGkBHs9hJzc2/MI5DxR7CokOY9yuH77hVPHhylinQI?=
 =?iso-8859-1?Q?yTMLNBulgx3y2aOv7VnsqXEEqCGxa7Z2yAJL9VKviuKEhCNRqezlpBj48p?=
 =?iso-8859-1?Q?TvbIa7BbuYxEwNsVltuqcjxUSMk5Er3vWZ+RSax+wXn8cOdPhaQzG6tCi0?=
 =?iso-8859-1?Q?NC1/5g4+SBDMENYlNvj/V/HQXMgnbZvT3fDapjJibxMeHAbtIJ5X4McCtP?=
 =?iso-8859-1?Q?svZWa0Dwkam2uWKihXuv0qP4shjAwrhCG9LfvBXcv5mY54zBRMU1VAkOfK?=
 =?iso-8859-1?Q?GmtAV/3B0+xm2qWNH2CDi+4R3eWaq49RE4DJA9845Nttya9+mZBrVPM+aA?=
 =?iso-8859-1?Q?Dx3aftdWO32OpPgYPI3b9eVuFA7Ve3xb30fgCGcdsRIh7aee96zYuAYeKx?=
 =?iso-8859-1?Q?g4/RUIIX0p7cypGjdMy/kGgxznpw0pGvupchM0zYo/FOv8Ins+fnRiWzAn?=
 =?iso-8859-1?Q?JOBKLW8emivEXatDwa2C7AzR31+oPy+GGwrd6uzws+s54O4gDw9dS+mZ3O?=
 =?iso-8859-1?Q?9P4c85Fp/4lXWzYdWUVLx7EcGjdxG5WEf7HtbwEzGRQoywNR1WUwJw1luw?=
 =?iso-8859-1?Q?DyhGpzZpzylqhftm59A9EW2Y1loykmZd/HcCB0PUt9JxHeU/p03gMxNUDU?=
 =?iso-8859-1?Q?XPqCyL0qTkGMPqfT5J40jQRoIekUkhulg/EV3mS7DW/U9T5JySaUBnd5xJ?=
 =?iso-8859-1?Q?4uTAqLPS7f+9Dkbyl8r7iH6MLvITRA17NujDQaJ7uIfU5M5sCiNo408Fpf?=
 =?iso-8859-1?Q?/YrC6VVPPG23JjWac4DQkXqm3kyuL3vbx2F4PH+Snos3MEHG35kzqN+42t?=
 =?iso-8859-1?Q?6rseuhDfCX4rwzbzEMiLE6Ho7SNxTzZo+uFDpraGI+0B0fD0Wj9shK1Pg2?=
 =?iso-8859-1?Q?dyqJgRMhtGAOCeCxc/GArrNyEGQx2f7Pnmh9O/L3xKbgs7CFJZQ9ylCXPN?=
 =?iso-8859-1?Q?upB+qSvbiTbTuonJXgjApqm0xPS/q+JVS/XYEEm7ncZHErukJI+sK6uHq2?=
 =?iso-8859-1?Q?A6D7tGw8nqprrER8hnrsRrakn5SDmknh2nmuQbPeQAPMJqicwFFTDP0bHY?=
 =?iso-8859-1?Q?wzkNlz1ZaJtrLxw7OxuLeBLlTrs9csKF90B78E8t63z3jS4v8gbV+VHzSb?=
 =?iso-8859-1?Q?C1myQIZVxYROxY2BNtgVnyRpIuLX08uOYRM5lNHBDnO7arBbupL2KT4OND?=
 =?iso-8859-1?Q?mROVf314iLnEmzeAC0truoid5zAmfnGxhh1WIbicf0U/t5N4zN2AWwEADM?=
 =?iso-8859-1?Q?KlaTFGg8NrtCy8X9zzJQmk7aJYEbzfa5QD7vFrfA5Qk2pCSOELAnE0H1BK?=
 =?iso-8859-1?Q?6nZGD+aorPYNrsPqwP245JbDdmiojKO9QEzObbkkVP3i/PLmTCt6ZrUebL?=
 =?iso-8859-1?Q?lgGdVDR8k6AoYFRRKVMvm4AlAeW0lMuoRVXvAmozl2ya2r/KWuhDPMNbNn?=
 =?iso-8859-1?Q?2WbOaGruc5yR3pI+FYKDA/q1BZqcU25+dY1m4Kc9AL3ZSuELcXwsSI9f0h?=
 =?iso-8859-1?Q?qRTbETa2RvtQrNfFAMc=3D?=
x-forefront-antispam-report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MEAPR01MB3654.ausprd01.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(10070799003)(1800799024)(376014)(786006)(7142099003)(38070700021);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0:
 =?iso-8859-1?Q?7EmlQPTlnB1TSIF0/DCoDDYmBn4T53qc6gGi4b6o/qq3ueYMVuCp1bmi2a?=
 =?iso-8859-1?Q?iNQIiBasMNEYKmXVuu1olFtj5c/cWZXE85atTHHEeHawbI2vfNbW4sPeYa?=
 =?iso-8859-1?Q?MgEij5Rv8F6fqddXK24e1khOlAtl00k+DzVPh6YGKE7FyFVXZ5LErYr2fV?=
 =?iso-8859-1?Q?siBSWX95sPXpRDzTXutu1i9q8IvFUQ1O/HPL4tG4A/E20Wiu/vuzvKXzVO?=
 =?iso-8859-1?Q?ar/CD5WhsSX/c0xe3La0AHUom3j/wd8bCbearIb6DprYbZMXbirMsEVRe5?=
 =?iso-8859-1?Q?giNsfL0mca5jJu3RTcXIQgxvvOGuaaU/fCAVLyWqgHewz7i6HHD8KTRPWl?=
 =?iso-8859-1?Q?s7dPhOOjlG7+P517tJC1T6j0WqEM9cu2rAl8T/HXrXI0QB4jEoxTMxDa82?=
 =?iso-8859-1?Q?yUEPvZroszC9+wpWVMTM6bZpqKf4jrxe81CFc4n7ZNY4bQYUA0S++VZbEO?=
 =?iso-8859-1?Q?tvx6ddkyL1Wow7/uhue+nfSBy9N4txlzwhCcpDzVY4Mt66pbBC6VGOGUVJ?=
 =?iso-8859-1?Q?TmbF5URi/NXmXvot9/P7nYAFFvZlJbfjFnP77OM1fY/sZhpBfGMYfS3TWi?=
 =?iso-8859-1?Q?unOHKtQbNVEK9VnH/PeExuItiTtKppQokx1ifRZUbY/vhSPu56Gt9qVa68?=
 =?iso-8859-1?Q?4ZIgP29A8DVruPOAqLLHEkNstuXcydLRYeadzLm3DOI7FlGe07Y1sitcZQ?=
 =?iso-8859-1?Q?9gklGPjTHe+mR4Uv0qqO1AqkcR60mDemW9a1WDP27twCqeQ9i5vrIhosuK?=
 =?iso-8859-1?Q?vxjiBxibr3Sh4QinNfyt8WSYvgudGrt9gyD2jcYMQVjydDUt7AWNxHZfF6?=
 =?iso-8859-1?Q?58JjzRUNskrNUMB8eiji1PidFt2ZBjbf2h1PlOxTm45d9vUUwCYvzOCWOb?=
 =?iso-8859-1?Q?WAa43WQkPWUllPEC3VhgFnkw7nWwLRcov8tr/ILMfD78C8jFdvqHH1M0iN?=
 =?iso-8859-1?Q?lh3HIWzTe7wp+T2JENyHRRWfAVw313UqFFwcNV9ztNZW0AgJG0lzaq/I/p?=
 =?iso-8859-1?Q?vjgWKRi4d3P9hReygtjuc1oqpVsyDk5sN+UjN2s9mOmldYjEm8EjZvLP4Y?=
 =?iso-8859-1?Q?HCAIhepT05SFF+xsiv4m1tjHGP5iw9WrzHbYL4apkGoComk/bIwbRgKX3F?=
 =?iso-8859-1?Q?gtFylYXx5BrXUNHJGn4t9FUNuQWXvGZV7uUoZNNLhOb9jTbBwV4X39A3nV?=
 =?iso-8859-1?Q?ZA/l14uHGZwNf7QTMY3PA0BS4a+gVcGcrMbUyFfsKlP/ZdSCJREoDpRKn/?=
 =?iso-8859-1?Q?XzpuMdyY1BsNQBZaexjir8of1HibNWuYQ+jhTJ8lMPXuG9JbJ6bMhQkXuw?=
 =?iso-8859-1?Q?tLQpXsleqk/50KEJNT1+cKJh/HkrQ7QnSMFZcCtvdjwiv2GWnE8y4JQ02u?=
 =?iso-8859-1?Q?92nIS0Yk5lijJcpjh/6O128I8XULz48czTrYPyVVfEI8pa+UQfkrBhb3t+?=
 =?iso-8859-1?Q?WrCbt8xQpy6x0TcfZPOsT1IbeWboElj+3Zv7d13BpDhzPFz2F1pUBUBExE?=
 =?iso-8859-1?Q?/MQ5qqvcJv3mIMLLJnrjAw2A2gErZMZ2r8CPYY2t0DVflWFk5V5bfFtwQb?=
 =?iso-8859-1?Q?O5CckXkpMKzcgBqzSYHLf59G/ftadGdcn80XwIYtvxJXySDBRdFz8kBZBz?=
 =?iso-8859-1?Q?PVAdTqyg0rkvsBsvk+P649XXXL9zfm4OepZovbDoPYcwSkC6RYOTd1uceM?=
 =?iso-8859-1?Q?DIYUDFX0R/Np87bH+cT2jRZruQYtD8DJVdgtv23N3+uDt39UZVLMQxukFE?=
 =?iso-8859-1?Q?WpxDxMkaX7owgykg9pu78EdnttogHs5jCISkPfxwRwcXqwIEYm26/UxSy/?=
 =?iso-8859-1?Q?YoAOsmzcvuP93euusV/pZw7SBHSMSrUKWzq8OC/17jyTO4m3o9zRFGWV+Q?=
 =?iso-8859-1?Q?7Q?=
x-ms-exchange-antispam-messagedata-1: 6yLbxSqQYRbQfQ==
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: cs.auckland.ac.nz
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MEAPR01MB3654.ausprd01.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6b0b6ba7-3dd7-4105-1e52-08de54b25614
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Jan 2026 03:50:05.7075
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d1b36e95-0d50-42e9-958f-b63fa906beaa
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: YE6O3PmP2RRVBlZ27qXxyIylc+HW9dkrQZYZL58CGL32PfXfbVFdEgwP30iJEco1idE1piiUQl6Ed+YTA1x2oQUAGnjw1i5jnyj+5Zj8jv8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: ME5PR01MB10092
Subject: Re: [oss-security] Re: Best practices for signature verifcation

Demi Marie Obenour writes:

>To answer your last question: I believe that it is sufficient for the TSA =
to
>sign the public key, hash algorithm, and signature algorithm used to make =
the
>signature, as well as the signature itself.

That's more or less what a TSA does anyway, but it doesn't address any of t=
he
other issues.  I think the required approach would be to start with a threat
model and work from there, not with a given technology and say "the threat =
is
whatever this tech counters" (which is admittedly the standard "threat mode=
l"
used in 99% of all crypto designs).

So you'd have:

Signed malware

An attacker can use a compromised key to sign malware.  To deal with this .=
..

Rollback attacks

Once a binary is signed, it's universally trusted.  An attacker can feed in=
 an
older signed binary (with an vulnerability) in place of a newer one that has
the vulnerability fixed.  To deal with this ...

>I'm fine with CMS *if* there is an implementation that is permissively
>licensed and *obviously* correct.  I don't want a CMS equivalent of <https=
://
>gpg.fail>.  I don't think this is possible, though, because CMS is such a
>complex standard.

Of all the protocols I've implemented, I'd put my CMS implementation as hav=
ing
the least likelihood of being compromised because the TLV encoding means it
can be statically checked before you ever process or act on it.  And before
anyone asks, the one I have the least confidence in is SSH because of its w=
ild
mix of binary data and comma-delimited text strings, and the incredibly
complex exchange and potentially protracted ongoing negotiations it carries
out in the handshake phase, there's huge scope there for state confusion
attacks.

Peter.=
