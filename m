Received: (qmail 20111 invoked by uid 550); 18 Sep 2023 17:57:56 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1790 invoked from network); 18 Sep 2023 17:36:29 -0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=brGpTGsaHAJ0S9f9QNFmjRYxYwIZ4T525J17kDu3r0+Dn38xJspLcuA9davVhCIZkS9SXqqqiqsF3B9xFL9jBISCu1gFukCYQrlFdBhSYO3FIUMSwHtWw2yp1ka8W5P6L8Bvf15uS1g+Jpci24Qy2wfMeQcILWG9YqmgkSaKcGiUDIkQbO57Wzqgk0AoIvoNvjcQCtCthBs6U5m6Ti/jZRqQNwSGMvx1Krm6I4kt7tifd79aL1dZXHJjfOwOwFfi4PgomSUkG13Ar0ErZGnbvVWfa384I/Z0Ecr+gc3CyxcNBphu3GebkcZEY5uEGooglINF3EgQ4Rzqhhy0FtMjXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/tZMd5b0DWyLoZGRSFzLBEEAqoDhnByW0jvx7Burjpc=;
 b=KMmfW1165SLaTSgC83YYZjpI5+SA16eRXwbBP69Ls+XpZi5v39XnsmPJNaR3zw0XuIE6gqS49c4bfuAYo0tl89F7OfNCFyoJyHSjJr7TPsICnCwUZu4N6XHRoloHPU12kaTCo1FGJ0goTVek2gthyxiNCUyzk3vyuHXCAccxKoMU5jC7LFUUQeQArXfivfcBPEGygTWyMgu4c+xnR/NbdNqxujHxf5NdOMeQ0RpOGbp9oqZOaDBdHmJOy3x01LQi7fDocY4PFOKWppo4ZAfXeAIW8pRhj5NstJWfRRVGDgbx1IlRfw4G7E1dj236IJBpH995t2uCwYA1g3aCYBrt8g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=mnx.io; dmarc=pass action=none header.from=mnx.io; dkim=pass
 header.d=mnx.io; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mnx.io; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/tZMd5b0DWyLoZGRSFzLBEEAqoDhnByW0jvx7Burjpc=;
 b=QD+roMXZS0XuregJa2XLP21issSa4/oj3iqkJIC8dRpPEx8E2iBybupAGm4SXomhn/qmPFDktKIQuQQPlOBxGJR9dwt6XVARZ8ZI0sHtT2+Okr74kBKny7CPEM/4MnrHZN9we/8UTsmWSjiQULXA4GY1wcTjO8mLbOG29NKSrOpK8HXclPuMgzk4nraHmI7kfz7bDd2sWG5/adPLIZC+1QPT7i8L7Lir117B2VszODp7Vzy0wJy7W9QkfWC5KgzBpd3/8nb8bfNc03Zhz1wPOlChe5+WtJ80HjxID5qBu6sTSQw5yV3bz+8IefKRcnLlMk/Jj3MupalV8oihqoJDpQ==
From: Dan McDonald <danmcd@mnx.io>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Thread-Topic: [oss-security] illumos (or at least danmcd) membership in the
 distros list
Thread-Index: AQHZ5n/c1L5i140dZky1+LnodWZcQLAcZLkAgAR7eIA=
Date: Mon, 18 Sep 2023 17:36:13 +0000
Message-ID: <36F38D40-5F90-4E1B-B7A2-121431A3E6FE@mnx.io>
References: <6EBBC128-36D2-4262-88F4-6889E9E6DE1E@mnx.io>
 <20230915210906.GA22532@openwall.com>
