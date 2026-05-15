Received: (qmail 26066 invoked by uid 550); 15 May 2026 02:21:00 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 26028 invoked from network); 15 May 2026 02:21:00 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualys.com; h=
	content-id:content-transfer-encoding:content-type:date:from
	:message-id:mime-version:subject:to; s=qualyscom; bh=3R/zlLAonjn
	JsnBpd/QloFwMeUxQkvjAWzdmCY1Da30=; b=zRTctVPgjUemv39MH2LbYCpbfBv
	7VFtlTqoO7aeMdBVhweeHJp/UMpX9vnLOb2HkcTDox/i4k4axlMoBRRcedFacsDV
	AP4gcqOesPCJKZee+0MBtqYQHcBiMMtEiIYOY4L45tmxrskGE0j5PbvyN+uQmuzv
	2nuc7QCUyInJ6VPN9ulyxZVAOqIU7Fp9KMayJFK4OB9I+pve6f2CMdnbxDXb8tJQ
	vUbeVHE8fqJRYKEbNpVE7f2hlfFzQX+SOpDnjPapGEabQQt/BaTVUy4b6TVovEuc
	5Bq+UqHfJVM2hjvayYmWQP9Mt6kZLRqa8mx4fRIurXvdt4PjQfGRrttcr/Q==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=eq93v2mfPfiC4XbFsrO8rkXJ13JmWlXZWV08PzKRWljouH3JB8LA4er3P+ySlsgtZOjlwO0cwXJcitOFWK7ETiz7pMKL0lFGxsNaMBlv5qlGuuF6l0LazlCirTp3XIs83XEOPnT/mR8/HivjYpH0xLGiWJdYJ0vtbwMInSxwyqLT0/2KB0xDxwlx/n1PSsEYGSzF6WKI+c+DRXixNXoH5eOKJuZZWfFI7OSIw8z438T59ox18Xzg9Eou8iXUpDGdJyEdOF8z6i4H1GVjQuqS8FOH9AvHZU7jtTIUAMRXtIe20zBVbXXURWJNES5Tz8ymAK+FqrGlVociywJcsmN+OA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3R/zlLAonjnJsnBpd/QloFwMeUxQkvjAWzdmCY1Da30=;
 b=qUYxvp9n3afcfIaA2EkkMSCj/Y/8GQWlpn541uh7/Ad8FedsQL31nf0xN90BIXWfwchUubfNhQAPhwYvra3lQl91tPcCq5HDYbiXg3iAKJ3YQ5zX6wkrBt64AzCBnE/MGNgLDa5qvcvpVLykpIFAfJcrR9pGPy+lTnzE0XE5EISTeuU94TNGn4T3sueBASRjWfzkDBzd2BkAhMkPsj6S5qdH2jgm67gAasQ3SDY09TYlxsNqblQV8407KEolUL3RB9UKzKFAIl/sc7SmeBfeqdzljhGaokYIJQcY7GnVTjgNVXXsYTwRoLh7e+I5ISBp5ASZyeXZ5jr0F43JTxRgFA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=qualys.com; dmarc=pass action=none header.from=qualys.com;
 dkim=pass header.d=qualys.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=qualys.onmicrosoft.com; s=selector1-qualys-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3R/zlLAonjnJsnBpd/QloFwMeUxQkvjAWzdmCY1Da30=;
 b=CkdcVZesKcShEsyCUasoIyAO3ruN/HovpFCuyTlbxRjNHr0L6H4L5ZexZbJkULr75IP+MJH5Klfi+N0Syykk9Pf/zdEGZwlWwjM6CJTI2zPzhrNs19LSkYKJNWU19i+OxYf29d6JmTUb03BVZWHbmzZsrNjA3bAG82aPm+fJbIPjs4nYGTzltUm79LoW6uNRec+jsdI7GLSY2Lk6IpfwhO28DnAX4oQEhvJlyovsRnjccC6nSbv28b8bam5FB63GoJzH2GCHIhRO6uxyFPrqM9ZtsmjF0kJU8pPRYeTNmDVtzHmOtlNr5gLMG7R7vNLgoCjJEt3O9P9hXVArObdrCQ==
From: Qualys Security Advisory <qsa@qualys.com>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Thread-Topic: Logic bug in the Linux kernel's __ptrace_may_access() function
Thread-Index: AQHc5BFx3Z6qen8xFke8NWRPdnY9Hg==
Date: Fri, 15 May 2026 02:20:48 +0000
Message-ID: <20260515022033.GA10889@localhost.localdomain>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: LV5PR06MB11218:EE_|SA2PR06MB7387:EE_
x-ms-office365-filtering-correlation-id: e2cb6c8d-c384-4e66-9fb8-08deb2289403
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam:
 BCL:0;ARA:13230040|366016|376014|1800799024|38070700021|18002099003|56012099003|11063799003|3023799003;
