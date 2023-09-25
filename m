Received: (qmail 10056 invoked by uid 550); 25 Sep 2023 14:57:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3211 invoked from network); 25 Sep 2023 14:49:03 -0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YaUGTZQg+DURhVYyPT0wa8dkelgRnLPEemvIT6XPQ0iRXc4DKdtyqjxd3Uum9w8pohHJsdoOOeiq8Uz35QfSn5kysdFMbWAzd9J5HlHLDRs4GhWW+NesflFhfJoEdxg142o4d9z7r9JTLUhEuHNsC/pZO6Mk2xJ9Wm9qJtGnWC3T0xV919UAQLg7oADOmF1nw2sxQ/aCQz5G3ENbj7tqwnhr0BQjUtgr7l/GCi+o0jnIjI3ocb77JtIdoH1Pp2KMGuDtq/XtQQiwQYJviK8oXjfqS6Qsmm898VNseDZaUlu5BUtX3lYjdfv7X45nDo66O+SwBrlCsgqYh7G/bbLcOg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HHq4QF6AnU5LUsHyYoxyjD9I1MYzwV82VRHWBfn+CCM=;
 b=GTOGiBUPzoG6KJqvVyN0FsYugFkoZ7pdyuGi5d9AbM5oqO4tcCUQrAB9XJL6TEdd2bac60EPZSkTbvJPaWPl16nvWNySdk8IdRksfpP6g33Vj/oTi0KnOCYP5/GGxgeam6iYq4dvluYBPd/RRD7DillbjziQNfwhM/ag7dafmVPG/36w4CrSdpuZDvgTbEGs+Sejyrm+e4Xqn6JBjSUlh8eNXcDbhw35MZqLirurcLyfeY8fpV4qxzsIJtXeJoymPRl4iQK/AF1hutKJf0uno/AF/5+Xu/cy5CicbL0mCwvFIEorUq0p1RVfl9yrgTSkdExGn6TX2F5/GEDmho522Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=mnx.io; dmarc=pass action=none header.from=mnx.io; dkim=pass
 header.d=mnx.io; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mnx.io; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HHq4QF6AnU5LUsHyYoxyjD9I1MYzwV82VRHWBfn+CCM=;
 b=FbQTb3JhVrP8Bp/hM7q46w2WJAdX9Zy0FOY34QzfLfsksL4y7U87AD4x3bLch2L0QX3QC0yOuy1etXOCctN68lcucRNEyScg5Puo92/jhr7C8HuEKNiZLUSWvR/a2As3vH1b6rJSlLADusUpvAsO5/VU0ZxqOE4nSHxWQxjq4uzfLd7jLDCE2oSiV0kOAGq0o06F97Z6s9Nj22Kn+POl93xJNQCVFsH0yB2fR9JDrQBi0j0lHcbGKtLpu8iHW/ZqOfHQe8u4CRe1gMSezPXAQ7J82ev0TDFT/aRW0ORkZOKl2RYZOvErOOrSnInNcsTsrcVc/C8IFV5V/Ahw6zNyQg==
From: Dan McDonald <danmcd@mnx.io>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Thread-Topic: [oss-security] illumos (or at least danmcd) membership in the
 distros list
Thread-Index: AQHZ5n/c1L5i140dZky1+LnodWZcQLAcZLkAgAR7eICABkcNgIAARnYAgAREAwA=
Date: Mon, 25 Sep 2023 14:48:45 +0000
Message-ID: <03F95D3B-FB70-46AC-AC19-9709599B8318@mnx.io>
References: <6EBBC128-36D2-4262-88F4-6889E9E6DE1E@mnx.io>
 <20230915210906.GA22532@openwall.com>
 <36F38D40-5F90-4E1B-B7A2-121431A3E6FE@mnx.io>
 <20230922172755.GA18909@openwall.com> <20230922214006.GA20989@openwall.com>
