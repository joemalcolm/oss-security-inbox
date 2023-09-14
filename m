Received: (qmail 28561 invoked by uid 550); 14 Sep 2023 14:10:56 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24262 invoked from network); 14 Sep 2023 04:10:07 -0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZGD49b/Odv8Veu869ecrVZuZg/DLFzKAXcez79KtIdMn39SAIRldIxA327FF3qQ5S8+SZXgDi1jC1/gv4b18rQmp6Vtlf2qjFD6CGizRLrf9xP26omSctbBoEZZHbZHNqDqjzrGV1UHwzfDdb/nY82Pqgxy74rXCeGr0RyqnymFn/bV6uBXcBo+IywYFg8DDNY/mKvJeuwVEYHYPNiYWfoNjzy2n3kOPMI7v1Gk7GFiIYGoSJb5tleIN9hJfAg+9Z8lB2DYMvijQKExGkgkkQJWw2NduSMdNjESJ1z1A+dUdPibFjtfYHT8nV1t2ZGuOJ/3FB9pbCL5hIdEOKfjhVQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=OxjiWINgWn6JYvIIjjWIpeyVfrQ5eXTvwxY8KzfqGzc=;
 b=ClI8d9AIFNsi6bH/RgyuEvhwAwOj5WZtkvjNAYHNcYvClIkQzhvqLZ2+hTjW2KLNx2Sdd25RzjKgnf0RtkNaQHMmvlCk3DhYpHomA5OHX6DQ4158dclCTrTBy/0P2muHsfln5JeCd9UTMUI8RB/M4QD7VSXz5LRF3v0rouK4H/gNhH8zgm1aqvwFZYv5UEgKVr5CSaBiYc4sJwazqVAMoLzQmrbuYQmd1446maoqPWz/hzc5A/D0N/XVmHPQq9YLDr52w6JK5gf2lh+yXRvMu0xZfEcUVnpISPj260CPBPhMHpJda0ju79DTkWHCPd8dgoMjntYPd4usMnwFrYa1sw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=mnx.io; dmarc=pass action=none header.from=mnx.io; dkim=pass
 header.d=mnx.io; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mnx.io; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OxjiWINgWn6JYvIIjjWIpeyVfrQ5eXTvwxY8KzfqGzc=;
 b=sOD0tU5Piwd7XeDOfQEbe87x1KSkIHig81pFAPLQweCPCM1+Ckiim4xab/sxqoXyStElnu8eDpoqP659prK5ACqHw+sj7RABTeFEqYGScZlkFMl16gvWdn+S1VNj8MBwISQOwZvhn2Hq5JGoo9arv5ZK3l0um4fS1iJ8HyqSSJNgGnmgz18RVNwsdv0OuZnVdG/khnjcGN9CxX+hfJliOcOPIqNUdNpvh8o7etbuZS8JMvNlyHhfWlep2Cnewknx8MFV4mFBWAWFebH6pL05TXcHXIOAiACY2XH+DGohNvmCmZRRPcQy7N5bnkLsMcr46TnFGtsn7bmfgKMCBqJ+0g==
From: Dan McDonald <danmcd@mnx.io>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Thread-Topic: [oss-security] illumos (or at least danmcd) membership in the
 distros list
Thread-Index: AQHZ5n/c1L5i140dZky1+LnodWZcQLAZWWiAgABcLIA=
Date: Thu, 14 Sep 2023 04:09:53 +0000
Message-ID: <A07CF8CE-2696-4102-9AF5-644C86D0DCD6@mnx.io>
References: <6EBBC128-36D2-4262-88F4-6889E9E6DE1E@mnx.io>
 <YT4PR01MB98293522FFEC4031EC4BD7D1E8F0A@YT4PR01MB9829.CANPRD01.PROD.OUTLOOK.COM>
In-Reply-To:
 <YT4PR01MB98293522FFEC4031EC4BD7D1E8F0A@YT4PR01MB9829.CANPRD01.PROD.OUTLOOK.COM>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=mnx.io;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL3PR12MB6546:EE_|DS7PR12MB6310:EE_
