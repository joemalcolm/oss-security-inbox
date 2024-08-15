Received: (qmail 3862 invoked by uid 550); 15 Aug 2024 12:10:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 23555 invoked from network); 15 Aug 2024 10:49:22 -0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=TlWWx7DSVP6/JdjH9XgLMaGFXuTDbOgCsl+8x3zlrjZHME5m7GRbVLCQgrA4Mm4BooLLY6W7W6Y9VVIePC98Un3D03xRDHrswxYymK9jUKO3FllDi8TO38Rcffwok/qHzSurVO8ESpNiSosyGxym5qaw0wkyyhVncHBARBCINCGpkKPskKETjQxwqknsjJn5fm+HcTViYhuJpxLKgk85MoxgSgssCKmU1RoJfNlNf3Atb55A5St+T7Ek4QGeKVtblIFk0zct8N3fPfEdEJALVrWljTMtESpdnjuZI0y6DlBMxncJcsS3Ge8pCABmy4f24K5xTAwTnLgxEiuxlQO9Lg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zKw9QwnfHE/lM2Wp3JIJOGDkWnmLVW7Y3yfaRFQtBh8=;
 b=VFSBUHHkBeZqsgW466rUqHb++GClHFlQ2W/g7yiZKY97fFWLyXZ/8M4noAZjAN75nVnvsPBrx3R2uhm2CpJNxuF+e1zHoZyexIMeXzeYlqaBPUj9HDJtgZ5G6OI3vzak1nUGZugZkHvukdnLi8FYGthzIrSMH64Wf0qlD/1nJj++HkbAbGLdgVfWyG3rpEUxAKdcJPioT+9NsXv/bA8djKUhpGovvAiC5ieSjTRfxrlCZrBa1w2R4xGoOXi5IG4CMrEyPSMTDE1+niG2z/G98je0KJ3EhLdij3a+bi7oVxctmJDcwIfEo+8ce334MjJSugtwN0rN3WN7u0/4XswgAw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cs.auckland.ac.nz; dmarc=pass action=none
 header.from=cs.auckland.ac.nz; dkim=pass header.d=cs.auckland.ac.nz; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cs.auckland.ac.nz;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zKw9QwnfHE/lM2Wp3JIJOGDkWnmLVW7Y3yfaRFQtBh8=;
 b=qSkGWh2e9WaLOZircBrPrSeCqeFvQBJQ3Ag6e0oCN0AyOYlCJgYDgtSKdjhmBq2tnEA9ItaJV+TjuiG55G/X9XRwBjXWaFoupayj7y6cdhsgYAuZbAubYzB3K7nNYCidrkcprwx//GLyHe+J1DrXpwBIfcmB6aboClSaNcALqQyHCWEuhLBEG8mbGTPxnOoNK1mBJPgT4GVxLiPlmDdw8+cjBlc1SgQzctjeaMOzecs1wJo07mk5ezXtGh+yo/n7tb4r0McMf5cjcd6zTUrrWsj4VjWzS3dWAAa2WvobWBA9w3skvZjD246QEdgdj3R1LqJf9K24PVWaTPUbFN8fXQ==
From: Peter Gutmann <pgut001@cs.auckland.ac.nz>
To: Neil Horman <nhorman@openssl.org>, "oss-security@lists.openwall.com"
	<oss-security@lists.openwall.com>
Thread-Topic: [oss-security] feedback requested regarding deprecation of TLS
 1.0/1.1
Thread-Index: AQHa5/PQ5IYqx7MyhkSG2U2pFEx0vbIoGFyAgAAZDj0=
Date: Thu, 15 Aug 2024 10:49:09 +0000
Message-ID:
 <ME0P300MB0713A46D3A408DA9AF20CF97EE802@ME0P300MB0713.AUSP300.PROD.OUTLOOK.COM>
References:
 <CAJbOq16ebWS21u439bcV764HhaeQHF+eO64LdMAAKFgjdDLrMg@mail.gmail.com>
 <20240815111847.406cf6c1@computer>
