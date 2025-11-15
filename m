Received: (qmail 5875 invoked by uid 550); 15 Nov 2025 05:27:48 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 10011 invoked from network); 15 Nov 2025 04:49:38 -0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=gzXM/XyFo8YTmq6dDyp1b80pDEvpvWHnNVetmUf69X1SpwxW45qFrbqPX7TAxlJvImX6oZZMMUkdB6NsCcVsa+ocGwBKAJ5yka25cYlnVY+7cgA23PPympifcjbUAcAuglDhNueuvAAxH1nho+LVREvZLvkNEu7eTLRiK4BK6mruM2CTmexs0YMZWAqwM3UOCCwJ+OfUMGJZPCp6lSG1fl87RvYnYqyQHvpZZWu85CgVbNKkl4Z7TA0UeuoQ1t+Iwb2xPZ5UM019MxwkyeHeGf1xJOKdU5yyXp5BpX0OIhnjgWJFoFz+XVdQJ/PiPPvz3Vz2k4mTYivt3k/Zx5BAjA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=G14vkqavO2oww08+feBjltnStW0mZsUtFU3sH0C4NRQ=;
 b=NdkDq8FO7cJFcgLaKrDozV62OW3aq0gXMyPHNIG9FeE0dEFoYf7KZd2zkt2dw+20T0XJlwrwknZmJSvG8YeWXwcXqNR2p2UTdH7LhSOYVYefAaQA+2xlX4E4JlSfZhODk4u6BFEufzGURylTqDLuR7Q/xa2pvPKftoi/bIdqGoT1CL64pdo9NSuIaIL+qgoRDL/O95m1Q3pBjEJcRvI5FuK3W1YPKx2FHn3evqslJlEYV26+esDk1wZvxFwpLB/sogUmn6IEbo0gv9wvvUch6a5GXwMsAHs/hAWVtnBkbjtXHjhESGYhcNAPBhy6PPGOvyribeyj0/j42fzp9Bqsmw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cs.auckland.ac.nz; dmarc=pass action=none
 header.from=cs.auckland.ac.nz; dkim=pass header.d=cs.auckland.ac.nz; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cs.auckland.ac.nz;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=G14vkqavO2oww08+feBjltnStW0mZsUtFU3sH0C4NRQ=;
 b=ryyBhVwSElb8qVJT4EdupPv9J0IkLGa8JU0Eub0yhUU9QHHY8CIwQy3r0kyIKUJXHn6nK4LomTbFFV0TtLRwCMFL8VzEtYyaaCsx83/Wqf6pkpcFTDtRhXsxsi2GcD3CVtCSivk5aVOdrhx8bStbdS0znSy2IDjGXX9pGegPfED75naryyEcNjYWSqIAGJWZDi/TvlNDzrHamTa0Pfk78wRNK/ng4E9/OmdmJWyOGUBaLkbDQcfu38RiLgXyNvshephDGpsjx+epAWN9N/w749eW/1IH/Ii0N/46s74AUcX/qM/tq3lY6sR3ZZYpLeO/WJvZJErtdXc6E7pbCtl/hA==
From: Peter Gutmann <pgut001@cs.auckland.ac.nz>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Thread-Topic: [oss-security] Questionable CVE's reported against dnsmasq
Thread-Index:
 AQHcR1/QuJANdEws/E+/DnYb1yrL/7TWXygAgAAmlgCAABqVgIAAKweAgAX6QoCAAGMdAIABFob1gAKzW7CAAFW64oAOsCMggAGGTgCAABdDy4AAwgkAgADvbvs=
Date: Sat, 15 Nov 2025 04:49:19 +0000
Message-ID:
 <SY0P300MB070750218502B4E0475E5025EECBA@SY0P300MB0707.AUSP300.PROD.OUTLOOK.COM>
