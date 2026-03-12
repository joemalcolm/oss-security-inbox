Received: (qmail 18047 invoked by uid 550); 12 Mar 2026 21:24:20 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 18008 invoked from network); 12 Mar 2026 21:24:20 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualys.com; h=cc
	:content-id:content-transfer-encoding:content-type:date:from
	:message-id:mime-version:subject:to; s=qualyscom; bh=D0eEL8oqcH2
	sN4jlM74NNhwVkAk+f4mJPa8KQrQy9Po=; b=Jz8sVNJ4EYCirQIAKNyXwdLrKJ2
	gkpvdXZ9k8dq5hD4GonxxXGnXNilnImKe7vqNkuVdFq0n07/EMjm5X6P8ttmpTtv
	pCEWOzNobpKt7AXYRoJUmcEVB9+LvTfLxdgHHftAI0rzGeoTbEVLOziHcHKgpyHH
	Fzu2qhSfQCpDq6dEVFou2JMIIOKYem+pjSK1TocS9xsOS/F0ltgn2yhpzzWDV3mX
	EP38pFUrMeC2GP+lESf/qYYxsh/Ucbbijiug1RQZW+xGbp7EXEj+z8T9T05Xq85+
	+fJPQwixCYPT7g0ynYxJ5LKvAAnD325jYNk9RgxgWqs3cWX3t40JcXEMCmA==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=KpU0Yq7YkBsxTLs4ufAA73e8SmO8MIeyFasakFD9EGeEf/ytvlRupZdQ+iBQ1+tkkwqjDN73zX+88vdvB6V3KYJwNjPIPqEuQ1/R0SPJx3E1y0hJ4EwNqXgvy46OiYwBYZT1enNQUTAQfLl2JU5wwjb5TYt+wHvbzjxt02QCwCAVvkh82mH6vfqtqLAVWLprv/EM4TKr5k1GhPs26DgGQYZyKXZQqvL93BH6imAXHEldP8TPygywaTduE4/aGWja8pDxCxstlCFWC/MMgTArK5sLSNM4WaTvOeWyo/kv7urzAVUTKIidJhYR9izqM+Eqc6wSbTuhwET1EHi96WL/qw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=D0eEL8oqcH2sN4jlM74NNhwVkAk+f4mJPa8KQrQy9Po=;
 b=iQwLXAs+fyz4gIZ7BGh8j4H4N+jQP0tMG15jAJkqkHwvwjABW8l97L4uEWJlD2SZmz5icG9Hg1iOkRKyLCya9okCpvjiMMCc+UJRHm2IFY5/bYAZarrRw7uC2XFGwwfF5I5rXrS/xDFgrb/HnrLR3mdW/8qNGZ1ROGI2oP0aQDlQU+Gk1R3Uck1Y/ruCluX3aAPte8kkJbo+LgpPJXRf9Qj2EA1csloeF0OjRZP7jWvC17ICIaOiyPfruyELqX9UHvNX8g0pzcsKL5rmQ/N+io0gkXj3IsKHRM81q3bAonyJyD/PxPGlp8TmXqvYqlnJNfK8HoAY6Ps6e++ZkW74gw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=qualys.com; dmarc=pass action=none header.from=qualys.com;
 dkim=pass header.d=qualys.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=qualys.onmicrosoft.com; s=selector1-qualys-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=D0eEL8oqcH2sN4jlM74NNhwVkAk+f4mJPa8KQrQy9Po=;
 b=YxlN3Qp5KWBnpmX2w4enOIY0S6Pg+d1a/Y3fmFHpX3Q1hDNvEcPJ3Dv3rsD3ucY25ewyAIzUuPaqhfKTUdCkr09YHFar49tv4G+KYKE6UOG0QUYrofs2JK/6DRMt6FW4JRunznvr21KoqLFHoeRO62u8TnaS+gVzGkzjvVnvPRkH5GUwet696kmJSQL8K3hOvB4sAYwsCfuzx3BaTlEiqeedyJfr3t/jHjkUdI+o62dbKp4uTAvVaL6FVR68IOQ42r206j+vaiZZrePnTLcinMuDcSRUibsfV2ql/slQUQemN2v0HqRHvCI/cbrkII0jZ+sOUEjs7dl+e8ye69QLMw==
