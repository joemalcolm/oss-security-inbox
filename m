X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2286" "Wednesday" "29" "June" "2016" "14:37:11" "+0000" "Cantor, Scott" "cantor.2@osu.edu" "<9846A6064BD102419D06814DD0D78DE11296CE0F@CIO-KRC-D2MBX08.osuad.osu.edu>" "58" "[oss-security] CVE-2016-4463: Apache Xerces-C XML Parser Crashes on Malformed DTD" nil nil nil "6" "2016062914:37:11" "[oss-security] CVE-2016-4463: Apache Xerces-C XML Parser Crashes on Malformed DTD" (number mark "U       cantor.2@osu Jun 29   58/2286  " thread-indent "\"[oss-security] CVE-2016-4463: Apache Xerces-C XML Parser Crashes on Malformed DTD\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 15390 invoked by uid 550); 29 Jun 2016 14:38:00 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15368 invoked from network); 29 Jun 2016 14:37:58 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=buckeyemailosu.onmicrosoft.com; s=selector1-osu-edu;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
 bh=SYHPA46L81zdqnAF6h11kLZA21AjbUgd56nNyonpyko=;
 b=l0BVpbEGRQJafx6rKIvsHnW3De9spl/3iv7O249jTXSsRBXQmmhQDZXQuy4SZIrjXMAxfghKG6S8lxash97IpLHieZvITYGX1ptV1MxYfeU+tDI7w0XpD7iBIyYUXdcD24KtCWjmRel/U1NNo91l2MOUhxXueYKbVMlsSpw27R8=
Authentication-Results: spf=pass (sender IP is 164.107.81.214)
 smtp.mailfrom=osu.edu; apache.org; dkim=none (message not signed)
 header.d=none;apache.org; dmarc=bestguesspass action=none
 header.from=osu.edu;
Received-SPF: Pass (protection.outlook.com: domain of osu.edu designates
 164.107.81.214 as permitted sender) receiver=protection.outlook.com;
 client-ip=164.107.81.214; helo=cio-krc-pf07.osuad.osu.edu;
From: "Cantor, Scott" <cantor.2@osu.edu>
To: "c-dev@xerces.apache.org" <c-dev@xerces.apache.org>,
	"c-users@xerces.apache.org" <c-users@xerces.apache.org>,
	"security@apache.org" <security@apache.org>,
	"oss-security@lists.openwall.com" <oss-security@lists.openwall.com>,
	"bugtraq@securityfocus.com" <bugtraq@securityfocus.com>
Thread-Topic: CVE-2016-4463: Apache Xerces-C XML Parser Crashes on Malformed
 DTD
Thread-Index: AdHSE4tHhPpal8P2TiSMtR9QNMS9JA==
Date: Wed, 29 Jun 2016 14:37:11 +0000
Message-ID: <9846A6064BD102419D06814DD0D78DE11296CE0F@CIO-KRC-D2MBX08.osuad.osu.edu>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
x-originating-ip: [75.179.164.143]
x-header-sapphire: true
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-CFilter-Loop: Reflected
X-EOPAttributedMessage: 0
X-Forefront-Antispam-Report:
	CIP:164.107.81.214;IPV:NLI;CTRY:US;EFV:NLI;SFV:NSPM;SFS:(10019020)(6009001)(7916002)(2980300002)(438002)(54524002)(50944005)(189002)(199003)(106466001)(50466002)(7846002)(16796002)(7596002)(7696003)(109096001)(88552002)(7736002)(89122001)(5003600100003)(90282001)(11100500001)(6116002)(66066001)(305945005)(229853001)(46406003)(8746002)(189998001)(2930100002)(2906002)(2201001)(54356999)(50986999)(47776003)(2920100001)(2900100001)(8936002)(92566002)(230783001)(96286002)(75432002)(107886002)(586003)(55846006)(2501003)(86362001)(15975445007)(5001770100001)(23726003)(5250100002)(246002)(3846002)(6806005)(19580395003)(356003)(8676002)(87936001)(102836003)(575784001)(93346002)(33656002)(97756001)(19627235001);DIR:OUT;SFP:1102;SCL:1;SRVR:BLUPR01MB405;H:cio-krc-pf07.osuad.osu.edu;FPR:;SPF:Pass;PTR:cio-krc-pf07.osuad.osu.edu;MX:1;A:1;LANG:en;
