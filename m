Received: (qmail 24276 invoked by uid 550); 25 Jan 2026 19:37:06 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 7615 invoked from network); 25 Jan 2026 09:54:00 -0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ccK1IGkGIV6H/VTuUJRzXYTMcKZPJdN3u592JUAc0dcSRnWBRt7pNTpbP0h9zonX7K2YOR6YtOtF8WBNufLKP1xDqBfBdAMiXk5Gzgbop7wUGhMhD6ke8WnEBr0e4w8Fa8AOWI92kLjIicL5yZE9X+/MUt59YKcNx/uU6dufi1cFhxzhwUrPBKNpz1Gf3er/R4g/o8OWPiwziT/S1tr2K71ZrGtX5IDt2XSjLnVY1ZG7VnQsFpmPaDg6339mvWZOySlG5/f7nYOrArbXyg7eVMtPlv9oIyAHbIqRdlU3aS9ZD5PGNLm0St7GX8swGypuyQuknvp4+TqZt11LvgGlbg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JndWF9qwtjMM64tTwJRkFQ/1DitcWObYEGcJj6GBv0c=;
 b=oJlNC8xYfbmm3tzGtazKaft5nKjiGTDZWKGeJkjRNlUb2SyKWntBg4aomdAw1cH96ByRUM5EbXP1JNGSrrX0ParEeZiV/ox/PwbHaxBC4PnUaA3AcrWqw60WN+VygQF8Vv8BTbcEgkBssK2xNK3ltEwRq27kD5T91AfgNTUd5CTiVFm1x4/7U3CEGYjQ2KY6+6oEO4Kx6VtdzhVkxHJBN+XbA+wo7BciR2t3iI+V5eROaoTGq6EhJ1nxqkL1ttTZF9o//fG0AWSrharQ3LF+VJM+ppW6yWfXTkg7AlM0a2YaIzKLwm0C4rfRY6X09BZS/cbf0DD0C7UIl2cfS67JJg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cs.auckland.ac.nz; dmarc=pass action=none
 header.from=cs.auckland.ac.nz; dkim=pass header.d=cs.auckland.ac.nz; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cs.auckland.ac.nz;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JndWF9qwtjMM64tTwJRkFQ/1DitcWObYEGcJj6GBv0c=;
 b=iwceHsD1lroBHjQLHXLF6angSUSlBkFbahMFu2Cd1L/DlQ9VzTykRskYugBF/SEmNgIcdx3AQcPWTdPmNMrK53yHAHeLjnglpgpe3G+AcNio4o27yGrLINLucmqnWSLybhVXhpc7ZI3VuqhWr4EdOj8KWwL/ARS0EQ2DMVtuHefXuS5LxMre0v3Yvt0wZVpYr6yZFpr81Ibrlm9xlgMIAPIv694/BHqULgK7kQZ66knphC3q0+Y7x/Md4V/Z5W3g9HanB5A6xKppAuTsl3gibhCtFqSbz6kWwrcgmPfpIdoBsyjjplyBDKgP482QtCAwGSL7V1zhn5WFGfT0PoumZw==
From: Peter Gutmann <pgut001@cs.auckland.ac.nz>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Thread-Topic: [oss-security] Vulnerability management and Open Source: FOSDEM
 BoF
Thread-Index: AQHcjGm9/NdsdzeAk0KQ/XUk7XlK/rVfxc8cgABLngCAApWD/Q==
Date: Sun, 25 Jan 2026 09:53:44 +0000
Message-ID:
 <MEAPR01MB36540D5561D482A63C1B62E8EE92A@MEAPR01MB3654.ausprd01.prod.outlook.com>
References: <D5B9E3F5-6C07-40DB-8303-15BE77956988@edvina.net>
 <MEAPR01MB36543C13D54D53A2E87C1942EE94A@MEAPR01MB3654.ausprd01.prod.outlook.com>
 <01b8770e-38a5-8dca-fa64-712264d6e7a7@behlendorf.com>
