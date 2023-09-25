Received: (qmail 5983 invoked by uid 550); 25 Sep 2023 19:35:52 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5122 invoked from network); 25 Sep 2023 19:34:22 -0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Z5+QOi3O/OywiGoc0SGWizINJ2nVGmbCz7/EV1Xno99d90akqaxm5WBRNndbHycX3yZLHgtGjGmquPZ9DE2aw3MKEo6TMXbWJW9YyBFWAXtZMZfbEEZRoQI897IU6Pr0AknCTW1nXAyQeV0Hkzbu9B9wIA6AHzqAoDFn/fftcPowpn1SPUY60SB0tUP8YWrdqMQolmL/3/voLcguaD1E6l59ni/U8gYM0agQnOOxbE2XtBclx3oQ5L3SVSkbZpyW+0gh0LNx0kDOCndy5Mhzr/OoAWYOxuGb4CvO7M39/r+/Nu4cUeq/+5uyQWo/hADmlTf9Hn85gYtps87zKwPcEw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ib+ApEHIK6c8qnxwfQHcCARVb3P0+kt4fh7J5oz/TWE=;
 b=Qq3kDoRqXoOjxwyvGfq/FnrjJbjBFuW5nulTSSP0lQG7+SB/U8D0K/1Mbb+QgLrc3ZlT/4JUQkMC5YYiSdFiT23VqTsXZkVJNLKB0PchSzUXMSQaK2bXHTowBpCbDMMS4yT6ndJMT1CDlOkQnVssJs9MSU/ijpvcvpnhY/HCmvvglWNhUD4deMXAROOsOFJ2km0hAYfBDbFDAU4MSGUgd44VlEl4/C0wOkI5foIx91MZVc0oBVMoDXP0YjZk219UTlcm/d87z5atKK8dL4UVAFkYmz+Y68fcZYL3PUpAHF7T7TF7HUsmMWgEtPkF5NXDF7vxderbCa/MBgRVfy5/Iw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=mnx.io; dmarc=pass action=none header.from=mnx.io; dkim=pass
 header.d=mnx.io; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mnx.io; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ib+ApEHIK6c8qnxwfQHcCARVb3P0+kt4fh7J5oz/TWE=;
 b=XZxBF0Wt+ga4IeQ1P8U9Xd0LoxXAN9mEGxr/Qmu57aFYYTi7cMNXo2Cma0TLpspoA+Hh9rdrUhptyYZb43OcpXa7N9cWjJgFk69Zx5d4+veYj2LUm/DVwyrSXT1PuCuN1qoGXzMs51p2PTndM5lGPJ+fwk6MFFOSr8YVL6FTwu0UivCcIrGR1ZLUohOTYCTjNeqMhxvR8U14RTPE26PiPy3mUwAz1hCYI+PRQ63bwSKHmP2rS8hBytxwRqZRIvOC1isUZg5fPFQd6IvN/jDdls5STQeVCwUwD9uZh/QZuwzXsB2UFcXLp/oDxXozX52WFzZjX/CVtPfkbf69J5Egqw==
From: Dan McDonald <danmcd@mnx.io>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Thread-Topic: [oss-security] illumos (or at least danmcd) membership in the
 distros list
Thread-Index:
 AQHZ5n/c1L5i140dZky1+LnodWZcQLAcZLkAgAR7eICABkcNgIAARnYAgAREAwCAAEzWAIAAAuUA
Date: Mon, 25 Sep 2023 19:34:06 +0000
Message-ID: <82079A89-D6B3-4B46-AB36-A0B1FE50056B@mnx.io>
References: <6EBBC128-36D2-4262-88F4-6889E9E6DE1E@mnx.io>
 <20230915210906.GA22532@openwall.com>
 <36F38D40-5F90-4E1B-B7A2-121431A3E6FE@mnx.io>
 <20230922172755.GA18909@openwall.com> <20230922214006.GA20989@openwall.com>
 <03F95D3B-FB70-46AC-AC19-9709599B8318@mnx.io>
 <20230925192334.GA8663@openwall.com>