X-Microsoft-Exchange-Diagnostics: 1;BN1BFFO11FD007;1:Gp9OUU4+HC4Ls1B8esBynnGCWoOUtKUagUf6X7V0FuV6D6LH9NzENL7DN1u0fyCSfsQD7E5f1wslEh12yx1IEE2Ajzz3Q1wBll44uM3XluMJ+JxVz+owo4ysL5lGiRgF4/h+BVtk0rWX5D6s0n0UHVmADpaftfn5HM5hs4jHNGEWbHk1+TrC7oc0ODx6stb87q9ItxCvwcnZo7lsB8NoJixYZuz7dLQH1wFpjwFNdm0gduQslUelX0JjJzLQ42dCNciQqb8oYhGI5ZWDbA9mm7XJd8N81cBDJiVXg9BKpfRkYntWYOw7rNmt26uR2Wc86CYIVI7clH3MhwJ0jKb21V+1xGNvN6ZdHAqLP2BLUT1bOm6FnLV641EPUv5BlfoM64MWgZaM2sA5+k6Y56QC4AI1p4uzxxycd90QxrJX2HvALtZ3aToDcUNGgE2fv2/VtBZ4km4ULO0um0OkMNChiof66gBoG37+QC9fv43LxuyYGobN1b9A4Byom1xYpkzxrIQd4lgcJtu7FeGo+RnhCtzyFv74x7zBrlHSWGusP0kV+d+Oc/XdlaU7wnrVQQ3a
X-MS-Office365-Filtering-Correlation-Id: 7606155f-e47f-41a7-3501-08d3a02aeee1
X-Microsoft-Exchange-Diagnostics:
	1;BLUPR01MB405;2:0YB3AowuxiglC81A700oLDCFT4jRWB+bM/g8KGOs/2LUBSG++WQBOP2zLy+AlcLgRQaZ0RVrrlpOLAglpJHl0aaxPdBCnI8jnFa1I00eJyBfp/TllYiK25zzCCcZSjXJ3/fBGJri/rpMyGxvG//5NL8HVVMekrH6IsRfxMLEEPsnNrSh3ohT/z1fNl9P4mDK;3:BlejS7ME/siR2bcVHoE+2qt1P+qn3zIcmknbArMe/xfJwFOvqpv1gaDTNbFQP2UegZPBHtxJ30IG8IgkOq2I+N7zxMXjEXztV9GOFwS7VZMQfFpjiQd+LCNJleUkBbClT8KZ90jZEn0DbaN3Yce56paAsqGaC99jOnkdMofCsZYJYZk1QRZuTgz58uc3MbVKCxyCzxKTal2xRyswwZmaiaYT5yuDJ+XDMQ0wYCsAh7bEbEeUVzNq0wO1Z0v1wwz4FvDiC6RQRXc6pfeYPoFG/Q==;25:gs/NMJcb1eZ+v4qiJGq8Z6lpY4VFJp0u+HnVZVZTXFMRirFtv+CmNIJSLuPaVx4EKvzDeqhuLbRoVI4AD1NUPzQeUU2XBJre6v/O88Sf1+3IIMt9psB7hZbGnLuWy0rivB8+8+9lymYexwc9AXBwQ9ZSjSTCIz+eR8O2XFkqxeqkmDGyEsi5lB+FRY1BTLZYJgj6zU5mQDBPD8a5WcXbfAFrS0sE7JuE0lnsGfqvVzhHVyYczg2ODXfakSRoyrk/su+uTUfIeRdesHSMQCbqVAFyjD/duy8J0MIScCfi5icIAoqnKganEpB+AztvK/8RNQxL9PLN9z1Yz/DqTIXKnzg5mf/wNZquIS6U2cu5vDz2aG3MdmNBSa2aSCQAKzNMHye9o9Ji5X3fJYymxkzVcGedOuOQ98TnpLmNCx1ca0o=
X-Microsoft-Antispam:
	UriScan:;BCL:0;PCL:0;RULEID:(8251501002);SRVR:BLUPR01MB405;
X-Microsoft-Exchange-Diagnostics:
	1;BLUPR01MB405;20:H30agCQS5yG9a+otoN0Vq4dweBUgoeUYA+DbfHMAPJCCwniY/LngzkH/ZMGChKGlfA4M3Te8OQz5L4E48hwTbJfYJjfemz3EBxpPupxNwmDAo67FX3KNubr94bUrztSvj9mj1EXACbi0GTkdrnpKI0GmzEn2NdVBHK1IlxcfiJ634fDXrEnJedz9de+njCZRAbHkhw2p2UzMsMT/0qpyIPt81f0DAAh5aCtcL3lwUkfzPN94Ktkft5cZgt8m6r7da24n8kcebCjgbHYBNct/1zLY4J6+ekyDZ8hMPgmySyHuREerxNpOvZmuYBd6sf/kQJM0JY/+Ym5V0FzzAcgvFOYUYTV55diXJtwi7Iz0L8XzJltE8FwhJl+Ebnj/4IF/8MdeeLUdMKNooxeBPFrfvpHHnymURF69CGkiixIai0XiGAMXStpllXnmPY11Ik1l0y9nXCTsSOKaI7+jhe2GCABHS5uWid64wrxTs1zGaqNzxqodJdkx+cs+Q2kvsh2O
