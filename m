Received: (qmail 28337 invoked by uid 550); 7 Nov 2025 17:11:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 3398 invoked from network); 7 Nov 2025 09:01:24 -0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=LlYM8JPaoXPKCHY5HprLvLCUnsGW9z8f9M5YDdzHTj8hzuyzoAIebY7sMi+3xXdxjxrfUJt5QyPWetXrbcwSQuqMBbjH7J5Ac22kEO52ysG864JbddjQ0UAiqAilUM7Q9ZKv9c2CfdQe6u3rEJEPxWryw6QtcPlBRY5HQHe8nEvd8yyxujxtsdD/XCPxEO0oxvOZv497cm7otCZyDMIcMu8nAGr6YhvQj+00OCglF53s2/6eAkLVAuZ1t7k+mmozeUDUGj5s5GDpkz5SP3eOldhSlWHbDgShdacCQQ+jwDobVyTxXuZvIWCH5dz6noGUJe8XedyFh0942lxu/Epgsw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=OiCOZ4sb998bSIVgIyQNJYHnDb5mnYNGHeR4HFRfAb8=;
 b=oLMH9v5uE9xSbVTczQ4swCRD2xA8FyZzamVTCy1ICmJsunAGAkbB+bxzjkkS/a1nQvEmtW+Qtvc3ZEzejzlKC/PlxZuwRA2gnYL9VpeppMoJjFoepmg4pxZ4VATVjh3WAzvTvzdgstxQJ6wnt+qjsA/egUfM92ao3ORi99tpQAPeX5kG6m98fL4vdKwZxVlZZIQ42Q+fV3Mn+xxUdokeQUtFf86gH+RyNvJndssY1EmY8mkR15d0V4VvZ4iNQCyZpv9OtUTXzdxFaSWgs4fm+OiABiURO8ZDGr8a8/2eutNWz5NO3w5tjmyYjnCrlz9wp/2ZNv7cx+PRaE/iZ3SNKw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cs.auckland.ac.nz; dmarc=pass action=none
 header.from=cs.auckland.ac.nz; dkim=pass header.d=cs.auckland.ac.nz; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cs.auckland.ac.nz;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OiCOZ4sb998bSIVgIyQNJYHnDb5mnYNGHeR4HFRfAb8=;
 b=tOWBqiquFnUKMHtpSMsnq6V/P/nMOPxfrojmRNMUEOVG++CyZD7QYhXtF/EqJH6LZ8WxHiakR7J5VCP7aNszcl7SLkvX9OH07IcEAENxoExEftFjZT/IO9vcTrIS+wTEjxkRVVXYuSeTZvf+H59D7btoJJrcGf+JP0NxoQaUJbJcjnQYlT8WE8yxlF5bHmUlizNhIDHiK+fM1fQs279OyBixwPsPtWkkH7OZbsQo8sduc72zIt3G7koNWkMasD+0AxxwEBOBOuT9q/ee0kxcV2Ym6SSkXQl7HPkRaI+lvbD3YDlM61jKCc91q+5fTy5UfKt+uRWXp/rn0C9kPzQ0Tw==
From: Peter Gutmann <pgut001@cs.auckland.ac.nz>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Thread-Topic: [oss-security] Becoming a CVE Naming Authority for your project
Thread-Index:
 AQHcTaUyT6AQKM8KRkCihVkiNjKPCLTjKKuAgADbe/mAAD7SAIAAFz4AgAD5HwCAAZscFA==
Date: Fri, 7 Nov 2025 09:01:10 +0000
Message-ID:
 <SY8P300MB071119F7900AB82CED4E64FEEEC3A@SY8P300MB0711.AUSP300.PROD.OUTLOOK.COM>
References:
 <CAHjsZGZvy3zeN3st9-Ya4Hxu+29My68sXc9WJnZw_Pd2c_AF6Q@mail.gmail.com>
 <2025110538-probation-thickness-0517@gregkh>
 <ME0P300MB0713ACE3EB14C8F1375F2464EEC5A@ME0P300MB0713.AUSP300.PROD.OUTLOOK.COM>
 <8175f2ed-5bec-4770-bc23-e626bf35c04b@protonmail.com>
 <CAEFhzs_txKtdVMAiNbpsWYM3jOYeGMeT=EiP9xhRJJ4FE2pr0Q@mail.gmail.com>
 <12D4C7A9-6B68-4D3F-923A-38AA2E47EB51@edvina.net>
