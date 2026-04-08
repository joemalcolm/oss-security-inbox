Received: (qmail 6046 invoked by uid 550); 8 Apr 2026 15:47:46 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 31783 invoked from network); 8 Apr 2026 07:34:50 -0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=AvvAYBH3ytk91WkdUe83BK3EpwEkrCp/170qSZ5YzBEy1ypHNkNROIOs7nXPvsJpkkhiOXK62c703r/HPBE59aBNeHH+YlSYXEbB7CXhk6h7yW+cdOPMnI7HGFz7TQsE4uw4oGdu1KxrlrJQEtqifgJpx/7Q6WX5D704riTHgzidzyfQGDGKajiYAHOvUwh6EMJvaLTSl1Jf+AeM87R3UEwPBcQpohyYX+BSrknJI1ahgp5lh6sbXiW4zdbLMRJ6lCeKY0aOANFDkNu71YG9WR/hTydHf+2ACtsKkW+HGnmodPd012s2EflzbgZ6rsRLzZxwDp5/9fuc23B1QjjTtw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DW2uT5BzsvT2gmBfwvOmKbijGR7Nte/fcWqkarix4BM=;
 b=B0FepO6/EL1SX7YxAx6AsnbrjBINf6qeJFZEnjQxwBECZa9fr8v6e72ZK1w13AwlW8Z8GczFAxwXYYsq9dGp2KddV8wZswJ4nw3SBj2LvNsSHwmWf0PX+QLQMV0jzOpI82ZXW4uGVT+NvQVlGTadXZCdFG8PR9yFP0znsqV00HsWUgkrXF72S2F2pV+po1PTrqASOiPC58mRpqbwHPNasr8GI+736WIf1+PeOs0PZu4+PSCjMPDf1ydgMtFJz+YkhZrq4uGrLvgOwSnQn2N/Rg9DcQzc2PXJZ489S6Z7bVh7EKyRCKUWZuRbhPIvOAcf7BxqZ4QJQfVKDd7Ru487aw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=manz.at; dmarc=pass action=none header.from=manz.at; dkim=pass
 header.d=manz.at; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manz.at; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DW2uT5BzsvT2gmBfwvOmKbijGR7Nte/fcWqkarix4BM=;
 b=OkN6xbT6UoP3Wve4/UXucrDc8td6gx8xIp3IGOj0POMZw4KuEiWlOyxQ8S0g8U2o+iqxtXvgiH0DOdYk3woe1yzCCYwXUD3uHBXgJ0MuFYZ7uwfxxPhDoarthW608agkSogv2QHU6tEn4mTGVyTsruKLxcSZ341/wyV0R49yArc=
From: "Schwedas, Sven" <Sven.Schwedas@manz.at>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Thread-Topic: [EXTERN] Re: [oss-security] Multiple CVEs disclosed in CUPS
Thread-Index: AQHcxwEocaF4PoyvgUqu9ENOOrLi2LXUxkwA
Date: Wed, 8 Apr 2026 07:34:38 +0000
Message-ID: <2c4ce76b-968f-4531-bcc3-71431a7711dc@manz.at>
References: <c7faf33c-7843-4569-89fc-279484c526dc@oracle.com>
 <MEAPR01MB365475EE9DC8CA57A14D5B12EE5BA@MEAPR01MB3654.ausprd01.prod.outlook.com>
In-Reply-To:
 <MEAPR01MB365475EE9DC8CA57A14D5B12EE5BA@MEAPR01MB3654.ausprd01.prod.outlook.com>
Accept-Language: en-GB, en-US
Content-Language: en-GB
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=manz.at;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: GV2PR09MB8466:EE_|AS2PR09MB6237:EE_
x-ms-office365-filtering-correlation-id: 25d3649d-f958-4a00-bb35-08de95414a98
x-ms-exchange-atpmessageproperties: SA
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam:
 BCL:0;ARA:13230040|366016|376014|1800799024|38070700021|56012099003|22082099003|18002099003|55112099003;
x-microsoft-antispam-message-info:
 m8IGfo3R4zqznGACsWl0kGLBDEPzU1hauAAFi2KRsPDFfPRtCiCYLVujiXWYdWe0Oz23vrlCGjhqr3s7ZUl2qMKesOGnS+NzMr9nk5BDSkT49xMOYAWmXbQvfnGSGWN5cb/oQX253/c10h6j+BMlD6ixfo6qBeO2ytlNaX4i3+xG5IzplGehptKLzNCMVqdi3hVmPZMu46I3f5jzR8uVgsZoy6QLgO3bjfn8tv2Uo1i7XwCSpiPx4rNljSO+k2D/mR0xZ8j87WYvb/jMAv8cN+dwYIANt7qQu7e73+JaDK4PE5ceamIPItn2MEdFQ0zEH25jg4SIJvoG2mPcYDqZrb/rKPvkwiw3dSfuyC2xu5KEyzmlLeRBt/FDLcCEr5bteXPJ04lq0rmFvbs6Dd1lQa5SZQKSBM6MoRcMwjh0tsZ1iCPIf28ojcU528zv0XQ6li09hns261agAEdazPKWYL+TthDQ4wisdBrmWNGB7/EBDt1PmixdTujc3HyYkoQ4wVl8JXzBepotvy7yzXgHiBiuPAZFpmtt0To7XtzKN3ZyeaH8HC0F4M29OkQG3mxs1/qWi5seRyHLrIVK2drotdaOSLwGy3Q3Pb9CIIcne/fUTCRSQ086lxo0eaJzZSeWR1vGZW6VKrB/q3PGOtU35WSvv3tmOIdzFaSuCKBSk4s4WPpL5M8Z6QrakA+1r0ISkN2ca9tTCG9/NwtxWW3DZqfPiiVy01j8+uNighLfUemkl3jEVK/HGWYNEk8S55VUZ1XyJdtz0t2qUR8iJVtvpqNoPaIDdG3HP1EmIlbKkAg=