X-Microsoft-Antispam-PRVS:
	<BLUPR01MB405897BF74B8D34BBA602CFD0230@BLUPR01MB405.prod.exchangelabs.com>
X-Exchange-Antispam-Report-Test: UriScan:(278428928389397)(263151948205354);
X-Exchange-Antispam-Report-CFA-Test:
	BCL:0;PCL:0;RULEID:(2401047)(13015025)(13023025)(13018025)(13024025)(5005006)(8121501046)(13017025)(3002001)(10201501046);SRVR:BLUPR01MB405;BCL:0;PCL:0;RULEID:;SRVR:BLUPR01MB405;
X-Microsoft-Exchange-Diagnostics:
	1;BLUPR01MB405;4:1RrdfSlkotUNxOTUtNZThurb5fm+6qqaix91Um5l5aIncS4wJvRa8zMBW+MNNSXKSkyd/4p1VCdJ+td7//RrxkaFzGVa80tTeaHnM+KTdwPPGJs43544ahynXpOLTNY42KSg30c7e8WOi46ofQ0+XtuBsZnL0lMuFSnp9kXbhJnpy6wgzguRvm024uSN9nsumnM3qO0INWkoqwmDrc9k5f4UOz39L0SbVlhADfIms6JgeHeEI6gfhgIMGIEnp5IsqZd6dH4ItQeapvna/0yF9jyFzIQy/t8dvBsUsAb5Q+twO+gMPsqS1S/8ixyoe/ftiq/z7Ws8eU3qqymbpaUStUzCVhrbS6km6BF6JxsQ+i+nayJUoywAhkgpbA/h+KOGUl4QEDySCMclmZoAL3y69YFOuEeMnSWmEgNXT+SBO3ouf80uO+Y5EX45CFvyaE4Fjd1zzUvn9NSb9sjhSolpfyLBPiGd9An2n77O/7LHvLojO+9q8AbzjYiBNpS3en1kvOTdZNJa0t4TYzkkq0OE3g==
