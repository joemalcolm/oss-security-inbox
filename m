Received: (qmail 28274 invoked by uid 550); 29 Oct 2024 15:56:46 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 24026 invoked from network); 29 Oct 2024 13:03:55 -0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=LtjhwGruxd90Doeizy8NTXdKsRmkOF5o2nVC+NgUh1K3D+DbOasIRv8DNXiZiM+wzCf70ReDeccumMzhtoRdJ/frpcXjVbjn8xr6l/MqYE3KeEmWOqrwLzLtXXlPSsr+DvUarACJYdMzmLu3tx8O6kwqFRdtKrzzpISyGH9svxNRhU96Zw0vjqHTzx+ewEmxW59Syb0wHKvrojXetHUviimhTtSHZUSyKJe4RVRKk0uE5MFqQFjDV0aBUAD4zV59VHlwnlEHS0qk0U35UX1yotdJI66IWYTEmUSho0P9V2BYCOaOnmQTpT17XbWQ4wzajBYFvESMYZjXDnKvZblsRQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+er/DwoPufuoe6lzhu9E+tNUxXG9ZT5Z6/iU5iX0Zkc=;
 b=yavmDjHuMC1Svk6B71XzNJMsWlRlDuWhZg6p0PUYoAhk/5lsMFnnSSDFtx5A9nLLJ1cuXQa4VxOx/1QcaRVAoM4y2flIVo5p9w1PwUlrjCUtUnQ3/TMC2JLdQMnx7DGgoIDyAZN2lm6hddtjk4o5YjXRe7YY9NVVDccqFid2tKbYh3R6I+52sFRNcyn1xx3w2L7F9eKOkz0ZiD8wSh7cTztIUJqAN+fuaV+Fhp4Pjct6pZUD2RyGs53e8x1ondJvRVWYD8E6rot09nzetRuB1MlT04GfzX7xwGh8koE7ytH7tfDNLuB3YhbPM/68pRSaK1IFv4dAp6NIFF75kMdUXQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=witekio.com; dmarc=pass action=none header.from=witekio.com;
 dkim=pass header.d=witekio.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=witekio.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+er/DwoPufuoe6lzhu9E+tNUxXG9ZT5Z6/iU5iX0Zkc=;
 b=OLa1/4jF2UubUtW9f46DkqyZ3aQyDuvR7m7rjLwXODO4qste4Lxlp6uA4EAoSZoKVdy54B4abxsxcvqVk/kTzgI8Rb1KbWg1/PetgVgrEdhWgLV3xqmlP4OcDMGMJ8lcLWUkVjSFIIt4gch4VJ2focBej31dfo3TzwywIs+zN4NkjMu8ikTBfg+DzYfGwAVmHsL0375OOM7I9kz1h7JmLGYAhsi6+mjleuk+V7bNhxc+uxz2Tb/yKN+EFzvudcILJlEempbXzxQj3bsiEQm2zanyiUqbKgE7IO3LnJyvJlurEem1IJQBteqvgyQ+OFMfA0yPm2uDqk6VCJxGby1nPQ==
From: Joel GUITTET <jguittet.opensource@witekio.com>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Thread-Topic: CVE-2024-36905 clarification
Thread-Index: AQHbKgJec/4EL/UoNEiQTmqZKQ2j7g==
Date: Tue, 29 Oct 2024 13:03:43 +0000
Message-ID:
 <AM9P192MB13169D3C23104FC22ECCFD3AD74B2@AM9P192MB1316.EURP192.PROD.OUTLOOK.COM>