In-Reply-To: <20230925192334.GA8663@openwall.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=mnx.io;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL3PR12MB6546:EE_|PH8PR12MB6986:EE_
x-ms-office365-filtering-correlation-id: 34476383-022f-4ec0-9404-08dbbdfe6207
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info:
 m56xY8e40/8WTO46IQQwOz2ZBlZ5GKMQLXqxzgOQB80xRH11MVKtajbyNlSZsAree4rxq9H8wZBQ5CBwrk53EUE51Z18EUT8nsTs6Pf1NOcWLFHEd0xJLLDVg8LC4HIT5E7E3m2SuGI0PFkT32YmnTP7gFN4q0sadLACeOjzGUVIpILazWouI7PoiGEtJ64VPC1uXjmTm62fe6x/KzzriHtYoth9untX3CX8ZjirDa340ww/BUdLZzjnEL5T4zByTQjp52xL/zLGT0uzYm0v6kw1xsqknjnG3X7UDW1iaCACVckvJq0JOL4v7vvkhDHd7nKTb3/73mP9CQ+lTv7KH4bkLqdXZeKRD9PiRbelJul1zgzwqwWiffMdEsi8rTjI+zEF5CRd6HuT5UEMzgZtapLRRG2IGDc10BlwPWK2N4xn6LOe1U5OUMqJA5C8nxRcHl8ZOdJMzMmiludlHmqebcupbrNydu2xcstHr92iLyZI+4oLUj5Ad0dOq2ypyTtJoXLQAm0damgjrGS+Xr9mm8Is2wPMWluZIrUWSuj8A7+An7HgLhL2eYqyn6QX1eOnhEONPGWibjsOAsHXaWuMpUzh/sVMdP3gHgkTu6y9WuDgbx75gOTUUaBv5P3qd9ez
