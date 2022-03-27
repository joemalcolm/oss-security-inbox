X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1485" "Sunday" "27" "March" "2022" "02:29:27" "+0000" "Adler, Mark" "madler@alumni.caltech.edu" nil "25" "Re: [oss-security] zlib memory corruption on deflate (i.e. compress)" "^CC:" nil nil "3" nil nil (number mark "        madler@alumn Mar 27   25/1485  " thread-indent "\"Re: [oss-security] zlib memory corruption on deflate (i.e. compress)\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] zlib memory corruption on deflate (i.e. compress)" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 1029 invoked by uid 550); 27 Mar 2022 09:29:28 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 18274 invoked from network); 27 Mar 2022 02:29:42 -0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WlnbjaxHFElcS35BVgiTLpX0S8kD0jXwsxZY4ibhk/tvuynuKbPNwL/WWZKDc+DtKtpSs3uzMAbZsk1rMHobDbwAVae1cJB/V9Yk4Ww+tZ4jckT1BFjAogc8GDQ0SJj8x+PA/SX+8Vhx6QwmvO/iR1PZRwb+VElnFTNiHazujae3N4nbAUmpRg2a+WQ0cpEfPkYcbyOH8Dgm3jVaHWrc9KaKLCMmdQFHGTaHd9odsHC4K1CLe41QQ5MaCZN9hudDEzeawuN3CLwLWXItymgxojgkvxeFPv91KBh/aRzdkF+d80yj6Zm0viIX0k2heRLKbBAzVjFpDIneusCX+12hLQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gZHBvNmqrvyDMjE4MM/kolA0BysGdABWK33wY5fGOuU=;
 b=LLMpMFCGoEs8umUbgFxiu7JrxSthRSoceDevQ+BLGZfo4tY4Mug5xOVk8V5x58oc34Iu31xI+QSaFkjGSlzs+/ffvJBt2qEVU6Zj5MP/dlQAoZaf7OlQ5Fx5vYHuPVx6MqF1/y6UujzCZzX1XDYbwJ8ZWB3TXCjHHmxB/SGzUJzXdwPB1uC5WAsFk/IJamTt87zl0ZebVMs5iy+0HSJxhdxFLKKmgQ6KEPvnRYNeofThUHbmzx9Crvs5z9EsumWSfUieFD3QCk9kXxrQRpsb/DruFjVrz7o3djR3kkeXMwPCW7fBC02eJKhOe9p1PSwaHwCqjepeVUTCGmymRnJ5LQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=alumni.caltech.edu; dmarc=pass action=none
 header.from=alumni.caltech.edu; dkim=pass header.d=alumni.caltech.edu;
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alumni.caltech.edu;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gZHBvNmqrvyDMjE4MM/kolA0BysGdABWK33wY5fGOuU=;
 b=Li0akYT4JhJANeSr9yHuEIPHSfBOTFM7xgzcs674RDpjiaSO1XR8mWs+J/0GwzBODNU6Fp3bSXGcxLjl552d4nXMP+7itvnu01bOvlGER6H5+TccoxapqZVqDxhyN32KJ7DOhCC9A3eOKk9JLGeWWe+fk8d1XeKH6Y6Qqustb+nsmwssNV+x6+/Fj7KTuIbeMMpAn80v4wemJ1svl2b2Elg2zCN7yYCiyGDEvBXJLR6r4djcdLmYG5fF0fIoLpMz3cKvEJmEk7dpDuYUrYaOKAZsocbKlutQyfTYg8vBpO1FLQI6uLn7xG4D0DGyBKXhqPOtH/+OUiCHNnllffCNaw==
Thread-Topic: [oss-security] zlib memory corruption on deflate (i.e. compress)
Thread-Index: AQHYP0Ibp9ociFDAy0CR7gb3AUHFmKzShnAA
Message-ID: <A120BF13-DE6E-4F00-91AD-49F4AB663C8E@alumni.caltech.edu>
References: <20220324034949.GA25415@thinkstation.cmpxchg8b.net>
 <20220324054307.GA74811@meh.true.cz>
