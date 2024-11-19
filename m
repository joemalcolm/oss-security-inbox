Received: (qmail 11749 invoked by uid 550); 19 Nov 2024 16:25:29 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 11692 invoked from network); 19 Nov 2024 16:25:28 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualys.com; h=
	content-id:content-transfer-encoding:content-type:date:from
	:message-id:mime-version:subject:to; s=qualyscom; bh=QYiDCTrfuAj
	64MBt9GfoVUCENR6O2Qaf3I8/w2RbZN4=; b=ViphbvNe61OughZJvKvHB4vHVIQ
	Q/Vk0RfC2pgTAzadkeXp2aV3QSBxgGR4W1mua1Cy98J/gyVVaon/mOLXVLMDABiB
	/PW2kzOvb2IOttD8msU+ISdhAROU6cXOOZGNejerYYZi6F28wDESXly0kGAVy91R
	zjxIfKTkJrGFrDgQlX4juLXByA0V4Tc5teqHDNHeDi2SmOgOKZb0w69l0CqfBltY
	FZ06VlIsn/TTt8w2xP57LPs0GTEA9yNOior9noVjZ9eJB1BP6fLvDyunM00QphBd
	aNhoW7+N5OdIn5sM6bEHw8A+IQRABfOxiAxPkH8hsdSvPSnEQ/tWRKGnLCQ==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Jjs0SiUziWnnZhdG2Rc47ej17r5Slr0oQtPftCp/ufIM5FNXpcN65rfAa5fI+5pRzRtUhDEgLAndVV7QpaZQut11L4fz/O6dIMGutnRngi+1bmX6+68ukqYcmwqaDGq69kGZlUPQrEazNBt94Zq8uEJSVB3AEQ4st3d+QzRmB3u5YE/6ly/UJlfLivublknSeke4TBCiI+k6C7EB3IkXiJwRN6tXIvps51KXY6caCpaoSzM34wN1HRboH5sua8kSE4wwcg0IsRnWAgsInrsKctSOmAt5TGsG799NpE4Le3//f/ZzN6U5btwDtc12BXfHTF0Kmo3KGzCn0ZiCYFhYOQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QYiDCTrfuAj64MBt9GfoVUCENR6O2Qaf3I8/w2RbZN4=;
 b=PrKQ4DMswkHO3p8YmF7dArcH20uiItBMaFCor9YAByB7gIX+LeNy2Lqlb7XiIRXyYJFDdlLEUcQ0JsEqsvHK+OHg0Di3MUnaVcZoenspYkMRwk+1IMUnshCCPdiQ1SiEU2pQEnXxOgxTy3Jz2jX81P33Jbjh6Xoch2uk9p+8uEkrvyXA+gVZ4Yb9tTprUya4xoCX4mnIHgCNot8h1ZrbqcTW1yRmUusbutI+SHiv2JLM2yPYmeTmpO7T0gm7ZaDD0x1ZlZ1g30/+bcSJF2sLgc3Q5nTAU/mplNO+XLRJ7lbyF1cG2Al3RvI9f+rvSwKW3ui/nnJvRD4oS3h9J5myuA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=qualys.com; dmarc=pass action=none header.from=qualys.com;
 dkim=pass header.d=qualys.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=qualys.onmicrosoft.com; s=selector1-qualys-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QYiDCTrfuAj64MBt9GfoVUCENR6O2Qaf3I8/w2RbZN4=;
 b=OUxxXtW3rCf+2k8lIg1jrCYyiv2vjXbiSiKDzi7oRTPhh02JRBeHFXXOLtYvouI9x5bG1ss5vKk/W9POTkZEQgVVa4o1i05Q95Ls9hudEGa0Emx7kknNoKEcYwEHlmNlQGtU/vv2w3kgq7j/bZ452Gd+xE6OVZNIFT/maw3roYDw4+54bso+jS7uD4sX7Q9WJZkRzPZylCUadlfNtsULMJ+XAzcjd81G1zstyuCfUgb6cEByEs0Fk7m9dxGngSm88eC3kWXDxIMdyJhZPqIZ5DZsMHoJzyuBpSd+roB4TuGqI9ulhMDNr6PJvb4Nq0YDWYHElIv3ziQalaZGSmAIjg==