x-forefront-antispam-report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BL3PR12MB6546.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(396003)(376002)(39830400003)(346002)(366004)(136003)(230922051799003)(451199024)(186009)(1800799009)(64756008)(15650500001)(2906002)(5660300002)(478600001)(41300700001)(6916009)(6512007)(316002)(76116006)(66446008)(8676002)(66476007)(26005)(8936002)(91956017)(38070700005)(71200400001)(6506007)(6486002)(36756003)(966005)(2616005)(53546011)(83380400001)(66556008)(38100700002)(66946007)(122000001)(33656002)(86362001)(45980500001);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:
 =?utf-8?B?TDdtaW9BNXJSeUdqOHpCRHpIeCtEYlI1YWZGakkyVGxhRHRPb0l0WDJSU1dY?=
 =?utf-8?B?aC9rdDhEOTFlOFFSblIrSVpWUW9MRUwvNStLa2ZnanltMzhkcmVxNWMrTlJx?=
 =?utf-8?B?Zm1VOFV2QjFTZE5WWC8yYmZEdERQemRjSi9MWStUQzRZbWY1V29qeURBL1NI?=
 =?utf-8?B?RTZ6N1U1ZTIxbU95S0R2QUptbU5KQXJ6bW9mb0tCZ0RZc1ljWlhJOUx2Nzgx?=
 =?utf-8?B?U1Rud0tjblF1ekhONllkYVZLam5GS1Q0R1VMQmVHUVpCK3JaUVZjSDRIRDFK?=
 =?utf-8?B?VzVGSUZsWGxWR1RsYmtHQm5GUEdKczUxK1hPWndBaTArVlBXYVRYN2Z4T0d6?=
 =?utf-8?B?a2ZnTE0vVlB5Y1poMFBkdmpUT1JsQndFbWxnKzM0ODlzRktETkUvU0dNN2JF?=
 =?utf-8?B?TVluQXFhQ2pVaHJXNm5lbXM0enFZaHFZdmM1TG5vVmNHK1c3TXhvcFU4TWtD?=
 =?utf-8?B?WnZKWjZlSkxEMUYyUlpCSzdJZU9wNlU5Szg1c1pUeVpFbjhFT3FST1ZuZlM3?=
 =?utf-8?B?V3JWUFNlc2tCc2E0NDF6Ny9VL2NTdERyTllnWFZsWTZlQWpab0dMZXNZakJp?=
 =?utf-8?B?RWM0YmNZSmJObWRYcGQxUFFxcE9YejU4VGRRYndPTWZUV3FINkxUOUhzZWs3?=
 =?utf-8?B?YmoweUxvR2paa2pWN3VUaDkvK0xnTjdVSEw0eE1adG5md0QwaGFRQ1d3VmJ2?=
 =?utf-8?B?QXpMbGd0NlJUQlNZamRuSk01bm1na1NxRzVyTnAvWllzQzZqNHpGTitZSXpp?=
 =?utf-8?B?TW9ldnhZd0ZxdlBjZ0lBRU9oSWdhUFZJNWVRMTVCSVNFSTFoZkUvd0VTWm5n?=
 =?utf-8?B?ai9jL0prQzREMlJLOTFGcHNRM3pNNFN2WW5BWmUvMDNhT2E5cStkV0JWd1p5?=
 =?utf-8?B?VHBIS3hHRm1OWDlJQi9RaWZpTzZlTEgvNmJnQlBzYXFkU29VT1lRZ1krWkFm?=
 =?utf-8?B?MDcvYUdrRjlIQXlBV3VvU252NkgwZHhjSmJrbUdTYmJKOU5vbE5iRG4vQ0kr?=
 =?utf-8?B?TW1TOXZKQWNVK081UzMzOVh4SWJ4SDFVN1FMb0VZd1I5RExueUZRd2cyVlVI?=
 =?utf-8?B?QWZTQlBOTFRZZktrbnR4SW9xN1RYeS9sM3dFVGpBcGt6K043TndZcitxcm9X?=
 =?utf-8?B?QzB6Yy9UVHZYblhOWHdKTm4wTUE4dEJXVDU0TjE4bEg3ZktXWUJNMy9Bdk15?=
 =?utf-8?B?Y3hwMDVCTzdTTk8wb09aREYzZUtpOG4yRjNnbnc2KzNmZHhJRWx4OHF1dWpT?=
 =?utf-8?B?ZDZQSitwTEplQ2I1bEg1NDZ6UzdCbTlkNlcyRmdsZzdqUkRuQmlGK3h2d1U5?=
 =?utf-8?B?Y09tM3VIckhiM0l5V08zY2sxTG0reVlkNkI4M3JFeHFjU0NyeG53V3ZEZHBt?=
 =?utf-8?B?dzZ5QkZ2NldGQkoyaWtTRHQ3aG9ubXZBV0R4V3FQK1VueWU0SjYvcjdWR29v?=
 =?utf-8?B?dHQ0dW1vRU5LVEd1bjBHUnZFY3Jqa1A5eFJ1NzJXcW9vYzQzdmxCV09sMy9S?=
 =?utf-8?B?dTJmRitDRXE4NU5KRGxZLzMxSDh4bVRETTg5cDArNzQveEQrMHI4QVNjazFD?=
 =?utf-8?B?dWgwRVJ6RVh2QnNLSzE3QlByTzNxeWw5UHNNdG5jQ202Y2dhTWswRE9MTkhD?=
 =?utf-8?B?SWJ6NmhBaGJQeFprVWpCTkdEN3I5cE9JbHR3cWU5bjl5dDdGbUN3TUZ4ck51?=
 =?utf-8?B?eWVNbi90NG1pUlI4NGM1OFE1QmFkNVZHUWZGa1VsUi9WdXBOcjV3eVAwZWhB?=
 =?utf-8?B?QkdMKzVJZ1Z4enUyZElQRm55Y3pqRjhkTmtwcEFnbW85allJVHcyYXF6OTZ1?=
 =?utf-8?B?V014NHFJSFRhNnVVZlEwMkh2dmhpd0FNcWNqdEdnUk56RWExSVBCSlRKZnI4?=
 =?utf-8?B?K2J5aXRKZnF2V2ZSdnMyVlFNU081cmxRb1hJOG5nMGx6WFJBWnM4S2Q3aWhI?=
 =?utf-8?B?ZVdNMy8xYzl2ODN6VlVOZFNYQXpkNE9ldTRrTG94SkY5R0FrekViTE9pcUlw?=
 =?utf-8?B?eG11YVl2d0JxellCUjIrSTFvd0lRdm9sb3YvUyswUktCVGVwaUJjOW9TTzgr?=
 =?utf-8?B?TnRSQ0h3QkMzbWhEYjNNTlRHYUZoQVd5M0pEeGJKbndpcmY4bm1oNFJINlBV?=
 =?utf-8?Q?W4FV7P/OWZ6Z86IrUrEL3paed?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <33F66BBAB347174FB14DBE9F1EDDCF1F@namprd12.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: mnx.io
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL3PR12MB6546.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 34476383-022f-4ec0-9404-08dbbdfe6207
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Sep 2023 19:34:06.6707
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 7cbbbccb-a73b-4293-8866-194afab248db
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: DrnjbjWij4zCR5Utdnrz5YneoODxYV+9kv3F/tEORT0ni3Ay/vxksuJXs0pLDnPx
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR12MB6986
Subject: Re: [oss-security] illumos (or at least danmcd) membership in the
 distros list