Accept-Language: fr-FR, en-US
Content-Language: fr-FR
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
msip_labels:
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=witekio.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: AM9P192MB1316:EE_|DU0P192MB2019:EE_
x-ms-office365-filtering-correlation-id: ab32590b-27ac-45a5-1c92-08dcf81a1e27
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|376014|366016|1800799024|38070700018;
x-microsoft-antispam-message-info:
 =?iso-8859-1?Q?UtnC0LoCjnNX6ktS7EsymITOdVI3g+dx5PszG+iRmANnHiu84IdRhHOV7I?=
 =?iso-8859-1?Q?oGyAa9nEOSxdjgmT5p8TOIFTUKmem2uAW6vo5ik7X1EomSlwIEBUMw+rQp?=
 =?iso-8859-1?Q?qqepUtSrDIwv54uqktJL/ksNpURRsSr6OS7Rb8oyQQqZPis4Zi09LNSOVt?=
 =?iso-8859-1?Q?ZcLZtpNx+j3Ps7PVfBi/tey+yOkSi/M8imEEGD1/tK4kmig4iRdlbjlsIX?=
 =?iso-8859-1?Q?4CxL1PY5EiRyG6/55jUDZfLe+L91Jwf+Tf2HAkhynii794DBQW7T0bj6r9?=
 =?iso-8859-1?Q?7Z6ohcmWFW0he1hPY9RLQmrHuzGflWOoEPhyZDS49FKVOs/PKbnL0D7xXF?=
 =?iso-8859-1?Q?t7xFWIbpj19ZusI9Uy4M2Tm+8fzUlU+AcwBByckOWgHYJ1j9js5u8F9NrU?=
 =?iso-8859-1?Q?V+t+Fssz9vObY6cVuBeaSLzx64IvbsLUybY6DMVlNEey6tBvFaGZbiD28A?=
 =?iso-8859-1?Q?KvUm6twFotq6CgeA/ZMTt7NoVFmFAL2parQzEhNFwMX3soQaQBfPmVAnLk?=
 =?iso-8859-1?Q?iHXPm4w5nsEiiSm8IgJtTFcL51YbIDRNo1XRdICsRyIw5GWd3nI5eOPq95?=
 =?iso-8859-1?Q?qorTc0r4pC45/RJeTjxQ1rgXMbwr4Ede8r6yHXXNGdTUxxfguE2F6T9yZX?=
 =?iso-8859-1?Q?HBhj6fgWYYk4yJg+eCOvxRCqcQUyochP4BMrWEPykEQuR9/FnNCSPWuCsn?=
 =?iso-8859-1?Q?stg4IF8vUvOJuv4n2/h9HI/dRuTkD1SNEnNT6PAjs8x5XdYMLGEyRt1PJw?=
 =?iso-8859-1?Q?2L88X2jHCmfAcTXx49ag3yaOXO5G/PwUP7JxyIaRskKdLZFxkqeYIvWTsF?=
 =?iso-8859-1?Q?Oy1daA1jq0JXXJvyP1AnGk2L4yCf6s4yLFfjY3UmIFgZ+oFjtiv3jWw0kA?=
 =?iso-8859-1?Q?LJXMLyJq969M9UCazqbqx9gNKMOxLEgj7dXnzUuc5zyPFpm5Lulz8Lv3hy?=
 =?iso-8859-1?Q?WPSCEg9IWkSBDMr9yet7o4BHF7pl1J4F01ikeKDXlIeJ2OQ25gLi/zgs5D?=
 =?iso-8859-1?Q?t0khBFdym8WY+mP9ZW33VBr+ZnYZkKz/BB/Z+CQXXc5M1LZ+DdVCYzVF2F?=
 =?iso-8859-1?Q?GG0VZj1Uvx0AlIqGz23mtHc8yuQ8ZQTHqC9ejwF54zsP9iqwwRK2YFsXuI?=
 =?iso-8859-1?Q?4nQ+yT7o47cDiPoWnW3ISxqi2zgrtiucz8g8FvZjg753VHdbv6Ovc87vD1?=
 =?iso-8859-1?Q?Rq6xSylzgsDpSKg1/3nDEjJ54o2++x5xKHeML3g7n3mb935Ju9gjnMUE4b?=
 =?iso-8859-1?Q?v3/RNkTkq1KVhzlbLpntL3tWFWd4OVErbKZl5pfiwkHx3NW4sS6aA5lsDb?=
 =?iso-8859-1?Q?cmCHgaHjZsmaR+bB6y4sYjB5QjbmBGWUwH7LQ3XJfCe9mvTEEeeVFsw5Ko?=
 =?iso-8859-1?Q?it3NQjjbGRrZMIQbNRC34FSKXgsH/BpGQBL080fciE2YsYBrQizFE=3D?=
