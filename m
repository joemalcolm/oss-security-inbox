Received: (qmail 3754 invoked by uid 550); 15 May 2026 19:30:19 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 20231 invoked from network); 15 May 2026 15:28:08 -0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Cmhe7nNZ6E5PJN3lqYPGqqI0Au+qTac3HfeC0Kwlks/s3Ci1IM19tf7nxM7/RkGv4XW5fA+p2U3RNt0j2DuaE4SSgZCCPE+ko43hjEmH4qcdMz5uMhvWTQnubldHCzDZJrqgAHDQAZalrFBYxnAsDtORmnYmNV4tFLFn94vCjUk+oatapPlEeHZokLJutO9CvHByQL5aMkT/AkGYPFOjOUfE48sEYpPxIEA9UW9tyic0YWjBeB5gNt57KVSpSdBxXArN5WP/0n6p42ABHPBHN/FBetbUR/KltaIAHqPZM0/rUfOv5Qsj7i1/oBQ7DiT0YaWoFK/bu2Wmiv9t4T4rVQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=katEiMT3MIjnTOBSWnecpQPVKpDXZjWPz+lAvD/IEqI=;
 b=N4vRsKpkMnw9yhDvwcwTp03UjGKA48ZMgGgo8BNF+PWXErvwP2ASkMYJUDGlEHFVHaaFPPNZ92sViKifILu1f/GR5AZm3c3uaqS10phG8KL1RPCpFtegL4db3JPu/zZTpkKrGWRPfd/ZjIuIHyIhN1n1QbYuyJQ/17+eorhDOe3NBmE8sZT+h50I1eQgzjApkpZPlQ6cjPt3Pj1+GZ4nfs8p9rlauOWWkPaL5zDgnmXYSiWZ95cNdQxtOCKcr+wz/ucZWKFoklyF9X9DnZQK2pWrm90paoxlXOLy2ypiGzZ01MbZcf7FMFz4/x+aAvtlF+DH4vhQFumAU+lU4ewCfg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=katEiMT3MIjnTOBSWnecpQPVKpDXZjWPz+lAvD/IEqI=;
 b=lQAhoH0AtCdToMtoKgNyPCB2zBpACzXz4leiwJyh6ribi+QbXWPkB7eH1ASzJcreaKb6pyWNnfTX3sygnPBmxuLF0dLpCYm0+NBQhK6qlP/21rHaMZe93lfl2rHTwkuvAj+Nn0YpKFpZpuh85FhEm+c8SXMMJkOR1CYomN6wBPIk13TiXn6PzvFR+ZJKEgoqCFIt3uT0Xybx2LXGKIQ6tf6a67Lc/EGJ0zwa0675Q8Loh9hnk1UCq5UZHGUtqANqFwLHHpfI3tc+U71uaL+cshyjIXkH3JqNaXbN+IHAVJX16aGz9qtb11Wcu9hNCMBJae83AIXLaZdF/SCKfY2Tew==
From: Markus Klyver <markusklyver@hotmail.com>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Thread-Topic: [oss-security] Coordinated Disclosure in the LLM Age
Thread-Index: AQHc1x/KZqhPb+GP502N8+vd+qYyoLYJrU4AgAWhlJ8=
Date: Fri, 15 May 2026 15:27:57 +0000
Message-ID:
 <FRWP189MB3328A68F0DA5B59C7740E411C3042@FRWP189MB3328.EURP189.PROD.OUTLOOK.COM>
References: <afDLFWVMK-r70PB0@yuggoth.org>
 <19e19c71ce3.89e18d29194892.4293867009907644019@roiai.ca>
In-Reply-To: <19e19c71ce3.89e18d29194892.4293867009907644019@roiai.ca>
Accept-Language: sv-SE, en-US
Content-Language: sv-SE
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
msip_labels:
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: FRWP189MB3328:EE_|DU0P189MB1939:EE_
x-ms-office365-filtering-correlation-id: 15314fda-0d3a-4b04-ff8a-08deb2968ad4
x-microsoft-antispam:
 BCL:0;ARA:14566002|10092599007|15080799012|19110799012|15030799006|31061999003|21061999006|24071999003|8060799015|8062599012|20031999006|25031999004|34061999003|24021099003|55001999006|37011999003|30051999003|39105399006|3412199025|440099028|12091999003|102099032|35041999009|40105399003;