x-ms-office365-filtering-correlation-id: a8416376-754e-4e23-7654-08dbb4d872dd
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info:
 SUUiRgyAiND0jpDwSl/qjgRI+snmUyNENb5Qk/LOFb5qa3abqHcTGthv7b4Bl73lmfyRP5pKFAZHlMd2uEpiESzGlPJYDQcbztJjL1Qi1pxgVJXcCEgOctVqg4TWPwsmeuK+nfkl6HTKd0UpVt0y633lUk7joiIPYkg6O18KiKLaQvOGFUQvdt7mTWfoE+Owi7sd50z14EV8jRWK+KGeefhCiU9w4zoMQA0B4yCbTQiG/LA7Cx4eIfw4p0xamlKSYLr3kJzxWyLn7Qa5DPdG/AV/p2FetOFjlMC9hTT0tdaG5P6abfT2pqQguNHQjpDeBXWe5E0YcSldzhIUKMnYfdm181NIjxcmTrJxMd3W5lhbK+VRsqRA4HiVIzEUX2OPlPO79kIbKvOAErJ7UpNhUYo8lj+SGY73FjDfIHudXg9jcN86YXhFL7idFV8Z8z+J8Px/vdWVm2uSvY5PXxPSObA+Xs3AIaG3a+u4sgibRnrCtzuXEEBm9Y7pjHYSZ8hfy7PVC3yw7XFYlmg1u5QdT8LfwT0LlUzmm7BK4cP5C7v1tViGh3D/yvcTnBM0rp/2ec7iHd2hnyY2jBRdrYpNtEN7pUaCaVViXHoRZwVrvcCwo9eSyG26b5wOl487ZIxk/z08A9oA5GQp4ToVxv1PcQ==