In-Reply-To: <20230915210906.GA22532@openwall.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=mnx.io;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL3PR12MB6546:EE_|BL1PR12MB5286:EE_
x-ms-office365-filtering-correlation-id: 8abb35e8-4be0-4cb7-9753-08dbb86dc149
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info:
 1DjX4EK/E36OclWTrx9MDjtbvWuyEfGRMghbq27d0mcrDymtGXncvxmbHnNtLNPKEm77M9IzG3iDVjCpiENPsZiP3DxcJf/pOqrSuBWj4qvdQwqAu2l0INQDn/FcRTTN6hpGjVMB39hiUimpRl3s9BWMdOHP7GxAToR8LHZqOLGrQliintG8wVEoXdgTRXKv6j+ovOGUxMOmYuUyInxPyYvk73m1C+DKJ3dlsPgHlxECiFmyZua/6Y/acgPzTmQkmwDV21kmxIWRD2OhjK5mgnHQG1gR3Bi75FjW7yRghO5/IJnywHudKXdG7titDT7HZxQ04oW56cNL5x2Gct5GmMxvAVv6UMJgKLduscVmqKTwQ1YSByw5LWkW58IAKnAnArwJK3aBFNgOoVkKBHgH2YP9IA2L/vO4km7oZArQ5ueW+B5K5qG4n/5KYnSwSqRsbo3mNfpEhRvyNKHapwY76bs1vgPAcciZkmfBUorfcGkwozQkP+ZtvxbzQ2/aZBitl8h+o4vl4WdgC60bXnXG5rZ5UHsLJHlg/UPC0tUz5eIZ6PK9uQ6VaN5+zH7l/T5qVZ3ivXG4hnWlMgw12c25xjqIpJFQq0SVYahfYQmSVTeR4DxPrm5oSZQbrk0G+lJzsspD/TddWsKlInL2vU+qRg==
x-forefront-antispam-report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BL3PR12MB6546.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(396003)(366004)(376002)(39830400003)(136003)(346002)(451199024)(186009)(1800799009)(2906002)(41300700001)(8936002)(8676002)(478600001)(966005)(66946007)(15650500001)(6916009)(66446008)(64756008)(66476007)(76116006)(66556008)(316002)(71200400001)(6486002)(6506007)(6512007)(36756003)(5660300002)(33656002)(86362001)(2616005)(26005)(53546011)(38070700005)(38100700002)(122000001)(83380400001)(45980500001);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:
 =?us-ascii?Q?fNK1ZoORNE17E2HdjCmNdTp1gEMZHExni3wLleKdSq3df4wKdPgH9e4G2+/8?=
 =?us-ascii?Q?06/BV5XkCrLNNK+3IdxH7lA3KpRSmVDMFU4VTZiY0n3iKOMp3IS+7ZF89eJr?=
 =?us-ascii?Q?p2oKFvyD/1gXMD2eqgoH6NCwdKMRg8+2Xkv8z9hGokj8qgPDujUCEFF/bhyl?=
 =?us-ascii?Q?EmzG2c06UlUSDH0TXzspT/LErYuMi96F8ZW2pEy1jFIa3TNjapmPJYSshcgQ?=
 =?us-ascii?Q?PaJcolqFVmA3Xl7kJqk5wHUlrApTpiyE9a4hokqzvVCbV9xeL0XVq9uMtkZQ?=
 =?us-ascii?Q?GrQsCtc4/etjsFPjgJaOBoTVhZ18YQvW8KS2Q3YtaYUgSWLJEXL1C96O/ljT?=
 =?us-ascii?Q?H+X1l24S6h/f8fnqM+qBH5ghAkKnjP6ZBPZhqnAxJe4zmXgyGLmoC8YpjJZt?=
 =?us-ascii?Q?Gc3bXjpSLSmKwQS0p3FVIZCjRUxNU2fUB3i0zBcQYkjg6mjqX/aPqIP2Mi1U?=
 =?us-ascii?Q?D3+pNJRAhXkyBHJ/2vPs+rjLRYm5GQEyIZC6VeNiHgRH+K40EVsReULh3GS1?=
 =?us-ascii?Q?DXws7b+EiXh7vx4yrF82lq53hVUkAlzfKWaQFbWORgDN4RI3dSggScQXaOgp?=
 =?us-ascii?Q?Eha3awInH+wSG9OSQ/yx9i8S2Km/KvDaMTQw3XgAja1ycJQqJnDU3M7XHNC+?=
 =?us-ascii?Q?dEgxs/5s5rBeXFexBO2T5i/ImPbijeTNdDuwvX+gpx/mjUJEODLgqFqIf+Nu?=
 =?us-ascii?Q?XSYh0V+CTRrq1ldFV5k789YyHHMmKbHyPbE+cgS5tRlf5D4H6tO0g0EpVRZr?=
 =?us-ascii?Q?SzA8/F1XE8D/xis5E159p8EuaXV99Qc/lk+zJdwMaH4IKOeQDhhvOK1Xmi9I?=
 =?us-ascii?Q?29bWIF+LN5i5oTCTWodAu/h3iAhNpWGzhyNCqJjDg43Sf710eMKd3o/QEM/1?=
 =?us-ascii?Q?bpGxca8HZ9mSrTTFrE3tTaj9sFHGqUxpImKH0lGRU1TjP1iiz+aecMRUn2zK?=
 =?us-ascii?Q?Zst8w42Yb1ksRSqASJx34nI1HkkEdcJO6lt9MKuqPLLEwrA3KR+KLKrbhmrN?=
 =?us-ascii?Q?qpTrrCIkEhjamHd/AP0a/qXm54vauSxwL0VoJ6Uo34XGqJG98j2lE9UrpgBm?=
 =?us-ascii?Q?4dPZUwP7Uex9uAKGEl6w5HWc0QlPhjKbVQh2YqwAke8JnpMhtNnE+VKJOrn5?=
 =?us-ascii?Q?pwz47bcgOcsZD3KGEITrNI2Jar/g1FgkXswB9yxO+Xq69AF+DmHwVSIcZhBH?=
 =?us-ascii?Q?HuIfdQ5iy0mRJzOBssR9lDUwJTz5JmJZ43RAD3ZCOiLO9CEGMzIwz4zXTcxr?=
 =?us-ascii?Q?o2KPr9boiWlg/GD2mZzadXq6xtFq+ly5E7kdfmfrBdXAlIQlYOnVqyLaya1h?=
 =?us-ascii?Q?yigAZuVQS3FRnq2UYL4pXxXU5dx9IRJKrlVyd7hgIwmqSt+rBNA9eSFdC/Xw?=
 =?us-ascii?Q?6nK7P9KVaQSTFOlbX85TX/u8tBT8fhMgCzKJ2LlxKQwcri8EE9C3CRAAwD7q?=
 =?us-ascii?Q?Zc4FH1Ejnn13CW6xeKXKV+Jb59Kz0rAkuqoRLi7syLckvAfTalwAxi0TKc6Q?=
 =?us-ascii?Q?a9KZJ1k4nRbkrGll0lU5iwIDL/2nHDVK5c+1Fa9/33iU90ick80aXsYd32EH?=
 =?us-ascii?Q?4bP1li1wvqPl/tdJlSXmdpOxM2b8cU1bSSxQUHTM?=