x-forefront-antispam-report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:GV2PR09MB8466.eurprd09.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(1800799024)(38070700021)(56012099003)(22082099003)(18002099003)(55112099003);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:
 =?utf-8?B?Umg3QzdGOS8rbWU4S3JzaUNab296UGJrR2x1M3VIa0gwQ1JhemtCTENHak1u?=
 =?utf-8?B?Ti83aUNSOXUwZkhSK3grVmw4ZFc5WVNqaFJVam5uWkxrV3RSZ3VvTUx2eTBx?=
 =?utf-8?B?MDgwbHk5K0wxZGo5eitWZlg0ZWpsaEtMQUtqVmpjdjMyL2t1ZlhXdHlaTzds?=
 =?utf-8?B?cG5GbVRJS2VJQW5nN2tCZE9lOXlvUldsSzVwUVM3VWY3OEdzQTh4NjNYWXRp?=
 =?utf-8?B?VldNcjlRYm5UV2N2VGo5b1pTUGh0VlBLMnFrMFZWZFphaHc1cWhJdVJFREFu?=
 =?utf-8?B?cTJ6RHBrOU4wbDhwZFpSWHpMdVpJM002d2FIVEo1TVpwOHBmVHhuUk84VCsz?=
 =?utf-8?B?ODBtMjRhcnp3VEpjcktMV1h6SWNXSmNWMkU5MC9LZG9MdktMS0liN0ViRmNq?=
 =?utf-8?B?ZWRQc0ppR3dNN2MwdzZpTkNFZUZvMTlZamllZm1SNUxxTHNrTG1STG8wdVZ3?=
 =?utf-8?B?Q3FLa0sxdDJ4UUVudzI0eDdjbWtLYmVtdERSbnU1d1lYcjlpOFc2WHBtcjlY?=
 =?utf-8?B?V0ZablpkUjBrZE5UL1prZTk3WjlrK016RlBER2VId0FEb09IMm4zcTFpVGkw?=
 =?utf-8?B?M0pDUkNFbjdybW5VT0dtMXIrQXl4SDdyejVScStZemFxMVptWW94WG1MUDhn?=
 =?utf-8?B?QVRka0h1a3JCeUNYbTBKcGFtd09FTGFOblpITlhLWEhvVUlkelpuT1NZQU1Z?=
 =?utf-8?B?SXRmQmJiMkZlNkM5N3J2eWczVkpoUHJWL3ZwbEJHM1J4MkRXS2xKQ0xueTBH?=
 =?utf-8?B?aEVremk2bm9lUEk4V0xEc2Zxa0FOUVgwZ3lFYmc3NDNZVER1Sm9tZ0d4QTZJ?=
 =?utf-8?B?RnZ6L1ZucmRYaTZxZk5TZWxwbmlWWGEwVmlXM2NGc3NBeVprWHdlc0dseHdq?=
 =?utf-8?B?Q3o2K3B0c21hd1RVVlM5VVBEUm5UWjRZbFFZZHV5dXo4TW1ScXk1dm9ERTd1?=
 =?utf-8?B?b1k2M3RUdko2R0xFV05WVjJ6dlJUdyttTVlXblI2cW1vdmdyR1V6aWFLbmlu?=
 =?utf-8?B?VkR2TU9kVmRQZis5SGp1MVhxMitHdG5JWkQ4QllQbjZ5bHUzTHc5RXFTNUlj?=
 =?utf-8?B?Zi9oNXNMUE5TeTJvYUFCenh0c0t1eUhqRjZWV2NnWEp5c3FtNkQvN0ZkVkdr?=
 =?utf-8?B?enNSSEk1dElGQlY3V29rL0hlY1hHTlBlb0o0YThQaW96WXQ5YUtLK0FlSlc2?=
 =?utf-8?B?V3dTRzBkRkhxM0trY1REczk3TVQxc3pnWCtYbERvMlc2VjJpSzB5bHJMd25n?=
 =?utf-8?B?ZG1jS2lOTnp3ZFk1b1ZKS1ZQMnZ5Y1JUdEVjRlRwR3JVWXdJNmVSZ0VnOTBJ?=
 =?utf-8?B?YkU4bWJvWkRrTjRIQ2I3VXZzbmhZazV4S1Fla2hCT3d6VlhQUVZwcU5ZMjYz?=
 =?utf-8?B?ZjBvMzY1YTFGemtyMUZOTDcxN3FKSGUzaEFxVzh2ay9DQnVkUEVsY1YvQXNm?=
 =?utf-8?B?K0VCZzUybFEzNmtxOVlUTnc0cU95OHdUaXlzZkN3ZkI1QlhiTHdmc3dvSGVK?=
 =?utf-8?B?RHQwcU1HREE0ZTAwY1JPN3lSNG9HNVphZStlUStBdTllanFFMXFac3dvbzR5?=
 =?utf-8?B?dHpxWFRkaXNnRGtYTDVuL0RIUzIrSTRyTkdOQXFYWjZDa20vU053QkM4SHl4?=
 =?utf-8?B?RHdQTE1NUEZVM3M5bGRLQnQ5UmxDYUVmRkxiRjJhQmVwNXlmQVI0ZVFSbnVo?=
 =?utf-8?B?clgraHZxeXRrVWk5L2RtUTdDYkZzQ1lUcU5zWmNtNC9NODVIUUdDZ255VzBa?=
 =?utf-8?B?VHpiS0tTY09FdElJR3BmUkp1YUxmL0l5K1dMTjA2QVUwR3YyM0g4d2NNMVdw?=
 =?utf-8?B?cGkyTnh4MmlXVTE3ZlBvSmpnbWFvcWtjQjhnYmJYNU0xUFdvSFNyakwwM0p2?=
 =?utf-8?B?SDBrbSs3QWNzYzNQMVJLdVBaWFA5NzAwQVBmYmtlZ0Y5TDJ2UC9TQUE3VHU2?=
 =?utf-8?B?Zk1ubFYxTllVcUtLMHdOb3BxSS9QWjRZd0xBYnZVaENJZHRoNnBEVEhhcHZo?=
 =?utf-8?B?Q3NiUG9QVzg3RTM3eThrUnhHOVVPVVhVQVlzS0ZObE9KQnYwd2h4aUhXaVE3?=
 =?utf-8?B?MmJ1d2gxWTBmd1hZYjlwZmFzbHZLbkd4VEhRNTVDait3eVJXRXd5WGVxeEpW?=
 =?utf-8?B?SHdXRWs5TWRPZDVwQW1LcHZEdzdEKytoWnNib2pjSGNkdnJwSkNXamNEcFcr?=
 =?utf-8?B?blZaNjlQKytCRFd4eWlqalV5OXNBTU1qRFJOb0JSaGpsbGs5TzcrR2hIdG1t?=
 =?utf-8?B?Y0hxY1FoSmdLem1heUl6dlVJcmptZ3FVT1NxSWZiNkNFNzlUR0g0NkxrajlN?=
 =?utf-8?Q?XiA50YuKemis2OlTJk?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <0A1E78C0E9FC9F4098B38EB22DA2738F@eurprd09.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: manz.at
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: GV2PR09MB8466.eurprd09.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 25d3649d-f958-4a00-bb35-08de95414a98
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Apr 2026 07:34:38.9764
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 524f1b3e-1524-48c7-8ed8-dc6129f5d35b
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: rz5EISYbfrsgZ8akd8OodqkJPa0A6EyfZ/0t+PjmVR/b7ly9JwfNbyNxJ2wTS21QlI52kdYK/fkyKQ81I4hi9g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS2PR09MB6237
Subject: [oss-security] Re: [EXTERN] Re: [oss-security] Multiple CVEs disclosed in CUPS