x-forefront-antispam-report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BL3PR12MB6546.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(136003)(366004)(376002)(346002)(396003)(39830400003)(451199024)(186009)(1800799009)(26005)(2616005)(8936002)(8676002)(5660300002)(83380400001)(15650500001)(6512007)(6916009)(53546011)(41300700001)(6506007)(6486002)(66946007)(66446008)(66556008)(76116006)(38100700002)(71200400001)(38070700005)(64756008)(66476007)(316002)(122000001)(36756003)(86362001)(33656002)(2906002)(4744005)(478600001)(45980500001);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:
 =?utf-8?B?R3FwRWU5WTZvU1RsWC9VZHRJMFlicDJsT2VmUXdZb0x0M2FUcWVuaGVnMXAx?=
 =?utf-8?B?cDhiWTB3eGVLWFovaktweFB6U3lqdC9JMlBVVmJvWnZMbXRxWWRwWG11eDUy?=
 =?utf-8?B?eGVtTk5IcVhqcC9ISTBaS2FmQTNLeGtGNEZjZDhOckJtdEVYd0ZCc0NHdzRv?=
 =?utf-8?B?bTNqRnBEL0pZb2xuZGVpUFk2Q1RBUmVWSXRGbE5pSis5VWdORUt0UmhWa3JW?=
 =?utf-8?B?L2NZdXlQNUZhTlNTMCtNRmZQWXgwRWZKQ2ZJUm1CUDgwT3N2NllZeWhXdFRT?=
 =?utf-8?B?UzBwVTVXQnl6WUdScEYwREZiaVgycEozRUNmaXJzcVZNSXA2UHZRZ0daYXNQ?=
 =?utf-8?B?cHpsTUR6UTIzSjJYakNMRWRyOTJISitJOGIrQUFBVW9zZlV2cnJnaTBXNlBE?=
 =?utf-8?B?OTRiS0JKZUxEdXpIQmZvYzJjc0NmVnc2bXcxOGR6c3lodnR0RnliLzFDSHhz?=
 =?utf-8?B?RzhpQW5UY2V3b3JSdnVLUzYvQ1ZzL2dOSFlGVEhkeVVoWmhRL3I2MnJaYjNI?=
 =?utf-8?B?aHJXQmtxR0JCWEhIbmdHdUlhTE9PUWlMb1A1Vno1YmFIQWtsME83d3FvTHVt?=
 =?utf-8?B?SlZmNjByYld2VThQbUhRWVFjWlFxb3FqMzlYR0MrZHkyTnNUd3p3YmlRa3Mz?=
 =?utf-8?B?YzlZSElIZnFRU2dLUnVqT3UrTGtvVjFoTTkrT1FRT01WaFMvbFZSU2dTWTda?=
 =?utf-8?B?WEFiWklKNnU1OWl1QnFZTlFhdmN3dC9KbVZoR2VPTVJrbldyb0RWMEVYYktw?=
 =?utf-8?B?NUN2bGZFbzZvVHFyS0Z1SUN0RTl6c2RpN3VvcHh4c0RYK2ZMbEdDaWVUNjkw?=
 =?utf-8?B?ZE1yeGF5RTBiampmbFZDTmhJdWZUQTl4VkRTWjNMMjZ1eXZjZ2ZQRTVnUUhz?=
 =?utf-8?B?SXJuQnltQSs2dzlMTmsyamx3ZWZWbG1nd0VJbDFSWXRFOHBFVjQ5WkxXUHkx?=
 =?utf-8?B?ckM4eFoyTVNmc29YYVdIengweGtUZk9kb0RyVEdqaFNmOWhpZm1PWTYvdGQ1?=
 =?utf-8?B?STNBNGtCb1JUekFIOHNucE1OZTE0dFo5c1JsbmcrSzArbUxqaGx5akRXK2s3?=
 =?utf-8?B?QUpWc0FqTmdYYmFiT1JvcEUrS0JETWY3MWh2ZDNydFFHem1hZTZXYlZDUEVU?=
 =?utf-8?B?ZjhHNVV3cmV6QXFFVlljNEZPMmFYSituV1Y4MnhrdExUSWFmaFVJOE9uWTg4?=
 =?utf-8?B?L1EwYUZQek5zUlNDR2cyK0FrbUNUMmpRUUdPMWFqOTFOa2FGSVVnRWUyMlNa?=
 =?utf-8?B?YlhsRmpmdEZrNUVyV1h3dWJEbms2YXN0S1VIWTQxeTdsYXNWK2V4TmNmQ0pW?=
 =?utf-8?B?N2UrQlI5cjZZKzVBZmQ4Z2FjTW1tanp6SXZ3QkxvS0NDb2x1RGVidkxJUTY2?=
 =?utf-8?B?N0Z5NmI1KzlOWmZlQThiSlg1QTFHN3RQbHBqeGZPSkkxYUhiSGNHRUhGWm4z?=
 =?utf-8?B?ZG5KL25LUWRSK0J4NDhQWW4rT0tmWURkb0tzZElNc280SEgwM3B5WVdqRGpW?=
 =?utf-8?B?dHN5alhtWUkxVGJJY3JDR1FGZERqdENvV2ZXeC9saTJNYllybTVOQ1hKd0FG?=
 =?utf-8?B?dnBGTmtLWGR5MEgrZWNRaWZRa0FnTmVhK1hkc0tHUTFJVitpN3hZcFJrNHFO?=
 =?utf-8?B?YWZCR3FrTFVPVmxjd0FHYXBIMnpPMDlURWFKOW92N2FDYlRHMWtWMEdUb05l?=
 =?utf-8?B?eDQzTEU4cEF1VXZkU0xzb1lGbFNpVG56UUdCYzFsUnZoK3N4Q1BHSkF2WkRy?=
 =?utf-8?B?YmFLWlNpalNxSE9iaER0NHY0eWdhWTEvbU9RUXk2ZGhvU1RWOXRUaVdhdndD?=
 =?utf-8?B?Rnh3WFB5Q0YzUjhKSFAreXNjTWxlWHR0cTQvbmRoMUdxNHN3N2JZTnhpU0dF?=
 =?utf-8?B?LzUyT2NiUDdjYlZRMzM2QmFGeGRUM0NZaTdTM2J1bktVM1VPeTZFRDJoMGFt?=
 =?utf-8?B?Wm0xWnlPUnp1cWZ3OGlPeW8xaDNlTzFOSUVqVUF5bXpYR3NROXo0SWZLQzBE?=
 =?utf-8?B?Vk5JS0E4WVN5cjFkdVVSNzBiaFFvbGVjaHRXc0RLajZ6WWF4YkE2QkxSTG4x?=
 =?utf-8?B?dEJ6bS9BRlpIeG1TdDdSMlNPRDRudlNZdy9UWlRjb3NQOXJHRGE4Y0VwRFdL?=
 =?utf-8?Q?k0Q5AG5WpiKRGme0pzp/Mg4uR?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <B118F2757D221D4681661BA38C589090@namprd12.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: mnx.io
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL3PR12MB6546.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a8416376-754e-4e23-7654-08dbb4d872dd
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Sep 2023 04:09:53.5889
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 7cbbbccb-a73b-4293-8866-194afab248db
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: KpTWfdHzUGgHdiY85ieCimSJbu3jYPXEKaNSeuFJWYsYtAE3EAWU/xCC/AOVwqwb
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR12MB6310
Subject: Re: [oss-security] illumos (or at least danmcd) membership in the
 distros list