x-microsoft-antispam-message-info:
 4qPPZVogELmy9Sc6ILyVkPZJCiMFqqcNicKlitxogpczWXzLJk9xRqgC5gNPiso6Qan9yzG9qLngnkCVHeQmq8516iW3btGmcgVPLc1nNPs9oQlxvO1EzhJSedFVXWmRezaxip9fzHCE/8RrNXH+qYdxjb/+6jDenbHaQzhbjQ3NKdAlhVpd7NVkDX1jmx1vcqtf6APjtCq3atwAmXPu1FDYiyGGo+p/wCkvoXOOdqhiCZz67KrD/1tdJ0UvkTiWPDb/1hxU0eCH650VB5NIYLm3NX3fWLImIhtNSb26OZ4HsDjE+PbYAkgF1vs3ic2mQg+jpQw650mRL22jx6J+GfGb36NPYGrFQdeTjwHtVjrQ7+UdnOfa9uEA5hOrdO/C9z9N2KC54FuzAlfRtdol5KRq5peHcA0TvSVAsAEL3IUAT/xMa0apfCiGLfdh+EOkPGAswLUy6CjAvtXOLkfVuUm2zuFObAdCDaVAR77F4tUu0Z/JcXxkUMe1crIDyGYnIz4gvkqpVIsZldns7VEYIxKdseCuxJbTfX7LbHfytjShy1FMo94YqtHe9JxiCelTddq4O6gccZ9IKX1c3zJVYq/PQ9/FGTfYQNRdkwvUG1LLnK6Y/GPxpzh7A3AbI9RUcHTW40Ld8HumXtXnNn8fG6m9ka/2m8TRUClQoDWAjMdfLI5J7whaGStv4wQccoihNP7I05+nJOzz6vuDDvuTJwAM8CAZdvV/6MBOaGhrsfPfqo8gLEmnmWBkjz78f6ms
x-forefront-antispam-report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:LV5PR06MB11218.namprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(1800799024)(38070700021)(18002099003)(56012099003)(11063799003)(3023799003);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:
 =?us-ascii?Q?sAzy7pngjVzcXQuGkWdqGLgBfB2xTSZEMn2+OYoBm4IyXN+UM56AOWznNjSq?=
 =?us-ascii?Q?5Ir2V775FZ4YMOcZQZkojESpoqeUkMf93akmNSIB0gJkQ5hd91kuambFPdGj?=
 =?us-ascii?Q?rmnn0hDf7x9Ph3L/TtGnmJWko8NtX1tcpFCjWzbTSh0yNPMhu1KA0Ci9phLW?=
 =?us-ascii?Q?h1UXyZtAd8m7Sa1L79wP88md4+b5qNAsMdZknB+QwfcUokuYJKEvoGZmv5gJ?=
 =?us-ascii?Q?S6D/BjOWZFqvlcUIFSTlpFu13wlJA4BQN9F9YTiB0zuINGK1fkGKsXRZ8nyc?=
 =?us-ascii?Q?oNb5hYrsOglpNYj6QukDtDzwPKLnAToGtRIqkW+zs1cJXvr/SBSLU8GxKEDk?=
 =?us-ascii?Q?Y/JLR3nEt04URPvtCjeNoVmce2eagCqgooOPf7pHn867T2iNUllbwwPidu0s?=
 =?us-ascii?Q?jR82avWwj1hgVtYr4+V65DyXXdcBEvf+y7On/l7hfDsct1XWN1Je4SjDM6Om?=
 =?us-ascii?Q?9WQFNxPtij8f0YkLJoGZjmFqUb8NamqorfBa6kpQUOY6vRfRgaBwfBlX0CzK?=
 =?us-ascii?Q?zB6KQ8zg3vPWNfgwNjAgZ6BvC9wD7k/4TA7gLrL/eef2p3vSOgaze/YlQLt/?=
 =?us-ascii?Q?dnlNRFsbNkoIzq4qDhFnQ93dAjTFHt/45C3jv7ipJToE0KC1Ilj9e9/3RqRI?=
 =?us-ascii?Q?luxykW7r7U6IBEn4LKNAAu3fqD143T6i0NoMz3Fpfb2IsknCf6NnULXKkJWt?=
 =?us-ascii?Q?YMn1D2UyktqTnvhiBQvIGJrrvAXbKbj3NUpWRzn/mPEXUdgW9MfJ4YZ6ui3X?=
 =?us-ascii?Q?zj4fm0UIqu+fsIcry5hM031FRc/l2q2JLlq/Bn69lB4A5EEvJflUP0AeKv9W?=
 =?us-ascii?Q?LyKccvKEkDjAHRxGdwg9AUCTfKgcNRuitgpIhzBu2LTv5e55dDSq5tF5sk9D?=
 =?us-ascii?Q?pg+QMN3uyna/sGj2zRiC1ktm31KbmcPjzqEmMl8n44zxat5mI2jIUmW1pAYC?=
 =?us-ascii?Q?GqQfjLHgFNXoU0VYsLEVeI49S4F+WTw6Yxx0Xxmv30NP8rDQUMhgcyxrDPV0?=
 =?us-ascii?Q?rH16RrtgZBZ74uB287bNPc/SU1PWvN7yRDLo+TbBPgqfs7LHh4bg2aA29K/j?=
 =?us-ascii?Q?zhnBwfQ5ErIm5UBoXfmofY18niKN2+ooRX2v6fLL1Fohq3X8iS/Pnh3eEl2+?=
 =?us-ascii?Q?p35sx4utUuwVxi4QIP2M1GivtBYN1P8tgqPbjVkGAdFI1Ao+L0skYE5P0EBH?=
 =?us-ascii?Q?s9O5PN0R6Rw7Q7t4o8TOUwMmQ+W2Lchw9p1Ob5iJ3RlBH52wXySIA7yRl2sN?=
 =?us-ascii?Q?eI7Q+4reKIlrTtlSWWtjVK/NNv1diM8vyx2KNjnBr10XKbw+vnB3n3tQN+XT?=
 =?us-ascii?Q?2SbfJ2t+i0DQibBAKhJEt6YwJQ5xvOlR6ZicVz8n214w12P33bjBUoNUSjmL?=
 =?us-ascii?Q?t9hs9O7WysIU1risxzbWYRR1nQPW/njT8w16VEyNSPGcx5gOYQa+4kz/LqaR?=
 =?us-ascii?Q?eVx7T74O9jbX+2BpPpJX/dtqxLZQZlG3EsX1MYm8qhr+ZBFxkVg3pCMQ0IPT?=
 =?us-ascii?Q?dcH7FtBd9Or9Sh45TWRgc+91tvzt0bC91zEuUJ1bzstyCq3w+d8AEwy/0KuQ?=
 =?us-ascii?Q?5kondqwdyIH2Ig8OEZUQD8RmgeFXEhOlZ5GKfL5S9JI4yjkJUmO9CbTz36it?=
 =?us-ascii?Q?6qifBwK6BLGfRSReb+OZUhJJ5pAbbGKDBDiy/t+LyL4hq/hyNij7Wrha+tZN?=
 =?us-ascii?Q?4uVsGktLwbQdfXMe82JFQmyOxD+j+h4W3KpesFcbLGwk0mbgVsh2Tzy9KLCO?=
 =?us-ascii?Q?UNv5fIKIrByc4UH4jurRFL8E+rF9Dnz2oKXNa8si5MdoXPBM4Hrt?=
