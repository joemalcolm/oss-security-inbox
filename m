Received: (qmail 21594 invoked by uid 550); 29 May 2025 17:17:22 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 21545 invoked from network); 29 May 2025 17:17:21 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualys.com; h=
	content-id:content-transfer-encoding:content-type:date:from
	:message-id:mime-version:subject:to; s=qualyscom; bh=qVXDk7P+btc
	73VeW4uvttjorUuHz7pHA1P9AixTfEYo=; b=fToWq9YBmypQm1GiHiiuL1s9QX5
	ugkAo6HToAb8yh8yahKmJngq6zOjPtsJeCUXe15ijbxwjkgOsxx2/CUTzY+0gZA1
	qDVZo5aq1viUyvTEB+dqwjkGV2bU076MHX6vjlOXMWhzPUx82cJk75RD5/Kn06o/
	5S6ZM+kEIp5Cz45oy7emoLc4gB3uZZ03Fatkshu0J86coF/0SewBa7QgdRA9jqSA
	yAKcEq1HFavpX8G28ETVE5JQ/zhioCjK87Vt5pGHhna089+sD7tkB+8SYhfFTrZG
	nQxV8VrStcG1giZsKIIwLOpGs5UPSM81r50XqcoImezo6BFZQMCuGF/3HrA==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=QA795XXTLO5xlxNjKubCg+GRNWSUt49uZTBGJ5hXtqfdQ3McOH/0ntXCxC0gQd1sIlQqxgADlzZ+Y8jWNq2hUjq7TNv5SD/rqr9QZ+sw53/CSU9tVjNa1lRh1ZpNkf2h3XlxpDJzzz+vnmCjo8rE2jbSqPGyRd18pow19IwAdC647TnslYsZ4UzOJxWel7AP4liglm5XrzB+digpRZJa3Z5eI4UHLkPa1U9vEiFTvg4VMevfJxODxu8q6/381JaP7hYHPx30UYIdBCgKvJeFuXGmgSCsf1Ejxpjf/Xej1mPsd8i/1If210b3/2rnvfr3P6mz3OK1uURM1MKm4QUwfw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qVXDk7P+btc73VeW4uvttjorUuHz7pHA1P9AixTfEYo=;
 b=rVtEaEKidxq521LE7g9Qhvm5XXwcqrbmRrBJFEPCvDmYzc7g0/7OXHVMsCosOcBTdZaMtkbS+YOsuuw9IlJ28vERZZTGVEBFVoYAGoE1ewOSOulZFsjyMjc7OG7ljCCFfaV2TmYsUos2wPuu64N68RO2dK7vyHQzeYZQq8aoTatQkmCDTIBpW+4yhrjOVoHhYWfFP9Cobiqg16fNkm+87O0C+nZqIHU4ywzVRISHkXti575jKbD1ZUciuwW2Yt2hZU67JVNiUy9Ps3c2J6ZeqNOiZQUtT8U9TpgoAuykWSV/fJVHzfItKyq7O+9LcfYPRll6FrFEs5GtI4kX/udA6Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=qualys.com; dmarc=pass action=none header.from=qualys.com;
 dkim=pass header.d=qualys.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=qualys.onmicrosoft.com; s=selector1-qualys-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qVXDk7P+btc73VeW4uvttjorUuHz7pHA1P9AixTfEYo=;
 b=ZQnymBmBUefndGDCOfpDSFb6RUe9dLR/jksdOa3i7kHW9utNKpDLWK0mqR1MZ+fC/yqbcI4EJ7WOFKEAKi6khAnzwc1lAxZj+67mxbnMjMJ4iZpJ+PPw9tz6b8UHw2m7ewOujykf1ocBG4z93Wx/acpzlOuYYSF0jnjecNUJ8DAdW50aQEOM2BRW+gIjdZ1AU/0n1BQcB+YZR5uckm4aqpVWga9TOKZBy/Qs62D8yMNdap99ArI34/J0LSNbKjrUdV1AQB5TyeCBXYWD1ARnPmTetEJh1k+AATE80tQP1xmjox7YLQ+zsuRSLF6DF7s12YA35zFkiI1EC81OqJENOQ==