Content-Type: text/plain; charset="us-ascii"
Content-ID: <F0A77E923BDAAD4E8D39766AC15BD9AF@namprd12.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: mnx.io
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL3PR12MB6546.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8abb35e8-4be0-4cb7-9753-08dbb86dc149
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Sep 2023 17:36:13.6270
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 7cbbbccb-a73b-4293-8866-194afab248db
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 4mB9mB90QmmP/DJuZK4P2ISS7VjaExlj60ufl6CPoyQQ1qDruvK2+/MZG5uJnj3L
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR12MB5286
Subject: Re: [oss-security] illumos (or at least danmcd) membership in the
 distros list

On Sep 15, 2023, at 5:09 PM, Solar Designer <solar@openwall.com> wrote:
>=20
> Hi Dan,
>=20
> Your request looks good to me, except that this criterion:
>=20
> On Wed, Sep 13, 2023 at 08:21:22PM +0000, Dan McDonald wrote:
>>> Have a publicly verifiable track record, dating back at least 1 year an=
d continuing to present day, of fixing security issues (including some that=
 had been handled on (linux-)distros, meaning that membership would have be=
en relevant to you) and releasing the fixes within 10 days (and preferably =
much less than that) of the issues being made public (if it takes you ages =
to fix an issue, your users wouldn't substantially benefit from the additio=
nal time, often around 7 days and sometimes up to 14 days, that list member=
ship could give you)
>=20
> is meant to be about the distro, not about you personally.
>=20
> Alan Coopersmith also correctly pointed this out and made suggestions.
>=20
> Can you show illumos fixing non-illumos-only security issues within days
> after public disclosure, so that a few days of advance notice would have
> made those fixes even quicker?

It's a per-illumos-distro property.  OmniOS has Stable & LTS releases.   He=
re's the current-stable
release notes, dynamically updated every time they update:

	https://github.com/omniosorg/omnios-build/blob/r151046/doc/ReleaseNotes.md

So I'm not sure if a few days of advance notice would make those quicker,
but I do know that other distros have biweekly scheduled releases, and adva=
nce
notice there would keep those wheels spinning faster.  Esp. since "patch tu=
esday"
is a mere one-day before the release branch is forked off on release weeks.

Our security coordination in illumos is to warn distro-runners, and they ma=
ke their own
decisions based on that data. None have ever violated embargos.

Thanks,
Dan