X-Forefront-PRVS: 09888BC01D
X-Microsoft-Exchange-Diagnostics:
	=?us-ascii?Q?1;BLUPR01MB405;23:gF6YmeG/8pSAs43mpya5ET492LLzvTDi3Ur6cySnha?=
 =?us-ascii?Q?Xoxn0he/9U4yv6uWy6Z1CCHwRRwJU5zljc5Hrn9+PFIl1jRW+pCc/Xq1rQhd?=
 =?us-ascii?Q?cBe5y9NGszrcvW7CM4c1wDBqjMp/FAqMj7xmv9gAPpJOxnsfIb8B2D1h5MKy?=
 =?us-ascii?Q?NUetx8tjstIcNNlbkIpVvRZj43OG4jYatGLSfJAsnPzdr1X1Y1ssd740sI6V?=
 =?us-ascii?Q?lgIP1CMwAGiYUBLRgBqgxHmcDJLmOTKZ7Y32/P3SysEIl2HdjdAR1kYA+kNK?=
 =?us-ascii?Q?xmNWMsl/GRJuNdL67zuhUXKMR4YgdbDL6T6EcwoZQXktiWPsk+6PF8dniJu5?=
 =?us-ascii?Q?JhsLjQJQS34Q/8u6Y4h6j0Xl/0DiPy3k/ik8QytN+OWQpzNrSiahoDOXQqV+?=
 =?us-ascii?Q?gET8EZsqg4xnpGtpCKIYO6V+62Fz0TCVpZnatgYRf/iNmw98DweY/plKHaTS?=
 =?us-ascii?Q?NERXBZnjvXmm2MUt/TgLmjGfRgn23r6BzZRHVTIQ10Z15FVgMe4TB7bpSTD2?=
 =?us-ascii?Q?Eied+3CNs1os3EbxTTCDnJAhJzIECSwFtwYlDK7xtSiJ6jq30iHXpw+a812f?=
 =?us-ascii?Q?jdn6+Wzs2cYT7k7V5+6jTovjdtNAGN9pmZ7lIyRHZno73M7f/AkwcCjKvnS0?=
 =?us-ascii?Q?f+brtxmLYNTAn5J9ZH39B2ns7jWSl3E1uoWL3gitsFZReFmyrg+umabA09VU?=
 =?us-ascii?Q?PcNdh9vR/3xJ1j4LLtp8vd1UrUsLSsYkrsPB4tDs6LdTAdWrzBGfEXWEWEsS?=
 =?us-ascii?Q?CRLypZMPtXcJB/d8Kncg2B2hx1xjZ5Xke4XZcyqt9Prz8PEI0iTt42gcX6m0?=
 =?us-ascii?Q?O55Slk3TAUqIe6VKIqs/ux4V3JQ+2Vzio3W05zX9GC8449UGEV2haHI6mV2U?=
 =?us-ascii?Q?NOrDMnLKxtP6Jdx3oRbkOwab2Ytew+ZjN804sC4ftNjF0yoLKMiXilUNyBx0?=
 =?us-ascii?Q?Ydh2g58IHREg/E5KLbb0CjG/XlloxKVDRLy56W1Wtk62nzPCkQEGfc5QG7VG?=
 =?us-ascii?Q?liKY7XAmmJg3s3uu+2jgetj5X2ENFk5NwnvVJ0mW431zEneRFiDZQDUx7b/j?=
 =?us-ascii?Q?D9THYe+Hd7CggyoI3zSZa599wpUX6kChu5kGSMpaDsAuCBbNuGJZBGxElp6a?=
 =?us-ascii?Q?rHGrzkxnIlfpslGcebDyIaue2AkBgESnMwu23GQxjpmQRL2D7s3T5Wmb+oRR?=
 =?us-ascii?Q?7sToNXkBmQB60nh7tvuU0wUqh4qu2Mjfkz/oUba+sVe+8H+4E1WLZhfq0trc?=
 =?us-ascii?Q?SNDhE/9y6/AIpatWsHC3v2kHgpCpwEowpnwvqQP2rRb4YDDPJkAkkL84Y9a9?=
 =?us-ascii?Q?At7xgbMWltekPYwKqZ8o1A9EZWvqw+ngL+cROwD9BNY6ir3dQ2lnrX1OwDkG?=
 =?us-ascii?Q?/5OqIWfxmFk/wCDaxOS+HazSHQYapoq43hVsgL8dQVej6vHzlaqlT2AR+jgN?=
 =?us-ascii?Q?EoPLTBIAoe+RhT/h+VlIZzd60/DqT+uCvw2KQYz1cA2f7QwZMwTchxxsf7aN?=
 =?us-ascii?Q?VAYLgOW3pvHMr8hdNsGPDwEufnO3Ee5DEsABsGPh+TUFX/FLdrGQwE?=
X-Microsoft-Exchange-Diagnostics:
	1;BLUPR01MB405;6:SYrNUagz7/fKf6Yc1/2D3WG9lxFM3Ihw53GJRW9QAUTxQLdIIeErD7MKhabn3ZReywYYWBfvjGRvdFim7DApZXg2spNbgNjOc/t+zqgIbDfc2Gv4NI00xONUdAHCU96RJ7uhM7t5upTr7G3mvgzOR4zB8Cqy7ctmbYGrd1SdG365p75vTp8+5CWagyVXG2v7IYhpWf3E2egxvlymRewvKAiDS+I1R0SgQOjkP4FF+aK2r654c6BZ5p/Oj3t/8BsFtEahdgVflcCtwYtyPi1lV1/xEnW1VxHGwsCJQVrAPmZkaUcLN6WIAQOWXpMK1xB0;5:Edg5SVXj0mb0N70jmcGAIeAGEEai5LIeD0jZ0Oj1j/pngtzRkZ1754xnDmvYUCiU5EIeEuwXwx5TtE/OMUNulOIESnPI0BnQYg5fJXzq4CBrPtsdCrGqdl483+Z8wsdZsdMUeBmvw9AHys6uiZQgAw==;24:Y48rrO2QU3ivuwPC92kDjKC4Q7Hy45RGIMfSJnsg7jdb5bMUEVLP26ehhj1MumxGbtxGnSxCdFFI4UBjjhzx485/3rDZ+MO2hfjhD+P8/og=;7:0QRvWD4RkeMew3dlYlKzLl38zC+VgFlj96kFe8p1d12gWyfEF1jFD3CKwag0cnQzvUiZbqAaLFb6Zi5HUXhUTgSxOI5fDn93oWq07LTnaTmUjRXDS1PXUQg4+ovItwPRxnBWrnQtpkLx8sz1T8lItv/uIaPCSNZZSlDH1yKPZghL74d3y20OwGX3dBbJv+6TmWbeJDSxuTPxWk8PdI94RV9z3FZXzmp+4k1hHgHkQNNsYWegHO5wx9nTWhOa3KjC6IQtlY2I3imznABvmbinnA==
