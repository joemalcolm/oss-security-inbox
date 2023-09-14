Received: (qmail 16067 invoked by uid 550); 14 Sep 2023 17:20:59 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3882 invoked from network); 14 Sep 2023 15:49:38 -0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KbgaKFMC8YZd0U+FVX00FdsgqzvgEwew0C0fyxzsd3EjGKf6spkNYyTOGmkdjcuvSi4/vcs8rjLLEsQqJwpUnw1WrwcqjFGc3FWaJ6jV+VbyDL8wwr/Y4CHk2LZkPLv1enoP0FC1mugLEFHd/hGK1LYIiscycFZv2rqiA2pwQLMibBkOE1Ymqwls8Vruy5YWGJArpBBB3NyI1BIHGJMYT0fPDLH5qTrmMZPtm9au4sOZVGZiBOaChv7ECTDyUO9AIdvTp3pJdfP3uIQvj84iRSAcnG3JvzPITnSqXCMZeIR+2GrOoW+MXui+1lNlhflRtGFZL9AkzIkNwsKFjpYtoQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GiuJ+yaer2mbLnO4KgnL32WL1YSswzz+tl0wP55rDcs=;
 b=Wr2BtOtH+BR57/5MaiFndX9T2E+VosrCgm74WEbMUd1UfCDgXF7O7GCQi0z2KVkqrMzwum5uJkEBmhsr8MxMGmUVFnAT60CA1WOgm4YzJWByFX2ZTE8c4q/UaamCXleLsqQIHbWTnTgqemiOjV6LfqwEyDUEVEwlsXfnvgiFGr3G7IMAGtDk/3JmY+Z0j9r5eT/Q/0jHC+euyFXtedRKYG6fimj2T/n49A0brE8ThYJdWPu4rV8ftEMzwu8KqhK2HqHoQ9g3Ha9A2ptvzn58/TpcKDMdqBV9EJ2yzjmrLefAFLR+b7ZMP/gTOWO+Vm1kFFwk+RGpzIVEJ7LpTp0SKg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=mnx.io; dmarc=pass action=none header.from=mnx.io; dkim=pass
 header.d=mnx.io; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mnx.io; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GiuJ+yaer2mbLnO4KgnL32WL1YSswzz+tl0wP55rDcs=;
 b=UUMPQo3LXCwjTxF7xrXR5tnkchmMZz1qngK2+s1OeqfQWY3DMipv60LeYC9TijHPobBMskeNshhFQZllVVV15hBYy1wXR4HjJHQEhJ4epGD/XFlOtbrEU79Yi6PIVOAou1S9jxRh3CKwq51wZUHVbeJY22rzR8Lof1EEpOKDuljQmVB2I6/ulpgtnhi+qzX0CPRPahMoXeWrBdfKJUJweqae1SGgr73wfN3Et+Z5tkRFuo+qUhNBBO50tF6v5zlvLjaIcMtS2yQn36eV07drbHqZjeQ1vtXuwPpfIxjvy1Ermwl45BXiNGERBE16oHDD2IcXOjI6l4X7pcFOu1lvOA==
From: Dan McDonald <danmcd@mnx.io>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Thread-Topic: [oss-security] illumos (or at least danmcd) membership in the
 distros list
Thread-Index: AQHZ5n/c1L5i140dZky1+LnodWZcQLAaZlOAgAAI3oCAAAnRgA==
Date: Thu, 14 Sep 2023 15:49:22 +0000
Message-ID: <37FAC982-F2BB-49DE-9534-8A34D3FAD497@mnx.io>
References: <6EBBC128-36D2-4262-88F4-6889E9E6DE1E@mnx.io>
 <ZQMbzCxj5XhW5+a5@itl-email> <20230914151403.GA15124@openwall.com>