From: Qualys Security Advisory <qsa@qualys.com>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
CC: John Johansen <john.johansen@canonical.com>
Thread-Topic: Multiple vulnerabilities in AppArmor
Thread-Index: AQHcsmaIKu96NKiXikGSCaV0fqpbFQ==
Date: Thu, 12 Mar 2026 21:23:56 +0000
Message-ID: <20260312212345.GA2728@localhost.localdomain>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: LV5PR06MB11218:EE_|LV9PR06MB11270:EE_
x-ms-office365-filtering-correlation-id: d3801d37-3b8e-48d8-d42c-08de807daafa
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam:
 BCL:0;ARA:13230040|376014|1800799024|366016|18002099003|56012099003|38070700021;
x-microsoft-antispam-message-info:
 57HuYDi7Zlt0HdxR5R1Rmy1cYAUsBSG53Nt6sVSATEQal9ovGTRZDCzfbM8TC5nFK6XWtSci66mRyL7tPRh6CA61tM4qazn4BmCdu/uan4IrO+RicG9s1YibXuemzhDm5wwOfPgLa8L2zD29CFsSA30hEdWz4uq88OyR4NGh2KF7OECEQd0Eioku3qf8QBSqlpADzh42b30wz1TqIyyJMGM7lQ0MQaC+tMkpuuMvI+YWfujtfC7dAOq/NHvCnDOUp1ri6j4PMG9t5y8uYjEYkp7EgaeabNCnDoOID3caa9F20FtLZVCVvxfpNrhkTrhNuCz8NKDah+rw2j/2dLHUzlVBPxfh0vhFq+PBOmB9rRb1Ff+koENT/+Fb8w5Sl0hc1qqH6Dd2y04WtTw2iyRrewuWjyXI+6tTBgm+9bFXVDPY3WIOTMI3wW3yc0sGMiAB8zSQBdcPb9r40hgmOQy8qZHL+S+mY3nmNzvXf+zKT7AN+se77v8cvormAxlrbfoRLMVB+RQB4FlgzBDB7CeLoyPADPmgX+zLZQWA1wt8VPoqQWsQKNhbt7FDXndlWMHLoIXQf4mrrf0erp/Q6xEOnea8ZVxheQxQs9m86nr6KKAoLb/sXXIjXs06IWmdDkK1b+r4Y+V1nl+0mFIhSkUB13xl7xUb8Sp0DQhUYQlCQku+607eAhKgcphWZgMPHHFKNs0Q9h9GEtY23u79BhtXjlMYiFnDoElZqODX+5Xc5YRl6PKFgomOgB7+89ExBkDcyTQ1Z1ew3u9gUWb2B4mKzyHGj3a+6agd3bHskICF4m8=