From: Qualys Security Advisory <qsa@qualys.com>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Thread-Topic: Local Privilege Escalations in needrestart
Thread-Index: AQHbOp+dlvyKZhYcZUKhRDfwOw+WCQ==
Date: Tue, 19 Nov 2024 16:25:15 +0000
Message-ID: <20241119162429.GA12472@localhost.localdomain>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR06MB6910:EE_|SA3PR06MB9295:EE_
x-ms-office365-filtering-correlation-id: 1e6bdd6f-c371-4ff0-c519-08dd08b6bfe0
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info:
 =?us-ascii?Q?KCau/5uUCkQM2Mf1XSjLWdTk1PFNEVwem3XIQ6ONqM5QKtoI42z1I6JsUVp4?=
 =?us-ascii?Q?k5EYXsWNqAtohl0S/PG5z5AuMHzpSWcy9SnFx5fvOpN7IQsSax1NjuTdEA/1?=
 =?us-ascii?Q?PO3g/mQqCUIiFk+mowOKzJjC19HS7bFnEPJp+3yKNt+R3k8MO726AvbSkAW2?=
 =?us-ascii?Q?Oxr6q7JOKysiXQqCulmaBepTGyOfSECguOXoWqtof6TseR9VrHTVn+WHpI+n?=
 =?us-ascii?Q?DidKpNi9t82qq6w/lXUb+gFFFOWVgSqc9f3d5gUsOaFTZh4qjNcCac6l0gbZ?=
 =?us-ascii?Q?c6HwymEb/uTJD8x0MzoWmVS08VmXR/kwPipYP//M1oCT/mSvnZZMjFgOyJ7+?=
 =?us-ascii?Q?ioWUoXfd4lN4gmxoh1NAeKLVOFoyc5vLFBEc98O5L6H2F33mskIchmPQ2Y1H?=
 =?us-ascii?Q?w1ZVhUqUbOeSgqrmSVkJyHJUrktC1A4t6bnuyOCEYvEHNlyK40ITIh2hrcYS?=
 =?us-ascii?Q?0c4Z/lH4mCSAAiICVYO/Qbm7ZUFR93bBrT9MU9Z0j3IVwIpZV42OCwuKjarV?=
 =?us-ascii?Q?XF8t0EyVs1GP2aHTumj/85nF8K4rri7VFjuDcE/O/apCgfX3eI/8CNvD4V9C?=
 =?us-ascii?Q?qA7R7TiRao+ULXHyugwunpZjcGZaMF7oHf5fJf4UnvrSUdMQrMhJU8BXVQl0?=
 =?us-ascii?Q?mMjpAm6OMqtyjLXXUnHcpRqSnxnDE6UUhptbVuoQ0gwtzNE9ETnmjf+h4V8L?=
 =?us-ascii?Q?qUwqC8bVLQ+mzT2ILjxbtAA4WIfKbnLkCcRkdR4xrdemUvtYLSt4MfkORIko?=
 =?us-ascii?Q?UIAXWAHXTmPi/WvNZZGFNgjt4mwlMU18Mwu0mUArVYrPlPsu+GjlQ0lE8yJx?=
 =?us-ascii?Q?wZUx5FydPK4UNnWVFTJfiinXFhPCjtkg770MkNZmP7CVooWkON6WYC6xMmDd?=
 =?us-ascii?Q?cOsxgzj9zHN4ivpEEIUk37NvHozheLBdhcZ01q42yA6Zn2pP0vEWyKC9lhM3?=
 =?us-ascii?Q?E0b/a0a/yJ1cZYU7eIv56nh6uicDzc9bojemQ0YejTVH0W2j6QYgmnEemD6a?=
 =?us-ascii?Q?8YNRLQSsSRVKfBVhkswiDc7Gdr+c0Jdq2tUH/Z6xx8NIDSbf/o61oziPjKid?=
 =?us-ascii?Q?IZ4acSlDMcjr4PJO99QkL5r1uGSOnRKjZIZcFmu9o51vKbS0ErCZjaY156B1?=
 =?us-ascii?Q?V4PVnXAdL52aap9C4UJ0/J85VmpeiJLrjjOBb2tdbGPp/1kRZTquh1/z9Kjv?=
 =?us-ascii?Q?7ucBytTgfSkf1Bwa3lzAMOM1jCXo+6uZ2hPqjPNGfmLdHzb5d47hFttZjj0N?=
 =?us-ascii?Q?kGkI1DkZfQaQJr/d7xaQbZcerGisYBRb7yCuNj4X2v3fDoZmCchD5YGoiUvK?=
 =?us-ascii?Q?xFiy4HnsXKbwKzcGz5S7ZUpjWZDXFRdvu4lZuEsH9i7igg=3D=3D?=