From: Qualys Security Advisory <qsa@qualys.com>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Thread-Topic: Local information disclosure in apport and systemd-coredump
Thread-Index: AQHb0L2BXTjIbNl2MUy+XzgurKN4ag==
Date: Thu, 29 May 2025 17:17:08 +0000
Message-ID: <20250529171556.GA9260@localhost.localdomain>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR06MB6910:EE_|SA3PR06MB9204:EE_
x-ms-office365-filtering-correlation-id: c276546d-3011-48a6-e4e6-08dd9ed4a47e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|1800799024|366016|376014|38070700018;
x-microsoft-antispam-message-info:
 =?us-ascii?Q?n9MUXhNytj8F23EML5oVyKFQPIRF+5u0HXT1QERA+lfH4IV8zO6TD3UGBrU/?=
 =?us-ascii?Q?YCwvYjjgwc2Oh2uAhRpljCV8btCF3MRACmSadkGBEcArQz9cKKCT4ZcnLF7S?=
 =?us-ascii?Q?x5oJzY9tAi443ITF3DnAPFm0OakpO1b8I4Q/NbXSP6xVVsKf3El4u9thGyUv?=
 =?us-ascii?Q?b/cTEF0gctBLdMS1isfQePTIq5TI2yIMcO9ne5v8jAauxe9D4KSS8XzfuX8P?=
 =?us-ascii?Q?92Wrs84+Vuh7EYLXnI7k8cVaw3ExXEUY8/vEbB4FXNcYyB2OqaZPYzaIgr2x?=
 =?us-ascii?Q?5/OxF3smICrQbtQYOANitc5jNOs24sjxcJoxwwtaA7IulrcjJw/wlhaC+403?=
 =?us-ascii?Q?VyONglVQvR/KNLQ0iGP95Ambic83mt7G9sb3Gi6B3vrqfaem9WE3RHRvMivc?=
 =?us-ascii?Q?OWIttYz8YAN165UjTbJ/hPgQ3m16QgKLtEivXDMOjGpkGjv+lNCz/a4eyST0?=
 =?us-ascii?Q?tvI4680nNS1q/KCBfJ3S6PbW9FykeqxUtRJTdQS9YIJ0LKKoaN3kDDIA1rDv?=
 =?us-ascii?Q?wJC4iZUbRLS+fzmFUZM//wPn7rjpMDcFfbXr91oVg2bN5JEaMsCEwioUqU7H?=
 =?us-ascii?Q?pAeI8h3av3bJRopk7PmOTmKwbmg4DT8Cf8iBuvxv7OKxPUMyHjAlsM81Nhb4?=
 =?us-ascii?Q?xf+BlG/ZN1zJX4q6f8oYWRNEqRg0mTibfmdon/bhqI48TEoP2gKlK3OEfjzY?=
 =?us-ascii?Q?7hMAegjdjyD2ilI4DwNzE3jxErdD3d+ygea96c6RLtLEclwifaPISTPtvE+8?=
 =?us-ascii?Q?IPB4c9wHwVfRax7+crxrPmuIOHfA7Cya0qCWBX3aX/AbDb1gqU7hEvcJ9Ig3?=
 =?us-ascii?Q?34/mNPuKoaXQ0SlOiAi9uc4KkiARkCwarwZrSMrllR0EpoannF9Ld45DXYvL?=
 =?us-ascii?Q?4666jbpypzkEu3CswnUJOYL5952usYPV2KMuVdS/VS35gYF1LpwFkhYkqZSG?=
 =?us-ascii?Q?hj8/wuFZDE1uAzDQV+yGtDB4aR+0cjcRK324epK4xk/pvvzdgl4x6Wl5udnl?=
 =?us-ascii?Q?P7JwPHQxKB5j6Kl4+HPmNMNHKSzvzNyEVeYhQi6uzf4pTUzOPVhaEfPGuHZv?=
 =?us-ascii?Q?LRNROeaRbmva1RKJOlSNOK6SDMRI2hZdfSVqmWN7qmZbhzNYPZF80L4cTwHk?=
 =?us-ascii?Q?8pRpQNGUfv0hGpWhv9t1r/jOOc4aabAEMbZ9+ffI7lLHOuQT3fTzS5pa6nft?=
 =?us-ascii?Q?AuKcfZZ0lv2doY3ad/GpaLwrVwVYs5ltiSlveJS3yiJWDQwRsUiGoKc9wjX2?=
 =?us-ascii?Q?JLVbEobnREYm2WQPg6atlttE6xNQAgJwT+0V5zxIzMKbsKMN/iMQmayB4VVN?=
 =?us-ascii?Q?6pnf27Ofq8DZlWgOMJjG8DNIfrbs6b7WC1TzGTc9/bpKzR3G2sL9kXo3oYTk?=
 =?us-ascii?Q?s275JUeqrKMUHsmTNNn68iD62AXTRx/l1yn56vvRVU4MSPOSXdvGXgM5AB1c?=
 =?us-ascii?Q?JfBpHUFMjRYknTKNRX9sYw4kE6cfjhBa?=