x-forefront-antispam-report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:LV5PR06MB11218.namprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(1800799024)(366016)(18002099003)(56012099003)(38070700021);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:
 =?us-ascii?Q?imPnQxnbxoU+wSzbvHEiy6lcyUCKfzYmulB/uM8W8ELt0+6kpszMcCpsiJuN?=
 =?us-ascii?Q?VWhYQ/PPlJBWMJPDlEO7BqHMaoLLnKbTnSRQ7zA2uWTRSyJpSosAVhHl4CbO?=
 =?us-ascii?Q?07JXxv42V1550PE/Dz47aQLEG0DojZSaAiSTYLEt4xVDWO/4cV5gX+SB+17n?=
 =?us-ascii?Q?JW1a6BZKxwDXFaYLSW83ruEuKJgaaxfm8hEL/0Iuyi1D0FGVi4wUL7o9fTb8?=
 =?us-ascii?Q?Lk+j5B+CwMVlQ72lacHwWD8xxAnmbBzKKmebV22mbqWWsZTJUUzgpu2uQhLY?=
 =?us-ascii?Q?fnVJIh83+Xb/0IksgANb7vyVRixdfd9DVMVkLesehPFSzo9DTcras6cZqr7A?=
 =?us-ascii?Q?rd5h1W2aiUeCeRpK9tWfw8zYuy0+iJvlBoNdW9BUAYk8B0HkPrA5DXcKGlnv?=
 =?us-ascii?Q?P5ueHVHflvLQqIQ0fGwFkCEYcCH2JnSmBFA446fFAmt648Br/lh2di9QzAbw?=
 =?us-ascii?Q?U9zJGdOZh6PVK9zLos1lRS5+eCE9b/yBDpgCFT3KOeyY1n5v0RFjzg2Xp0VT?=
 =?us-ascii?Q?/O6x2vs6b6LSDGxWi3k1cRLBIpE4gSMM2gNBSZRhFY6kkAFkdb0HqN+9QSb7?=
 =?us-ascii?Q?G/eJcYtuUvFa2EjTNxosP2V1kmVZA8w3cTFjmgko9i6swFAXGmH7qSiC5yC5?=
 =?us-ascii?Q?5tYc6J1XtcTTXSwztbn93Gye5Qp3gXUl4KfmsxGuz9kS6iM+SIufbQIthl2v?=
 =?us-ascii?Q?UHcuYlktcvZaePQfTb0A/NXdFIJh6xGBCj2+yYbNTTsP1WqqDod66RP/kiBZ?=
 =?us-ascii?Q?cnQpVT124QdRyaZWzwW0VUEoGHoRgRLhEIADAhF9reK9RFI3Ek9DKvc2cKyO?=
 =?us-ascii?Q?1Zu/upnnGoY4HTb8rC6YE2H8+ETlCSEvTI2UmA76pD4bS5vVKP489FVux/8J?=
 =?us-ascii?Q?rLwhMd9IXpQffTmidcD9rsKkLpC+XMQmf2LDCVCgNsehhT6kr8P3myXjWYWc?=
 =?us-ascii?Q?FT8ZPSADMAg4ELB7jT1B+gjAcygH8aAXb+qXV09D57jEfHwIEl8Dxka+BtNG?=
 =?us-ascii?Q?rnlcehH9ybZRJApL0N3VcGZmHaePZT/Nc3cvpl61i1z2XZVCqTJgdPPnKdOP?=
 =?us-ascii?Q?gG8JnA/KbqBVq9MAIe6N5AFURKWsdHl6tzNWVA88pJqF4jNushpXziF3IzJ9?=
 =?us-ascii?Q?yeNUHVcdD9KzAr6oY7Rthd+9/ZS/uSTvppEn0PnrFwI09oqF0qnH65UeyWKL?=
 =?us-ascii?Q?XsdKd/a/bS7DiHT9G9MUzeRptLrxo6syMwuLGzvcNPl8h5EhipXX+Azejmia?=
 =?us-ascii?Q?WtGZNGbXjeeterU2eD5RXxqm+HPbRJGHEL3BTlLZTtCUZlKoki+gRB1myGWs?=
 =?us-ascii?Q?Qxq4uiF3RxNGGw6NcUwAknAMXt19mXkjbzwRWWIQsmWUq7eEI/KCMQpyHIiY?=
 =?us-ascii?Q?PyM15K41R8CRIa4EY/TsundhR0j6OnsaCNbNPROlSJCN/9qZEfPRLBjDNdtd?=
 =?us-ascii?Q?ZjlpV2PNDqj1P0wHs7cc1TTbEP1nZ0G2/hzMQXppmtacQIOG13uTnKWFeNnh?=
 =?us-ascii?Q?iiztb6b26VPazQEyvCTiTZhtPwQEcylYsqpEsrWF3rc1sN6WqoP5L2kts5Yr?=
 =?us-ascii?Q?z5du1u/2aRZ1IZtID8WrFIWGKjCLwbUPvEUHqedHaQstVJJMQxmVKydV7w+o?=
 =?us-ascii?Q?/p2Tn3vNdCqFeLPEZ3gyabIqTtNtg5dakWjW5x6rIAYAlkim/KRAWGLmSttK?=
 =?us-ascii?Q?NTyQHZD0eexe9rhkB5pK1JjU3CW89h5hLqlJza1UgQYcrfF9cJ0rBusqcvVd?=
 =?us-ascii?Q?zvLmA0XlU32FqZMTcfC9s0n/tVEKHvM=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-ID: <D4744F84597B4E40A2330D37D3DB9743@namprd06.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked:
	oN7JkGvDk/c7vndBN2HImWV7El9Qx6NJWr7MWZqkPayy2aUDdJbjtyr9iJQZ8g6A7ImAS6hNBK6v/nK6u2j3r4cbi44seW46HFq4LhwTh5rXQ0XRSdW1jHwFfmO3NYZ4BZBilEYVKJSfh9V6dUD/mD5NfSnWLqnc86Wz+kPleTmPRnqXqp++sHMHjVubpQ7QJ952e32hc35DJJd4Ja0ceEjFdoPElEGfV93uLSqpATIlO/3GsPxPQbS/iFyioUrj94jthVBDPj1DNNyS0HId5RYHztlk7Pu0Wx8NsfyHhDynyb7MjtCm5Ai2OXNOYisC4GNzFMQ826pwMaxYj3JOzQ==