x-forefront-antispam-report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ0PR06MB6910.namprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(1800799024)(366016)(38070700018);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:
 =?us-ascii?Q?Wm6HHcoQmamI7ELKbR1pGFPMfkcoZ4huerdr0IIXl5cJVvcfHjt3QkJNrkz8?=
 =?us-ascii?Q?EvF+cFgV8KfjGuO+C0Yt/eNBLg14s0vbMo0qjZ4/wWyCXep5+doqQw3xrH2C?=
 =?us-ascii?Q?iYwPBkz+NEdmi87GX0zhJJ32yzOQ+s0Kv6KWELgb2PtroiXGndK/5rZSHEkw?=
 =?us-ascii?Q?G96EyMT8MnofzDdeDULAJIUZrpHRqvzaoY9bsN81U8QTckB+6VfFGuApmWVy?=
 =?us-ascii?Q?n+wbZEiNhLplkphM+WE8Bg3Kj1PGFjpmfvSdjxJNvyjdFOq+LVX6CWjPW4d6?=
 =?us-ascii?Q?6cFvsDRHUKS7l+XklfAzHBGYtc/I/dc+wg6GevkETr9D+5GK6LQ64q90gUDr?=
 =?us-ascii?Q?r6+p+La5nnaNo9b5dS6UOaWasOQjHhBmoEpgnGmmM7giPGeQDEpimzkC9BhY?=
 =?us-ascii?Q?82O82pqXs8EbzUYJzw3hlvib07A62hCOcIfyJcyztJYamwe31mpAAamVN4Bc?=
 =?us-ascii?Q?B1uBggPB5/0Tz0uyc3KPSz4B5lV/knFCI6JT+5ywHc/lvC6rkx+qLeqp78YO?=
 =?us-ascii?Q?2Qs8CjTUkfKXHjJ/riZDAwldEXSUU/ZaAtwfeAzfAeaaeZI+TyeMdiJt53aw?=
 =?us-ascii?Q?a7B5+3MYg+FDN3oETVX0QzclYm4VI9PqtWDKpfGpfruZobR56ecZiyCqJceR?=
 =?us-ascii?Q?lnwgYQKuGwmqpKbjmvaNfrWKil7SOd1TkI3/CBqY3aDvTxbQ/0N0QOB3e2S7?=
 =?us-ascii?Q?z1XFHBT4677KCSLu5vQbQ5Hq29u+28GDgdYyDJizSJznJf0KcPuJfd1wq2Ny?=
 =?us-ascii?Q?lNC5JSpQoNe9hbC3JBfxp4iqbhkyiQIptNwqB/4Q4kZ10zxNidTqKNpFUe4m?=
 =?us-ascii?Q?k8bEZvVe1rEqOL+Heq3Xl1Mj8FB85livTZB4Or1A90v67hwcrk7Gt2ABWT4Z?=
 =?us-ascii?Q?eorsJmm8iNaM1GuhhK1TDK91z1dBOoX8bohY87l59MeSZyr7NINCpVJabroA?=
 =?us-ascii?Q?uiomDcG8uARPC6ymTrhZVBINg01oAqR1hx/J8eIAVDsC7FoAEaEXe3+siDhW?=
 =?us-ascii?Q?OZ++VIaMpKHThP73drNuGzFAploznvs0sKJc4X/vVXAGHduNXx7x3GUnVdKY?=
 =?us-ascii?Q?oNjX30GdvXEugPQbm34jv/zqx3pimsD/mkC0SCVCfpvZDRhfuW8eVCtmcVQG?=
 =?us-ascii?Q?fXfJjVlK+IiJL7x06BmeEEw072aVLj9e6h8ssyFNX6wpKLbGwA7jXgG9+Bsy?=
 =?us-ascii?Q?kvthPQm+ucih1SX4qtkIf55BJJ6lr8hbWigSE8+B3UqRofbMzPZVqC3WUjTG?=
 =?us-ascii?Q?/Ou/QKBx8Y69BTOUZrLvK+xCbgEWtM0iLRDCBp4CPBNBCgQOR69dkY/MaaW5?=
 =?us-ascii?Q?Wigrv4PmfYg8X600x81oVgFs4jCXpnD0mj/7dQoh7jefAGbkCGdIZhwkeHoH?=
 =?us-ascii?Q?2qzWtJY1vbkurOjh1z5pLTvGZbn4hWMmIgqoUScQvmKjsuRcQ7Y4Jsw08JE+?=
 =?us-ascii?Q?FF1nIuXNhBSv7I6Q0CjF40Q22522X2qrGnfmjxTlIWUjVTqvpoWFedRWBTBz?=
 =?us-ascii?Q?MpM12KUr2yXoRfOK9V7HchPma1th66xcZuMp3pqlIhjZ350XmW5Z22QXVuoX?=
 =?us-ascii?Q?ad4xcKqCPxNheHaZ66zcRAZegEpdRjMCYtgQ+OsbxnbhRPOKJin5xqqDrvx7?=
 =?us-ascii?Q?PQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-ID: <D3CF995813301045AFEA74E0CBD2FA4E@namprd06.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: qualys.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR06MB6910.namprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1e6bdd6f-c371-4ff0-c519-08dd08b6bfe0
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Nov 2024 16:25:15.2677
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 81a9ef9a-9a98-4b00-886a-895a603bc029
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: yEsa2zhSUPBfMuApe92it9sKlWczJQ9sPQNYW/u/4CdDwKzyYAbeUt4GkQ6sZD/5VkaymhzuwR8VPrf0EviFjguI8dMB8Bm33S3qipJfkUI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR06MB9295
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.62.30
 definitions=2024-11-19_08,2024-11-18_01,2024-09-30_01