T24gU2VwIDEzLCAyMDIzLCBhdCA2OjM5IFBNLCBLYXRoZXJpbmUgTWNtaWxs
YW4gPGttY21pMDQ2QHVvdHRhd2EuY2E+IHdyb3RlOg0KPiANCj4gSGkgRGFu
LA0KDQpIZWxsby4NCg0KPiBJIHNhdyB5b3VyIGVtYWlsIGFib3V0IGpvaW5p
bmcgb3NzLXNlY3VyaXR5LCBhbmQgSSB0aGluayBpdOKAmXMgYSB3b25kZXJm
dWwgaWRlYSBmb3IgaWxsdW1vcy4gSSBhbSBmdWxseSBpbiBzdXBwb3J0IG9m
IHRoaXMsIGFuZCBJ4oCZbSB3b25kZXJpbmc6IGlzIHRoZXJlIGEgRm91bmRh
dGlvbiBvZiBhbnkga2luZCBiZWhpbmQgaWxsdW1vcz8gQXJlIHRoZXJlIGFu
eSBjb25mZXJlbmNlcyBkZWRpY2F0ZWQgdG8gaWxsdW1vcyBvciBTbWFydE9T
Pw0KDQppbGx1bW9zIGlzIHZlcnkgVkVSWSBsb29zZWx5IGdvdmVybmVkIGJ5
IGl0cyBjb3JlIHRlYW0uICBXZSBkb24ndCBoYXZlIGEgZm91bmRhdGlvbiwg
anVzdCBhIGNvb3BlcmF0aW9uIG9mIHNldmVyYWwgc3Rha2Vob2xkZXJzICht
b3N0IG9mIHdob20gaGF2ZSB0aGVpciBvd24gaWxsdW1vcyBkaXN0cm9zKS4N
Cg0KV2UgZG9uJ3QgaGF2ZSBkZWRpY2F0ZWQgY29uZmVyZW5jZXMgZWl0aGVy
ICh0aG91Z2ggYXBwYXJlbnRseSBldmVyeS1mb3VyLXllYXJzIGR0cmFjZS5j
b25mLCBhbiBPcGVuU29sYXJpcy10dXJuZWQtaWxsdW1vcy1hbmQtbW9yZSB1
bmNvbmZlcmVuY2UsIGlzIGdvaW5nIHRvIGhhcHBlbiBpbiAyMDI0IGFnYWlu
IGFmdGVyIHBhbmRlbWljLWNhbmNlbGxlZCAyMDIwIG9uZSkuDQoNClNvcnJ5
IEkgZG9uJ3QgaGF2ZSBiZXR0ZXIgYW5zd2VycyB0aGVyZSwNCkRhbg0KDQo=