In-Reply-To: <12D4C7A9-6B68-4D3F-923A-38AA2E47EB51@edvina.net>
Accept-Language: en-NZ, en-US
Content-Language: en-NZ
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
msip_labels:
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=cs.auckland.ac.nz;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SY8P300MB0711:EE_|SY0P300MB0611:EE_
x-ms-office365-filtering-correlation-id: 1b061445-ad63-422a-7c23-08de1ddc3206
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|376014|1800799024|366016|38070700021;
x-microsoft-antispam-message-info:
 =?iso-8859-1?Q?edmARfNkw4zaRYNTWAsob2potgdBDZT2PnWp7laplQIx6KArfRiYgbYz8w?=
 =?iso-8859-1?Q?yTm+LEIWSwZ6VtEXFwZqwt/u9gSjDKRVJHiv5NNZvxHsBsZWgyVhTPY/LU?=
 =?iso-8859-1?Q?ay9BYVo4vqqL8RMbSw1KSYFbUU/qVuHM2+thaqzimZdv2S/JrI9+dLMrBL?=
 =?iso-8859-1?Q?lvyYTbNCPb/lzEcipngxY8JPwcU6kKHCnup+u9FboxXGGNZjm3ippytlGW?=
 =?iso-8859-1?Q?wicvSmGnJ3EcalD3X/6hDae/erdls0nO3TrD1a8SoDsCp6B/4mI2twdmFR?=
 =?iso-8859-1?Q?O3d9yMMMqxL09hTljH2rSItfGhJc/ajohcZD5ENfU6N3OqiVoyXHsKMRtj?=
 =?iso-8859-1?Q?+dRcB9OLal/t51HrGTMb8lyjOAF52700/+mY+YiGr0SkeFEXPPZKIyJTOi?=
 =?iso-8859-1?Q?9UqaEKO74u5RJCSTWD5pXIUB+DevLTQI4IVOf8bR1r/py1/hxLJtfwDqXn?=
 =?iso-8859-1?Q?BbWtIKAsGtoXDRPbt9i7DhpkAPKHQdUVz25QI2CaYnPRhRP2W1IdQE4hy6?=
 =?iso-8859-1?Q?BWwqiBs9gVnCYtoP+NRIExwWY0f+YrUjlClL7QLrimKMQbhaAxI6kS0A3o?=
 =?iso-8859-1?Q?n3fq0GeE9OImD3fRyD3yDVOH/nYtLihA8Ryhu2yiSzzrZ+6T9Jlc7g/WYM?=
 =?iso-8859-1?Q?p+wDZOXd50vTS73wVup07t9dDMxrXjlX2wAmsKnbypVwTg/3ODkNBQGuNK?=
 =?iso-8859-1?Q?64A2ygeB8/uzvSy1VlcqsTOylDSZ2boLqkbbPqqu4qVi3rhIAwXhUSXuu/?=
 =?iso-8859-1?Q?8qRaspOsmy0KUCJV5PKZgshIFCdvxjDO/0bdV34bf1WSt886BCt6mi0NeR?=
 =?iso-8859-1?Q?wdbUsAsT2yOfiw4wHQAs6B5lElUI0myS6xFnVfKC8Ar0t9QpKM4MY/dE4p?=
 =?iso-8859-1?Q?ZOsNFIdYhbAcHdLDYN7tePhwj/1D92/+YH64DaBBZp0eMSicwQk2Mt8L65?=
 =?iso-8859-1?Q?Ny3uKlGd7hzT1lkZA/IX4PBeFRsNMI1NUw2cEzrhmK0sjKUg7sDJW4L+Qm?=
 =?iso-8859-1?Q?vvYNaYT79MFTL9PicOoIB8skPyZKyoZ6jEvDff87c3qaqsMw1kBH6BYVsP?=
 =?iso-8859-1?Q?/6zk2h0jZIGqkrLGzq6eVUtKDgDXiavwDwVJ1NZZmb6LQreY40CYai7Q0Q?=
 =?iso-8859-1?Q?rt8w7V9V6sQNW4PVnfpujZjmKZ9Swzy7kz1wBpQdeOtpowbwo1N/pPsPpv?=
 =?iso-8859-1?Q?gb/ad5BQ1FhbNUrFCCK2sDQRskot+aM8k689h2cCHe/ekHYjEQBQxjeuV3?=
 =?iso-8859-1?Q?hQem9osOoq9zqG8wUJsyt8EMuSxs8zsEKpXDukQRSSk9JCwafq8B2x99Pc?=
 =?iso-8859-1?Q?9Y3+2XOkwkw23E3dVRz95T5bXJGkMEvLkXTnWdds+5iFw+yBji8fWp2C0n?=
 =?iso-8859-1?Q?hn+mK0cqArkQwS+UgPcZmDzbnR293bftR1+1MYvonxNR259CRLOMtA+0ct?=
 =?iso-8859-1?Q?+QTs7thUPgC8IVh1QvMeX3b1uKhZmqdlSoKZEzh6wuDHWguOd4sNO5Ahgi?=
 =?iso-8859-1?Q?sJ3KOJiwx7fcz5GpO27jyrRy6O1Duh1cu6KuxaUvT4VW0eZZKwpVFj98fy?=
 =?iso-8859-1?Q?++Kqofr2IAblAI4FHSnFM3ELx4+q?=