Subject: [oss-security] Local Privilege Escalations in needrestart


Qualys Security Advisory

LPEs in needrestart (CVE-2024-48990, CVE-2024-48991, CVE-2024-48992,
CVE-2024-10224, and CVE-2024-11003)


=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
Contents
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

Summary
Background
CVE-2024-48990 (and CVE-2024-48992)
CVE-2024-48991
CVE-2024-10224 (and CVE-2024-11003)
Mitigation
Acknowledgments
Timeline

    I got bugs
    I got bugs in my room
    Bugs in my bed
    Bugs in my ears
    Their eggs in my head
        -- Pearl Jam, "Bugs"


=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
Summary
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

needrestart (from https://github.com/liske/needrestart) is a Perl tool
that is installed by default on Ubuntu Server since version 21.04. From
https://discourse.ubuntu.com/t/needrestart-changes-in-ubuntu-24-04-service-=
restarts:

------------------------------------------------------------------------
  What is needrestart, exactly?

  needrestart is a tool that probes your system to see if either the
  system itself or some of its services should be restarted. That last
  part is the one of interest in this document. Notably, a service is
  considered as needing to be restarted if one of its processes is using
  a shared library whose initial file isn't on the system anymore (for
  instance, if it has been overwritten by a new version as part of a
  package update).

  We ship this tool in our server images, and it is configured by
  default to run at the end of APT transactions, e.g. when doing apt
  install/upgrade/remove or during unattended-upgrades.