In-Reply-To: <20220324054307.GA74811@meh.true.cz>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3696.80.82.1.1)
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=alumni.caltech.edu;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 949a399f-1005-49b5-f9de-08da0f999ded
x-ms-traffictypediagnostic: PH0PR03MB6220:EE_
x-microsoft-antispam-prvs: 
 <PH0PR03MB6220D5B23CD6A6D335E14990FB1C9@PH0PR03MB6220.namprd03.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 CA+sDcGGKDnLJANZG+xWS7F4NNE35nYTrZ/BBasZE3oSnaBvORr4KAdrYEYgvPA+YSGNi7pNL+he50dC93ucVGa+Dw+h1S9/XPaFDpytWyOOpnMDzkHOFZLkkfUIH/E2r6UAfxEq8a2RseNR8eTX4JABUKxsgG87lJ3l/BT9YKLvDw/cSUpD9v7wUEhsI486dITlTbLedZo4BdG+Rnu8Bdb7Es4RRuAhpqzjh/c73N4YL8XPACelt7kYlKhnNSa9SlDS+iN3a5SkJgDuZAehrgZovbnI+K/8mZQuPvaF6iM/M5Jkm1e1kfS4DyqaqWRUsnjj+/5XwTdurfLKXEwWOCuuzqdJHZePHFMWJL0nmnwni7orSAuKs55vaqnTjN7FyCImXSgDUG7hsokv8xKs8Wu/gyHBghH/a3x/bebvcyeWD0EITCRzLgWadI8y7gEzlIrYpQyrf2XUzZPdPTNyoSZGWJd0ZdKpZV4P4VeERTXQL1FMOzDyZd2YmhKGjGJiXM2sV4yJA87UVPKcQeO0p8Wo+r7usfAGduIIsqUW38YqrbZGaueNzhclKcsaS+j2tk/lKExxaWoydp+Wpx57jaWrPZSlTGhiaFJe6xogl3g8uwYTtq8Eei9pFHjTZESSa6qRJBNlDxvCHnkvPXhEVFuOmpnuwjh+b8N2S5GsONT36yt5C1jIx8QZR0DY4WPj5dqW150dO2qJIuUXJYl4mjAeawffCLvh56o8M2wMmnNn/lNq22TrugjPQ9X0qMbtNCvjH/Ye6ux+vW7/4OCM6j8io15/206Vmj2U8ByP9kNq8UviMM1z9YEnZCf5/w6+
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR03MB4374.namprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(4636009)(366004)(186003)(2616005)(316002)(4326008)(6916009)(786003)(66476007)(64756008)(2906002)(66556008)(8676002)(66946007)(8936002)(6486002)(66446008)(15650500001)(76116006)(53546011)(66574015)(26005)(966005)(71200400001)(91956017)(83380400001)(6506007)(38100700002)(55236004)(6512007)(86362001)(38070700005)(75432002)(5660300002)(33656002)(122000001)(508600001)(45980500001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: 
 =?utf-8?B?eGI3NFQ1bktmSWZXNjhTSmd3QmdHMjgzcmE5Q2ZWKzVSR3IvamdtSWRDUzhX?=
 =?utf-8?B?REdKK2k2S2Y3eVpoa05Qb0l2MHVac1licEJPYU42VW4wUEVwd01USVFUMEY1?=
 =?utf-8?B?aDVqbnAxVUpCZVc2YmR5MjRvSUV2cUc5bTRoa2VEallIMk9xaVoxUmFxYXpa?=
 =?utf-8?B?bUltYzZXUFhWY2IvNnNxaXNBbmhBNHAwWEwwYU9ieDFVSEtzc2tFMngzdjhG?=
 =?utf-8?B?bllJK0t2ZEppK1ljczluYVQ0N1NFZEt4eTRKc05SaHNSdnVnaU00bXI5aVZi?=
 =?utf-8?B?Z0tXV25GdHNiVnFQRUt2VUd1TW1rOHVRV0pFdm8zQXMrQ1gySVVPTWdMdk4w?=
 =?utf-8?B?WWpxM2Y3RXJzSkhhRVBmeHhkOFIrZmxaU0FNMCtjY0tYcjZQaHlLdzJVSXls?=
 =?utf-8?B?YzRONHFKZHRrNXdoMENMam1vWVBJUGxYUGxmZ3VBckJsOEpHR3loOVJkVHFi?=
 =?utf-8?B?dGRqdTZJSER6WjNZbU1RTmdoUGpIYzd3eWRKOEs2TU5vT3JvOElmdHdoYVZz?=
 =?utf-8?B?N2E4cDdTOVFtYkM2Qyt3QWN0T2FjRUJUN0hvenBVRzNyWWhzbW5UYVE0NjlH?=
 =?utf-8?B?bC9wbmJ5L2xQRDlpVWptUis2d1RrWmk1d3M5RFhMMlRUalJGSmJuaWEyaFRk?=
 =?utf-8?B?L29uSWEra2NiL2w5OVpDTGcwWitmVEVmb2lFc29NcHVJVWY3REp6a214cmVv?=
 =?utf-8?B?SldQNjNWSmtjQkRDUzhjYk1XdzJNSlJic0tsTHdHcVR2anZCV1lWcnZRZy9o?=
 =?utf-8?B?UDRQQTNlRm0rZHNVRjZtcVZjOGgvWVdtSmYvQjVNWk5hMTFLRGNndlBVdFh2?=
 =?utf-8?B?T0VFd1pzV0NXTEZ1VHlac0FRQmRFOHArQk9Ob0JsU0FtMWNNa2xvSGJRaVZq?=
 =?utf-8?B?eXpBdXA1YjN5YjdmZzRTSTh5UTNsR1NlTWhEQk1HaUNqNXVjc1VxYzRhTmVz?=
 =?utf-8?B?Q0VNUXA2SlhCN2hxM3B1V1hTdWVmKzRlcDRkQ3FXVHNrNGFiYmI3SDhrY2Yz?=
 =?utf-8?B?TzJocDkrVCtRYWxXSC9BOEVuWWp4NTJkZmJ3ZGp2UncxMjhDM2FzNVdpd3BO?=
 =?utf-8?B?aHBST2tQSWRqdEhxSHB0U0VWTU8va1Z3Zk55OHJYYjRVZXFIZDdTYllxOWJa?=
 =?utf-8?B?Z1pmUGl3ck9peExwcFJYTnh0blFyd2c5WkpWVktxcmgzM2d0NVRjZjhKT01n?=
 =?utf-8?B?VUZqVDFVbzBTZU5nU1MrVHBvZ1dmQkJMQUFndkM5NkVSV1M5bUFmYXEyei9Z?=
 =?utf-8?B?L1VkdXZ5bjZGRWltWHRpazRIQjY3TFFaRlpKKzFKNGNmR1FDQkFkRnR3WFZM?=
 =?utf-8?B?clI4bzhBb3Q5c0xQQ1ZITmY5UUFobjJZekdycGdLdytyakNrZVBJRWw2U1R6?=
 =?utf-8?B?L05oZTUrL1UrQURhRkk1dG5meW9lMU9tSkJLV29lZ1p2OUdYWGgwV3N0cTVP?=
 =?utf-8?B?UFBYUWkwRlRGRkJIVjRJNEJZR01NQ0NyUUJTY0l2Rkg0SUcyc3VpZU5hK1Nu?=
 =?utf-8?B?M3dZR0ZRbnQ0d0V4SUZGSmUxRWJJVG93RGlpV2c0K2pxNGhtL295TEdwTVhY?=
 =?utf-8?B?bTNGR0VLQ3FyM1FyeUJYaHJwWVlBSHhTYUJYejRHVVR1YUszZVdKY0hmelNL?=
 =?utf-8?B?emZPemVTRlkyQ3haNmxaQk1HekozZW91cnZBNVo5YTNDUk9mSDFLVFNPRlpO?=
 =?utf-8?B?UTlGY2tnRDBKSHpOc3c4N0tPZDRabGhUUk5Cay9rYmJsUi84bTAwWVdFWjVR?=
 =?utf-8?B?MkhVQjhrTGhnYUc3d1luTldQcm11dDlEWXFFU1Y4UGNSaXBDdSs5RzA1Ny9k?=
 =?utf-8?B?WEVISzd3dXQ4dU14L1JHdFVFMDZ4SWt1UWhOL05LTUFGeXNpak1WclNYRTJz?=
 =?utf-8?B?dTVhSUo5TGNFTFNsMVI1b05Ba1RQRzRpQjMzNzVlRnhWK3ZrektFUWk0SDkv?=
 =?utf-8?B?emxwclNFUE9CZ012WTJOM2R5Y1AvbWJCc09BbDZ3S2hNb1hxWDFCVmdxV05M?=
 =?utf-8?B?WndVanQvMGVvWGZNa2ZBejdxRlQrWmIxWlJlMTQ2TmRTVjloTngrSlkydGtL?=
 =?utf-8?B?VXlUMFJNWGtTaENHL1M3UFMxTlBDYUVTMzFFbGFVZ3I3V0d6dUhpaWRPODRS?=
 =?utf-8?B?NlFpOWhKL3orSVRaQmpxdW9ONzBMTEVyampYb2I1eVNCS1NldVRIOWYrVTVF?=
 =?utf-8?B?c0ZTSk9HcDJtSnNLN2FlNERBZWhZdDVNUmRsLzR1dlRwWnpRSzluNFN1SXFS?=
 =?utf-8?B?NktHaVlDTHVuNzJUMGdqaFJ5bVRiNnM5WnpOdGNNVEJsbTFhcFFvZjBuY1dX?=
 =?utf-8?B?L2VvTnZnVG5oTUhOWGRLVHU4cmpoMzFubFJIVi83c01YbmFvZVZ5TkhaVkcv?=
 =?utf-8?Q?GFE/NiLN2gVx0r54OQ5hPcLIevS5k1Lhu4urDG73xvCY5?=
x-ms-exchange-antispam-messagedata-1: 9cWwYd3IIj6gzg==
Content-Type: text/plain; charset="utf-8"
Content-ID: <5458AD2B84507F46AD34FF646507E722@namprd03.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: alumni.caltech.edu
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR03MB4374.namprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 949a399f-1005-49b5-f9de-08da0f999ded
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Mar 2022 02:29:27.9128
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: fd5be9d9-7b72-4df9-830e-b1f9cc5b44bd
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: knoLd7pqZjsoi2RcEukXQKtKLH4I96OmHE8taBOZROaUXSIs5weaUnqSlbTME3jMDtMNl9RY43OCtJz5d6RqqQ75WgY2rQjCv+K7NStnowDgrrsA6MIBJDojGe6+Hksl
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR03MB6220
CC: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Date: Sun, 27 Mar 2022 02:29:27 +0000
From: "Adler, Mark" <madler@alumni.caltech.edu>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] zlib memory corruption on deflate (i.e. compress)
To: =?utf-8?B?UGV0ciDFoHRldGlhcg==?= <ynezz@true.cz>