x-forefront-antispam-report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ0PR06MB6910.namprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(376014)(38070700018);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:
 =?us-ascii?Q?tKV5dEWdH71BcBZpjMOpAvGR4tVVUokajBgrv+zW84PGgDSc6SEjpS9yIHlj?=
 =?us-ascii?Q?PQ2PLaYjFcIOkyEe+gX/srkxKqnTQe1IJvJwfA+duEJ7DXxw3UMxwOgmd2IS?=
 =?us-ascii?Q?okHgB8r5OrFY3owYTTfRb5M9tAOkPBLsN+KzjrY5XmsrOjX+A9GL1K0uJYfH?=
 =?us-ascii?Q?AMlfvHF1a/mmWIuPCh8QNbjHQSJ7N520pWKdNDG3X+z96RBseMgzywctOhRT?=
 =?us-ascii?Q?A0yofIfusm8XIMLZrQrtFNOfBkqrhTZmr6v9JwZsDLQRaV4MonedoyoBzJ0c?=
 =?us-ascii?Q?GNOdagcyW/zZXeuZqUP80tmupmnIYrfjFxjgq3JkyiIJV3DbxVaGEBiqkb66?=
 =?us-ascii?Q?7Vy8rRtv3FNDMKY0MZayCVLHFf/Lr3sYETHnjPKcRW0fE8x4p5/fLjRsI5zk?=
 =?us-ascii?Q?meiNplPshRl9i4fnizXbmDZCZZKcRQQJKNnNrIz4LeeTrcqXhSRIS3NCOA9Z?=
 =?us-ascii?Q?CJtBS//mpRyQKNtjB5AAZAk7cDgVIaIzN5QnO4M0OFX8Cy6p9bZLYjlnCZ2B?=
 =?us-ascii?Q?Ojzs8N2IZGrFTBVl9lqRnxZW7Cd6tzYo4FxRtymgl2iePIuCgnWgH0b4b9k/?=
 =?us-ascii?Q?Ob6eIBW+Byf5GPavreq4vyc2PJNxNNnhXoTxqF9aIzvon+hHFDs2d6PoPRZ4?=
 =?us-ascii?Q?Vm3mwxU4k68iqMD2WjDatVO4NfrSHL9oPW/lbpH1CR8TnNRVqYCb7GHeESWY?=
 =?us-ascii?Q?t78dCA9om4B+/TkB6VvPkh+dq0KsQhmfp0dG34JD/l8P2S03Qk73Zc7rfXrp?=
 =?us-ascii?Q?l5Ku3ZW1KzXbHnsH4NzholFrSZVHApWpEBCrLHSbCY+aKbR/UJQQMCJwGfVD?=
 =?us-ascii?Q?V6PpMUjV8qwVe+eYigPPkbGmr08Wxpd2yYgCaMoDUS0Te7K+I94BPgwgrjtB?=
 =?us-ascii?Q?Q0vgo9BUH3CWR4l7iRIWCaasKq1ZH6bBD9YetqtYHkilH9rT0XhckhNHZYhK?=
 =?us-ascii?Q?IQjO0FF5nfyi1yTHaL2kpidUzJr3OB5FKb1C6APf1a7ioUYH3mytYYqnjAEy?=
 =?us-ascii?Q?cXEaaAwYIZcATq+ZSAVIq7j9m6E6Krjlq3+gsbYp5dqd5Dub8425YTI5C5+s?=
 =?us-ascii?Q?KRwAjQvyz/oivnZ/sxkOmiIrVGKNbJxBVnAKM9lH3Uk4JFXUMTmR4Zg1vWJ6?=
 =?us-ascii?Q?BknjnLqbeUJvs1yuTsAiR5DHm+qliGU33jZfZXG5PyipOtxuNS5ShmbTu2RN?=
 =?us-ascii?Q?CEBxzvwYUqljupCQKSIfvZqkcsuQSZQLkJiBYfYddXy4BVBjj9SdEQhQfTJq?=
 =?us-ascii?Q?1xUWW2klIoYLX9vmShLJUH385hnZ9L81Teu1zyNgWKEEITC9YgqdV/QqiMOd?=
 =?us-ascii?Q?TF2UWt9MjWMwM677f7LY0Cle7+5zCxRflBxXj+HW1tRBMrN3PB8zecFxZGFA?=
 =?us-ascii?Q?FaP7awpsaK7my4U2gL+RUjlh8AUMBipPgE7LjgBJ/IpO2JqMaeToxUa+dAAW?=
 =?us-ascii?Q?v0xDDrb7wEm/2dIpUieQk+ldueMFfFsHs5mQhKkxbDR3lD45DmNhzqv2Cg8i?=
 =?us-ascii?Q?hWIFph8YD/uVgDr9BeYw/RBZ/TJ4Gi+z9f7GDfBvzm8wokVTEUguXJeiao2I?=
 =?us-ascii?Q?D+TzuHmqgR0ZDjRIgdK+LY63LFuKfPFpZ6Th+iVh1OtJvfKkHTMmzsXsvJbR?=
 =?us-ascii?Q?7j08WDtMa0aRCa3NnceRbBk=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-ID: <98CC4E4D69F2254490A7B57ADBD3F313@namprd06.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: qualys.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR06MB6910.namprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c276546d-3011-48a6-e4e6-08dd9ed4a47e
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 May 2025 17:17:08.6181
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 81a9ef9a-9a98-4b00-886a-895a603bc029
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: UkQPZJ0jAGdCkdlXBFcT8rlHkoewwufjLxgaqPMHUDTHxc+AtecaTdUK37/UYu2T6Nbbw2DacP8k3is5kYFTnlV3uoYEKs78gdfFhHP4X3s=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR06MB9204
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-29_08,2025-05-29_01,2025-03-28_01
Subject: [oss-security] Local information disclosure in apport and systemd-coredump