X-OriginatorOrg: qualys.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: LV5PR06MB11218.namprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d3801d37-3b8e-48d8-d42c-08de807daafa
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Mar 2026 21:23:56.0452
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 81a9ef9a-9a98-4b00-886a-895a603bc029
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: DwpoKsNamMAgcJdffXTVAL5/8uM14HGNB5SBRy6MWLA4VfzoIlFiqeiDQAm/FjUHb16OWl6HcRB7cZv3SFLK0vvFjyzhFOTSXp0u04gbp/Q=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV9PR06MB11270
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-12_02,2026-03-12_01,2025-10-01_01
Subject: [oss-security] Multiple vulnerabilities in AppArmor

Hi all,

We will soon publish an advisory about multiple vulnerabilities in
AppArmor, but we first wanted to give an explanation and an apology.

We have been working on this for several months now, together with
Canonical's AppArmor developers (including AppArmor's maintainer, cc'd).
Once the patches were ready we contacted the Linux kernel security team,
and later the linux-distros list.

Unfortunately, problems were then identified with one of the patches,
which prevented them from being merged upstream and eventually resulted
in the exceedance of the linux-distros list's maximum 14-day embargo. We
sincerely apologize for this. The patches have now been merged upstream
(just a few hours after the maximum 14-day embargo).

Although contacting the linux-distros list has been clearly beneficial
(they have thoroughly reviewed and tested the patches, and were able to
prepare their kernel updates beforehand), we have reached the conclusion
that it has become increasingly difficult to coordinate the disclosure
of kernel vulnerabilities with both groups (the Linux kernel security
team and the linux-distros list), because they have very different
policies. From now on, we will coordinate the disclosure of kernel
vulnerabilities with the Linux kernel security team only. We also
apologize in advance for this.

Finally, we want to thank everyone involved in this release for their
hard work: Canonical's AppArmor developers, the Linux kernel security
team, the linux-distros list; the complete Acknowledgments and Timeline
will be available in the advisory.

Thank you very much for your time and understanding! With best regards,

--=20
the Qualys Security Advisory team=
