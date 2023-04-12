Received: (qmail 15644 invoked by uid 550); 12 Apr 2023 21:15:41 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24123 invoked from network); 12 Apr 2023 20:40:59 -0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IxwfkaxY1xJwB7ugjq+nT0nnAJ5sW6FKbMO0d9/DUIkMsNnApKhHWk2jV6UfhH4ZuBtyIFzyG4PiA2QCgj9jlQqvrq9JLJvsF1YdbKlnNGPXB69Zhgmvar7HnAq4nEUm+qhVfwPiAdIm4Agmx+B27GIkf/EnXWPp0fOj+YHsO8lc8ZVShAbp1C7GXUJkJIXzzGEJOK8XYpz5OmyxXHBUuY0g9OjF/FmGgXQTwEWsI8u759NH6rV3uVyUNjkWOY82hnNMuRBV9Y4Et93pSJ+syqbpb6W/vC9FuaNS9++SQjrNbtn8LDwhUW8sHyZpPnEMfHWTBrB+UYbUlZXD+Qd9Jg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QsBz4KWjlg4cBCC/flwpkPq9YMMKxyn5Nk+5VN4Jmrw=;
 b=IZGKjRcrXwcEjNxXqibm7QvkTjRNeLIWmuD8CFr5L+rluXVZAgqMNMFxltrjoB8mv719fQaMuahJCysUKJW4Iw0PBXt92px3IsyZq0a36qoNJ3zAV574vk5sZrg5mJhre1UDN/9cneqxxw205CSeiqRzPhcn0Zq/r1ePkaNu+ORIbXk2G30G7ak5ptvfNHGttw7MSl0BeVjmQMRvb/Qd4PSHUyXL27YPl4uyzckpQh4ps7RyyoAzF/YamwwixM3H+Ffi6PgXw5PepdE2av6ShDao7H+s8M1tG3Kmq+OVUOcDQYNDdPEe6WfsnBsflVqampzSYjHTUnC6+yHeUjac2w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microsoft.com; dmarc=pass action=none
 header.from=microsoft.com; dkim=pass header.d=microsoft.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QsBz4KWjlg4cBCC/flwpkPq9YMMKxyn5Nk+5VN4Jmrw=;
 b=dVi37lilUaWsuQuNGrzgNlmy273jNb4RK0k5mqJtj2s2R0N+WPLuoB7dSF9RJiWzrA7iZT7UPqlZg313LoIFb+buHDs7dSwilMszfjJFs28iT1ThA7QlZkh0TC8MO3o60yJZa92ljQfVJ+X5RnIGmCCTAZ8p5l/pp/Qqcvw6CvI=
From: "Jonathan Bar Or (JBO)" <jobaror@microsoft.com>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Thread-Topic: ncurses fixes upstream
Thread-Index: AdltfwDD46a6LDCbRpu0p4EAqVdOnA==
Date: Wed, 12 Apr 2023 20:40:37 +0000
Message-ID:
 <SN6PR00MB044717AE269F0AABB8456C86A89BA@SN6PR00MB0447.namprd00.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