In-Reply-To: <20230922214006.GA20989@openwall.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=mnx.io;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL3PR12MB6546:EE_|BL3PR12MB6473:EE_
x-ms-office365-filtering-correlation-id: 92cd1861-8926-44fb-4ab5-08dbbdd684c8
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info:
 ArjBhGwrxFb9Pjdmlw7Xt0l6Ri3CsAor+EkXNoLvyZWte48MkEgJZ1E6z0e2K6Fw0dYmUNGi0jrjrdbpBoBK/g50jFDrL87XL79duxEWYhtXg4R4UHd+OtAViPB1gJUt3df+asJmn+4dZtKanDNGwVTeOfimBBvDOItwTK3mPjsaOrhRsCrPXuzYl7fdWdshO54LYIHBmMMgoI6lPQ66jLGfTXERyZoIZQGQ5zkEroEmteOujISII1GSW8rL5BRxqiBwUqeVnNa/n/jyDToPupeoX/l5huPmo43/RCmmwpHULDQ+jetshZYITYe08dHJ3sMbQaeku5W/ivjaUeeT+eVpGMJShw/vOF4WVa6ItO9lFAST+7T5Mh5AXylzfs+E1L3ho29PEOOFQObLzrN9tOAntL6srYu9wsZJykbEl25kUrPrAKoCp30WWDlZt8RWHR6wbUMnsn1GPxY/Mi1R21p8xSiFLFv9sNiLgep5Ig7hpNcXNE/Sw78ZDvudBE33k0U/Uwx2na130P62m+PYy+ur8OIXkOAQKwMWi2DlCsQndgpcFV8G3FADra84W6aV54WKVKsg819/QF7nRTNaDgk2NOfjHK0VrJBAXgxjl6/KSgWMO+rYzxPArV3bWjXcd4uieD28jiBLASdRAV3ToA==
