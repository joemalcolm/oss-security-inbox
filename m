X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1884" "Thursday" "25" "February" "2016" "14:20:58" "+0000" "Cantor, Scott" "cantor.2@osu.edu" "<9846A6064BD102419D06814DD0D78DE112854418@CIO-TNC-D2MBX02.osuad.osu.edu>" "47" "[oss-security] CVE-2016-0729: Apache Xerces-C XML Parser Crashes on Malformed Input" nil nil nil "2" "2016022514:20:58" "[oss-security] CVE-2016-0729: Apache Xerces-C XML Parser Crashes on Malformed Input" (number mark "U       cantor.2@osu Feb 25   47/1884  " thread-indent "\"[oss-security] CVE-2016-0729: Apache Xerces-C XML Parser Crashes on Malformed Input\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 23825 invoked by uid 550); 25 Feb 2016 14:21:15 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 23783 invoked from network); 25 Feb 2016 14:21:14 -0000
Authentication-Results: spf=pass (sender IP is 164.107.81.222)
 smtp.mailfrom=osu.edu; apache.org; dkim=none (message not signed)
 header.d=none;apache.org; dmarc=bestguesspass action=none
 header.from=osu.edu;
Received-SPF: Pass (protection.outlook.com: domain of osu.edu designates
 164.107.81.222 as permitted sender) receiver=protection.outlook.com;
 client-ip=164.107.81.222; helo=cio-tnc-pf08.osuad.osu.edu;
From: "Cantor, Scott" <cantor.2@osu.edu>
To: "c-dev@xerces.apache.org" <c-dev@xerces.apache.org>,
	"c-users@xerces.apache.org" <c-users@xerces.apache.org>,
	"security@apache.org" <security@apache.org>,
	"oss-security@lists.openwall.com" <oss-security@lists.openwall.com>,
	"bugtraq@securityfocus.com" <bugtraq@securityfocus.com>
CC: Gustavo Grieco <gustavo.grieco@imag.fr>
Thread-Topic: CVE-2016-0729: Apache Xerces-C XML Parser Crashes on Malformed
 Input
Thread-Index: AdFv15LDz7DQGmArTbmfeUtnr8w07w==
Date: Thu, 25 Feb 2016 14:20:58 +0000
Message-ID: <9846A6064BD102419D06814DD0D78DE112854418@CIO-TNC-D2MBX02.osuad.osu.edu>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
x-originating-ip: [128.146.94.29]
x-header-sapphire: true
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-CFilter-Loop: Reflected
X-EOPAttributedMessage: 0
X-Microsoft-Exchange-Diagnostics: 1;BN1BFFO11OLC004;1:CoEVnoMj6v8/inYeKR5b3pl/9pSF7w8rpLMBvA+aKATQoax4/W1M1pnesHWP0EabQd7DXCdW8+T+1SCN0z91Y13+iRv6oLtZuHFiCZnM3eH/4gSTIOywyh9pretWtqZqk4PYunA/SIEjhFI56/nkGbQE3V2PEIL3hb6daqlRUkhsR24k2GF4dQdfLVvlyBCZkGqZaDrjz9UJHhEjp9pgn4ZIm005s8ap6u9aXlif8LXUMs8PzBSFG4nICqtdePjvQIUa09uf+klPn+xfVtCsrKeh7nradQ/4i4s/4K9220VhFvF2DhGgMuN7wiPfqK9mQH5cYr4fbP8gvdcFLpgY35zuAV8Xzm3FPpunAd5niuSkKZx0JPwWHokL0UTU5/s8WVoUAGQk8fGyJUjR90zg0fmm174Cp3i89FGbUO1a+F0YmAA1haYjbRkABxiEqy0f2iFmm5/52Hb2p3npX27GdQ==
X-Forefront-Antispam-Report:
	CIP:164.107.81.222;CTRY:US;IPV:NLI;EFV:NLI;SFV:NSPM;SFS:(10019020)(6009001)(2980300002)(438002)(199003)(189002)(54524002)(50944005)(87936001)(102836003)(3846002)(6806005)(11100500001)(50986999)(54356999)(189998001)(4326007)(2201001)(93346002)(5004730100002)(230783001)(66066001)(1220700001)(47776003)(86362001)(16796002)(5003600100002)(1096002)(90282001)(2906002)(586003)(5008740100001)(2900100001)(6116002)(50466002)(75432002)(15975445007)(55846006)(23726003)(2920100001)(229853001)(92566002)(2930100002)(88552002)(89122001)(5001770100001)(33656002)(2501003)(106466001)(97756001)(46406003)(19580395003)(109096001)(19627235001);DIR:OUT;SFP:1102;SCL:1;SRVR:CO1PR01MB301;H:cio-tnc-pf08.osuad.osu.edu;FPR:;SPF:Pass;MLV:sfv;A:1;MX:1;LANG:en;
