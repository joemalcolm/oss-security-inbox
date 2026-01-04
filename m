Received: (qmail 10057 invoked by uid 550); 5 Jan 2026 09:54:44 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 17435 invoked from network); 4 Jan 2026 11:56:22 -0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=o1S7g3o5Q8QNbhuUG+aJYTPkOeXeQTsLnhxmlADGbciD7GUubZJBuA5dlW+2sFAnvrH/9it/iLsmtCGTvv8///1YetTINZoFchOGaKJ/AyKLQKP5x2l/SbCRUKV/xjpY20lF77W/rTlm9k3KFSn75c/Ce6ybH3KnpTP2Jqr8uB8oZdlRKVsesMFkWOR/m1P5AVa/+dhVrKVppxJlswRKmplR/J01tVwMqiEjol5JFHiNGoXVUymyX/9Ug+Pa2ovv9NcGDhdWIuQT32BrPoF8+ex7PMZnTe23HRR84Kmyxflc0IYQyuj1QOOjQF/Eptfi7jC2wj/er6xPDDabLPncIQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9f461ZZcFf7xm3/GexBlbwjAHq9rFCCc9HdPDA8+7Cs=;
 b=r5GP8Kzgcpo5VVuy7pcBAaXyBNMWw/W4HnsC2dHtH9ziP1MX7kTV6Bg7NbzOjueQIbBKzB/3JmC7ji6pV/pcfL5TxLXyo4P073T8xMn091W0nNOIB2d53ZVkHFz2GYt4gYEtMp8GIjo1KfwKcmIV05I4N3NYj78Murfa1ngxi5B/hGoD0yfj851LOlPAOJuYtW/oDnP8pnuTZDa97GBYzv8n00Ce+I/oCyoO+udpAV343ugJ0Hs6MfBjwE0H9zRrJNLaxxfrLjkz6pJXH3kc3k0gQDMYyt5iSGHZDToo241Fz7soG/oekCZK8e0oAaB/qMiMbG0AzBdrX92VSh2X2w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cs.auckland.ac.nz; dmarc=pass action=none
 header.from=cs.auckland.ac.nz; dkim=pass header.d=cs.auckland.ac.nz; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cs.auckland.ac.nz;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9f461ZZcFf7xm3/GexBlbwjAHq9rFCCc9HdPDA8+7Cs=;
 b=BMomQ0MrfGEyJvVq9y3pyz8IpL/y6sdBijqPb+ZSIhx4QMkhqagPPTcZzw9ERoyXQ/UPHZveRj8rgbX4ETdCWbP7ZEZvVOa5nNc9kkSqx7wnp+SI9YP9433r8RysWZg/OCWhPKla9EViA6chArzonf3l5xTBGYXKQ23f7BtL/oLP9lnyz0T4V0KsFQQcVaL2mF0P/uXG+ESLgVPRElp2BiylVvz7JH2IDk6tFCXPg9dIR9U6pTSTw9jLbu7HkQ75E+nIh2jTvmDx4YMSM9vOPUnSAYicks0UGmmHu70CJX1HEBkHrFcM55F/19qwYkhiG2kqQoawySrFgx3Tiv42xA==
From: Peter Gutmann <pgut001@cs.auckland.ac.nz>
To: Demi Marie Obenour <demiobenour@gmail.com>,
	"oss-security@lists.openwall.com" <oss-security@lists.openwall.com>, Collin
 Funk <collin.funk1@gmail.com>
CC: "kf503bla@duck.com" <kf503bla@duck.com>
Thread-Topic: [oss-security] Re: Best practices for signature verifcation
Thread-Index:
 AQHceOWNA9ZyWfnZ5Um30+gCdhSbFLU8L3lzgAAuSYCAAYX6a4ABIUh5gAHr2QCAAP8OGA==
Date: Sun, 4 Jan 2026 11:56:06 +0000
Message-ID:
 <ME2PR01MB36500CA1987170A857BCF637EEB9A@ME2PR01MB3650.ausprd01.prod.outlook.com>
References: <4bb0e4f7-a4f3-45cc-b519-2044b4b2871c@gmail.com>
 <928709EE-07AA-4995-B9D3-E83AC18353CC.1@smtp-inbound1.duck.com>
 <6F979157-91AD-4C55-8CCD-5CC5AA18BB50.1@smtp-inbound1.duck.com>
 <878qei6bq7.fsf@josefsson.org> <87ms2y1d2m.fsf@gmail.com>
 <87eco91kzi.fsf@josefsson.org>
 <SYCPR01MB3661379F4E31EE1A57A2F310EEBBA@SYCPR01MB3661.ausprd01.prod.outlook.com>
 <7002eb83-6227-4de9-aa3a-bfe5cad62320@gmail.com>