x-microsoft-antispam-message-info:
 =?iso-8859-1?Q?A7s3rEAiuCZaxR3YDN1gGe8agq1x5XDpa4T4/pfksZXZHW2RoeEO3kUkeY?=
 =?iso-8859-1?Q?DpfYhfYZCRqUYHnmUYH4fYvm3AlDK4lEhbhGZysyo+CpATKV2q0oidMgFG?=
 =?iso-8859-1?Q?z2rzJdUUNz4TR33LzD+rwnglkPeRHDkhSSTcMeOAsXJZqCBw/pDsM4KLUc?=
 =?iso-8859-1?Q?l6BHEJv88vEq8q8zySSpTvsnSSkMrWHEKMt3SKZvs655vsmrmy/Ad41Xmj?=
 =?iso-8859-1?Q?rZK8+ja3wMa3w/AnM9EaZ6C4iwL+7bzSbW0CwnOme8sGEjl8AGrWJPmC44?=
 =?iso-8859-1?Q?Tx1AXJjuPZEAALAm4zXcovZrUdHy7tE+ia6LgVw8s+IhhvKBaL9wMmM4mF?=
 =?iso-8859-1?Q?LiLhRkwvIb2/BZgRABwBxJN4joFCAcCsUFOlxgcg5HXoUpQffiy2lyKoIj?=
 =?iso-8859-1?Q?L4yRm83e7OrBqdo/bv4dh8b2b7x1bTYqgpc4jA5juyBNgR+Gds0ZTJBCqi?=
 =?iso-8859-1?Q?jznx4U9QHnTW9jkKUvnCmAh6qs3qHFjSZ4NoDWvVeAuBhbYEuGE23j8JR1?=
 =?iso-8859-1?Q?bXi0rpmACMeYy4cKJMiXgM1nhfr9CHupcRjuUABQwu/X4AXIsj/NOYPJIY?=
 =?iso-8859-1?Q?+/CN26NkFp8BFuZatkrBaCwqMmT+HfY8hTgbReRW7CKJ3zks2Suq0cT8Wp?=
 =?iso-8859-1?Q?jidGTB2RkmN61xANqVD0QTrKqK1awImyNmEqYCWjN4MaBvzUs6HAPy1bLT?=
 =?iso-8859-1?Q?dfyj8/SCljsd4asm7EGUxPTCPaRChbuHYOPAnt/4S2cUCHvOL6KTeMJSYQ?=
 =?iso-8859-1?Q?gjzi1cLXeyIUGKVEvtW488Rrj7gwcafW7pkKbm1qUQWxwy6s2KUlGfoDxE?=
 =?iso-8859-1?Q?hhuwjuogMJNxLfc0eQNKsyEiPANwfM+zNgXFrdfRRauWqthNALxz938Dhv?=
 =?iso-8859-1?Q?0aJBtq0JEZeqpiFEQsvnjGKA2m6+bcwxxQqjZVzhG+rYGl13YgsMlKAEcu?=
 =?iso-8859-1?Q?+Uniz6Q5zdBcdlzhQqJnDuyTVtYSZmbzaQhFN19nwGoWOSU6s+kaMuON8B?=
 =?iso-8859-1?Q?zUV943UBTgExJPEsdbK0xm8wfPJFSjQl8ITYLPoVqiiURerEXKo0MxMuV5?=
 =?iso-8859-1?Q?eMqWD5jfoq1j7EVxA3ac2pwuAtH4Dn31iZkYz+qE+da7ueViMjjEj48g5B?=
 =?iso-8859-1?Q?eBHeVLt9mLKukLeYWrn8EMuJ3kt+oDrmbwpkZW2GmOa1UBVBeAvd34Fy46?=
 =?iso-8859-1?Q?YU+F/6RfajizWZaASpi43JO1AfY06SJzjLB6GvDX0USMEWEMeY9yfZnD+z?=
 =?iso-8859-1?Q?/p1UvBRbGgT6qytrwbogcu91P1VP5RCr0BQY03l+HtTOH1VUNw5QbDocAs?=
 =?iso-8859-1?Q?vRJ4r92DZb0Tqn0wk0Ln3RIHb73zHXvWeNDb7eUhb8O0pgdpTmBvFGTkJa?=
 =?iso-8859-1?Q?U+SWgKr5vA?=
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:
 =?iso-8859-1?Q?g+OMR5qcsatJOo5OtTYp7e7TTYu2Tho0TuTpmRxetx6IdLj02eoCjsMr+F?=
 =?iso-8859-1?Q?b6Whc36MgojJ7q0hSiaP4GrA6KzTi/IIt3pwGLUpYhJTwyhZuMwkgmbkdP?=
 =?iso-8859-1?Q?Asik4hLLf6CsAWFlOZzIG+zp0nF4NsG3cMZO1QLhIILzup36wEb7ErIVC5?=
 =?iso-8859-1?Q?KTroc36RBPpp3nWJm0QBrUBFXESP/soHOCYCrAd18ry7PCOPYePJhXvNMC?=
 =?iso-8859-1?Q?A1PQ5rHLogQKVPdETEKkFaf0TkSTENugvn66ptsAPPO/8GHFCacjgOJfRo?=
 =?iso-8859-1?Q?HoPNp8CxCXlvrahpnG94yGXaFh3Gyh8LhzSpkq9aqfJOAWknQ2eeIfEj3R?=
 =?iso-8859-1?Q?EBllfADCjNQMTkPlhfTF9mShfk6n64kxRtXtXrsURQqhbro/uHasL7619C?=
 =?iso-8859-1?Q?TrLtW+ls6k7xyegskC7ZdEcs3rzl0ei8Ukwgd/0YwnD1MpnZzg/135HiHf?=
 =?iso-8859-1?Q?KrYvABVTjyBurRXgYBzW0Beax++qK5iUJOtEPgBc18qZ5cMPQYaUjOIuN4?=
 =?iso-8859-1?Q?OKD9Y16Wd5i18pvSKAvmM3RnXLPsxeWjAIVIOIlnR9xWst5iwfhsYX17Og?=
 =?iso-8859-1?Q?N22Sus/FOoBLQ3EL8c15OVgAB8YxwAU5/H2Z06vo71qpB3RuAGsOScqq0W?=
 =?iso-8859-1?Q?a68TuntvPZ8Qv/jjxX+YtX6q0YPlXaRfu1E+kGT7fQ+bagx5eeojyxe5Z7?=
 =?iso-8859-1?Q?EKQD6XG5LuxK8d6w98YEkDFAzC+Gt+INlYNXaMoObGZYXD3ezjJE155uUo?=
 =?iso-8859-1?Q?prPo41tAf1DPA9ZPx7ospGuOMSI9iYn8BsQGzuggGl/aw815rxSyJ2DTHT?=
 =?iso-8859-1?Q?YKudEh5cjSwCHxTCdYT5YtPXl4/gr6YpmXNeQjEPztok2i96d1Z+E75qv3?=
 =?iso-8859-1?Q?PSaVWH3W5kbWwUcVCSkFhgsMO+w7twKCLnogPCrqxlckqsJ0EjVjCiOvgk?=
 =?iso-8859-1?Q?AeEI9FhrgT5bcnijbyHNpqXkE60L324xXypdjtfA6UDDJp+fZ87jZU+Sc3?=
 =?iso-8859-1?Q?mT00PXUDsrb6gJDOLyFeMr8i/WevgpNomxlWnjz9xKnnZ9syoKxY6NRLyU?=
 =?iso-8859-1?Q?ayPpFfUz2EoQGLxrZuWWsQ1SmX1aOpfpMHwn3eLHNDa4Oj9s1gHbQ3KTgX?=
 =?iso-8859-1?Q?U66j05QGJiV1uY4X0vStzrAd5sYerzfPxCqEEk7D5EBeo/oJCRwSh9Yd60?=
 =?iso-8859-1?Q?KxJSMGFr5l6/ft6Og2+VQJXKMrZc+Zh6g3vQDWOyAQiHqBlVTUZ2EsYqQW?=
 =?iso-8859-1?Q?qmhSR/uWG/QbuRNRzsFJ2IqTYYEsgw7Yp76q6WZZ4R0UoWnPZLIUMHYJ1B?=
 =?iso-8859-1?Q?8LVrBbRt4P5LPikrjOGskOPd/0ceIqfEriRlajehOsPpDsEwkyh/wLk5Q9?=
 =?iso-8859-1?Q?MO+jhg4ZYNoxgYPinULINYZX01f0MxIczuW937JNUwvbC+LmS21Jpz0Prw?=
 =?iso-8859-1?Q?JvizQi4vPO0vkmNQbscZBSXcFTtSpRD+3Gm191SrMpnhMr0BLjbfog4cuA?=
 =?iso-8859-1?Q?uPUHVcsnuS2esiFCO5/uFU?=