In-Reply-To: <01b8770e-38a5-8dca-fa64-712264d6e7a7@behlendorf.com>
Accept-Language: en-NZ, en-US
Content-Language: en-NZ
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
msip_labels:
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=cs.auckland.ac.nz;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MEAPR01MB3654:EE_|MEYPR01MB6230:EE_
x-ms-office365-filtering-correlation-id: 00fa673b-6a0a-453a-baba-08de5bf7a0d4
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam:
 BCL:0;ARA:13230040|366016|10070799003|1800799024|376014|786006|38070700021;
x-microsoft-antispam-message-info:
 =?iso-8859-1?Q?rYFMMNaXp9WwSYty5rCvS4Owaq4818Vrcb+ItEbPyQdHo48sTfj/oeTh7B?=
 =?iso-8859-1?Q?MDwefH5i2zQ23yvszZqcZ1XJxYQUlGBhXnxDpUHttPWJfzkZEz+E8pt0pz?=
 =?iso-8859-1?Q?qnpXP3ApR1KF1rNrTT+tESTE2gAmfQazRkYmmTaTeDYK+rr94OECXwg212?=
 =?iso-8859-1?Q?p/LIS17ObBCIdMsGRrHWEYAAhlP6SHC/q5A/Rl4u48gXPCHqQ6MYYiKPXl?=
 =?iso-8859-1?Q?WDdaG9pl9N+uzMWBzCpZ7t2Z5wEtlnfmL4GSQatbPqMY4LBXjunbLkGkBd?=
 =?iso-8859-1?Q?29p8oStjTCghWrOzloNOtSkeFpo2lIORhtI2nKZ4kqq3DHJ7+m9V71xn/x?=
 =?iso-8859-1?Q?i6Woek53AGsGAnhUEBXRDxAsTss+68NHdLnESObTjsTiTzlU0L5L1C4zTN?=
 =?iso-8859-1?Q?Eg/bNLJFrmGQ6aNgWXtjiFvG95t4hra5YH6MDty1KnDjW9Px++PVWhTQlW?=
 =?iso-8859-1?Q?13QEv09RcKCNlcA0wRDk630mUTCgutl8Zmnsirkx4vMHaASoZ5RPxf1Sg3?=
 =?iso-8859-1?Q?Mc6dUlMQCX3xUkbPtPS9vruJIOq33zGIJW7KRYG8YsZmfLUZMp3U3j/gW+?=
 =?iso-8859-1?Q?alae6yfuypI/Eb4YhPzszRTNGv6xP24rZEh9zBV9Mb3PZ0E+lQXwP1HWBB?=
 =?iso-8859-1?Q?nvXmzw/8PNPgKL/AKQgrYJQ09ZTRZDhcEYpzrD09W+ncD86gr2HbNN5bL9?=
 =?iso-8859-1?Q?ZDRO/YQvmpwowN/HC8HLhDLBABMtRPM5Fx8u/MVXu58Or7RJWA6RhBNn2k?=
 =?iso-8859-1?Q?kU3L7W/sEnZqXVpKWYPOcGl8WwG+95AWlVlyxSYJFBbZi1QgciiDr7+3fG?=
 =?iso-8859-1?Q?/+ztVzfZ0YnNrq7RmvZQmEoaCqFQvfB5rQDdIEoyqj4xHRil4MfjdwK1Kl?=
 =?iso-8859-1?Q?R8nTKm0p8Hd5ZCUVAtO2GEixlsfGrhMGyr5e1UtXsDSgh1JwhJlQNjhzR1?=
 =?iso-8859-1?Q?MmXCjWxVGKlRLXTz3FCPnhtqJSv3HbZVgbQrdmXhVNAkmTXZre8V0Fvocs?=
 =?iso-8859-1?Q?tDx68b/K54EQj/0we6QEitHdz1n+tSDk8KJAnL2Hdreyovo3Vupqch9wn2?=
 =?iso-8859-1?Q?CFtR6NF3zCWLWQ51T6gbcYFJBsSX/AqzGywnLTujCsbqXjYbX4FyWshiP4?=
 =?iso-8859-1?Q?5iUuHFTB785dOGNN7UPxal+j6U/nCGB6Mv8cbMjS/iRtC5Yc9YlW58RQv4?=
 =?iso-8859-1?Q?U2ESjXGvv4X4jNQl4TEUPnTc3qIcRupCe2A80S2OFrrCL7t7AGc2OE1rQI?=
 =?iso-8859-1?Q?/1TuKn1TZudTnfjR9XYro888GTJTLNXMWMeXtUWputJTls+KmxCGWPJz6g?=
 =?iso-8859-1?Q?9/1c2KXo7Aq+7IFOq35XWpwMTN8ATmpka3kO5ToZgLugViiramX4Y9+bkB?=
 =?iso-8859-1?Q?+fvRDrcnsiQpQGrL51YksP7/qsnYT5C/ZyMEkpC0NpyyEJF81Kx7exX4+u?=
 =?iso-8859-1?Q?fnBHcxxNkiBkpY5W4Y3LofJAILtv70ggoXZ+3J7GpEb5k9rPRqRR4aRT9j?=
 =?iso-8859-1?Q?2GDhmXE/FMIF7UMnVNF4Sf4MyTnoHHmkTLC9WOO81rxNbT4oB+mYo375MT?=
 =?iso-8859-1?Q?PyI5xFkgQZchwCF3d84XkC/UcaG7WkR0UEQNtb9iCKiRXX/o+sSFF3TZuk?=
 =?iso-8859-1?Q?D8EiJZcVKBzXSlxm18XylVed8Sn3rYFks50JtMypVhBpHHy3oVR20X9z9Z?=
 =?iso-8859-1?Q?dxjtRZ+VrxlUgiE5S4w=3D?=