In-Reply-To: <20230914151403.GA15124@openwall.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=mnx.io;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL3PR12MB6546:EE_|CH0PR12MB5074:EE_
x-ms-office365-filtering-correlation-id: 492cc8e0-835f-4ee7-dba9-08dbb53a2a61
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info:
 479stKO/cJkpyt9GjpyEebqbpMGTWWjYzniFwPCTJuPVuToMjXXRgg0g92/WO3C50PsNJXUM55gk6LXwqwXPhBgLG65j1UwZtb9V6II877VqkaCbPYW1cZUJNJM9dFSwdgj+IN7f46Oi7GqV1yw/sRMN7wyWE7LfB9020KwHgR6nUcMKxBSwfvXZaVD3DppRqP0EpxYYoZMKkmvfJnIGobWIabepk6qhtx1eic1+llxciDCL2FpJRNLbaYV2iciFX+Di4rkSbYy3UXxjGNEFPYQ0OWh/PuebTC3d4ZOuPd7lbqpQHb6UnCyRsIWl4LldE03fKco1ZhvSru7KvDvHXXaRhSxDlXudju4U65GZO7wDf4mAD6AqfrRmNZuFHRH/uAUG1ctmMAslwfhDXeOzWDtM5Km09/FIR/OnnUCEMcSGPKz4VwD/ll2DS72mHvUb1dpA2D2QMZ7Yu6FA/G5sw8XK1lvHMtb8ZASw0ZsFFYLcvwGouLMUwTrVSOtY01x2zs7xY+R4sHH6MYsjjWqQQkONHUkTSKOcizFm3YmkUOsIMw2pJtON1BOvijKrivSqBlaxvt6fTaZLQe32ZdS0PaWW+VyLsOGtyYbq/Snb5loOl460gG+jzM8As86M9YFx9++JrXPHZf3VmTdvD8rU8Q==