X-Microsoft-Exchange-Diagnostics:
	1;CO1PR01MB301;2:T5w4uanwmp+OvI3x8Vz41nK6kJg2gWdXQplY1Bzm+HFtf3M7hFrhlfxxO6ewIQGAQeD69k2TaZHdLjspMRCjCdPP1VY3qpBsQczyCN7N660SJu4DNJ9T47tvm0/VkOeTxs6xEphiri+DHOhwLyKiGw==;3:HAwl1SKzDnQV9Uj7//BUYctgWKqhM0bzI6Vs/XYz8NaqhsqmkyXYrgRyM8TKzwx+/mfex29KU+8/C572pRt77j5oA66BQDDmaUBNHq638sF3ZWsyFe0HIH7t1iwDAKAhe5y+Gan6hCtvOzZckIfOhORjdY3gjBeWc1gFwu7/q8ZEFaCBKPcnLP7EXuYu/AZ9eNvFc6Cp1EfTcx106wpUNBjA0Ps8q60y/Eiol6tYLxUueNZjw+hIrPwwN6ljJluqyXD43cRgnQoAmEx8W8TDaw==;25:fQPOh6uMQxNTXhUR7zTIL3zyONw8Lv14WcITryLwxV715UTKJwoQcd1xN20z7OOu/+xAix4Cw1qoa/VeB1bVC/J4DDG8jEJirJpsztv2FXGUfFurt4StFR6VowKYPjh+l9Zn+SqQ2+As2VNMqVBcMisZVvNTfqp4wnMTpWywdVU62VD/B6wAUKVYksrk4GM1dh3PMdxORYyPWy8qpi+Wf18Zdw45A+BKkNdOgwDtncps018Zny6jGaxscen9v7nVqXUqcPCIocX2Dn+2sYsEf3LO6kGacV8mQAgCA3GNh+j78a9WgIoFaG9/ZKEhJMQGV8lZ/6NUrcbzRvqMCDeahA==
X-Microsoft-Antispam:
	UriScan:;BCL:0;PCL:0;RULEID:(8251501001);SRVR:CO1PR01MB301;
X-MS-Office365-Filtering-Correlation-Id: 973f55c0-bc0e-479f-54c7-08d33deee367
X-Microsoft-Exchange-Diagnostics:
	1;CO1PR01MB301;20:0t8adtRcS7WSkjKR1Jgrny3/qqkyJa/5k9I1AzXAFh0AhiZNwvunpANso/yP0tX/tlk73CIgIEgJVQfRmkJzaOon1hEZZUhPw+jW96Os/VaB+XX4A6IL9JdmryrjLtcnmVE7O3btRnJoU2SDz9X7brQCOLeFGwb6iVzf9JXieccZl60Pd4AlTclINJnzAaNFConSsyI5P84eL8KNmGQRrhd+GdDxpvYtxffelgSGHdPyMqpdWg0htd18Jj0wDZSzSevel2MGZUIDlPBTHutpVmWiHOWKZrqyRdQYSkkiGtadowucxHz19A2BqxVE4LJ/+iOiOpoWVs8GRuLZ0EA/BTAvWS7kx2vp1/e98gOuu94efsyW9/T7O7fL8L7Dcz9SAoRh/WpTmNJEo0IA8yoC8gPXuLl1qW34bX6JLJy6BPNe+XlZmCt20i5mIhH6Fv+1FGHiDKTRh+r+VVutOS9aMyKPgqDmYwYRI+RyzkKDtNMpjUWAO9jUDE/nf4rwM/TM;4:IlBM2IcQtXvPuP7kAg9AnKNmdevH7U0zhfjEi2ztr2SNe0CeY3/bDCviKjM0PdXWQITf7i2gMPt0nUF7jUR0AKJ/tzOr3dQlzxBGUtjO7cXj9Dv0Jpo+Ry/yfCaznEx95EpDd+dyr3BZ4Lwzf80XP1EG+KmpX5xAPNkzCFGhQURzDc7Jhqz/A6RF9O7BLVG/pRhPrSoInwLmYibmVyqkIJgtq69tNfJFp8rCxyOPkCRvDYlxVvvmU6SeJoATJpFQpg0wSqvuc0Dhdp0tOq6/JQ/eAlwHAavmXX8yo41flHjPy5YVcnyekV6SEC1MhTK8/oBcMQ7tcnpO3HMepYINhGuqHw1jMFA2GUmxzrHLETvq/C1AK13TdCuModRM07poFBOz9Ro/L1XqmQWOkim5DH227df7WN5K8PbC0EvbDuYaU9kjzXmgAB90dW5qoRtR