Qualys Security Advisory

Local information disclosure in apport and systemd-coredump
(CVE-2025-5054 and CVE-2025-4598)


=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
Contents
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

Summary
Mitigation
Local information disclosure in apport (CVE-2025-5054)
- Background
- Analysis
- Proof of concept
Local information disclosure in systemd-coredump (CVE-2025-4598)
- Background
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

We discovered a vulnerability in apport (Ubuntu's core-dump handler),
and a similar vulnerability in systemd-coredump (which is the default
core-dump handler on Red Hat Enterprise Linux 9 and Fedora for example):
a race condition that allows a local attacker to crash a SUID program
and gain read access to the resulting core dump (by quickly replacing
the crashed SUID process with another process, before its /proc/pid/
files are analyzed by the vulnerable core-dump handler).

We developed two proofs of concepts for these vulnerabilities (one for
Ubuntu 24.04, and one for Fedora 40 and 41, but other distributions are
probably also vulnerable and exploitable): they allow a local attacker
to obtain the contents of /etc/shadow (password hashes) from the core
dump of a crashed unix_chkpwd process (unix_chkpwd is a SUID or SGID
program that is installed by default on most Linux distributions).

Last-minute update: while working on these vulnerabilities, we
eventually realized that systemd-coredump does not specify %d (the
kernel's per-process "dumpable" flag) in /proc/sys/kernel/core_pattern;
consequently a local attacker can crash (with kill(SIGSEGV) for example)
root daemons that fork() and setuid() to the attacker's uid, gain read
access to the resulting core dumps, and therefore to the root daemons'
memory. For example, we wrote a trivial proof of concept that dumps the
memory of OpenSSH's sshd-session, systemd's sd-pam, and the cron daemon,
and obtained secret information such as half of sshd's private ed25519
host key, password hashes from /etc/shadow, other users' crontabs, ASLR
addresses, stack canaries. This second attack (against root daemons) is
powerful, different from the first attack (against SUID programs), and
can certainly be further improved; and other secrets can certainly be
obtained from other daemons, but this is left as an exercise for the
interested reader.

The fix for these vulnerabilities is twofold:

- always take account of the kernel's per-process "dumpable" flag (the
  %d specifier), in every code path, to decide whether a non-root user
  should be given read access to a core dump or not;

- use the new %F specifier in /proc/sys/kernel/core_pattern (a pidfd to
  the crashed process), which was implemented during this coordinated
  vulnerability disclosure, to detect whether the crashed process was
  replaced or not with another process, before its analysis; for more
  information:

  https://lore.kernel.org/all/20250414-work-coredump-v2-0-685bf231f828@kern=
el.org/


=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
Mitigation
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

To mitigate these vulnerabilities, /proc/sys/fs/suid_dumpable can be set
to 0 (SUID_DUMP_DISABLE, "No setuid dumping"). This prevents all SUID
programs and root daemons that drop privileges from being analyzed in
case of a crash, but it can act as a temporary fix if the vulnerable
core-dump handler itself cannot be patched immediately.


=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
Local information disclosure in apport (CVE-2025-5054)
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

------------------------------------------------------------------------
Background
------------------------------------------------------------------------

After our discovery of three bypasses in Ubuntu's unprivileged user
namespace restrictions, we decided to look for a real-world example of a
vulnerability that requires a user namespace with full capabilities. One
perfectly obvious example would be a kernel vulnerability that requires
CAP_SYS_ADMIN or CAP_NET_ADMIN, but finding and exploiting such a kernel
vulnerability would most likely take us months, so we decided to look
for a simple userland vulnerability instead.

One target that immediately came to mind is apport, Ubuntu's core-dump
handler, because it suffered from multiple vulnerabilities related to
namespaces (containers) in the past; for example, the following
excellent write-ups by Tavis Ormandy and Sander Bos:

- CVE-2015-1318: https://www.openwall.com/lists/oss-security/2015/04/14/4
- CVE-2017-14180: https://bugs.launchpad.net/ubuntu/+source/apport/+bug/172=
6372
- CVE-2019-11483: https://bugs.launchpad.net/apport/+bug/1839420

But as soon as we started to read apport's source code, we realized that
it has been considerably hardened over the years:

- The most common attack vector against apport, which consisted in
  tricking apport into dumping an attacker-controlled core file into a
  root-owned directory such as /etc/sudoers.d/ or /etc/logrotate.d/, has
  been completely eradicated: apport now dumps all core files into a
  hard-coded directory (/var/lib/apport/coredump/ by default).

- The race condition that allows a local attacker to replace a crashed
  process with another process, before its /proc/pid/ files are analyzed
  but after apport has started, has been largely mitigated in apport (by
  thorough security checks in its consistency_checks() function).

To further detail this last point: perhaps surprisingly, a local
attacker can send a SIGKILL signal to an already-crashed process, thus
allowing the attacker to recycle the crashed process's pid (by creating
many new processes until the crashed-and-killed process's pid is reused)
and tricking apport into analyzing the /proc/pid/ files of the wrong
process. This race condition has been exploited several times in the
past; for example, the following outstanding write-ups by Philip
Pettersson, Kevin Backhouse, Ryota Shiga, and Itai Greenhut:

- CVE-2015-1325: https://www.openwall.com/lists/oss-security/2015/05/21/10
- CVE-2019-15790: https://github.blog/security/vulnerability-research/ubunt=
u-apport-pid-recycling-security-vulnerability-cve-2019-15790/
- CVE-2020-15702: https://flatt.tech/research/posts/race-condition-vulnerab=
ility-in-handling-of-pid-by-apport/
- CVE-2021-25684: https://alephsecurity.com/2021/02/16/apport-lpe/

But as mentioned earlier, this race condition has now been largely
mitigated in apport, by:

- immediately open()ing a file descriptor to the crashed process's
  /proc/pid/ directory and accessing all the files in this directory
  through this file descriptor and the *at() syscalls (openat() etc);

- checking that the starttime in /proc/pid/stat is earlier than the
  starttime of apport itself (i.e., ensuring that an attacker has not
  replaced the crashed process with another process, after apport has
  started);

- double-checking that the real Uid and Gid in /proc/pid/status still
  match the real uid and gid of the crashed process at the time of its
  crash.

Last-minute note: we eventually verified that the starttime check is in
fact useless, from a security point of view; an attacker can replace the
crashed process with another process even before apport starts, and with
the right timing can still give the kernel enough time to generate the
core dump of the originally crashed process.

------------------------------------------------------------------------
Analysis
------------------------------------------------------------------------

Unfortunately, while reading apport's code we noticed that the function
that handles crashes inside namespaces (_check_global_pid_and_forward(),
at line 769) is called before the aforementioned security checks are run
(in consistency_checks(), at line 951); in other words, an attacker can
trick apport's _check_global_pid_and_forward() into analyzing the wrong
process, while the kernel still sends the core dump of the originally
crashed process to apport (over its file descriptor 0, stdin):

------------------------------------------------------------------------
 750 def main(args: list[str]) -> int:
 ...
 769     if _check_global_pid_and_forward(options):
 770         return 0
 ...
 775         return process_crash_from_kernel(options)
------------------------------------------------------------------------
 921 def process_crash_from_kernel(options: argparse.Namespace) -> int:
 ...
 924             return process_crash_from_kernel_with_proc_pid(options, pr=
oc_pid)
------------------------------------------------------------------------
 941 def process_crash_from_kernel_with_proc_pid(
 942     options: argparse.Namespace, proc_pid: ProcPid
 943 ) -> int:
 ...
 951     if not consistency_checks(options, process_start, proc_pid, real_u=
ser):
 952         return 0
------------------------------------------------------------------------

And so an attack idea against apport began to form in our mind:

a/ first, we fork() a new process and execve() a SUID or SGID program,
and wait until it loads secret information into its memory (for example,
password hashes from /etc/shadow);

b/ second, we crash this process at the right time, by kill()ing it with
a core-dumping signal such as SIGSEGV or SIGSYS, thus causing the kernel
to create a new apport process to analyze this crash;

c/ then, after apport has started but before it analyzes the crashed
process's /proc/pid/ files, we SIGKILL the crashed process and quickly
replace it with another process that is not SUID or SGID, but that is
running inside a user, mount, and pid namespace (to pass the tests at
lines 726-727, below);

(note: naturally, we use one of our bypasses in Ubuntu's unprivileged
user namespace restrictions to create this namespace)

d/ as a result, apport connects to the Unix socket /run/apport.socket
inside our mount namespace (at lines 521-584, below) and sends us its
file descriptor 0, from where we can read the kernel-generated core dump
of the originally crashed process, and hence the secret information from
the memory of the SUID or SGID program (for example, password hashes).

------------------------------------------------------------------------
 712 def _check_global_pid_and_forward(options: argparse.Namespace) -> bool:
 ...
 726         if not is_same_ns(options.global_pid, "mnt"):
 727             if not is_same_ns(options.global_pid, "pid"):
 728                 forward_crash_to_container(options)
 729                 return True
------------------------------------------------------------------------
 509 def forward_crash_to_container(
 510     options: argparse.Namespace, coredump_fd: int =3D 0, has_cap_sys_a=
dmin: bool =3D True
 511 ) -> None:
 ...
 521     proc_host_pid_fd =3D os.open(
 522         f"/proc/{options.global_pid}", os.O_RDONLY | os.O_PATH | os.O_=
DIRECTORY
 523     )
 ...
 531         sock_fd =3D os.open(
 532             "root/run/apport.socket", os.O_RDONLY | os.O_PATH, dir_fd=
=3Dproc_host_pid_fd
 533         )
 ...
 584             sock.connect(f"/proc/self/fd/{sock_fd}")
------------------------------------------------------------------------

To put this theoretical attack idea into practice, we must solve three
major problems:

1/ In step c/ we must SIGKILL the crashed process long before we can
read any information from the file descriptor 0 that apport sends to us.
This file descriptor 0 is the read end of a pipe whose internal 64KB
buffer is filled by the kernel with the beginning of the crashed
process's core dump, before we SIGKILL it.

The question, then, is: can we find a SUID or SGID program whose ELF
segments and heap fit into the pipe's internal 64KB buffer, and whose
heap contains secret information?

Luckily we found unix_chkpwd, a small (~31KB) SUID-root or SGID-shadow
program that is used by PAM to verify the password of a user, and which
therefore loads the contents of /etc/shadow (password hashes) into its
heap.

Last-minute note: while drafting this advisory, we realized that it
might be possible to use /proc/pid/coredump_filter to exclude the ELF
segments from the program's core dump, which might make it possible to
attack larger SUID programs such as su or sudo; this is left as an
exercise for the interested reader.

2/ In step b/ we must win a first race condition: we must crash the SUID
process "at the right time", with a SIGSEGV or SIGSYS for example. If we
crash it too early, then the password hashes from /etc/shadow are not
loaded into the heap yet; if we crash it too late, then the password
hashes in the heap are already overwritten with other information.

Ideally, to reliably win this race condition, we should add an
IN_CLOSE_NOWRITE watch on /etc/shadow, which would allow us to crash the
SUID process as soon as the contents of /etc/shadow are loaded into its
heap. Unfortunately, we cannot add such a watch, because /etc/shadow is
not readable by us. As a makeshift solution, we add an IN_CLOSE_NOWRITE
watch on /etc/passwd instead, which is opened and closed immediately
before /etc/shadow.

With our proof of concept, we almost always obtain some password hashes
from unix_chkpwd's heap, and from time to time we also obtain the entire
contents of /etc/shadow. In any case, we can simply re-execute our proof
of concept until we obtain the password hash that we are looking for,
and we believe that the reliability of this step b/ can still be
improved.

3/ In step c/ we must win a second race condition: we must SIGKILL the
crashed SUID process and "quickly" replace it with a non-SUID namespaced
process (before apport calls its _check_global_pid_and_forward()). If we
SIGKILL it too early, then the kernel does not have enough time to write
the beginning of the crashed process's core dump into apport's file
descriptor 0; if we SIGKILL it too late, then apport analyzes the
crashed process's /proc/pid/ (instead of our namespaced process's
/proc/pid/) and therefore does not send us its file descriptor 0.

