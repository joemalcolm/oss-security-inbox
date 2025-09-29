Received: (qmail 26113 invoked by uid 550); 29 Sep 2025 14:20:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 20189 invoked from network); 29 Sep 2025 03:58:05 -0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=kmP6+bNmRD9Ww78yrJQTXJeaUlOq1b5KygIgBQ72ZRFsQ7HGcWy4gvpPqCgpbG9YwE8gP+xmg4EY/t3ZLMYBvkH/m/Cb9b+RbcfUmzHLh9V9f29LDsm4lEv7uSBTnsxXdCoGgaHHGqiXGmPx8xM9hF0LWuQGofrpqJoeaYe6gCoURkaQsCqmhBs2ap1670vWb1gsTF4oFzVI4oYoHDu4xjUDR4ej8WxF7rVfo4bigdmHoP12mT39zgjmFR3VvR8VotP7HYQP+S7000JipPp51X9dsfUUumY5kNBuh3WqFdFKzV5Gm08ZyNdsu2Zs7fW7WeQU+JM2kxRAzry+l/0+tQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9Z2dKOYtyasypJaRP0TWhgJEOQTfAUIbtutjcPNFQHI=;
 b=WNqN+0uybgk/cOleQlcP6QP4S7P9M6QolIswsavUMjS7H/FOEH31/sATd/CNOVm61cMcwAav3HxWpdTXlpntGHbYN/xOEOhaa3NSFxMBCctCDtsxs09e0M+O3Swg6OaYzQf4m/Ko5jGgdEL2Tf35kqPrYwDSk+noSGtd6bN+Ed4wRg4i4dk/9hpK0Crw3LxHe0U1VTD60m0UTarpvezQAKZK2YRO9biG1TkIQR23JKcX0pW5IbW8Uma/5d/P3eq1pXOSDM2C1Ra/yam+huvgrpD9dcKvv/vwh6wNhbhivw7d5x4Kw2Q4lcyulTdSXkQ/qYPpr7ovaluE/o9UN/bY4w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cs.auckland.ac.nz; dmarc=pass action=none
 header.from=cs.auckland.ac.nz; dkim=pass header.d=cs.auckland.ac.nz; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cs.auckland.ac.nz;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9Z2dKOYtyasypJaRP0TWhgJEOQTfAUIbtutjcPNFQHI=;
 b=HC0PHQjvQMlBYcallxTAckk91SbS6/viGEV+EjXIGGeLI0TM6anGld55kgosl8mPrbeL707rKMV5ZEGST8L3tY8MGf2L7EtPhNW7wap44mdz/Ox15U40hUZMEPswNqUySJ0S85+2kyiYke8fO9sErjTMMZj2AgjjD7RXFrl2+oBATY8a4HPqvanTvi0Yk26fEGfhQEnolxqHPgmdKDHql2BaWJs1Jjuw8pAlG2wNFSHyyrEqdfw2eMp2NpLdM07mx20R0jkq7GE7KMiJUVNlusRF6Oipq95jCCDjQ44ONjbwDnKmzio59JGtGQdr1pMpqSjm/Cs3ceMkyKzTdk7SCA==
From: Peter Gutmann <pgut001@cs.auckland.ac.nz>
To: Damien Miller <djm@mindrot.org>, "Adiletta, Andrew" <ajadiletta@wpi.edu>
CC: Theo de Raadt <deraadt@openbsd.org>, Solar Designer <solar@openwall.com>,
	"oss-security@lists.openwall.com" <oss-security@lists.openwall.com>,
	"openssh@openssh.com" <openssh@openssh.com>, "Tol, Caner" <mtol@wpi.edu>,
	"Sunar, Berk" <sunar@wpi.edu>, "Doroz, Yarkin" <ydoroz@wpi.edu>, "Todd C.
 Miller" <Todd.Miller@courtesan.com>
Thread-Topic: [EXT] Re: [oss-security] CVE-2023-51767: a bogus CVE in OpenSSH
Thread-Index: AQHcK9nVQvgc26eVTkSHWXCcKT6jp7SgGoaAgAG3K/CABtpwAIAA0j5dgAAT1hQ=
Date: Mon, 29 Sep 2025 03:57:52 +0000
Message-ID:
 <ME0P300MB07138B071567B325B2498105EE1BA@ME0P300MB0713.AUSP300.PROD.OUTLOOK.COM>