References: <aP_msOoiyHJ_M4Yx@mertle>
 <20251027163220.8c7ede47-6b3a-4190-ad4b-e52761b341de@korelogic.com>
 <20251028014909.GA6430@openwall.com>
 <76f8e74c-d9cc-4f20-8061-488598f85fe7@protonmail.com>
 <20251101030054.GA3031@openwall.com> <875xbtlf4z.fsf@hope.eyrie.org>
 <ME0P300MB071302891271CE8EBFA6BBAAEEC7A@ME0P300MB0713.AUSP300.PROD.OUTLOOK.COM>
 <87fravyp43.fsf@hope.eyrie.org>
 <ME0P300MB0713899B74FA8CA28A6C6868EECDA@ME0P300MB0713.AUSP300.PROD.OUTLOOK.COM>
 <a2ac8e7e-e45c-40bc-b517-dffcd4def530@gmail.com>
 <ME0P300MB0713341818938D79AA60A145EECAA@ME0P300MB0713.AUSP300.PROD.OUTLOOK.COM>
 <CAH8yC8kG=8ciELe8K+Po9xpaq=gpdeKqUz5rx2KvLccV2zz9vQ@mail.gmail.com>
In-Reply-To:
 <CAH8yC8kG=8ciELe8K+Po9xpaq=gpdeKqUz5rx2KvLccV2zz9vQ@mail.gmail.com>
Accept-Language: en-NZ, en-US
Content-Language: en-NZ
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
msip_labels:
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=cs.auckland.ac.nz;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SY0P300MB0707:EE_|SY7P300MB0525:EE_
x-ms-office365-filtering-correlation-id: 7fc6e3d3-3ad0-4d59-cc6f-08de240256c7
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam:
 BCL:0;ARA:13230040|376014|366016|10070799003|1800799024|38070700021;
x-microsoft-antispam-message-info:
 =?iso-8859-1?Q?6VmjcP+ukjj1Zurp1I+3RiQTNpZgfHJBzRm8PrWBHd90TxdJwdpevA6P0O?=
 =?iso-8859-1?Q?j2BzNnKSrI5wG/09W7OMHPzdG9hJ8wz/tTveoO7H/BnwmPBQbAKE4Krdwu?=
 =?iso-8859-1?Q?gLzGODr3wRZ7v7NolwuH3/d9vw0d6tAZ5pZiD8KCxulv3FzBXhiFibLYIF?=
 =?iso-8859-1?Q?e3vkX69Opf+uJhN4NtRW7Q0vKBXfALaAEyu1xVqj3E+GsNl272n6xjaqXx?=
 =?iso-8859-1?Q?VsM82003d/YGiZz7RJEVXcqDY5RIKtwiJCqZpCJI7BAcvqIAWUiA19+zST?=
 =?iso-8859-1?Q?kGEbNM6kvBT1h4RxXCqod6CDvcuD26d9F4x+RHp7Yd/4tgMtJA6eoczb5T?=
 =?iso-8859-1?Q?10oBHT7n6II2ysYcrLsARYcSD3JM7o3fZMk9uzniPrp/qIt0q3aWMuEEh+?=
 =?iso-8859-1?Q?DQ5tcReV3V7nrRA3FYQ69EjIepy2xYqcT8P7viPIC1Kz/HrQRSPJOI9556?=
 =?iso-8859-1?Q?DyA1vE4600/xk3mRPFfaFdHav+L/lkgtY2Sdl25iByN9oD9miLGNCAf4lL?=
 =?iso-8859-1?Q?NwshJ7glf0rDXjlNLRKfSZWC2HyNqvaUBwYU6Sw/ThkMuwkZgLtAL+ENjN?=
 =?iso-8859-1?Q?WSjX4Yjneq11drqT6UoZjIVEC1cIqDdAZnL9UDnveGxVxI+Tev3WC0uzf2?=
 =?iso-8859-1?Q?FlHlpoPr7o1ERTNpHAkj6k2aEGuhrpvnkq7umT33f6L02OoAe9zvQnomef?=
 =?iso-8859-1?Q?FPSn3Bd9dbVqIgmSZqTdkJi46skgMzw5z5RtdwTKwDjK4iyjz+uHy5LcT3?=
 =?iso-8859-1?Q?9aiTzHfB0IP7sNvw91Wn36YkP+6CBBoXI9C7waSn/nFB5Gmn1d0o/MV+fg?=
 =?iso-8859-1?Q?MTlZATDRlhcLkmYCGe/cJ0v9UDLDHYn2xgTvNXYD9SMv9zsfD7g0wNR9kK?=
 =?iso-8859-1?Q?ZPbQYnhKI3XOfDnjB6J1a8t0Ye8P6STNwpX/9BcB0FtSMSo65+roYiAmuN?=
 =?iso-8859-1?Q?YEfRigT11AHZNflSX2+8Bi/JRVnHBxr2lOGtfZjasBRbxTbs5P36SFse2X?=
 =?iso-8859-1?Q?4yaDYyIZv0EMuq9xHlfeHLmJ4ihEunhe7QnHstZeA/y/M+10IJHTUGo4FB?=
 =?iso-8859-1?Q?OXpd5/14t4TO2WgQybiLsLbXQ4qsmW0u/3AitqhHYmRxxBMVvNNdMA6iHC?=
 =?iso-8859-1?Q?qNKVamqeYugxhnHVItjQPGzNmh/XyCrQXgTajmgxk0R2A+ignRK7gIhjlJ?=
 =?iso-8859-1?Q?OkCxO7WgazNW2QE68B3gISfV/RJLsguzIsznWpVe+ilA5SiuSdW9lY0g5m?=
 =?iso-8859-1?Q?NVPuweXdJJhacsg2jSPayPSaeXOPy9kIrwt9nEeFnXzwiL33VRlcUIp9Jz?=
 =?iso-8859-1?Q?nG1ApV2WLz8yohMdHPdpe8Sazs897+/PxIdEL7pMXBLmeO5NNnk4An5QuF?=
 =?iso-8859-1?Q?4loZm3ZyA8NAiBHMdzsmNYCJMDU94Tz+91AaDoPf6tSoaldYZJ9KH5PU5f?=
 =?iso-8859-1?Q?bp/3yTDRzwu3YWVo7UENixUWgFr+JTzRBNQtpSI2ESmcQFERxTl3K237R9?=
 =?iso-8859-1?Q?SLQ+N6t9S+FFzE2IXw/6bU6Z4wpicI/QVCG5f1Wb5euXdK9uNHqE34DmDD?=
 =?iso-8859-1?Q?2qmGlZS0IrO9UYO3s6KUbvOM4O2d?=