In our experiments, and depending on the test machines, it takes between
1 and 4 minutes to replace the crashed SUID process with another process
(i.e., to recycle its pid) because /proc/sys/kernel/pid_max is 4M (2^22)
nowadays, not 32K (note: we call clone() with most of the CLONE_* flags
to create new processes, to minimize the work done by the kernel; it
would take 3 to 6 times longer if we were simply calling fork()).

Consequently, we cannot just "quickly" replace the crashed SUID process
in step c/; instead:

- in step b/ we do not immediately crash the SUID process (with SIGSEGV
  or SIGSYS), but we first SIGSTOP it, then create ~4M processes until
  their pids wrap around and almost reach the pid of the SUID process,
  and finally we crash (SIGSEGV or SIGSYS) and resume (SIGCONT) the SUID
  process;

- in step c/ we SIGKILL the crashed SUID process, and quickly create a
  mere handful of namespaced processes until their pids reach and reuse
  the pid of the crashed-and-killed SUID process.

Our proof of concept always wins this second race condition (the
"kill-and-replace" race condition): because apport is written in Python,
it loads numerous .pyc files during its initialization, so we simply add
an IN_OPEN watch on one of these files (on apt_dpkg.cpython-312.pyc for
example) and still have plenty of time (after apport has triggered our
watch point) to SIGKILL and replace the crashed SUID process with a
namespaced process (before apport analyzes its /proc/pid/ files).