References: <92a89d5d-e0de-c713-e7d2-83f971574eff@mindrot.org>
 <20250923032113.GA14348@openwall.com> <
 BL1PR01MB772308134BF946DF07159A05C11CA%BL1PR01MB7723.prod.exchangelabs.com@mailhub.eait.uq.edu.au>
 <c5d66517-f422-1fe7-03a0-d79cf4af1fbf@mindrot.org>
 <76091.1759068746@cvs.openbsd.org> <
 BL1PR01MB772375CA93AF5608280A224FC118A%BL1PR01MB7723.prod.exchangelabs.com@mailhub.eait.uq.edu.au>
 <9c5ab4b0-4ddb-ca3d-85e2-d47f058f7f73@mindrot.org>
In-Reply-To: <9c5ab4b0-4ddb-ca3d-85e2-d47f058f7f73@mindrot.org>
Accept-Language: en-NZ, en-US
Content-Language: en-NZ
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
msip_labels:
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=cs.auckland.ac.nz;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: ME0P300MB0713:EE_|SY7P300MB1644:EE_
x-ms-office365-filtering-correlation-id: 4e0d33ab-2c4f-4c02-ed45-08ddff0c5d74
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam:
 BCL:0;ARA:13230040|1800799024|7416014|376014|366016|38070700021;
x-microsoft-antispam-message-info:
 =?iso-8859-1?Q?ubQKJyvRfSIXApqmwxZg4Gzj5DKTitaKlJ8f4yuB7J0w1ohVJCir38DqtZ?=
 =?iso-8859-1?Q?+qwo0HXloZDyI1htYKY9S9vT/TyPqRwVFgUZgmBvfy479ucHzRHdLRnYz8?=
 =?iso-8859-1?Q?rRqLKX2KFnMQH1eY5TLLVPMDZLpdbtiQ3j7E2z5gi5+fAsjJPzNEl0ceIN?=
 =?iso-8859-1?Q?Fw+yZluxJ/RwkiWlctcgXWi0qyXha1ACY6OvZzbttNLi9iY3gn2V8vWbtt?=
 =?iso-8859-1?Q?UrdzE0a7Nepv0OETz4a3e9bhOUcuKQkOI2VsLfYwXXwzUaDLsj91wXQRd4?=
 =?iso-8859-1?Q?6TkIs+ttMPxwLqE+d2pdAKFBhwMxIeyM3dZjcM9KqILxbxakp7i3R/ih7o?=
 =?iso-8859-1?Q?BMhBzg6d34OQ4n6FS4wpbZDSMe6RKZKzKrfjQi1eZMLAMDfiECWWE8pfXe?=
 =?iso-8859-1?Q?2ldLTf7tRiOpjNlV/kSTPH2/xOuUlqsQVBsK+DZMGLvpgKzgAdxVffiaEi?=
 =?iso-8859-1?Q?LUWI6lha8OzUf3OibUGDPju2KKwVb74Lt9xtlRMjmMSM+nPgp6UjWz4rvX?=
 =?iso-8859-1?Q?9VEx5xzgqz7jWgTXJeq5fc9RUjeu1brQUvl+5fstUzk7NCVCdpiyNY9PPz?=
 =?iso-8859-1?Q?AfjiQSWH+Y70tty54AZVxBxr8jujQmekJWnJHEMaOIWJVw1HFQzSr2oiji?=
 =?iso-8859-1?Q?K6+6t1d1HiaYSjfgas8XzZaoftNPxKcrOb8QsD+3fFMNmvQpFvzdmqAYGv?=
 =?iso-8859-1?Q?a6AxWuDTTkVG33vuHBx8ezmVAMqIlxcsxx0ts0Bv59MoIo4Vbc475QTP/O?=
 =?iso-8859-1?Q?DmpDWZAZf8vAafU7NcGlffijID8zlHtOLUJBdAuKxgJ5NNv0aymR/TTDjJ?=
 =?iso-8859-1?Q?zqJtci9VBu3TCci6AqO+zsJT5fwqm6+qNCT0/9QXsJsY24ISNfMTXg6Gbf?=
 =?iso-8859-1?Q?jSVuicxnJ3fynrPtltueTG8DGQqAqUMuiD577u5pU/PqCEKoO7Ta0LzdIs?=
 =?iso-8859-1?Q?pPldhElS0z78SzSSDhZVGgteHiAl8W05wwKgm70QIkaf46MiNUy28HPhm1?=
 =?iso-8859-1?Q?vLGfhHXYA/xjghGd/RE7WAnap3po2mRptWBnhdrSJdM5DSyiMhFJrefp9B?=
 =?iso-8859-1?Q?TqXvGw35iUtx+DBHUXY42CnyV56TPFyB+fcsleOnC7A00eMLiTF/9pVmxg?=
 =?iso-8859-1?Q?E2X32Pgn5/ZaXipQB4iKXgs8+g2NhhCnb6JVMOX3X3WPckQ6xfhNCLGuqF?=
 =?iso-8859-1?Q?p9BXTbthlkh5uY1b0hAIsDHc0DsMAqc5I8lXfXkYyc8CI+VbKzSTp59Q9E?=
 =?iso-8859-1?Q?Ow1UF3tdptxUCTlJaz1TQdwDVLYuVYTp86sCm8bKVg2ddJwhIbb04Lx852?=
 =?iso-8859-1?Q?XnZw4g/BesBfFDpJy9oW3zp/hPMEoMoXFU7A0p8LD+gPD1ZSd8qQynJqCF?=
 =?iso-8859-1?Q?kYcrjolk3gO1sHytl222ePUSCMMsdj1ucSU6U9BBlAbyQSiAilvdx972F3?=
 =?iso-8859-1?Q?ZzTja/TW+ej0bXkCsMNFFJ5G88hcxD+0T+m+pZocy3E+2Oh4pavbAHlpWE?=
 =?iso-8859-1?Q?LEGvFTRLdR2tNqEs6iDP+36vG7H6vT7y1fqRBz69WTo2toSmLAaO2Qea5O?=
 =?iso-8859-1?Q?ASewKSyIGVwvM+NyPDjxFCdnpekj?=