In-Reply-To: <20240815111847.406cf6c1@computer>
Accept-Language: en-NZ, en-US
Content-Language: en-NZ
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
msip_labels:
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=cs.auckland.ac.nz;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: ME0P300MB0713:EE_|SY8P300MB0570:EE_
x-ms-office365-filtering-correlation-id: ce22c2da-4bf4-41b7-64f4-08dcbd17e4ca
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|366016|376014|1800799024|38070700018;
x-microsoft-antispam-message-info:
 =?iso-8859-1?Q?YLh90XUCM9ok2CG7cul73o8sPmpslbHuCXkwIIghr7otR0kX0RT/AYrQHl?=
 =?iso-8859-1?Q?n6GnISVmWyxfj8UAJwIx/sgCfopUgGKHz0kECkP+Qs4MPF5G3OQOn5+34L?=
 =?iso-8859-1?Q?qx5/MBcZOM7ohGEkceggrmeUp39bLT38/TsknGBy2yM+6mTD9UBBMW9yAk?=
 =?iso-8859-1?Q?JlOS/dtyMBYIr+jf5q6qfTRJOqrZiFdk1qmYKzsnlQ6Fj3lM4X4wMxF0xv?=
 =?iso-8859-1?Q?UBf61Y/UoysqMzlVUvFHQY9MefhBbrfZSxuR4XyQCBSGYxdXzy+ZlslFho?=
 =?iso-8859-1?Q?uUgeMy7fZpQdK8IhJx4T8Jd8/BrzO71AuW381Iah8swMATT7pnfACwModG?=
 =?iso-8859-1?Q?KqIPjvxWxErHWeO7kG0/QGYx686sTl1lspbpkDdC9SdOYxIGv8WNrNQHg4?=
 =?iso-8859-1?Q?vTWOP9grgR8nyTDDPNW2BO2Tv+na+kych/a/GElYbOBxcsOjZ2MElZytQZ?=
 =?iso-8859-1?Q?CoEkli4xs2dpbPq26WqLDW4gR/Zj+7Dvm2huKGnyZd+w/BVn3noSvjELw+?=
 =?iso-8859-1?Q?mwFjFVU6Io5CTXy/5RgKL9v5JQ0QgNE7s4G2loX5pQGBbrQc3s9BuEWWPQ?=
 =?iso-8859-1?Q?F3HaxM7ApRVBNMCWu1V/Uad1Z57t03rvXDohIBy61UNusNBODnRHFNllcu?=
 =?iso-8859-1?Q?po0usDnnYiUEA0e4JtULNTj3rYP2y8nwR6hmFllicl1XAQGQoRGoAl3GiK?=
 =?iso-8859-1?Q?wHIUfqNtrjB8g5zWuxEDzi4jZNojcV8NXGUODNqhNvsKgO5kxzC2bgHRHx?=
 =?iso-8859-1?Q?W+4mOLUVTdk/28dnhUZH2lBrYIAawI5YqzRt86H40qhe72rEFcHNs9v5kV?=
 =?iso-8859-1?Q?LnY5i8L4Oadc6zqkBd42du6Ixc4xtX1Z34w9g6cUw+K45/uQH1gbbGXR1R?=
 =?iso-8859-1?Q?8UMts/BkVNKNOCv1eKFFFAYNdivDNHefw22CpuiyThmEFNhabUdK718wqP?=
 =?iso-8859-1?Q?e5ZK3eqPpKsEycH+6hBwxalwJLsqYBBrC1h5R8Pjas/o4Yzr4XADaDZVZw?=
 =?iso-8859-1?Q?+Q60nQRDUsuo74Tj7ENzpOBAYfml7Kd5eqiYVcGqzRoZbj+pfkMPzdZvs4?=
 =?iso-8859-1?Q?6H84LtK2/Yhr1PkplAudz13tbzCG5ZynkjBtBat6u2nqHn1ZEvLYgNii7s?=
 =?iso-8859-1?Q?BxG3ZICVdnT1hFicqc1382IJiiI9sQ4c/gonRE6FkvV1sP4mxU1ZLpCNin?=
 =?iso-8859-1?Q?ju1Hk6WOcLZrvJJbn6i/9PM1Fvg5g8K5NHrgDsRUzxNrISekedruJHGIZU?=
 =?iso-8859-1?Q?H4qC7EpdTXHSplQs5qgfvQo59Y5AWXB8Y3N02ouYQlC3c6va+4S3IECC8U?=
 =?iso-8859-1?Q?7rysF9qgS8r+JUO7mvEvxkJe4+hKHnXWs3Thth1TSyV0YrSqv8JSU2Udmg?=
 =?iso-8859-1?Q?jen2YAgpuIVb4bmNrKEOJL7AJwA06b3yRkn5QlGgg+QS9ePhD9bFFWr4/m?=
 =?iso-8859-1?Q?lXT+oG9T4e8XVqhZmdmlcJOBJMibmw31+vl3cQ=3D=3D?=