Content-Type: multipart/alternative;
	boundary="_000_FRWP189MB3328A68F0DA5B59C7740E411C3042FRWP189MB3328EURP_"
MIME-Version: 1.0
X-OriginatorOrg: sct-15-20-9412-4-msonline-outlook-b25a6.templateTenant
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: FRWP189MB3328.EURP189.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 15314fda-0d3a-4b04-ff8a-08deb2968ad4
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 May 2026 15:27:57.6695
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU0P189MB1939
Subject: Sv: [oss-security] Coordinated Disclosure in the LLM Age

--_000_FRWP189MB3328A68F0DA5B59C7740E411C3042FRWP189MB3328EURP_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

If you want to process your all your internal thoughts and personality thro=
ugh a statistical probabilistic function, then you are of course absolutely=
 entire free to do so. But please keep in mind that LLMs are also overloadi=
ng open source projects with fake PRs and "fixes" that ruin the codebase (d=
o I have to mention ffmpeg and curl?), the code quality and the lives of ev=
eryone.

If an LLM is used to find potential bugs, it is up to you to ensure it is a=
 real bug and that you can replicate the behavior. Offloading that part to =
the LLM and the need for human knowledge is a loss for everyone involved.
________________________________
Fr=E5n: Tim Shephard <tim@roiai.ca>
Skickat: den 12 maj 2026 03:22
Till: oss-security <oss-security@lists.openwall.com>; fungi <fungi@yuggoth.=
org>
=C4mne: Re: [oss-security] Coordinated Disclosure in the LLM Age