------------------------------------------------------------------------

We discovered three fundamental vulnerabilities in needrestart (three
LPEs, Local Privilege Escalations, from any unprivileged user to full
root), which are exploitable without user interaction on Ubuntu Server
(through unattended-upgrades):

- CVE-2024-48990: local attackers can execute arbitrary code as root by
  tricking needrestart into running the Python interpreter with an
  attacker-controlled PYTHONPATH environment variable.

  Last-minute update: an additional CVE, CVE-2024-48992, has been
  assigned to needrestart because local attackers can also execute
  arbitrary code as root by tricking needrestart into running the Ruby
  interpreter with an attacker-controlled RUBYLIB environment variable.

- CVE-2024-48991: local attackers can execute arbitrary code as root by
  winning a race condition and tricking needrestart into running their
  own, fake Python interpreter (instead of the system's real Python
  interpreter).

- CVE-2024-10224: local attackers can execute arbitrary shell commands
  as root by tricking needrestart into open()ing a filename of the form
  "commands|" (technically, this vulnerability is in Perl's ScanDeps
  module, but it is unclear whether this module was ever meant to
  operate on attacker-controlled files or not).

  Last-minute update: in the end, an additional CVE, CVE-2024-11003, has
  been assigned to needrestart for calling Perl's ScanDeps module with
  attacker-controlled files.

To the best of our knowledge, these vulnerabilities have existed since
the introduction of interpreter support in needrestart 0.8 (April 2014).
=46rom https://github.com/liske/needrestart#interpreters:

------------------------------------------------------------------------
  needrestart 0.8 brings an interpreter scanning feature. Interpreters
  not only map binary (shared) objects but also use plaintext source
  files. The interpreter detection tries to check for outdated source
  files since they may contain security issues, too. This is only a
  heuristic and might fail to detect all relevant source files. The
  following interpreter scanners are shipped:

  - NeedRestart::Interp::Java
  - NeedRestart::Interp::Perl
  - NeedRestart::Interp::Python
  - NeedRestart::Interp::Ruby
------------------------------------------------------------------------

We will not publish our exploits for now; however, please note that
these vulnerabilities are trivially exploitable, and other researchers
might publish working exploits shortly after this coordinated release.


=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
Background
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

    And now the questions:
    Do I kill them?
    Become their friend?
    Do I eat them?
        -- Pearl Jam, "Bugs"

While idly watching an "apt-get upgrade" of one of our Ubuntu Servers,
we noticed a message that we had never noticed before: "Scanning
processes..."

We immediately wondered: What is printing this message? Is it scanning
userland processes? As root? Even processes that do not belong to root?

We quickly found out that this message is printed by needrestart, a tool
that scans the userland for processes that need to be restarted after a
package installation, upgrade, or removal. Naturally, needrestart scans
all userland processes as root, including unprivileged user processes;
i.e., possibly attacker-controlled processes.


=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
CVE-2024-48990 (and CVE-2024-48992)
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

To determine whether a Python process (a process that is running the
Python interpreter) needs to be restarted, needrestart extracts the
PYTHONPATH environment variable from this process's /proc/pid/environ
(at line 193), sets this environment variable if it exists (at line
196), and executes Python ("$ptable->{exec}" at line 203) with a "-"
argument to read a short, hard-coded script from stdin (at line 204):