msip_labels:
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_ActionId=bbb50ce1-7df8-4d86-b9f0-8d9911191e53;MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_ContentBits=0;MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Enabled=true;MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Method=Standard;MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Name=Internal;MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_SetDate=2023-04-12T20:39:56Z;MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_SiteId=72f988bf-86f1-41af-91ab-2d7cd011db47;
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=microsoft.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN6PR00MB0447:EE_|CH2PR00MB0827:EE_
x-ms-office365-filtering-correlation-id: 22255295-b6ce-413b-19ee-08db3b962c69
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info:
 k7cd6PsphBNFUuf8O/vgbH2y/om9UOopfWsaOmI33AiqFKj+5hJFyJgSwt0NfbP10SowMBL0cjePZIextqBWCgHs1XXDHvYyjmnt9RUJV4fS4cU72BQgUPR0J9iq08YkXtY3g4XNFLjw440uD+BPWq520rg+N/LKN4j7t6UfSznOjp3F5/oUIFnKndcdLhFwn2/hjqBEIRhfD5e1TweGASWRQUQyvq2ONTxqpD7WgrLCGgngo8JIVahKJKuwxgcTz+BPGAy/J2aOwu8wHEcV3+hGUkNXOcyeAW4pTtJdB7qqBbRXHm/TsggJ1EX1xpNsy1RieAwtEaXV+sJjiH5O6H6FRx6/Sok4Egdh6YNE4EARBq+tnczsuS8HWwl601lOzt2swsIrkhhtE1HuvLoEKg24zYFxsHfXt41g4vMCtusM0+AuGCup/VTvjgmD7i746Rf3IRa5gEcZItSJTvMrZQ8h7aB5Ztw9XFRTm70N7TumBEIeVgH3lc7RiKNEqbBwXPIco8ll+f+Yxf2nuHb6hlx0AQ7z67v3SPfhDWKJlJ8udbnncodc3fpO+zQoS36QJW/IhIPk7HcfT/MXu7oJEyGb/wNU1zqs+TacV0RUGC9SJjquIprKjey0ATKpvxCGpTk2Uc0Lu+g8sRzt2kSUmA/r5d9x8EeWgn/187yx7yg=
x-forefront-antispam-report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SN6PR00MB0447.namprd00.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(4636009)(366004)(39860400002)(346002)(396003)(376002)(136003)(451199021)(786003)(66556008)(316002)(66446008)(64756008)(66476007)(66946007)(6916009)(76116006)(38070700005)(8936002)(2906002)(4744005)(3480700007)(83380400001)(86362001)(8676002)(5660300002)(7116003)(52536014)(41300700001)(8990500004)(55016003)(71200400001)(6506007)(9686003)(7696005)(38100700002)(10290500003)(122000001)(478600001)(33656002)(82950400001)(186003)(82960400001)(166002)(133083001);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:
 =?us-ascii?Q?5F06GtlQ080UiYsEUrNLwh2sGJe7Kr9JdzurPIqIvlTRL2baZIEkLWEodTHD?=
 =?us-ascii?Q?eZ/x20Rs6tB7EI2/D84LSUtiEMZmfFvHJzBjOkdtUMHoJs50rPSSvRpyWasZ?=
 =?us-ascii?Q?0NEjTr544oegyKaKCf8bakINOgucZ8TUEc/ch1di0LWBCEgmBW5nTjw3iR5s?=
 =?us-ascii?Q?qLMXVxuqq7B782dAgr4Et5pbaf/EX1ErGSksCbVznwHRofxFqoB6UPFTjtez?=
 =?us-ascii?Q?peKyudp3+pceZ5H1mk8WK7xwNDIwQE2rMxETukgym64q+woKzh2hxYVgXKdi?=
 =?us-ascii?Q?8xt3MsvItO+Xnfln6fyKaeQL2XdLBQI2vf04aLAsZBWW3+DmO57IyQWM+kLt?=
 =?us-ascii?Q?KOUdC692ncC1iAiiHPnR8dIQoMVtAkfDPgm39nk646QVFNJ9ygfq50CejfNU?=
 =?us-ascii?Q?rtkmj4eLK+5IL3xqL5v7VC7C6RFBCFdYfGeVL9rMJUlhpeULbwKjE1VvnNEm?=
 =?us-ascii?Q?x1zl+Dgb2m7SmqyIlXu3UOXyKHrOU1msb3KE4519QMtn8nMuvfuU+FzA919Y?=
 =?us-ascii?Q?RiNujbPzHsiq9nJzqr5++PVws5FqalVMyRDe27aW0Had+XV6gYveMkJyNrmu?=
 =?us-ascii?Q?94x8FqVGYr0/Bj6MC7HYC9E/deRDxJLT0rWNIrrDuaR5roO1GdMxTZD7wol5?=
 =?us-ascii?Q?ztVYZPon6+socnzEjOloMIDagtJZTVAUaCg4EhnPlsr0SUMn8y0TAfRos2Jp?=
 =?us-ascii?Q?Oj5dazNsSdmFSKV0BLsrmuXtGXIIJLc4FagJmNjvU4nBi0WatRMyGNLoMDri?=
 =?us-ascii?Q?QS0Bw1JgiI2DESfabTEFmbVB+nnNvWpHhEFUJ1VVpDonAMNQJTiSP9J2tAOk?=
 =?us-ascii?Q?Ilcy6x1fFo803ySHoGukjsEEGV7BKrOrfLuqQvdkfv35nsSj5UJooijD7tMO?=
 =?us-ascii?Q?KYVKX02QE2WVznK3U3Zm0w0zc8cllwAi60U/JnctaMNGgDBVQkx35400tNy8?=
 =?us-ascii?Q?aGLtSJ7WT4MEm/GjDnN/gWoHp3TGIN0SuorVL8eAet/hB2xxkm6IItA0jzIx?=
 =?us-ascii?Q?3IIjetNRgas/eySS6H4cEF/mTR8glJEzIDb4/dfooxQm+sLG0WlgoIBjr9lY?=
 =?us-ascii?Q?jylv3CMghIwLCPQHS5IyAEaYdFTy+TF38+ZomXfkFOHR31FM46rJd/hhCaAO?=
 =?us-ascii?Q?7QvMnIZmsc/ED5lgFUA5NRFGif8w1djrGW6yBt1H/m5jiBGlpZuU8EOCJI8X?=
 =?us-ascii?Q?jLGKWXpQIQLXZTWFrlG2MOS85aAuRtrQYU9Al7PO77R62qDA5iB1+4mFXev4?=
 =?us-ascii?Q?IQquRGveAmiV2iVU/GGJrNTN0To3wzXnxifA5etT71mq9C5Fvx1oBwDcQJW2?=
 =?us-ascii?Q?vrpDHdfM1319S1kNnbwfqTiq0QmQX4P9rgnrt/tE6fztVoOFBE+x22Wi6J+t?=
 =?us-ascii?Q?0nVSWAJZZHwgYVa8T6zVrPTFJUBYhmh/m7V+YyVX8CNzSyS3QjlMTUktUWty?=
 =?us-ascii?Q?z41jiZPq08U4lLRNjDSEFEsDLgsLqC5pr4KHYeP8LU25Q4UmUmchuSAZv0a7?=
 =?us-ascii?Q?Nfkz9BDx61bOuZs4Gtho7n3iC5i77IFq52mQdaq8PckU8AinUghcOand7U5p?=
 =?us-ascii?Q?Cgd3ep1sNx0MYbdVqUmaZAPlDpPdlY7XR/tGZKTUCJuCCXI4LENQElwUY/1a?=
 =?us-ascii?Q?ScgAWE/WKgylHdlHI3FEZJBsrAc6HVlbf/2ACOku5Jy8?=