x-forefront-antispam-report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MEAPR01MB3654.ausprd01.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(10070799003)(1800799024)(376014)(786006)(38070700021);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0:
 =?iso-8859-1?Q?Bb2x1zUxH5uP8vRFi5i8W2nxi1EW2JVg75WmWF3KoAq89iRTvgH8ZBsQTC?=
 =?iso-8859-1?Q?8SuEmkQK22JY9rJxuLYs7IB0FvjEj9vdFCVMJPGzx/dCp3HG7xf/r26A1L?=
 =?iso-8859-1?Q?MLliJq8QE79i18CoMM2lgnqqkUdvJEZUuVlrz7/UxZQnHmA4Rgez5D7nBH?=
 =?iso-8859-1?Q?kdnPAHxk9K/QZPpwU5lOZ+yaql/Gm6xedc2i9yo0GZb441No4+QnwCWpa+?=
 =?iso-8859-1?Q?sGe4NP6pD9270GVtAcMgs4oa7Wh/XyzArQJA4I1vwDcCqp4IJ7Tf7iLq+2?=
 =?iso-8859-1?Q?9eMI3IpSb6WnH0sz+798ckEIIh028TcKFBlxaeUG7kXUxlq8SXBifOJEq1?=
 =?iso-8859-1?Q?l6fWqYD9JgfSnOWF0oFp8Ict5VpkUUI709GdBySfJpI/fYW5Jq6HpZ+kxc?=
 =?iso-8859-1?Q?iGzlo/fxubIszdp1M5+/xp6hvJqTHBZquY0QJJ4SRQ/c2N7AHuQbKWOnxi?=
 =?iso-8859-1?Q?SnNa0G6+inIKiQI2Y/VYMTQlIdXrRfvL8/XMN9VUSn01xTrOUzpzW5ItBU?=
 =?iso-8859-1?Q?Qt4dGAbFvHsYu94rfBTOzHGpJpFj0W47ITggpHm/lzMMPjdmustYdwVFXL?=
 =?iso-8859-1?Q?4m/hlNrRqsPctsPImms2A0moWQtDBTZhIf3VjkacYhya6ohQIz3iaznUW6?=
 =?iso-8859-1?Q?LzbpX9NfVRapUMMXuXdldHB1kXFsBsTobyW4bCnFCjZHMib3azQu71cJKJ?=
 =?iso-8859-1?Q?OO4hIODsXHv8/DddubSbsKDUs8+NVP+OxKwYGr9C6wnfuxi1MOH8krsLkS?=
 =?iso-8859-1?Q?2qi33UPZEgdcqNqSNlh6bYI96wlDyvQNUcydlTdZKYv+nBWegc85LYruuQ?=
 =?iso-8859-1?Q?b/ol92R/7TOyIqMJPc2iC70wei2Q31ICLOVCd+aX/Gi1zG6sM9hDNhHXZN?=
 =?iso-8859-1?Q?P7S52HURj7c6pvAh6GsIUq4xlMPr+z/Fuht5TNuI5LPeLN0zFHSJ1QBnIJ?=
 =?iso-8859-1?Q?iujl9Cg4BLp2PImf8eApWd6Cu5U/iYLtv1fGK9eDwSO6wpSRbb52vpkO2I?=
 =?iso-8859-1?Q?S8DmLyGeQIQlTMVkDk6jQNN6gxXqeOsmkLFt1s2XFvCSWIfoRNxkIbz4u/?=
 =?iso-8859-1?Q?w9kQvGaLhqqQvCQW94GRDtRvT31DBSzQXVlLRDomChF9n5H/IOMKOJzPAa?=
 =?iso-8859-1?Q?p9rr0dvIcpN17shdzyMhS2t9nDzas2bOsLlxcyalZjjEHYEWMD2X2Szudo?=
 =?iso-8859-1?Q?CLY26pIFRDqPHtZ4MTKAC3f5aFRQrbphe/ZmRl+gJ90SsgenMZQgyuk5h1?=
 =?iso-8859-1?Q?MAinx80oq5vyFwikhQipBHSfHqcLcfRNXrOlyItLZQcKT26KscTplYXyNX?=
 =?iso-8859-1?Q?j1bx1lxzK9jIRstWxfG7ti1OMgSR0CiMC8Aei7kDEgoPKiHeCcqReeTvCv?=
 =?iso-8859-1?Q?3onqrZbf+ykOeDhyHDi+WPrbMCJBVCHrH7RlyQHkC4FU+r/N1PIaK0hp1Y?=
 =?iso-8859-1?Q?cpENKbTt2JEJfEiY3EeKuOrG0PFx6DXsVhUyG3xWlXeHoT+asJb1R7BWK6?=
 =?iso-8859-1?Q?Hu4Fdp8A5Q2PwKu8+Sjb48yDmA7s/G1gYUAmodA6S6UNovQ+AalnxA8Okv?=
 =?iso-8859-1?Q?6eJzfghoQ49kqeVY2zUlLjf0TqZS8K0fXWbo/5HUZXdj84c+8nBDNj9fOo?=
 =?iso-8859-1?Q?BuDFvBe6WxKIanGMlF4CSEHy6yR9DwbjmicIYc0BA256m/y7MYGr9KXA1C?=
 =?iso-8859-1?Q?hdhxEaCcXQ5bvN59D936FyR6CImJXB3q4QG6mx7dbymO626WvfC+mfKov1?=
 =?iso-8859-1?Q?VSp4gvK6XQW7lgk2sIoB/ef/a2iFpLm05lC5oekBcZHPjtxhUu1KcOjkc9?=
 =?iso-8859-1?Q?SdHV3M2wl823FF5fCpAcqo+b6M+/yqiksNiTUY/IbTvL21e77qADa22BJw?=
 =?iso-8859-1?Q?UI?=
x-ms-exchange-antispam-messagedata-1: Ee0UJrspkYp3GQ==
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: cs.auckland.ac.nz
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MEAPR01MB3654.ausprd01.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 00fa673b-6a0a-453a-baba-08de5bf7a0d4
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Jan 2026 09:53:44.5860
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d1b36e95-0d50-42e9-958f-b63fa906beaa
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: mWhzjVaT5WAyk+Uozzdo0Z7eHwFb1EAxi1ZjQk1v8YIZWQCiCiIwm5tFjNl0eFoYYIgPwSUPDRXP1cpWVR7d+bxA7Z3i8V3IlKN5aCAUoUQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MEYPR01MB6230
Subject: Re: [oss-security] Vulnerability management and Open Source: FOSDEM
 BoF

Brian Behlendorf <brian@behlendorf.com> writes:

>In fact Daniel will be presenting at a keynote there:
>
>https://fosdem.org/2026/schedule/event/B7YKQ7-oss-in-spite-of-ai/

Nice!  Looks like there's a FOSDEM YT channel but it hasn't been active for
awhile but there are several FOSDEM 202x playlists from presenter groups for
previous talks, e.g. the Mozilla foundation, so with a bit of luck it'll be=
 up
for later perusal.

Peter.=