------------------------------------------------------------------------
135 sub files {
136     my $self =3D shift;
137     my $pid =3D shift;
138     my $cache =3D shift;
139     my $ptable =3D nr_ptable_pid($pid);
...
193     my %e =3D nr_parse_env($pid);
194     local %ENV;
195     if(exists($e{PYTHONPATH})) {
196         $ENV{PYTHONPATH} =3D $e{PYTHONPATH};
197     }
...
203     my ($pyread, $pywrite) =3D nr_fork_pipe2($self->{debug}, $ptable->{=
exec}, '-');
204     print $pywrite "import sys\nprint(sys.path)\n";
205     close($pywrite);
------------------------------------------------------------------------

Unfortunately, if a Python process belongs to a local attacker, then
needrestart executes Python (at line 203) with an attacker-controlled
PYTHONPATH environment variable, which allows the attacker to execute
arbitrary code as root (even though needrestart's hard-coded Python
script at line 204 is not attacker-controlled at all). This is
CVE-2024-48990.

For example, in our exploit we run a simple Python process (which
sleep()s forever) with a "PYTHONPATH=3D/home/jane" environment variable,
and plant a shared library "importlib/__init__.so" in our /home/jane.
As soon as needrestart executes Python with our PYTHONPATH environment
variable (at line 203), our shared library is executed (by Python's
initialization code) and creates a SUID-root shell in /home/jane.

Note: needrestart's support code for the Ruby interpreter seems equally
vulnerable, but we have not investigated this any further, because
(unlike Python) Ruby is not installed by default on Ubuntu Server.

Last-minute update: we have now confirmed that needrestart's support
code for the Ruby interpreter is indeed vulnerable and exploitable,
through an attacker-controlled RUBYLIB environment variable and an
"enc/encdb.so" shared library. This is CVE-2024-48992.


=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
CVE-2024-48991
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

To determine whether a process is indeed a Python process (a process
that is running the Python interpreter, for example /usr/bin/python3),
needrestart reads this process's /proc/pid/exe (at line 520), and then
matches it against the regular expression at line 45:

------------------------------------------------------------------------
 520         my $exe =3D nr_readlink($pid);
 ...
 606             $restart++ if(needrestart_interp_check($nrconf{verbosity} =
> 1, $pid, $exe, $nrconf{blacklist_interp}, $opt_t));
------------------------------------------------------------------------
166 sub needrestart_interp_check($$$$$) {
167     my $debug =3D shift;
168     my $pid =3D shift;
169     my $bin =3D shift;
170     my $blacklist =3D shift;
171     my $tolerance =3D shift;
...
176         if($interp->isa($pid, $bin)) {
------------------------------------------------------------------------
 40 sub isa {
 41     my $self =3D shift;
 42     my $pid =3D shift;
 43     my $bin =3D shift;
 44=20
 45     return 1 if($bin =3D~ m@^/usr/(local/)?bin/python([23][.\d]*)?$@);
 46=20
 47     return 0;
 48 }
------------------------------------------------------------------------

In fact, this code used to be vulnerable to CVE-2022-30688, a Local
Privilege Escalation reported by Jakub Wilk: the regular expression at
line 45 used to be unanchored (i.e., "/usr/(local/)?bin/python" instead
of "^/usr/(local/)?bin/python([23][.\d]*)?$"), so local attackers could
simply run their own, fake "/home/jane/usr/bin/python" (for example) and
needrestart would later execute this fake Python interpreter as root (as
if it were the system's real Python interpreter, at line 203).

We tried to bypass the fixed, anchored regular expression at line 45,
but we failed. However, we eventually realized that the filename that is
checked at line 45 is not necessarily the same filename that is executed
at line 203: the filename that is checked is read from /proc/pid/exe in
the middle of needrestart's main loop (at line 520), but the filename
that is executed ("$ptable->{exec}" at line 203) was first read from
/proc/pid/exe long before needrestart entered its main loop.

In other words, needrestart is vulnerable to a TOCTOU race condition
(time-of-check, time-of-use). For example, our exploit /home/jane/race
waits for needrestart to read our /proc/pid/exe for the first time (we
use inotify to reliably win this race), and then quickly execve()s the
system's real Python interpreter with a script that simply sleep()s for
some time. As a result, needrestart does its checks on the real Python
interpreter, but executes our own /home/jane/race instead, as root.

Note: needrestart's support code for the Ruby interpreter seems equally
vulnerable, but we have not investigated this any further.


=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
CVE-2024-10224 (and CVE-2024-11003)
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

After we had discovered CVE-2024-48990 and CVE-2024-48991 in
needrestart's support code for the Python interpreter (and Ruby), we
began to wonder whether the support code for the Perl interpreter might
also be vulnerable to a Local Privilege Escalation.

Unlike needrestart's support code for Python and Ruby, the support code
for Perl does not execute the Perl interpreter itself: instead, it calls
the scan_deps() function from Perl's ScanDeps module, which analyzes a
Perl script by recursively reading its source files.

We therefore grepped the ScanDeps module for one of the oldest pitfalls
of the Perl programming language: the two-argument form of open(), which
allows attackers to execute arbitrary shell commands if they control the
name of the file to be open()ed (for example, "commands|"). For more
information, please refer to rain.forest.puppy's 1999 Phrack article
("That pesky pipe" section) and the SEI CERT Perl Coding Standard:

  https://phrack.org/issues/55/7.html#article
  https://wiki.sei.cmu.edu/confluence/pages/viewpage.action?pageId=3D888905=
43

Incredibly, we found a match, at line 871 in ScanDeps.pm:

------------------------------------------------------------------------
 868 sub scan_file{
 869     my $file =3D shift;
 870     my %found;
 871     open my $fh, $file or die "Cannot open $file: $!";
------------------------------------------------------------------------

In our exploit, we simply run a Perl script named "/home/jane/perl|"
(which sleep()s forever), and as soon as needrestart calls scan_deps()
to analyze our script, "/home/jane/perl|" is open()ed (at line 871), but
because this filename ends with a "|" it is treated as a shell command,
and our own "/home/jane/perl" is executed instead, as root.

Last-minute update: while reviewing needrestart's patches for these
vulnerabilities, we have discovered that Perl's ScanDeps module is also
trivially exploitable through various calls to eval() ("string" eval()s,
https://perldoc.perl.org/functions/eval). Consequently and impressively,
in response to our advisory:

- all of ScanDeps's vulnerable calls to open() and eval() have been
  patched, thus fixing CVE-2024-10224;

- needrestart's dependence on ScanDeps has been completely removed (it
  uses a simple regex-based approach now), thus fixing CVE-2024-11003.


=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
Mitigation
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

As already recommended by needrestart's advisory for CVE-2022-30688
(from https://www.openwall.com/lists/oss-security/2022/05/17/9):

------------------------------------------------------------------------
Disabling the interpreter heuristic in needrestart's config prevents
this attack:

 # Disable interpreter scanners.
 $nrconf{interpscan} =3D 0;
------------------------------------------------------------------------


=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
Acknowledgments
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

We thank needrestart's maintainer (Thomas Liske), Module::ScanDeps's
maintainers (Roderich Schupp in particular), the Ubuntu Security Team
(Mark Esler in particular), and distros@openwall (Salvatore Bonaccorso
from the Debian Security Team in particular) for their outstanding work;
it has been a real pleasure to collaborate on this coordinated release.

We also thank Adam Boileau (@metlstorm) and Rodrigo Branco (@bsdaemon)
for their very kind words about our work; they mean the world to us:

  https://risky.biz/RB755/
  https://phrack.org/issues/71/2.html#article


=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
Timeline
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

2024-10-04: We sent our advisory and exploits to the Ubuntu Security
Team, and asked them if they could help us to coordinate this disclosure
with the upstream projects and distros@openwall; they gladly accepted.

2024-10-08: The Ubuntu Security Team sent our advisory and exploits to
needrestart's maintainer; we then started a very constructive exchange
of patches and patch reviews.

2024-10-18: The Ubuntu Security Team opened GHSA-g597-359q-v529, a
private GitHub repository to collaborate on this disclosure with
Module::ScanDeps's maintainers.

2024-11-11: The Ubuntu Security Team sent our advisory and all of
needrestart's and Module::ScanDeps's patches to distros@openwall.

2024-11-19: Coordinated Release Date (16:00 UTC).