Content-Type: multipart/alternative;
	boundary="_000_SN6PR00MB044717AE269F0AABB8456C86A89BASN6PR00MB0447namp_"
MIME-Version: 1.0
X-OriginatorOrg: microsoft.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR00MB0447.namprd00.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 22255295-b6ce-413b-19ee-08db3b962c69
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Apr 2023 20:40:37.9025
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 72f988bf-86f1-41af-91ab-2d7cd011db47
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ugifaH7MZ3b6dKGQiY4O+W8ahU/VsVJb9nshHdGooUUXfF1zrUQSSTp0ti1n9PS05S7s+Tx2jLRMAda3V0KjXQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR00MB0827
Subject: [oss-security] ncurses fixes upstream

--_000_SN6PR00MB044717AE269F0AABB8456C86A89BASN6PR00MB0447namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello oss-security,

Our team has worked with the maintainer of the ncurses library (used by sev=
eral software packages in Linux) to fix several memory corruption vulnerabi=
lities.
They are now fixed at commit 20230408 - see details here (https://invisible=
-island.net/ncurses/NEWS.html#index-t20230408)
A CVE was assigned (CVE-2023-29491) - it's still under a "reserved" status.

How can we ensure those fixes get deployed upstream, in major Linux distrib=
utions?
We've reached out to Arch, RedHat, Canonical and other popular distros inde=
pendently.

Thanks!
                             JBO


--_000_SN6PR00MB044717AE269F0AABB8456C86A89BASN6PR00MB0447namp_--