x-forefront-antispam-report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SY0P300MB0707.AUSP300.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(10070799003)(1800799024)(38070700021);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:
 =?iso-8859-1?Q?Dm/duOrgoVXR77rN7u3h9cE6Z0Z3kTfuZZlBfQULJ2PpJ0oSzPu8oOZURi?=
 =?iso-8859-1?Q?uvC54FxFThzqwHAnrvkyXOQNrWfA68zh5P641GeUHm8J46wFiTSOE1aL5I?=
 =?iso-8859-1?Q?fNJTxt3ZyQYJV6ZmFvFSs6ZNiNW165AIZXZq1R2i6mYKlVpqaoWaX5qbSg?=
 =?iso-8859-1?Q?BzakQ70fxKjkq8Y6xPtItzmgma2zF8s4I6lmjY4pt4L/3JKnDQq5tAsQfb?=
 =?iso-8859-1?Q?sdNmGp5a0xjkGgehKWRW6/WTrTaKJBFheZAhMslFnweTlgr/gvKi0TrTp3?=
 =?iso-8859-1?Q?+f8OmzuvpjmAPaySKHj5pnK+iQoj37tD3m+a2Ci42aE7/EPtTgcdEbooMu?=
 =?iso-8859-1?Q?ubid8ElsNN66fnSFYZeKekNqWbtc4N0zB5Qvnnvl6M17kZLL/4cImBaWml?=
 =?iso-8859-1?Q?uCY0liZwI10rU3T9/JNPoFtMzTx7ybe/mag7eANHE9EOqD6sNV0VI6rrKG?=
 =?iso-8859-1?Q?yIgsqU2imnQjgGVRBB6T7IS/IL2YwDbdTKXD08MCUDtTf5oq6emnj4d19h?=
 =?iso-8859-1?Q?6ZrL2Y99u3Jq7m8/2uEksbAzA4zr363vh1hZFySjAhq19UQEdRzRarTKRc?=
 =?iso-8859-1?Q?4dPFE3Ow5CYSzmiYfJmwc+dHrHfVfGEEg6fsgeR4EvK4rLK/hImeeMls0l?=
 =?iso-8859-1?Q?V60tKeZvkzC466MTofdYh2d3GnD8YYz18JypkF1WDpj7IMXANTpkcERWEJ?=
 =?iso-8859-1?Q?fmZyiDPVjPFZLl82y3vq+OuL2An6sgHh/xX68cQNr7eZb0zMZTgcN8PmPv?=
 =?iso-8859-1?Q?QnXxVGD9nbLfvMFkW/eKquBHpcbpcvD060WqLgCta0npy99wtjJmX2H3K9?=
 =?iso-8859-1?Q?jE8nVbolbkTxvtoZp6kMgr1azQ8psgb6SEaTJPpAZ3L9e5J8n6ieT23INo?=
 =?iso-8859-1?Q?xJ360hdZ5cYQVQRp0Xq0xxwzi8VVSbml6MxIHRjMfDnR+dc3s3dhChLyRb?=
 =?iso-8859-1?Q?0eyaJpjn+Do8OT1dwwX7Eiwmv64SZIMsCga90a1LYFqTMJ19vXuUeSnxbI?=
 =?iso-8859-1?Q?4zSZP+u4+d2+AXqayX5H0HnDaa0QKgrKCkpfYzeaP8tyHjpFAsXc5BbIXw?=
 =?iso-8859-1?Q?fnou2yjXFl/fkZenCZzmpYI/TElLvM8YSfWkosxR77tZsi7fPJUBqNqUMe?=
 =?iso-8859-1?Q?re19xLgtsEZkyZyXfFYzX1t3jM7yMNgemTgjojccOlQlxD8uMFfc3tSNvW?=
 =?iso-8859-1?Q?6EeaievesmMX0UHkFVEC+9HcH3IE3fcntd3VxXrOvfVH3ez3TsKcJhyQqf?=
 =?iso-8859-1?Q?v/qkopvaFI8Rcmbw3IyE1L4QRLXjH4UKZeDqyWw5J8oysNE1Gs6WquAbHR?=
 =?iso-8859-1?Q?/lh4AkgsTbMsQr4oiZ8PeCLuy+kl+N7Flt61ChyukbjRlv4fO/Efal3Jbp?=
 =?iso-8859-1?Q?lYzewfVmTcMW4dDbxkSIaZHhKMmdJqbVVUE0mmNFD/aZi5lpYR9dKNdNQu?=
 =?iso-8859-1?Q?exfmFjW3o5hlg2QSYbfVSOBB70fOZR21KS7lu9U2wPasjbUETqBfamY3G4?=
 =?iso-8859-1?Q?Ilx9Ve/GASq4o52toeuzd/8KPI5vNj1dYGKKl0B49tzgqWpWSYNwJ/HrzY?=
 =?iso-8859-1?Q?itC1D057RGeJmQekHQWaiavihFvZgmfqlxwmy2MOi5gn66FRVG9ZUeCRZX?=
 =?iso-8859-1?Q?1IZtTvkHo55wDRayEzcWW7/nfWiWhQA6vOa/GYkJQ6eT7OflFWOH13A+dh?=
 =?iso-8859-1?Q?0P6YOMQ2wQhWjsH5F33ikC+T+Z57d1ht7KPvsiYC?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: cs.auckland.ac.nz
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SY0P300MB0707.AUSP300.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 7fc6e3d3-3ad0-4d59-cc6f-08de240256c7
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Nov 2025 04:49:19.7295
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d1b36e95-0d50-42e9-958f-b63fa906beaa
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jEDzjbVK0PbNvZ4aEWDcjI25BDW/wQcJYrNi4T9F6gOCS64fzQ3ETmMWetvp42vRBsT762zzpMR+M5C9tnXxIcFkH2XEukHyoPwktKmDOWs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SY7P300MB0525
Subject: Re: [oss-security] Questionable CVE's reported against dnsmasq

Jeffrey Walton <noloader@gmail.com> writes:

>The CVE folks told the Crypto++ library that the behavior should have been
>documented.

OK, that one definitely qualifies as a bogus CVE.  How would you document a=
ll
the ways people can use your code incorrectly?  Will the docs end up with
statements equivalent to the apocryphal "Do not hold the screwdriver in your
hand with the blade facing upwards and run with it and trip and poke it into
your eye, since this may void the warranty"?  Or this sort of thing:

https://www.rd.com/list/funny-warning-labels/

My favourite on there is the fire-risk warning on a box of firewood, but the
rest are pretty good too.

Peter.=