T24gIDIwMjYtMDQtMDggMDM6NDAsIFBldGVyIEd1dG1hbm4gd3JvdGU6DQo+ICBVbmRlciBVYnVu
dHUgaXQncw0KPiBpbnN0YWxsZWQgYnkgZGVmYXVsdCBhbmQgZGVlcGx5IGVtYmVkZGVkIGludG8g
dGhpbmdzIChzb21lIHBhY2thZ2VzIGNhbid0IGJlDQo+IHJlbW92ZWQgYXQgYWxsLCB0cnkgYSAn
c3VkbyBhcHQgcHVyZ2UgbGliY3VwcyonIGJ1dCB3aGF0ZXZlciB5b3UgZG8gZG9uJ3QgaGl0DQo+
ICd5JykNCg0KbGliY3VwcyBpdHNlbGYgaXMgb25seSB0aGUgY2xpZW50IHNpZGUgdGhhdCBkb2Vz
IG5vdCBzZWVtIHZ1bG5lcmFibGUgdG8gDQphbnkgb2YgdGhlIGlzc3VlcywgY3Vwc2QgY2FuIGJl
IG1hbmFnZWQgbGlrZSBhbnkgb3RoZXIgZGFlbW9uLCBhbmQgd29yc3QgDQpjYXNlIGNhbiBiZSBm
aXJld2FsbGVkIG9mZiBpZiB0aGF0IGRvZXMgbm90IHdvcmsgZm9yIHdoYXRldmVyIHJlYXNvbi4N
Cg==