------------------------------------------------------------------------
Proof of concept
------------------------------------------------------------------------

$ grep PRETTY_NAME=3D /etc/os-release
PRETTY_NAME=3D"Ubuntu 24.04.2 LTS"

$ id
uid=3D1001(evey) gid=3D1001(evey) groups=3D1001(evey),100(users)

$ while true; do
    core=3D"$(printf 'whatever\0' | ./CVE-2025-5054 /usr/sbin/unix_chkpwd "=
$USER" nullok)";
    if tr -c ' -~' '\n' < "$core" | grep '\$[0-9A-Za-z]\+\$[0-9A-Za-z./]'; =
then
        break;
    fi;
done

...
pid 1093
tid 1030
core will be dumped in /tmp/run.q5qBcg
signal 9
accept 4
args 1093 31 18446744073709551615 2
fd 5
died in child_userns: 151
status 1
died in main: 280
$y$j9T$KC0.pKjUYzrr3L8VVNQ8l/$11KufHkbNKHRxgolryPxDQDZ.Ox9kG4RIv0Pxe1FgxA
$y$j9T$KC0.pKjUYzrr3L8VVNQ8l/$11KufHkbNKHRxgolryPxDQDZ.Ox9kG4RIv0Pxe1FgxA
theadmin:$6$7Ag0AvjQl4XQvSO4$T1mMcQeC0K7FICHEj9pNV20XcUX4IW6Xqg45lyuORtia1v=
PCOy2ZrFlTa.ZEf0EAO6rpNRma1ucCjO3aL64KW0:20145:0:99999:7:::
evey:$y$j9T$KC0.pKjUYzrr3L8VVNQ8l/$11KufHkbNKHRxgolryPxDQDZ.Ox9kG4RIv0Pxe1F=
gxA:20145:0:99999:7:::