x-forefront-antispam-report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BL3PR12MB6546.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(346002)(136003)(376002)(366004)(396003)(39830400003)(230922051799003)(451199024)(1800799009)(186009)(26005)(38070700005)(36756003)(83380400001)(6512007)(2616005)(122000001)(71200400001)(53546011)(6506007)(6486002)(38100700002)(478600001)(86362001)(66476007)(66556008)(66446008)(76116006)(6916009)(316002)(64756008)(8676002)(8936002)(5660300002)(33656002)(66946007)(41300700001)(2906002)(4744005)(45980500001);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:
 =?us-ascii?Q?2PnFUtitOyBeE4MKVDo0Pt9igXJAYz70oby9VBafqX6Dp0+ZbEk+zwgv+/Yb?=
 =?us-ascii?Q?VWBs4EdripE4ChrhsyYTAwg826drzBKLKDKiCbkvC/vSYcv0wBL179lRXIs5?=
 =?us-ascii?Q?sEANha24xLnEyjVhVWUus0igwnVm61VFNpANv9uKTB14zm8ejhWKToYpcaSE?=
 =?us-ascii?Q?pTiMgodIux9xyoKqZwyJSISIrM7/9zArG/OTy5gzXm04cUd4tpoViXDqDPeU?=
 =?us-ascii?Q?YSko0++wtRgpMguILdc8FhJNYOCFilByNPwWHXQT+sv05YLB8piEj2RpBTRm?=
 =?us-ascii?Q?UvQOumcbmLJVHHZeS6kCISbpYwuhxdpNlDZIhKLZaf24ukGK9NhVbE2o39zD?=
 =?us-ascii?Q?kU3aQPFcBYmsfEo5qQl6FyDufdAn3NpPNVo+oPgdMPCvKRhiJsWg3sKEHAez?=
 =?us-ascii?Q?VKqLP3Ye66rUVKOOYngxcA7TQDJOh8WwpVCsTwFBUUSteNQ+oP26LQjgFq5U?=
 =?us-ascii?Q?OuM0frH7e4uJ81V+qNdMsgygaWnvfsTgkQtfQJOOTUQpD1F/ToOjG/Aujais?=
 =?us-ascii?Q?m07LP9qBsHon8wdn3l6lZ9Boy3EAeR+n+b4Bds96X361G3koNNSiFP70sZBo?=
 =?us-ascii?Q?s28qbiQG0+SaB/EwbhFI/yhOKHHKhKVKoBsiJ31bWFJKBjcOFCPYNZuwhtz5?=
 =?us-ascii?Q?wBs54LdRso9fXgAU9p4gAnrtG6vPzGXZyohNYTZPQ3YL70YMS7dJpm5Dtu9R?=
 =?us-ascii?Q?+KJBbvVJ3oiDRMJWTr3DjsLSa7Z7W2uEccFCgCAotMY5qdm179wdCNdAESWp?=
 =?us-ascii?Q?oSChWg8ia13MNBKPTcPJ0zcJmvaj2tDKccEOBVQ4ZZzjS7hk9/6ptR5FSr58?=
 =?us-ascii?Q?h8k3o8TQJu/oMpXQt4UmFKMs5ZZZBP1qEmQYmeq1Die+qxnpdxSQFm4pQ2zd?=
 =?us-ascii?Q?4BFazvTjHTgFK2Iig2mgd6FjKOowXucFh0K2iFkFg2AJBCC1NuEC16ReS0AX?=
 =?us-ascii?Q?97o/EVTpzvqT7eFOXJi30vv3ngLvRofIZ6djzm/CHnNMebWjpJarqV3E6ZgR?=
 =?us-ascii?Q?sBawvhD28UaE/7gSQntL8t72Rxn5BQmPCEZ8ABVQXd+A0Td9kAtAfgthToS8?=
 =?us-ascii?Q?jSx6nKCsAH1t8BRZSsw+UqlOO11o3w29jpx6MxG9PsEialOlBD7ALXaHtBB5?=
 =?us-ascii?Q?8WbG9npqLfBqZD1XqQ/XHySX6wAx11I2vS/DN2oDjzps/0Iwqn162Fz+dDKe?=
 =?us-ascii?Q?QsU/n5QESaapakLsKCGe36iP1w4ij3upnaKH7WY7M+35IoPG+BKqelG9yrL6?=
 =?us-ascii?Q?N6JjV7Y///K40P1joo6GMUPd5U0ps6T+Srari3W2PzVelHYEqzJo+MlDO26a?=
 =?us-ascii?Q?gV/ZL9QhtWrlr8uMPdZV7P4B82ZSv7Dp7U/jUZClvCmfoN9QaK7qxcIQzCsL?=
 =?us-ascii?Q?a9IQ5aCQsgHFO1KikEiWzCDiosT2lllKwa3U+s14DyIETjeVeYEETGSdCo5r?=
 =?us-ascii?Q?RX5wpejbIzgQd7LK0OmvCMOmRI+Rz47B3M0St9xaI+ANuP9+sYkLnX4UFEJP?=
 =?us-ascii?Q?I6gZgH92XBEhU3RUsw88Z/2mUXyOaXtX4oHpivu4Bdwkj/ghHr6tVGTGRqn5?=
 =?us-ascii?Q?huWPrvZvbcrK55CCkA8E43yeT0UqYSPhTxaW7EB/?=
Content-Type: text/plain; charset="us-ascii"
Content-ID: <AAF4F16D0E8AA54DA06AC65715C4D5DC@namprd12.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: mnx.io
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL3PR12MB6546.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 92cd1861-8926-44fb-4ab5-08dbbdd684c8
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Sep 2023 14:48:45.1336
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 7cbbbccb-a73b-4293-8866-194afab248db
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: vBsjkHucbjPe5UYav67zNGtc2V6B1GuLc/Pl5C3kElMXK8gthdkEk+8LLfDj/OY3
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL3PR12MB6473
Subject: Re: [oss-security] illumos (or at least danmcd) membership in the
 distros list

On Sep 22, 2023, at 5:40 PM, Solar Designer <solar@openwall.com> wrote:
>=20
> So I think we can accept OmniOS as new distros list member, if that's
> desired and Dan would represent OmniOS on the list.  This subscription
> on its own would not allow sharing of info with other illumos distros.

I've just consulted with one of the OmniOS leaders, and OmniOS is okay with=
 me
being able to join the list on their behalf.

> In special cases, Dan would be able to ask the issue reporters their
> explicit permission to share with other illumos distros.

I will be judicious here.

> If those distros do typically need the info, they may request direct
> list membership.
>=20
> How does this sound to you, Dan?

I accept.

Thank you,
Dan