X-Microsoft-Antispam-PRVS:
	<CO1PR01MB30178E4142FB584DA6387BED0A60@CO1PR01MB301.prod.exchangelabs.com>
X-Exchange-Antispam-Report-Test: UriScan:;
X-Exchange-Antispam-Report-CFA-Test:
	BCL:0;PCL:0;RULEID:(2401047)(13017025)(13023025)(13018025)(13015025)(5005006)(13024025)(8121501046)(3002001)(10201501046);SRVR:CO1PR01MB301;BCL:0;PCL:0;RULEID:;SRVR:CO1PR01MB301;
X-Forefront-PRVS: 08635C03D4
X-Microsoft-Exchange-Diagnostics:
	=?us-ascii?Q?1;CO1PR01MB301;23:PHDr1u0lvsaByrHbcpX9fdwb1KhfeNGPCAATigtnB/?=
 =?us-ascii?Q?qT0lt+vrqxpuxIYhPLyfXZoCmBcXZenZJDBO8+yJnHaPs7wjoZP2RXPy22bs?=
 =?us-ascii?Q?qooy63SePPhIULv2OvxttpPGTUnfocnsOpGiWH37SpWHgySo8OHbsT3uhhZ4?=
 =?us-ascii?Q?yE0AzWzPzcrRmSpdGwmd1uX2YItlLx5vcl0U8glmqcIpQaGhUj/ZYvi7V7cG?=
 =?us-ascii?Q?uRHmOEC/RafFnkdgNsXxJjJer7zZHNK0RZE5rSigqB81dGIaSlp9oXeDnlLc?=
 =?us-ascii?Q?bht7YJzoI4yroQagozOwaK7j6HoOFT9ND0jFFRr7tl/gVBzxPVnPPaIlZbzt?=
 =?us-ascii?Q?GzqwJViBEItK33FWNacbpIjSys+KJ5GuxGBdvCRHS/LGH0r846/Ox1+z4dlH?=
 =?us-ascii?Q?/APXa2KFlhfB1r80LHiqVNSCVYbpSJUnpy3HYsti1TJLnmTmWmtCww+OpfwJ?=
 =?us-ascii?Q?a20vi/kFhvyjVIbfIeYxb/UQmvZO+5yfSa0NvkHGj9J1Oz/Wp/V5lcX4P2fu?=
 =?us-ascii?Q?AvdpbyzTclDaOGDtrNvB76VxyvCH0cy5KU5rZNmj9SbaBS8EIyk6jXQeGkjO?=
 =?us-ascii?Q?ut3+a1PEYVt88qV1Ng82yyC/334dovzf+bcE8mFeZmAHXmAgYNusoYB8Bz3y?=
 =?us-ascii?Q?TtGkCWVFBwKvgq5Y7AKN6VMbBjRXV8IrUbnsVcWop/wd7gW/lKcqz1rnqDJI?=
 =?us-ascii?Q?/F3VKCns/bhkR1c1vTuHoL+kkpwaOLZ2Rqa82BMSL/BAidxPmtCkuMeG/UmG?=
 =?us-ascii?Q?94gSPmLg2ipQMW1iX32p730368eIEMmHle7OmMNen9jtrVCQvcDuLA7x41rX?=
 =?us-ascii?Q?sJkXH+zL9I9Lhp2noTVxQ7XY7dHPPexJ0a+cwSd3GG5UTUXXlBVFDZOZaNSP?=
 =?us-ascii?Q?otxu9AeBcoBQes+Vwf88Bm2apqAoiLjawT0s5QG7jBV16SLMCefIKrYnY07V?=
 =?us-ascii?Q?+0PJsDQvCXPyJkEuJoHx9NqKA996rZj4cffl0lC4QXeSjpflRyQubVoTwcK1?=
 =?us-ascii?Q?753dl+VS/Kb/FpxK5Ps+yLZn3Gxz5xPAoCuDEg52hkdcySkYTQrWeJhGtddB?=
 =?us-ascii?Q?heM+giSqIHO96fsaYblY3R0Lc7Q4iOa6/HdyyBVLCc4Qx1y4W34TRxpWfA0C?=
 =?us-ascii?Q?2BHQfjz3E1iKqHEP3zv495cF2cOkJ3cp5NZ+lPbOdgk0KAv+QtGKLNjxLpdC?=
 =?us-ascii?Q?jbAeSGvJKEDBWoeQBI+QH635MFsGbQRl0zgqVSeQQrziTfhhZbNOnyFNRxvS?=
 =?us-ascii?Q?s3MEnIU+SCCAyDCVCrd1LduwZ9Gz7rPPvXu8Nov05qxv1fYn/NGbTl+7//QD?=
 =?us-ascii?Q?uKSvVLJsOiOr/tm7ttJJKH5i3VvxoWtvTeqT60SVzNsoQtf8VVg1vh+4B2Kk?=
 =?us-ascii?Q?AUuw=3D=3D?=