=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
Local information disclosure in systemd-coredump (CVE-2025-4598)
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

------------------------------------------------------------------------
Background
------------------------------------------------------------------------

While working on Ubuntu's apport, we remembered that various other
distributions (Red Hat Enterprise Linux 9 and Fedora for example) use
systemd-coredump as a core-dump handler in /proc/sys/kernel/core_pattern
(instead of apport). We began to wonder: how does systemd-coredump solve
the kill-and-replace race condition that we exploited against apport?

Similarly to apport, systemd-coredump writes all core files into a
hard-coded directory, /var/lib/systemd/coredump/. Before December 2022,
systemd-coredump allowed users to read all of their core files (through
file ACLs), including the core files of SUID or SGID programs, which of
course allowed local attackers to read the contents of /etc/shadow by
simply crashing su for example; this vulnerability was CVE-2022-4415,
discovered and published by Matthias Gerstner:

  https://www.openwall.com/lists/oss-security/2022/12/21/3

This old vulnerability was patched by introducing a new function,
grant_user_access(), which decides whether a user should be allowed to
read a core file or not, by analyzing the /proc/pid/auxv of the crashed
process: if its AT_UID and AT_EUID match, and if its AT_GID and AT_EGID
match, and if its AT_SECURE flag is 0, then read access is allowed;
otherwise (if the crashed process is SUID or SGID), read access is
denied (only root can read the core file).