x-forefront-antispam-report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:ME0P300MB0713.AUSP300.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(7416014)(376014)(366016)(38070700021);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:
 =?iso-8859-1?Q?scRQJFzPULFX6FSII7sJ9G9PwRfFM/k1GvTnmEwg/O6EVMW2oPjMzt1Yu6?=
 =?iso-8859-1?Q?gIv9BI1MZb9ux+q343FbwqFhCKmd9hJR49JXxoB+xbx+qKQJJVaSdhAZfq?=
 =?iso-8859-1?Q?TAQm1Itxd0tXVR00J5G/+ycVFLTII34OQVod8y37pXMc7d/9RwyMceSKok?=
 =?iso-8859-1?Q?8X1BNpHJeKsg+GYLEeNiJyuOiOYMLh6DoVe0M397r1rfdBc8KLlIGcFKAm?=
 =?iso-8859-1?Q?HPeriKmTtt8lMhTTxSlWJClsoyWuWpJusBDD546PHb8o3zpHzAhD8dWS4u?=
 =?iso-8859-1?Q?B82q9rO1FR2XuvRK36nDn2w6Sy2b7d0DJxoZVv6pOCf9MtGrCbTDAu0M4i?=
 =?iso-8859-1?Q?g1i0nFvfBocdzadr1WlUB6ZGzgztyVBqxm3+fNjdgAFpje7qQVJyveh7yq?=
 =?iso-8859-1?Q?LfVQa+4OBZ2A8AVR/Wm6Ax2xInPBXdm0fKfjDZtMVHJP+7102qSD7fL6jc?=
 =?iso-8859-1?Q?7FsYhxj1JbXqoL0Qs0VlRN5qeB9u2UDNZIpfQZWZiDei+VvnbLHvGFwnD1?=
 =?iso-8859-1?Q?b8zUxVjEtN6ty7EwTaHcpsn7NGBrbOulcq+JR4vadU5ROSptgymNp1q6Z7?=
 =?iso-8859-1?Q?JJNm7k3wVjpi57r49V3OQhR0R/9BlQ7qTvpVAluVX7Zzmlie5RIz/JKQ28?=
 =?iso-8859-1?Q?hBFRbD3yToUwE/qtME8XtO70g728EASMn9o3fRQ4Ok20aLSC8VhlSqAJt4?=
 =?iso-8859-1?Q?evKfp51QM/EL+yI76m6+A6NBvZFLz/bvi6Hiz/arp152mkVWVfbotMnX35?=
 =?iso-8859-1?Q?Y0aiP+oHBuRUBfdrAMVeG+zjD4oZxDlcDtooHhlDL61hjBs9plQ8ZySQ1x?=
 =?iso-8859-1?Q?D4zfBcx6fUGfdU1KR5tLpgxlXYnX8Gn9qdXic2yITPWLqSvJuP3w3yL95b?=
 =?iso-8859-1?Q?AG+aGKbY7A0/4rdwWzYRhGSjHyktLFetLVRMecTNfrELwd9Au0i/HiNyRq?=
 =?iso-8859-1?Q?E2yBA3HX/iPOj0qzfUavOD3BE1n1GQeTFlA3lOqt4GtRj1lHCJVqbeM5e3?=
 =?iso-8859-1?Q?xoelIF8Eexh+7iKJpPnkKLrwYMEMUTAwyvI6W+sWDoEpRdx6Z9QxKUKINk?=
 =?iso-8859-1?Q?vBMrO4Wvj+RPK6VS+yrN73D4QnKkDdJMkysovqXfenaD6YfvVGRHgVEr4f?=
 =?iso-8859-1?Q?haTCZpvBwnxLBZTRtEwc53BVwKc8SACwrtR2tY99mMMFSqQopmWGA6joL6?=
 =?iso-8859-1?Q?HtYK2CSQRkRrr+sm0H7itFmab/Q9S5xkACrKCZXRIM4/DIfYSatbL7WGue?=
 =?iso-8859-1?Q?4ZNEhGHZq6xTL4/adpmIsORcAgo0S1UceGdOSTX2ObFzpU4ukfKIhf9WEK?=
 =?iso-8859-1?Q?BLjhNLwJjrJYVNwlFSZ57kFYe6Br3tLQyIPQEQ+BwNyg2r3u6rXx4GtAD2?=
 =?iso-8859-1?Q?tIgu0CVYYOxcilWfNy9Z94frdZTnZI351WDALEm1Hk6tPkosHrIRiDBE1E?=
 =?iso-8859-1?Q?HFXbDclxvYtiW5hafodA/a3MIhzZgVpYcbcy3lSbthS65hDDzHEIkeOzv/?=
 =?iso-8859-1?Q?MJ6aDdnyF/uILBQ5T04xnCAjNP8FZv2CGXP2cnhb/HzbC//Omykuz8luFE?=
 =?iso-8859-1?Q?+6WLMzAHWoytjI6eWWh/hEtZ1dPhuGik2pyw1stHkp6UzYZOFgPuxwBjRW?=
 =?iso-8859-1?Q?eb+YMU2Vi4e5OEFqxYDn6TaopAFZzbfwn1?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: cs.auckland.ac.nz
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: ME0P300MB0713.AUSP300.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 4e0d33ab-2c4f-4c02-ed45-08ddff0c5d74
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Sep 2025 03:57:52.8471
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d1b36e95-0d50-42e9-958f-b63fa906beaa
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Js0dsopOWX0hMYZgw9omSDDfexZyCDCTVePzlEH2MdLeElQDnjl8MIsSiXeb3ptRcR/AjiaTn4KgCYO5fQSH4sSc8dvRK4+oqQz3jw8FsCc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SY7P300MB1644
Subject: [oss-security] Re: [EXT] Re: [oss-security] CVE-2023-51767: a bogus CVE in OpenSSH

Damien Miller <djm@mindrot.org> writes:

>The fact that someone filed this CVE based on your paper demonstrates that=
 it
>is misleading.

Everyone gets that at some point.  There was a discussion on another mailing
list about it a while back, how do you respond to a CVE for a vulnerability
that doesn't exist unless you modify the code or config in order to create =
it?
The general feeling was that it's best just to grin and bear it, you're goi=
ng
to get them at some point no matter what you do.  In particular, some obscu=
re
vuln that no-one will ever exploit only becomes publishable if you demonstr=
ate
it against a well-known project like OpenSSL, or OpenSSL, or OpenSSL, or
OpenSSL, maybe GPG, or OpenSSL, and occasionally OpenSSH.  But almost always
OpenSSL.

The only complication I've run into was when I was contacted by a user aski=
ng
whether the problem in CVE xyz had been fixed.  That was the first time I'd
heard about it (the person who filed the CVE never bothered contacting me),
and then I had to figure out how to explain to them that there was no fix
because the vulnerability didn't exist unless you added it yourself.

Peter.=