x-forefront-antispam-report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BL3PR12MB6546.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(396003)(366004)(346002)(39830400003)(136003)(376002)(186009)(1800799009)(451199024)(6486002)(6512007)(71200400001)(6506007)(38070700005)(53546011)(66556008)(66476007)(66946007)(2616005)(91956017)(38100700002)(478600001)(83380400001)(86362001)(66446008)(26005)(122000001)(41300700001)(64756008)(76116006)(5660300002)(316002)(36756003)(6916009)(33656002)(8936002)(8676002)(2906002)(4744005)(15650500001)(45980500001);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:
 =?us-ascii?Q?jxy7PLQjnd4miFUf054Furq4BW1xCWgWjegvEzimoLPz5kI7Bp1uRK3qFNuq?=
 =?us-ascii?Q?N9qucYPVIWfhXYuiRWGoMSd3NpCip0oARNr0x8xI+HNq92CtOX4rp3lWiaCQ?=
 =?us-ascii?Q?qBF9Gw7/nsSdLaSRFx3+HaxHFiImKjxsE2IcJDbRgQuhL/hUndm97EyYO4Xi?=
 =?us-ascii?Q?DooEjuDAyNDgcuhEfQRYXwl3kz3mo1t9JiFVjm0kaZuJgB4MP9+60VFL/hTO?=
 =?us-ascii?Q?U0wcuVioSBOtPviqHvbrSWZigL6HW6aNemv2dYKdYusksXpdt+722BJ9OXHt?=
 =?us-ascii?Q?4OAOYQZs0efq0iGL/6mCts2T4RRPgPd/n0JSa6fyTqt2ot4gqttGWDD9H4M6?=
 =?us-ascii?Q?qrDwslNsI6q8uQ5fayMjF6b6Pu17fXG+LceqNMaSLZ2K+NAqIQDa02qb0s6j?=
 =?us-ascii?Q?4q/GNvJ/tqcRmFISAb4LP7bDgcHAjoiFQ+1n0P3/FoYnwnYd98WT3wC13/Ca?=
 =?us-ascii?Q?gjnYSpzvcyZyQZS/hzo9JFQ13qti3/Xn5u6scQXHow2rj1a7DFCKEmtf/KPw?=
 =?us-ascii?Q?3eTHIFJSNKiZx9FGPhdAVOv1Ari8iDczkMk6qE29EPRruDnXND9sX48uknjS?=
 =?us-ascii?Q?yp+NwdQEh2u9zIjHibDBk/dtj+l0U8UsVvKfhATsHCcc6gVFne5L6uW/w/1d?=
 =?us-ascii?Q?429XptSFKKE/rYqPFqC/bl4Ys+9r4nJ6Fyb756voyXwMS/ybnRFZObfWpMa4?=
 =?us-ascii?Q?dg7lbegM2peqoWlwwSInKCy5VkTRlKTmD09BZbYanvNJc/i3hJGLK9F9Uive?=
 =?us-ascii?Q?RHp0hIOTXTfY5Ykpc2k6m5RjhojkeV/aKJF7qyKISeyOfHiHK4NS7JwyICDe?=
 =?us-ascii?Q?rIPKL/jekM+ml/X/ppdUphrAoJky5cMvxrDhlGo8yD57kQ8EPrOnWvOJFpSh?=
 =?us-ascii?Q?Q5ylmUhEhZ5ghF9pAqERFb4smiAwt5zzRwnpbpshQX1oCFE94JHL3GQ1kzKU?=
 =?us-ascii?Q?31FdHf5HCUVPfAl5qPSCorgn/cysYsAJ3KBbQoF98qBoT78EgxUmNz+ijgb8?=
 =?us-ascii?Q?PcjCxXyJe1wTy5KdMUPXc2m4an9JtoOmkT1z5du39VyGncaGx94ei6iZkxS9?=
 =?us-ascii?Q?VngKJF22Wi/1KW8ImtRexcxus7laviA7abUd8r5ZhHYoFG6cpEY9az63qRMq?=
 =?us-ascii?Q?GiYHnb9TDfuGqoGTLcAlaY6RGj9lrR9BRKH9h7tzHcwFu+pkgVo/+eomxgzG?=
 =?us-ascii?Q?kwsUB8VPOUcKBllBtu2w8PO88tWeadgeQpx3Ol1U7jYlbmLSvKR6d2Iy7Dbr?=
 =?us-ascii?Q?BckXE/yFDstppgg+9MmCVdtvR6nzow6EMxYQ9ZKhj/YqSGYxK7UcINLNey/l?=
 =?us-ascii?Q?5vd/Auoj6GtRFd3MBQI+tAccRzWxtoO9AoSOG/yX5l6eiFJVTmrSiw4fN+LK?=
 =?us-ascii?Q?1aRwvwtuxzsrsjZZbVgwI3zwO/q9HSXpcWc/tjXLGLTNkbA7XvgF3O7d9XRZ?=
 =?us-ascii?Q?oMzyh/qEUH8cnPXWdXdM6jteGPz30MjXIz3xlVsOtaX8v1i59l8f9GuSntTN?=
 =?us-ascii?Q?8PF1YhI43LL7HQ3/oXNZg3rqQJpzGJCtR5EmGGBZpC1WwYfMy4mPJ17/c4YW?=
 =?us-ascii?Q?nVHCYw9niieWiyaHRFRZFVyHtZ3f27WxadiGaZp1?=
Content-Type: text/plain; charset="us-ascii"
Content-ID: <1499A88F3D1F1E48ACBEEEE0CB6309E2@namprd12.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: mnx.io
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL3PR12MB6546.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 492cc8e0-835f-4ee7-dba9-08dbb53a2a61
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Sep 2023 15:49:22.6701
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 7cbbbccb-a73b-4293-8866-194afab248db
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: uSvi5+gGIcyQPwATs5kz9ShYGdg1NOga73nP5cIcbi8d46PVjrl9/udnVFm2VLk1
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR12MB5074
Subject: Re: [oss-security] illumos (or at least danmcd) membership in the
 distros list

Sorry for being unclear (but I tried to understand the possible distinction=
 in the parenthesized bit of the subject).

On Sep 14, 2023, at 11:14 AM, Solar Designer <solar@openwall.com> wrote:
>=20
> That said, the membership is for the distro, not for the individuals.
> The Subject line here is confused about that.  The difference is in what
> uses of information are allowed (only for the distro's security) and in
> conditions for staying subscribed (only while requested by the distro's
> leadership and only as needed for the distro's security).

Regardless of the precise semantics, I'm here on behalf of illumos, and I'm=
 volunteering/happy to be the individual representing illumos.

Hope this helps,
Dan