T24gU2VwIDI1LCAyMDIzLCBhdCAzOjIzIFBNLCBTb2xhciBEZXNpZ25lciA8
c29sYXJAb3BlbndhbGwuY29tPiB3cm90ZToNCj4gDQo+IA0KPiBEYW4sIGFs
dGhvdWdoIG5vdCBzdHJpY3RseSByZXF1aXJlZCwgYXJlIHRoZXJlIGFueSBj
b250cmlidXRpbmctYmFjaw0KPiB0YXNrKHMpIHlvdSdkIGhlbHAgd2l0aD8g
LQ0KPiANCj4gaHR0cHM6Ly9vc3Mtc2VjdXJpdHkub3BlbndhbGwub3JnL3dp
a2kvbWFpbGluZy1saXN0cy9kaXN0cm9zI2NvbnRyaWJ1dGluZy1iYWNrDQoN
CkltcGxpY2l0bHkgSSdtIG9uIHRoZSBob29rIGZvciB0ZWNobmljYWwgdGFz
ayAjNToNCg0KCUNoZWNrIGlmIHJlbGF0ZWQgaXNzdWVzIGV4aXN0IGluIGlt
cGxlbWVudGF0aW9ucyBvZg0KCXNpbWlsYXIgZnVuY3Rpb25hbGl0eSBpbiBv
dGhlciBzb2Z0d2FyZSAoZS5nLiwgZm9ya2VkIGNvZGUNCglpbmNsdWRpbmcg
dGhlIHNhbWUgYnVnLCBvciB0aGUgc2FtZSBlcnJvciBtYWRlIGluZGVwZW5k
ZW50bHkpLA0KCWFuZCBpbmZvcm0gdGhlIGxpc3QgZWl0aGVyIHdheSAtIHBy
aW1hcnk6IFVidW50dSwgYmFja3VwOg0KCUZsYXRjYXIgQ29udGFpbmVyIExp
bnV4DQoNCihhbmQgc28gaXMgRnJlZUJTRCBhbmQgQWxhbi1mb3ItT3JhY2xl
LVNvbGFyaXMgaW4gdGhlaXIgZG9tYWlucykuDQoNCkJ1dCB5ZXMsIG1vc3Qg
dGVjaG5pY2FsIGlzc3VlcyB3aWxsIGJlIExpbnV4LW9ubHkgb25lcyBqdWRn
aW5nIGZyb20gdGhlIGF1ZGllbmNlIGhlcmUuDQoNCkFzIGZvciB0aGUgb3Ro
ZXJzLi4uIG9mZiB0aGUgdG9wIG9mIG15IGhlYWQsIEknbSBjdXJpb3VzIHRv
IGtub3c6DQoNCuKAoiBTZXQgdXAgYW5kIG1haW50YWluIG1vcmUgcmVsaWFi
bGUgb3NzLXNlY3VyaXR5IFR3aXR0ZXIvTWFzdG9kb24gZmVlZChzKSAodGhl
IGV4aXN0aW5nIFR3aXR0ZXIgZmVlZCBvY2Nhc2lvbmFsbHkgbWlzc2VzIG1l
c3NhZ2VzKQ0KDQp3aGF0IHRoZSBzb3VyY2UgZm9yIHN1Y2ggYSBmZWVkIHdv
dWxkIGNvbnRhaW4gKGUuZy4gY29udGVudD8gRnJlcXVlbmN5PyBleHBlY3Rh
dGlvbiBvZiBpbnRlcmFjdGlvbj8pPyBJJ20gb25seSB2aXNpdGluZyBUd2l0
dGVyDQpvY2Nhc2lvbmFsbHkgbm93LCBhbmQgSSdtIG9uIGdvb2QgdGVybXMg
d2l0aCBteSBNYXN0b2RvbiBzZXJ2ZXIgYWRtaW4gc3VjaCB0aGF0IEkgKm1p
Z2h0KiBiZSBhYmxlIHRvIGVzdGFibGlzaCBhIG1hc3RvZG9uL2ZlZGkgZmVl
ZCB0aGVyZS4NCg0KSG9wZSB0aGlzIGhlbHBzPw0KRGFuDQoNCg0K