In-Reply-To: <7002eb83-6227-4de9-aa3a-bfe5cad62320@gmail.com>
Accept-Language: en-NZ, en-US
Content-Language: en-NZ
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
msip_labels:
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=cs.auckland.ac.nz;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: ME2PR01MB3650:EE_|SY9PR01MB9712:EE_
x-ms-office365-filtering-correlation-id: f6a92196-2b4f-4411-e61f-08de4b883e0f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam:
 BCL:0;ARA:13230040|366016|376014|786006|1800799024|38070700021;
x-microsoft-antispam-message-info:
 =?iso-8859-1?Q?1M9QuPiYp3vwut4lgoECPgisSkAODWUu46gPZxFM4WCUmmKV27Q+weJYoF?=
 =?iso-8859-1?Q?uJq5ixCm8YvvN0CYdYmzoomGtKE4jFm5LIclCfpXbvHmyoXadt+gFp9GRs?=
 =?iso-8859-1?Q?fBEoBtKyoubXiHUlQN1JO7eJNqJjy+iN69p9MNlL30u/pwgtgEnKqLGds8?=
 =?iso-8859-1?Q?aC3XLNAG9guX8TfV4lGbIDVE1PXzQlb4ndAl6B8EUY8DCVAuhUmawB13li?=
 =?iso-8859-1?Q?WsdSbbPhSgURlf7TlKuhGFvyuYeX5aXCwml6R1bQBsLXUoWv4F+kyDv9e4?=
 =?iso-8859-1?Q?skmrgDvEsAJEfUhw8GwJEc9q3TGDqhXFVtYCPc9W1MO63moO+NzwQSG6EN?=
 =?iso-8859-1?Q?I1SPbmItpl8jaHkQfBQFVfJwV2Gm4WP6KS8LHRri5ODdzdYuBT1nB0Qrc1?=
 =?iso-8859-1?Q?50/pQQk5MQlssU/MuNTR0IVjWRhbJoR7lMA5u63w1x0YoxcNIJ/N0Gkv0e?=
 =?iso-8859-1?Q?CMAv9GFwPNLqx00slpRsqjprMNAXVirVmlf5FHNFgC3gqxg2Mgw76U8QY8?=
 =?iso-8859-1?Q?a/11h+nBrB15NStx4x3KlMtdyjBKXUQTsDAyObinRBatmJaBDew0nuJhsb?=
 =?iso-8859-1?Q?l+Dq7lIIdqdVOoxxQl+DUxmsN4TcbFmgOYULREwS7YJrPHrd1rFR5yHwW2?=
 =?iso-8859-1?Q?VeNiHzYLDLl0D5Bwuk0dmyTGShuWiKzC4PYnBxSQ7bCR03L9hZxhCMk/WJ?=
 =?iso-8859-1?Q?GasxBqucM9F6/QGcr6mlEXLJzqtEj9Qq2gwsxgr+qHCiK9ju0tPGWgzhgm?=
 =?iso-8859-1?Q?9s6GYFYfOvW1K6Rj8kx2/rx9GKx6GNqvB3vvYzSB6llKHiBzLiBxqSC+zj?=
 =?iso-8859-1?Q?cF8njYZeOl/DV+4Rmnxdgv6SB0mBG3D6utEJF7fEKhy755b1Y6i9Oe8rtb?=
 =?iso-8859-1?Q?bV7evXKLnrQx6vfz8vmkUGj+moN5Y+OIgOlZ7RJ1HWjs9olg58i/zl+iRr?=
 =?iso-8859-1?Q?oizYV2xoPDcYDaGoQt4SnYMRAS8iAtDlaaTMh4NxbkLaiyj6/KbnWbrrc6?=
 =?iso-8859-1?Q?EZ0Xo9xAxaZr1kEFr9ALR0sytNEYJfzUXT19t0vKWqsY15qoFRtCtDT0YQ?=
 =?iso-8859-1?Q?PEfIBDZqiOKkIEF7/iAy7n77zcZnPkB2UVopADwsj1BR9My5uOAZvpZL5S?=
 =?iso-8859-1?Q?elJxYWn3ABAdfTvqAg62YP71zJwxWBVdgvVPzkM404z8A22E6t9TiLxePa?=
 =?iso-8859-1?Q?W+lSx/Qs0JIXdlRtr++2245bZah1Q11+NmpDGTwvx7TginOmU4Dpx/Vk1v?=
 =?iso-8859-1?Q?6sCl2FR5vf8qmP/TLCSQeD+tIR+M/6pR+lXkK1gAc3uzEwaWR8AUaanRSn?=
 =?iso-8859-1?Q?jsEPAkLUFOc8gDwJvc8+7e4WT2zQvyJjd2lZTLboVe33NmZWGC0pHepzzx?=
 =?iso-8859-1?Q?98Z8ixECDdVPvRFEZAmgmQuE271e3mstS5GmeR9Ho54gYhPEhrNS8xGkcq?=
 =?iso-8859-1?Q?dTGspjdz3hmfaaZ7HHBJ7dt5tL2mycQPeGY/GbjPM4CMmP/5P7zJc+uDhc?=
 =?iso-8859-1?Q?gWmF+wMq6RJIvSw5warJq0n+IYOJ8yyEsaIzgFqAexzR/QyfHUeOR2Te6w?=
 =?iso-8859-1?Q?dJMt3RQHQ9rgdacmmzxR6Ryjps8n?=