SpamDiagnosticOutput: 1:99
SpamDiagnosticMetadata: NSPM
X-Microsoft-Exchange-Diagnostics:
	1;BLUPR01MB405;20:PQxz4vgKttX7uEfmLQFZokSTxmP28I1Lf9knr5cf7ggAaOUQjaYcd01Tdyfzj7csFuXVZU0IsJrJoJ/TXl0ubJH/GcsMW7WXVGbVcZ7AfmJMsk1Zawunm6wf7aHvEeNOO9r2rlRsLNxz7tF/t4ZqoJ7xECQtdBgeKHS8ny/p8qc=
X-OriginatorOrg: osu.edu
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Jun 2016 14:37:43.9939
 (UTC)
X-MS-Exchange-CrossTenant-Id: eb095636-1052-4895-952b-1ff9df1d1121
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=eb095636-1052-4895-952b-1ff9df1d1121;Ip=[164.107.81.214];Helo=[cio-krc-pf07.osuad.osu.edu]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BLUPR01MB405
Subject: [oss-security] CVE-2016-4463: Apache Xerces-C XML Parser Crashes on Malformed DTD

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256


CVE-2016-4463: Apache Xerces-C XML Parser Crashes on Malformed DTD

Severity: Important

Vendor: The Apache Software Foundation

Versions Affected: Apache Xerces-C XML Parser library versions
prior to V3.1.4

Description: The Xerces-C XML parser fails to successfully parse a
DTD that is deeply nested, and this causes a stack overflow, which
makes a denial of service attack against many applications possible
by an unauthenticated attacker.

Mitigation: Applications that are using library versions older than
V3.1.4 should upgrade as soon as possible. Distributors of older
versions should apply the patches from this subversion revision:

http://svn.apache.org/viewvc?view=3Drevision&revision=3D1747619

Note that the nesting limit is currently implemented as a compile-time
constant in order to maintain ABI-compatibility.

In addition, a related enhancement was made to enable applications
to fully disable DTD processing through the use of an environment
variable. Distributors of older versions are urged to incorporate
this patch to enable applications to more fully protect themselves
from future issues if they do not require DTD support. This change
is ABI-compatible and can be found in this subversion revision:

http://svn.apache.org/viewvc?view=3Drevision&revision=3D1747620

Credit: This issue was reported by Brandon Perry.

References:
http://xerces.apache.org/xerces-c/secadv/CVE-2016-4463.txt

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCAAGBQJXXqPQAAoJEDeLhFQCJ3liyRwQAI5aUjhKtZtw+51EgNizpuLa
dvfEP27anUXLKwLXt+WIfogW3TLQ4HwyiszanO4YTlwz3qbKO3TJQXdT4kTQx6/k
KhWr7+vsn7pBEPiiC7kj3lH7QHCd+T8/W+Xik/rKDFV1qAAKuoFgYJ31qED8I65z
371Tdm+p2QE4Nh9M7k7LUs+yWu5XdwJIS61L3R/MpEptynuo7Onbp+sjF6OQCZHc
u1KJ3zAlKzP4iwtxKjvoXqOnLgYwjtqC2p7nYBEXOEn4DA4Q/PMrfdYIebjUo/Wy
CeIN5TGJ2aunMkVK0RgxCqjr0sl2cYqY8iegUqp9Iz4+rMpy5ZDLNyyjgbXgSY73
8145xO2tscLs7bLXAXUGbLlOPxnDqVieGlYyHICFnl58I4ekfhwtMmd9d2WOlaVE
7NEPTorFiHI+wdK2yebCLAMaJbL9KJQiJa/4xw9qvpZ4DQ7aein9jq7fklQ62crc
Ff4h4icX4icM1/s1tvcEM1lZw8Td4UyXkwvoEmfZg7dVy4NW+XM/Kn4FUCPRnC9A
XVAabL3K290Mz77YLqUTk733w1q/lFCxgOCJF18/OJef2azMn74QgFbLcBD16i2O
FNxdtPsSRGNsfOGN08Uiwg9RN6uqoZ6Rxwq3hEcAiufYQHFiXldlS26koP2QMk03
gNuHTr22AcR0ZgoW9GYP
=3Deilz
-----END PGP SIGNATURE-----