x-forefront-antispam-report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:ME0P300MB0713.AUSP300.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(1800799024)(38070700018);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:
 =?iso-8859-1?Q?peeE00PIX+l9L6c87hOxqLlegXWm551/CJtBuSmvhMbWaXA9utzOmbDA3+?=
 =?iso-8859-1?Q?IhYqYBad3qB5XYZwvLKeTyxaZTQJlPb3pxEUIlhTEOQIx0NXmkiF3hk5B5?=
 =?iso-8859-1?Q?h/Agq+XBR6L40xj/2YjNJ2baH5D2JtbqYlM1HbcJXiVRk9+EdA3qHNv3Ds?=
 =?iso-8859-1?Q?le71rh8X60yjheKmZH+QaXxiUaYu+9dyern7Q5tfBUfPELLQoGp55Lr4w4?=
 =?iso-8859-1?Q?sG65z+YROQ+4BK0EtKUUnJQhvyeyuRbwUwniEXaXX5IugkBJAMzqXwd6ab?=
 =?iso-8859-1?Q?VzflnP8WbCSlLtI+mT1HGNi33Q2Azl2b5tNPfeBmXsrueWUBs2M73ZLhzS?=
 =?iso-8859-1?Q?QnDo+a3fXoUp0cN7Ni8SC/CFRF+HxADd4ED0Z1sw9RjRJw5t85STHs+DG9?=
 =?iso-8859-1?Q?QnRINz/rs202kg2hd59lzSdKT46ObsfKx/S6LRq/1/8Epw/eX5PZfVJ4cG?=
 =?iso-8859-1?Q?AH30aP0J19l7ifc4gQNqLJh7iNhWX+TzqSd+u4ruvzdx7jVs1Vs5Bjoeny?=
 =?iso-8859-1?Q?BvkrN7ULyame9QMdT0YOmMQRfXq1mUNyawflhRKB1emfcAXFyzIRNfx5Yd?=
 =?iso-8859-1?Q?z9mPhkT1Qmv5SDNU34XqW/GoORbZjEVHYGVu0hW+7N/j4uL5IV51GyZtBw?=
 =?iso-8859-1?Q?zZLNnqLq/xZCZ51oPnCXPgznQezrOtq+kYlTbG7q6ykaY6RLFPJbr1gPPH?=
 =?iso-8859-1?Q?Z6hLSFzqGHzlgbtalSBUle8wk2E62avPnBfIrgabAdh1p/eyet4gYhXL0T?=
 =?iso-8859-1?Q?MIbd5bpAMySki6KcVkxj0El5T1gouqmpGv0yQ2h/AwpJTv9GScwbZCkiZy?=
 =?iso-8859-1?Q?SKNKEGuN37kjfBeecZDKX8waTEQAwl8h83JsdEpmnpUgpxFbSHGfzHk/9D?=
 =?iso-8859-1?Q?/+vUhWmmjTePOCLuVm7+qXpQxxQ9/aZNn/fb8zBP/uLcSTUkBNglnn1JZv?=
 =?iso-8859-1?Q?piM16m5ljyvYrEzhkQtRZ33EExWbs/SAbEvBW6++iZFfFiE5Am5up8UwLM?=
 =?iso-8859-1?Q?mAYwO4goLteV4lY6HKPz3826PjhnLUk35m06fJTKQOIMsX9qAmN/Xx0/iN?=
 =?iso-8859-1?Q?zq0rCxHurQN6+wWvJOw8MDRlSVIIJ/oyYlo1sf6ZwOE4V+lyYRbdPTs+Vq?=
 =?iso-8859-1?Q?gkEyh6S/4jt80sJC81uGTc1j7U/JV5vSPqFQjz7pFLvwJanRa+ZCMCPj7/?=
 =?iso-8859-1?Q?J52ne+9wH/v6hjUKf1y1jFpGsiztgJg36yix7F6O0FD55jWhNsCYHfl41+?=
 =?iso-8859-1?Q?cXQsFcmXj6DoY4U4L2wD31q1E8doy4ry3haohKfgvwb4vD2/kB6vMbYrFN?=
 =?iso-8859-1?Q?gOgJbvCNuAKFSIOi8f1w0B2vJhpHJh2+buvS1NuRshwcQq5yVnq7BOxAxt?=
 =?iso-8859-1?Q?ST9TB8Rlzurpg/eQK5eQhdTWV9VlTCVKjfQJ/4jGZWL+svlOl5aQJfMdAX?=
 =?iso-8859-1?Q?PQVN7ge4hqu4nAuY+kT/Ow2kVEFgpAiTepPQ/mgpwPoQTCQWD69FdDDWHY?=
 =?iso-8859-1?Q?6p82A3+S/7TqokCKdJsq6K4lo1B4W1clh9eTglao3KOphfT3xQvRklALBX?=
 =?iso-8859-1?Q?3BJyzefA0fqmx6Ay8VD2r3LeK4oVsEbv3gU8eK9ojO+aPO8/7DMHYcD6wX?=
 =?iso-8859-1?Q?YqajIP2hFkRCYfFygJUlnNrNf4N125TGCn?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: cs.auckland.ac.nz
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: ME0P300MB0713.AUSP300.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: ce22c2da-4bf4-41b7-64f4-08dcbd17e4ca
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Aug 2024 10:49:09.9843
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d1b36e95-0d50-42e9-958f-b63fa906beaa
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 342HNkifThz/YDh8UV0bXirhkEWhmwvY8H60/McIiyFwB9OG2jXzsNufuoH2B2UWNT/VF+RpHaWEg1ndIUOxAy8xSqHwaoT6zqCm6BHttxU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SY8P300MB0570
Subject: Re: [oss-security] feedback requested regarding deprecation of TLS
 1.0/1.1

Hanno B=F6ck <hanno@hboeck.de> writes:

>My impression of OpenSSL is that it has a strong tendency to ship "bloat",
>i.e., features that either barely anyone needs, but that still get added (
>remember Heartbeat extension?), or that should've been deprecated long ago.

I think it's not so much the fault of OpenSSL per se but more that it ends =
up
as the universal guinea pig for anything a third party wants to play with. =
 I
don't know how many research papers I've read presenting some whiz-bang cle=
ver
idea that says something like "we modified OpenSSL x.yz to add ...".

One possible solution would be to have an experimental version of OpenSSL t=
hat
everyone can play with alongside the production version that minimises clev=
er
ideas.

Peter.=