UGV0ciwNCg0KWWVzLCBJIHdpbGwgcmVsZWFzZSBkZXZlbG9wIHRvIG1hc3Rl
ci4gSSBuZWVkIHRvIGRvIHNvbWUgcG9ydGFiaWxpdHkgdGVzdGluZyBmaXJz
dC4NCg0KTWFyaw0KDQoNCj4gT24gTWFyIDIzLCAyMDIyLCBhdCAxMDo0MyBQ
TSwgUGV0ciDFoHRldGlhciA8eW5lenpAdHJ1ZS5jej4gd3JvdGU6DQo+IA0K
PiBUYXZpcyBPcm1hbmR5IDx0YXZpc29AZ21haWwuY29tPiBbMjAyMi0wMy0y
MyAyMDo0OTo0OV06DQo+IA0KPiBbIGFkZGluZyBNYXJrIHRvIHRoZSBDYzog
bG9vcCBdDQo+IA0KPiBIaSwNCj4gDQo+PiBHcmVldGluZ3MgbGlzdCwgSSB3
YXMgcmVjZW50bHkgdHJ5aW5nIHRvIHRyYWNrIGRvd24gYSByZXByb2R1Y2li
bGUgY3Jhc2gNCj4+IGluIGEgY29tcHJlc3Nvci4gQmVsaWV2ZSBpdCBvciBu
b3QsIGl0IHJlYWxseSB3YXMgYSBidWcgaW4NCj4+IHpsaWItMS4yLjExIHdo
ZW4gY29tcHJlc3NpbmcgKG5vdCBkZWNvbXByZXNzaW5nISkgY2VydGFpbiBp
bnB1dHMuDQo+IA0KPiB0aGFuayB5b3UgZm9yIGxldHRpbmcgdXMga25vdyEN
Cj4gDQo+PiBJIHJlcG9ydGVkIGl0IHVwc3RyZWFtLCBidXQgaXQgdHVybnMg
b3V0IHRoZSBpc3N1ZSBoYXMgYmVlbiBwdWJsaWMgc2luY2UNCj4+IDIwMTgs
IGJ1dCB0aGUgcGF0Y2ggbmV2ZXIgbWFkZSBpdCBpbnRvIGEgcmVsZWFzZS4g
QXMgZmFyIGFzIEkga25vdywNCj4+IG5vYm9keSBldmVyIGFzc2lnbmVkIGl0
IGEgQ1ZFLg0KPj4gDQo+PiBodHRwczovL2dpdGh1Yi5jb20vbWFkbGVyL3ps
aWIvY29tbWl0LzVjNDQ0NTljM2IyOGE5YmQzMjgzYWFjZWFiN2M2MTVmODAy
MGM1MzENCj4+IA0KPj4gQXMgZmFyIGFzIEkgY2FuIHRlbGwsIG5vIGRpc3Ry
b3MgaGF2ZSBwaWNrZWQgdGhpcyB1cC4NCj4gDQo+IEl0J3MgbW9zdGx5IGR1
ZSB0byB0aGUgZmFjdCwgdGhhdCBBRkFJSyBpdCBoYXMgbmV2ZXIgaGl0IHRo
ZSByZWxlYXNlLiBNYXJrLA0KPiB3b3VsZCBpdCBiZSBwbGVhc2UgcG9zc2li
bGUgdG8gZG8gYW5vdGhlciBwb2ludCByZWxlYXNlIHdpdGggdGhhdCBzZWN1
cml0eQ0KPiBmaXggaW5jbHVkZWQ/IFRoYW5rcyENCj4gDQo+IENoZWVycywN
Cj4gDQo+IFBldHINCg0K