X-Microsoft-Exchange-Diagnostics:
	1;CO1PR01MB301;5:I5ddDoL6TYzCkmC6ecGjTMk9LeDN4RsPzrQcqoYfDTIX2FxnTKjSUnug9zPNT7c4hGRRyKW1WGxew5Xi0vdPIZuBFVjGelCoeM7M5v3ajr8k4xYQ0KKvIXzZUET+/XdXcsH/61mn9pB6LPPScvbkog==;24:S9B9qU9KO6r32kIhBqx0zO40Ulggh6+cSUngS0NmZGFfUYC3ZI89KHb2wo5HqtYKThAJgzg+H/Q4AWhXMUu8GixovLhSWdRYyynY3R998p8=;20:142ryPZQOcuGA02PuxtM+GIpDl5MgI2W+M4bMwakdh4dq7EpXJ4tqMTedTYWlDtcU7Ru6qw0eQG6HmZYVOMrF3e8DdnnK5j3IVXt7NCOghGbeCxaWsN1Q74+ygYtKHllWIzofGfE3Z0pp+K6CCWbu4kvlowTaSyt0t1PeOfy7bw=
SpamDiagnosticOutput: 1:23
SpamDiagnosticMetadata: NSPM
X-OriginatorOrg: osu.edu
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Feb 2016 14:21:01.4678
 (UTC)
X-MS-Exchange-CrossTenant-Id: eb095636-1052-4895-952b-1ff9df1d1121
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=eb095636-1052-4895-952b-1ff9df1d1121;Ip=[164.107.81.222];Helo=[cio-tnc-pf08.osuad.osu.edu]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR01MB301
Subject: [oss-security] CVE-2016-0729: Apache Xerces-C XML Parser Crashes on Malformed Input

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

CVE-2016-0729: Apache Xerces-C XML Parser Crashes on Malformed Input

Severity: Critical

Vendor: The Apache Software Foundation

Versions Affected: Apache Xerces-C XML Parser library versions
prior to V3.1.3

Description: The Xerces-C XML parser mishandles certain kinds of malformed
input documents, resulting in buffer overlows during processing and error
reporting. The overflows can manifest as a segmentation fault or as memory
corruption during a parse operation. The bugs allow for a denial of service
attack in many applications by an unauthenticated attacker, and could
conceivably result in remote code execution.

Mitigation: Applications that are using library versions older than
V3.1.3 should upgrade as soon as possible. Distributors of older versions
should apply the patches from this subversion revision:

http://svn.apache.org/viewvc?view=3Drevision&revision=3D1727978

Credit: This issue was reported by Gustavo Grieco.

References:
http://xerces.apache.org/xerces-c/secadv/CVE-2016-0729.txt

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCAAGBQJWzlsyAAoJEDeLhFQCJ3liUAsP/Rr4rBKVPxOw3+5JDiQWT27y
/TT1kLFV+u6LtuBL3q6rwOIANquEMP1nJPVuYtceNF66xHi7eX6HZ8jZch6T+uvZ
Bt+kUTOfG4PW1RLm83W1kof58PTI5mIYBWofAQzXm9TSyvoHF5GXWqzNyGOKauYN
pto5xvJzEN5gM7DjbXF8OoIesNVaqCnr+9A2WmCCdNGNzSQLlUVDg9kDvXUdDvHD
+TXHDfgP8OSEYl5e3B3P5OV6SzUi2xdATR6zQgb1QANJy7FoK/FOP5+2J8ccultu
mXlVHpsGlPoIi85nyKVykK3hTT4DyhqSwCa9ek3D5i7lIEk2dXxeevh90is3y/Al
0GSUoG7yXbfe7xmlcUUghdYeYBP6JSOiOqAREUsKfY6nYo4XpGwvJRz/Xgk7iw9y
p39sCIKuJBpqe1Vgy8ONeTFc0WZkkriq23n2oZ4zxoOImF5k44f01olZhA/wmE1P
Wi6Qrafn6myUtp1TAXWoakfxJo0DgHfH6fazlmYSPHIyfLShrAcG6aETDn92KsDp
gy4a5ulP/qpkncJrF2+XeM1wgQSTpUln2664fSwRw5whqg/PW/qGx+/1sltwOSQe
l4bvQhr9xvkv+W++aPFgmJF3HW0Gnsglty6KQAcQ/RqheZ+/vL9buCqWw2xg4bkN
BQJ4QvN4uaHIUxhzVfiL
=3DvI5o
-----END PGP SIGNATURE-----