------------------------------------------------------------------------
Analysis
------------------------------------------------------------------------

Unfortunately, we soon realized that systemd-coredump does not provide
any protection at all against the kill-and-replace race condition that
we exploited in apport. In other words, an attacker can simply crash a
SUID process such as unix_chkpwd, SIGKILL and replace it with a non-SUID
process (before its /proc/pid/auxv is analyzed by systemd-coredump), and
therefore gain read access to the core file of the crashed SUID process,
and hence to the contents of /etc/shadow.

On the one hand, exploiting systemd-coredump is easier than exploiting
apport, because we do not need to replace the crashed SUID process with
a namespaced process: we can replace it with any non-SUID process, whose
AT_UID and AT_EUID match, whose AT_GID and AT_EGID match, and whose
AT_SECURE flag is 0.

On the other hand, winning the kill-and-replace race condition against
systemd-coredump is harder: unlike apport, systemd-coredump is written
in C, and its initialization takes little time. To widen the window of
the race condition, we pass an argv[0] of 128K '\177' characters to the
SUID process: this slows down the analysis of its /proc/pid/cmdline (by
systemd-coredump, before the analysis of its /proc/pid/auxv) and gives
us enough time to replace the crashed SUID process with a non-SUID
process.

------------------------------------------------------------------------
Proof of concept
------------------------------------------------------------------------

$ grep PRETTY_NAME=3D /etc/os-release
PRETTY_NAME=3D"Fedora Linux 41 (Server Edition)"

$ id
uid=3D1001(evey) gid=3D1001(evey) groups=3D1001(evey) context=3Dunconfined_=
u:unconfined_r:unconfined_t:s0-s0:c0.c1023

$ while true; do
    pid=3D"$(printf 'whatever\0' | ./CVE-2025-4598 /usr/sbin/unix_chkpwd "$=
USER" nullok)";
    pidwait -f /usr/lib/systemd/systemd-coredump;
    if coredumpctl -1 dump "$pid" 2>/dev/null | strings -a | grep '\$[0-9A-=
Za-z]\+\$[0-9A-Za-z./]'; then
        break;
    fi;
done

...
pid 364536
tid 364521
tid 364540
died in main: 177
theadmin:$y$j9T$APKdqQO.brzhEbC2JFd.5zb7$Rz2q.0umBr8AmkwlozWr8/yphm/ckEHIOM=
o9vcj.Wj/::0:99999:7:::
evey:$y$j9T$QUW3HEErO9CYuGrRhiQjt.$.befySFW/nA48280u/Hk1XrcA2yDZ6Z1s7iRf91n=
JuA:20188:0:99999:7:::


=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
Acknowledgments
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

We thank Ubuntu's security team and apport's developers (Octavio Galland
and Benjamin Drung in particular), and systemd's developers (Zbigniew
Jedrzejewski Szmek and Luca Boccassi in particular), for their hard work
on this release. We also thank Red Hat Product Security (Marco Benatto
in particular), and the linux-distros@openwall (Solar Designer, Seth
Arnold, Salvatore Bonaccorso, David Fernandez Gonzalez, in particular),
for their help with this release. Finally, we thank Christian Brauner
for the %F/pidfd kernel feature.


=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
Timeline
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

2025-03-21: We sent a draft of our advisory and a first proof of concept
(against unix_chkpwd) to Ubuntu's security team.

2025-04-10: We sent a draft of our advisory and a first proof of concept
(against unix_chkpwd) to systemd's developers.

2025-04-17: We sent a second proof of concept (against sshd) to
systemd's developers.

2025-04-22: We sent a second proof of concept (which defeats apport's
starttime check) to Ubuntu's security team and apport's developers.

2025-05-23: We sent a draft of our advisory to the
linux-distros@openwall.

2025-05-29: Coordinated Release Date (16:00 UTC).