Content-Type: text/plain; charset="us-ascii"
Content-ID: <A9F21E2E11CA8B459E0F2CD49116A880@namprd06.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked:
	J8sCHlQF/yqRd/ztktyWQhXxIiOAkHROMzH9WQLnygwRcve2F6xTf27qRLxLHWM/sw3kC29p/oQclvOHg7FUBhbD0t1J6ZB1743lKDPXyfhSnC2NbUEoJIEyrfvYx8FXwjJVC3gaqpsgH3qfPBT4p8Cpa85AyH+uvF7SeKAIePgl6+VHhi0YwyhJcZ+4JbBqpdGG2uTQuOkB6fDENYazCuSRPd9+ZFaYqodAEMgl49152NklOvJ8kLBoa1D/YxDEifEwENdwoomxzRRrTN4MI+eQ9JhNmg/mC1d4Mm2KQGnvB9PZL6UNzyrx2Fy+oR8525sczje5bvqMF0DvEFNoVQ==
X-OriginatorOrg: qualys.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: LV5PR06MB11218.namprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e2cb6c8d-c384-4e66-9fb8-08deb2289403
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 May 2026 02:20:48.4818
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 81a9ef9a-9a98-4b00-886a-895a603bc029
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: w2NmPNhnuzGfYHMOc+sr1vmR2C0lOcl5fD8rEQvYkme9bt+kMqF3f1+SYYrr7ZSc+vWlSgu8DbAEHaQU6zlWjo26nc3ivF9JUurLXim4Cjk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR06MB7387
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-14_06,2026-05-13_01,2025-10-01_01
Subject: [oss-security] Logic bug in the Linux kernel's __ptrace_may_access() function

Hi all,

Today a vulnerability that we reported to security@kernel was fixed:

  https://github.com/torvalds/linux/commit/31e62c2ebbfdc3fe3dbdf5e02c92a9dc=
67087a3a

Brad Spengler then published a brief analysis:

  https://x.com/spendergrsec/status/2054974174926430322

=46rom Altan Baig in that thread we learned that in 2020 Jann Horn had
already proposed a patch for this issue:

  https://lore.kernel.org/all/20201016024019.1882062-1-jannh@google.com/
  https://lore.kernel.org/all/20201016230915.1972840-1-jannh@google.com/

Later today two exploits for this vulnerability were published by _SiCk:

  https://github.com/0xdeadbeefnetwork/ssh-keysign-pwn

Today we also contacted the linux-distros@openwall, but since exploits
are already public we were told to send this to oss-security@openwall
instead, hence this post. We are not publishing our advisory yet, to
give distributions and users a chance to patch.

We are at your disposal for questions, comments, further discussions.
Thank you very much! With best regards,

--=20
the Qualys Security Advisory team=