x-forefront-antispam-report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:ME2PR01MB3650.ausprd01.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(786006)(1800799024)(38070700021);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:
 =?iso-8859-1?Q?vEr9Xac8Dut9v3fjxY2Dzl5ABegGFho8zKzqOaA+YmgIto0XUHf9FMZMf/?=
 =?iso-8859-1?Q?0hTe7p3RNtYmKU8jB5VpYsuBUZzU6uKdBt6I6AhnXLzbeas1l/UPzEpBDk?=
 =?iso-8859-1?Q?UDI136YZEJ+EdAc6Ty3OiqpFpeWYUijfgr2PI1FMzKkeW/9TwpZfHNuuTy?=
 =?iso-8859-1?Q?lQR1JHXdVK7Pqi/bjN2WBTeSuFZEO1PZQBikh3Ud3d9d38qFSt65J5r5Qf?=
 =?iso-8859-1?Q?AmRn8DxgDFjR51RpA04SFoQP4hR+xriJzjFMvoLoBdJSB9htiriDamjaYt?=
 =?iso-8859-1?Q?7AZUICfXIduogl5MR+J0rQd0lAwwtOR3RbmgST54LH2A15ejPRVvxdEv+Y?=
 =?iso-8859-1?Q?brooddaJ1T3/Bnn1PrjMNl4ziRUrsw5ZsXkAh3cr0pAfpFnGui5Mg4SV4d?=
 =?iso-8859-1?Q?IfrnI0jupLfQuT/nmT7cGK8zT1lNf5L3pW97dOzEjLTXZSPPiGJYHsblAh?=
 =?iso-8859-1?Q?stdP4PVHFGqfQVV/KkiLC0FjDCFNgwyIIJLbAoz5L0cBarYLTMlU1Pp3am?=
 =?iso-8859-1?Q?uPLm6s+1/i2janJOg5NTd7e52Rg8Xa/vbNLDVK4mUvTyaPnQ1OuxXsiMPj?=
 =?iso-8859-1?Q?WotjNbq5g083Q8PamckYSRvq1//VfIuytWYX+C2S8ggILrbIw+AAXAa3Ym?=
 =?iso-8859-1?Q?pBQz7bECdqtCkWjjDGcO8ryatFhTsuPEwyg1ocEx4M3YrSrWmzc/jPwXp/?=
 =?iso-8859-1?Q?z5/KzMMaalr/3MT+KLnfc14vimJEzM6szE7VcO+AOehounz40+Q+7mfg9P?=
 =?iso-8859-1?Q?n2o5nKoxdxA9LQu+nPi+x1rdSKW+UOnYI3VZkhltoADPZP/zQdczWf0Dme?=
 =?iso-8859-1?Q?rV4/B0MHSCSvZvLp11vx7Roxa2PxjjLJr4O8lBLwxX+8mM7oTO1FwGfIoq?=
 =?iso-8859-1?Q?upLyuXYBlMBxl0wgxfuUEhbG3TMa/nkK04WJaqYNYQaLOfXIhIiMCW7KMJ?=
 =?iso-8859-1?Q?6favzZFCZm3p+6VTPswXKrml1ZATCtDe0eyvqRV2BTX9h2Ddh+zEol5Au0?=
 =?iso-8859-1?Q?1ZLVEM4aFpuZShiLynY2p4qPMbN7tdfm+UxlVTOgUYavQqEpeNXGnwHfot?=
 =?iso-8859-1?Q?8BwDdstJhUs4LxOmWCcYvDgO3wM4sJSHWOVWMrnh4iQNqlWeW1XQSw7W1d?=
 =?iso-8859-1?Q?aiGj2MMN6YEHtlDBYMuOKUa0BLNBKJ4bhIReF0AWkGWGXLrzqxgEle3UyI?=
 =?iso-8859-1?Q?0D9OdU5YclbTTx2A4p1jFxsXGSlJfHx4ThDy4bksAd4mbopqxG94nE/1QK?=
 =?iso-8859-1?Q?3TJVzEC0yEB7pN/q21LgyvOo8KLGhdqxfiTWmm3WTkWzCH3FIcC4Pri9K+?=
 =?iso-8859-1?Q?9tUz1eIzWQA38IO/snjUJyW+0eaClrbIESpGlhHgdL4HJXfNYqTqcz4jpJ?=
 =?iso-8859-1?Q?NBF5fjc6YZrzKM7mTaGya762GfpIwloea6qhNN1yS5wrHyc5uCxOKsx5Uw?=
 =?iso-8859-1?Q?3+RfwDhGjM0DemhZckDqT0DqY/gfE+BkQ7w4KZbIqW9BQNllnmihREP3BS?=
 =?iso-8859-1?Q?njkhidbqs+dexxgXYTY+DcqEoLTM5YGaAwvodkIcq1dw/j0S53lPb9NE5t?=
 =?iso-8859-1?Q?Hm3DMA/vUB0gGx37Ye+EEaEThYHdXltq8HIXu9RlBD92vtlZp2PLNUdxJC?=
 =?iso-8859-1?Q?SLCU1WAUQVWQ8Oay7vwiJz/wvZmEXunYMC7++5gv3n7pMejhLAtFgGU5vd?=
 =?iso-8859-1?Q?+45f0u+8RX8BgvhueZXPVsmAdXmZWPnCgKW2cR9k+MwXOXvCQpVWpgXjYx?=
 =?iso-8859-1?Q?I5TQhyptKq/uriMD67zE0HIIUJfok4XW39sSMoFowhQ60NKp2OGYJsRezz?=
 =?iso-8859-1?Q?6xCvBx+L/A=3D=3D?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: cs.auckland.ac.nz
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: ME2PR01MB3650.ausprd01.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f6a92196-2b4f-4411-e61f-08de4b883e0f
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Jan 2026 11:56:06.1443
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d1b36e95-0d50-42e9-958f-b63fa906beaa
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: QJPAs4mg4lheZ9LxtiGzzCTQb2wRl/p504quGLcldaKFbzXkLh5tEiQQ8F4sbCOXKEV7rxbYb+FUn/htkY7i8KbqX5tXuTKSuoq6Wre/038=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SY9PR01MB9712
Subject: Re: [oss-security] Re: Best practices for signature verifcation