x-forefront-antispam-report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SY8P300MB0711.AUSP300.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(376014)(1800799024)(366016)(38070700021);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:
 =?iso-8859-1?Q?mGAeoIYxEQbmojKHb+zTSoszHYgq2zemJYcoq+wPCWq49scfagh4hQLXux?=
 =?iso-8859-1?Q?GkJMWPoJrh7db0YLrDeKGcICbpODwVqNRDZ7DBIhlznGeTDffyg2HENKiu?=
 =?iso-8859-1?Q?751UBhtiEZ/Qac0btoKhw4ZcZJ5Y7WQNQNIhdX+FizMZXxiWOaGLhsxphH?=
 =?iso-8859-1?Q?Zl1T4HqJBz0zCGX51Wdol7kA0Tdo70hJA9qBiOju047HBu01fu4hUronIH?=
 =?iso-8859-1?Q?DKjN1vjonxkAzPOP8GbEYWIDucH8YeZSt202ShNb8t4TojLeWB/3YEBtFv?=
 =?iso-8859-1?Q?uoJtRuBfZwrX4ndzociOSRxo5zXzwdPm0NaNlSdpn8D/CzZiVWYcqYQ8xo?=
 =?iso-8859-1?Q?DVuab0d3edMK3Y5DMrRXO04tKM8hNxENNpIm9K3kJJxswLO1RpoP5kokil?=
 =?iso-8859-1?Q?8TT4KcIBHRdFx9IlRPTQr+fYKO61jxN6ezGFVz42n2qa7ug2jF21izgCn9?=
 =?iso-8859-1?Q?bcTJF1Nz41+Ak6S4zG+TXku0U4OKOJCxqxyc3H2Uyod9H/s7sf9GUPZ//i?=
 =?iso-8859-1?Q?mMDEhOsn4e19nRBrwiBZRJMIE/Ne08r6pmxZvk5C/9LQJyx9QoHAToxydK?=
 =?iso-8859-1?Q?mttnagHrJ60XNLo6eol6vcsFP3hH1Vje0QSKVeOjYC3g759pqOoVphsK0U?=
 =?iso-8859-1?Q?q5B/Ed9422LkHgKQfhaNRnoTuIlNM1qCYoRrnNtVBDb//eF5n8ut2u66cy?=
 =?iso-8859-1?Q?0vW2A1cL4CWlhk1P68MuR3DKon0SeTwGMGrrU78jlIbr4YpDuZvQM7h3da?=
 =?iso-8859-1?Q?CU6DRQud48p6NKEEPJucAZwv6XK95PLOjaiInZgGx5eDOu0i1YxVqR6usl?=
 =?iso-8859-1?Q?dCbSl5RhXXIsd+H+EN8OET62gvMrVUPGPfwALf3t41umH3Gr2UeB4lbB2J?=
 =?iso-8859-1?Q?WTN0n6zaAj1IEGlB3pqrVgYrS0EwyQ8hp6H+EoFXG4nKOtrXO0+gun2p+N?=
 =?iso-8859-1?Q?UQYnCnpoFUAXiHwJdFoNC3VKqfhyjMAwiU1p5vdM8hVrQM/8lCEb3DAkSl?=
 =?iso-8859-1?Q?SXneONrmrTPd+QoyrfnxvdNyUYga1+qnL4SbQNx6+QH+3829uaRScqKaIT?=
 =?iso-8859-1?Q?Cm9DyOKkXcNbl/qKBSz7MsntB846WFE8w4xNJkymKf6Zi5h6yxF7Sj16IB?=
 =?iso-8859-1?Q?DwxmehQDdo/iKH1k+ocq2Hm8YQB4HJoEOgsCn4tOQPIvnO4mXdPaITwkQg?=
 =?iso-8859-1?Q?HUSgltb14bdZXzIFodvqITvW82Tdrfn6I/22nTManSirD4mx5CAxQGIm/k?=
 =?iso-8859-1?Q?S7/OGPIv9FIIYJLC39vlG+5I96AYt6mXriwkDcLLHWdWZeyPjbpGAFWLFF?=
 =?iso-8859-1?Q?4qiD+WPfPykw9DNPJYZiTum+X7wklsXwRX6rRcHbc8tOkBwBQiGkOhCQd0?=
 =?iso-8859-1?Q?A4BH2i/V4zy2lF31b/fKCh3N/q6PbLFjtAN43D7RLnMxT4TglfFpQeinCx?=
 =?iso-8859-1?Q?R5lKJSqdQFNyuQC1TQnR3FNqMYHPlg5YlBqYcZkgGuo3My2r5XjoDQjH4U?=
 =?iso-8859-1?Q?B9Ly+9jCcRVWCQgASaMuLI/aEbYPSwLUAphPTdrjWm5bkC2RsqSd2BSDpm?=
 =?iso-8859-1?Q?ihxwyXAQ1rhgoAmI3ItZKPRzK1LGpiY30EutxVhNlY9InE3cmWYc4VdYD8?=
 =?iso-8859-1?Q?vU3yHPVKYWUoxOL/pwGev1PvqBVlG2IGNO?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: cs.auckland.ac.nz
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SY8P300MB0711.AUSP300.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 1b061445-ad63-422a-7c23-08de1ddc3206
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Nov 2025 09:01:10.2083
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d1b36e95-0d50-42e9-958f-b63fa906beaa
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: AGB2q1MZkN81gsFRHFh+tPPEYmtxpJROxi3u0XqVIzyXlaycjLgay0TjK9fZtt1qZBtmqjEHuBoDC3VhO/quptHWVXJuMsSlGx4gehrX1zo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SY0P300MB0611
Subject: Re: [oss-security] Becoming a CVE Naming Authority for your project

Olle E. Johansson <oej@edvina.net> writes:

>I think there are very few one person projects that have knowledge, time a=
nd
>resources to operate a CNA.

This isn't one person trying to run a CNA for something like Apache, it's o=
ne
person running a CNA for Bob's Text Editor, which gets seven proposed CVEs a
year of which six are AI slop and the seventh is an airtight-hatchway
"vulnerability".  It's a means of dealing with AI slop and bogus CVEs for
small projects as per a much earlier portion of the discussion.

Just for reference the response I got at the time, triggered by some random
CNA issuing a bogus CVE that I didn't find out about until weeks later, was:

  Unfortunately, Individuals are not eligible to become a CNA.

  If your project is hosted on GitHub, consider using the GitHub CNA.

So that would in theory be one way to do it, but since its main purpose is
dealing with a flood of AI slop I'm not sure that moving to having the GitH=
ub
CNA flooded with it is the right way to do it.  The goalposts have shifted a
lot since the CNA model was originally set up, for many projects the main
issue is dealing with AI slop, not dealing with vulns.

Peter.=