x-forefront-antispam-report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM9P192MB1316.EURP192.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(1800799024)(38070700018);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:
 =?iso-8859-1?Q?/9HDACHqlk5x215oQJUVUHkYDb3R4kTC//AuML0QIH8a5skRrZM+lYH4UR?=
 =?iso-8859-1?Q?agconxJFbcgT1VCyPc8UE9+FJVDAhPOZtLozE7y2sWk0wFwOh54D6QUobr?=
 =?iso-8859-1?Q?JV/M7K/EjH4+eLwmF6sBUlKxxK5oQ4SMBHf1EWgy6UwpzSOKNNM+fm98ME?=
 =?iso-8859-1?Q?COentrvQsKGh73IswycVXtMocgkukBIv1s7aX2o0UPP+fFeBX+6gKn2Wu6?=
 =?iso-8859-1?Q?wpIQuoElSCF9FvFxp71nzwWuw1xGYNWPNT0Ws2quq+d34dPybLyEH7GlzM?=
 =?iso-8859-1?Q?uPeFr4LwDTOhQ6XjTZeLCLXbIOqNjoDbwyZklih/gT2QeOwcx2gTtTQTn2?=
 =?iso-8859-1?Q?Wj+mD3UIlqUQuNol7YLALN6Si6jancs6pUC8SlPO6g2Ds6oL/DmMR7kMSW?=
 =?iso-8859-1?Q?oLJctra8CDCRH3t97fyjYsEGkBNVNqNqI9sH5/EnL0AH471mfK94RVmowR?=
 =?iso-8859-1?Q?Xgc26WnTGr2Sfgq2dbXEcG/GENnKFcgqaLK+7hOLDvysMzMyLKOUNHP6JN?=
 =?iso-8859-1?Q?2pUkSNXU5IQOKIplJnlFnoV40jT8erEddmgPnjbroD46ydkaYE+v/Jkw+1?=
 =?iso-8859-1?Q?5Zeq+xlweJ3sF15vb5kJNNzWwqyan7xt4FucyoH0gwtOcuQ8S0ev8X4Syi?=
 =?iso-8859-1?Q?o5JKhhXZMxYvie8oUzWLmi56NiXwD242EhOP9RawpAWicubDJcSOsmxNFD?=
 =?iso-8859-1?Q?JY4iAY8lZxjwq4jde9lfheiDCkVJLmVv2v+8K6u/EXXbO8YFOBNg6GZhWN?=
 =?iso-8859-1?Q?YH8GBpBfquv3st0qF0aaALT2rFxCIq3P8jckgbymE8PvCF6mhZxSKjy1Yf?=
 =?iso-8859-1?Q?Pgzuz7I+wYPP9AckotudlnpD8yZfSAA0phneSeg76bdveVJrk9sQXu8qDn?=
 =?iso-8859-1?Q?hAlSMqMKft6BErAXXnN/0ZtTkECx2NmIH9C9detxe41CsndnZLygLSpFIU?=
 =?iso-8859-1?Q?Vctv9KCAnZ2dJuHdVRIXiUU/QRuEtO1LGwyFEBnql4Kh/ILpdnSGUPiSYU?=
 =?iso-8859-1?Q?yyXgjE9mmXUSogf7PmuYxLSdrKO1oavW+mXyXmz+wiErrnnmiaM3KIM2iQ?=
 =?iso-8859-1?Q?Li8XMi3TBBuFc6mowi9Yt6dE1e7se2nI5aQC8TlwakVuhrctPDMX4V1alF?=
 =?iso-8859-1?Q?cYjk9hOZqZ0abbUIMmeUaK8i82hkf78wpZQnrGQ8lin9E7t1GQFGL0uVIp?=
 =?iso-8859-1?Q?RUIG90JSY595tXXt2U7KbbyvLIIXiXzB+gweoL54uuMuZsg3Fi5B2qjW7f?=
 =?iso-8859-1?Q?3OdIaGicgIfUUeNovvjzquKBuCN7zx/Y6Kr+JnAW5IkbkA8lqgkPf0vD7R?=
 =?iso-8859-1?Q?D6sPTeU2ABi8N87pspZSo8hXC9brjizpEUyl3yE41n/w30iqYP/U1kNHnj?=
 =?iso-8859-1?Q?q4JLS5UL+aZ26yLdP7ezqYCSIwwS9F0hqBoSXP4vXjmHfuKm0cbV2InQOz?=
 =?iso-8859-1?Q?aD9GFOSgoy6RN9wnrNjZjoPyN2z0NHeIK1i8C03POq66nrKTwR0aohzTtd?=
 =?iso-8859-1?Q?R6vcL6RihpKhKSY4oKDumbtgXwuizlwekRnqUYi4EcZSE+q8Ddfg3JnpBE?=
 =?iso-8859-1?Q?Bo+cb1l0yR06/Ty9eiM+JFj0Mvfpq9TFx8ABuPZE/KV4V0IVnzScXnI+vM?=
 =?iso-8859-1?Q?qr+xN6gMi0aFU=3D?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: witekio.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AM9P192MB1316.EURP192.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: ab32590b-27ac-45a5-1c92-08dcf81a1e27
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Oct 2024 13:03:43.7980
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 317e086a-301a-49af-9ea4-48a1c458b903
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: T4usztQjZKCzeZT2hSIOaymc6l/1BOsGcOfH5AfWTVbHQR4WZTAiuyPTwAuKhF7uiOLEGqyMNhsEPX6IE45VLA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU0P192MB2019
Subject: [oss-security] CVE-2024-36905: Linux kernel: Divide-by-zero on shutdown of TCP_SYN_RECV sockets

Hello,

We would like to ask your advice about the CVE-2024-36905 (tcp shutdown vul=
nerability).
NIST indicates a network vector while AWS and Red Hat indicates local attac=
k vector.
Our cybersecurity team has difficulties to justify that a local vector is a=
ppropriate here.
Can you help us to understand this specific point for this CVE ? The hypoth=
esis we have is that a TCP socket need to be open/closed quickly, and maybe=
 it's not possible remotely ?=20

Thanks for the feedback!

Best Regards
J. Guittet=