Demi Marie Obenour writes:

>My understanding is that most people here are looking for purpose-built
>formats, rather than specializations of general-purpose formats. For
>instance, here is something based on OpenSSH signatures as a building bloc=
k.

You're still missing the point: The exact bit-bagging scheme used is
irrelevant, firstly because we already have a universally-deployed one
(OpenPGP and its tooling via GPG) and secondly because it's something that =
any
vaguely competent cryptoplumber should be able to throw together in under a
minute and as long as it doesn't involve XML in which case you may as well
pre-register the CVEs before you start it should be fine.

What we don't have is all the stuff needed to address the "keys and signatu=
res
fall from the sky and the timestamping fairy blesses them" issue.  We've go=
t,
for example, the Debian CA-root-equivalent keyring, but how are the resulti=
ng
signatures timestamped?  How are the TSA keys distributed?  How is a signat=
ure
on malware revoked once it's been timestamped?  What happens if the signing
key is revoked due to compromise but after its been countersigned by a TSA
(this is different to revoking a signature on malware)?  etc.

That would in fact be one argument for going with CMS, you can use any off-
the-shelf TSA whereas doing it with OpenPGP would require an org like the
Linux Foundation to run a PGP TSA, but I get the feeling the GPL-or-death
subgroup won't agree to the use of CMS.

As an aside, is anyone aware of a single-source design document for what
Authenticode does?   There's a million web pages related to the business of
selling signing certs, and less than a million on using it, but I can't fin=
d a
single-source design doc, just lots of stuff in various places that I've
picked up over the years.  By "single-source doc" I mean something that
addresses all of the above issues and related ones in one place.

Peter.=