Thanks for starting this discussion.  I have reported a number of issues re=
cently, including - #2149789,  #2150261,  #2149775,  #2150316 - three of wh=
ich are identified by the team as critical, and one as high.  The oslo rabb=
it MITM is also critical, IMHO, but I agree it cannot be fixed without pote=
ntially breaking many poorly configured deployments and so must be 'Class B=
'.  An awkward situation to be sure, but the solution is understandable.

For what it's worth my goal is not to 'mine security gold', rather I am try=
ing to find and test potential solutions for sovereign cloud.



More to the point of the thread, I think there is also a more pressing issu=
e adjacent to the disclosure-process question: large, long-lived projects s=
uch as OpenStack have a substantial backlog of legacy vulnerabilities and i=
nsecure patterns that are now becoming much easier to discover with LLM ass=
istance.

That changes the risk calculation. Issues that previously required deep pro=
ject knowledge, persistence, or specialized tooling may now be within reach=
 of many more people. We should assume adversaries can use the same leverag=
e, including for insider attacks and for chaining individually modest bugs =
across trust boundaries.

In that sense, this feels like a generational security event. The urgent qu=
estion is not only whether embargoed details might leak through LLM use, bu=
t whether maintainers can harden exposed systems faster than attackers can =
rediscover and combine old weaknesses.

That argues for shorter exposure windows, more proactive hardening, and mor=
e attention to eliminating vulnerable patterns before they become practical=
 attack paths.

Furthermore, it argues for assertive use of modern LLMs, especially for cod=
e review and vulnerability discovery. I have volunteered to help with this =
for the OpenStack VMT, and would be happy to do so again here.



Cheers,



Tim.

PS: LLMs helped with this email, and with more and more of the work I do. I=
 think we need to move forward with these tools more deliberately and less =
fearfully.
Confidential communication. No warranties or commitments unless in a signed=
 agreement. If received in error, notify sender and delete. Unauthorized us=
e prohibited.




--_000_FRWP189MB3328A68F0DA5B59C7740E411C3042FRWP189MB3328EURP_--
