X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1847" "Wednesday" "12" "May" "2021" "23:46:13" "+0000" "Qualys Security Advisory" "qsa@qualys.com" nil "31" "[oss-security] Re: [CVE-2020-28018] Use-After-Free on Exim Question" nil nil nil "5" nil nil (number mark "U       qsa@qualys.c May 12   31/1847  " thread-indent "\"[oss-security] Re: [CVE-2020-28018] Use-After-Free on Exim Question\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Re: [CVE-2020-28018] Use-After-Free on Exim Question" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 13764 invoked by uid 550); 12 May 2021 23:46:29 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13746 invoked from network); 12 May 2021 23:46:28 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualys.com; h=from : to : cc :
 subject : date : message-id : references : in-reply-to : content-type :
 content-id : content-transfer-encoding : mime-version; s=qualyscom;
 bh=imeoGcLXqnkpYTFOCz6GJAfycZy8i0bc1D9WDZwBzE0=;
 b=wplKHmXSOYWgoG3ZRxSL6vO9a0EPia+/U/3kTEvJ1ELlE74meMiujBLM903sB/0bwE2F
 fJaahpH2uM4Kovx7g984OYhVoG4dVCjcWIv6R2KtJCWpAjbpcwxli6AT74UAyQQe3aiR
 vkQGQsnWHTnRaR6HQoVtgNH/P0TLqdlIfXml3eUJzy2AO/jY4Lhb1dnsZXZyL4c+HU4K
 lzMMdtrf76GF516PSXXspoqwtgSQyOauyO2L9Cv43RoStsdkNYJ0AazAc8vjFw7NeuWs
 5of8L7svmxKRCQ3CcGQMhAdYNqC2MB+/cSSgZAaSdr89mJZa0TKGiyve8nY6IYp1sgMn 1Q== 
Authentication-Results: ppops.net;
	spf=pass smtp.mailfrom=qsa@qualys.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=i8MHLb6mnJdsrTOS0/Mei8fTvaKSetjChuk9Yb8S81q9ZDmeWn4sSsk1lvvq8US64npcBYnXdrEp8PTWnTUTyfsq7+NHQnfgZN5/2F80uIYdKHGQDpVfxP0H2v3V0oEHEE9+FbEPw2yOcmy53xRaFkjw4vYw86bKY05q6hbbGeGvJTwHNRG/w+lYyTjIlgoIGnUfiM+ESn7Optftgnm5cyWonJtQ1O+YYo7vQgZiVdR/w4mcviq30aE93+F+p/ub7G1qUtdsMaj+rx0DqbTkyzaeBs/wKArR90xBChelHt9pFMnr5OweAIs+P41iBFxcW+H9ax9Y7QWIN9HGx6aUxA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=imeoGcLXqnkpYTFOCz6GJAfycZy8i0bc1D9WDZwBzE0=;
 b=C772FrHaXSNjw5mIcjDxraNCLWNsXua9X17vr2rMdKhD7a329P7lTvxfbseTh8Z8thJbxotv8/jurSEm46007SlAAY5G0EI/bq11DmsyMBg/cawwEXDSetEH0taEaLHVbh2q7y6QKtmYnMhvilacg39lYC7INPjTBXk4V6bULGJgjtbE+CqSN3to3nVMZ/dCAUm0z4YaRYlSqyNS4h5LVck+nhUjuPGR/RZkpqcS8Ifoi7s2Zlal5Tygj+PZnCh37tAo1Hp7o8YMCqGR45rvzCkSVKilKdbJ7x+MvUEU1j+eqLe9/4qd5R7NUMG6ocaeCD68ztqrbcKnmpVCZm2oPg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=qualys.com; dmarc=pass action=none header.from=qualys.com;
 dkim=pass header.d=qualys.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=qualys.onmicrosoft.com; s=selector2-qualys-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=imeoGcLXqnkpYTFOCz6GJAfycZy8i0bc1D9WDZwBzE0=;
 b=W0kCQ8XTgkH84TNZt7R93VhKsWHsIi/HNZ2xiYvA3r+vV+bah2E3A+8dcBr2TdZvEwIzq+TZwe2tdjbcX9Hnid5STc2lOE3am7+2VrvKX5bfdG1cL6R1uKxb4FqsogMLdLUlup4yOkt4Yn5PMw87mCT7DeICuXoYefCe/OB0MaKka5tCjfSSdNSET+Eh52AQMqZ1H8y4Q3gMInQm5Lp+kWLnRPxm9tuTRZ0U7E440UZ9tXUud1BP+2dFHUKz0erPhb6L6Gn4tXKb8bzVxL6H9/gv0jomGOX3FnNRJ/SffJU7GqMwoFPxtCwRJhZ/SKqTie22A+Zli3SW6kuSnrvsbQ==
From: Qualys Security Advisory <qsa@qualys.com>
To: harris.johnson.x <harris.johnson.x@protonmail.com>
CC: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Thread-Topic: [CVE-2020-28018] Use-After-Free on Exim Question
Thread-Index: AQHXRz2jlPAVXXLuy0elwz5xdohXzKrggvIA
Date: Wed, 12 May 2021 23:46:13 +0000
Message-ID: <20210512234414.GB1175@localhost.localdomain>
References: 
 <-PX6HwUqABskTVCZ1I6D8RgZ1ZqDwqGw56VKpf4-39X_dCz7PBtqXbtP_W5lRNHPOgaR4t4IpwbDJ0o-CTmJbT9BYJbUZYutrWS4_hBl-FU=@protonmail.com>
In-Reply-To: 
 <-PX6HwUqABskTVCZ1I6D8RgZ1ZqDwqGw56VKpf4-39X_dCz7PBtqXbtP_W5lRNHPOgaR4t4IpwbDJ0o-CTmJbT9BYJbUZYutrWS4_hBl-FU=@protonmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: protonmail.com; dkim=none (message not signed)
 header.d=none;protonmail.com; dmarc=none action=none header.from=qualys.com;
x-originating-ip: [165.193.18.162]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 0efd9ad4-6cfc-4072-6685-08d915a02095
x-ms-traffictypediagnostic: BYAPR06MB4839:
x-microsoft-antispam-prvs: 
 <BYAPR06MB48395E49A75E8F9B8062525DD5529@BYAPR06MB4839.namprd06.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5797;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 CFB5zuB3bFml0ljJnxDeAzyy/kAw6ccWFqy2VH6AATwM0hFf+9utMs8cScDoRY8T9BXA+DO4wzGDhUaZsjlb0s/ilNXfcutOEKjIPF7NoSTmta1Vhv5e+4DzJruRRHyyAR6sP2j8vzo6pQefFVHEhq1G03P7hb402cJuSEYg90ksMjFh/pI560e/YlHOxLwjeDJaRtYPz54f+70LBQMOWgk3BqKdU9dTXpdc5r88avUlu/9lTkllIfqNts86BtUxZQZDC61Cu4u9dUHkD9oLBLoizan6etM6HIN8OoIO1RSeEWP+5E8THV76wiyazwy8ccumPwAMZ6dhOENUxrKI3bqF6ynTLfZN59jnAi/62iUaE8MpQmh6J3QgoLkSwbgZtT0aGE0bAUaSpxGm1aaFyVpF/HuX5qvU07eC5p7lIBtVGVDA+SuIdAT/CA6wtsXUTHV3ian5AzIvLFDZVt9v5XgJwXtY3KkPogAKD14EfogjiskQjAqSTCmcPRojaD+nq6N3Ll64djYycAxd8/h6uhQWGVtxnoBLZvxxIvuDUSFzcgkwuG75V6oNLboTQG0WIhGYX17dx2hY4vb5p1Btx75TABgOr5VOVYOG+hH7sP+k8WKfZCJRiI6iPiYNfrve/RSRYOaPR5ztxrQ1NMoaZ77cncTUtAB8RQxUuQaZB9A=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ0PR06MB6910.namprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(39850400004)(136003)(366004)(396003)(376002)(346002)(478600001)(6916009)(6512007)(71200400001)(8936002)(66476007)(9686003)(38100700002)(26005)(64756008)(66946007)(86362001)(6486002)(4326008)(33656002)(6506007)(8676002)(1076003)(66556008)(122000001)(186003)(316002)(83380400001)(76116006)(5660300002)(66446008)(2906002)(131040200001);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata: 
 =?utf-8?B?S1RuaGUwcjFHWWxkSGtGc212Y0VOem9LRllDSTRjdFRSL2NhSHFCSi84MDJh?=
 =?utf-8?B?eGdvSkZiUkw5VzVRRFhXVzJEWE00MTNPZVk3ZEFiVjdvekhkS09odHN1TGVa?=
 =?utf-8?B?KzR2cmN6SnhxR2RKYUplMUErTXEvUFdZeXRSK2RLN2VhVFNua3BaUlA3WDky?=
 =?utf-8?B?bFNjblJVS0xxMm5ZNjZiRldhNzZ2bER1MGYrcW5Jdm9uL2ljTUYwekZUcUs0?=
 =?utf-8?B?ZGRxS09PN0xvbmJkNHFweG1OMXRKTnNUN2NtaVhXMVBzUXh5ZzZGdityNXRE?=
 =?utf-8?B?OWlqZ2lENEFubzl5aExFT1VuSTBmTStjSXNUMU1rMENQcmJnbkVhZmYzVXFE?=
 =?utf-8?B?TndGb2IrWEc4Sm4rNlVaeGpWc0RKa3ZaN3AwU2lHQmtIckkreGVrN3pmN2x6?=
 =?utf-8?B?NWVYMTQzUEhyR3cvbnBPMUQzN1pWT3c1ekFsUnA0RGxQMDJhVE14Ni9POG43?=
 =?utf-8?B?NW1BbWNWd0REc09PZVh1eW1qU0Q2UlNPTkdVdHpoV0RwME4yekFYYVBUajcx?=
 =?utf-8?B?NVhqV1krakZMRXdEaUZKWU8yV1J3UmdQa3NKcmhhaE4vanI3dkduUjlPeEU1?=
 =?utf-8?B?S2trVWlGU3U2VlJLYXpNMkFjNjNFKzIrUEpNMnpYTHVPVE9Ob2d5SnZOVUNX?=
 =?utf-8?B?NGhTL3U0ZTBzeW5EUTF4WEN6dlpGNHIxeDByQ3BUcVFMWmd6bm1PT2JXblI5?=
 =?utf-8?B?d2V0MUZ2Rzl2OFlJdE1nRXZDd1JFOWw3L2hHc3RaU3kwRW05ek5ZQnBwTGpM?=
 =?utf-8?B?aXlnQnZsQWdONnV6YTlObThSMWl4Ty9JcTlJdmcvcHJ3WWkrYmVlcElGdFFs?=
 =?utf-8?B?elA4WUowRk0rY0h2Ym1CYmlHNFNBWHJpaDhEUy9DcjFyRk1RSityZExSZEQw?=
 =?utf-8?B?NmR5c3F1STBaNncremxDSXkwRldkaWJFNjRMVmN5U0JvQ3c0TEdFUll0YUJt?=
 =?utf-8?B?RmxNdnorVFhFZTZTK2V4U1k2KzZ5bTJ6eTRLanBmZkRvRXVJWXJDYytxZ3o1?=
 =?utf-8?B?ZUg4ak9NMWdyUTFIR2RqSmFHczl1MmVjd2RzNWFGRTRnYmxJY0QzV1RMRVZh?=
 =?utf-8?B?U2lLbFpmVHdmdXVGdFhRaVV2Z3krSEFQZTRFZTZPRkovWWNVZmVDQTJOREFB?=
 =?utf-8?B?TklKdVo0dUFmY2t6ai9vQjRieCtMZTdMbXhYWkc5YzJteEIvVWpCMkw3WXJx?=
 =?utf-8?B?RExWTHhuc0haMk9STDdJSWhtYmZaWUVoQnpJWklCZURwd3JpczB0Tk1RV2Fh?=
 =?utf-8?B?Z0NleCtIUXdRRlArbmNoWXVIbEdGWmd3V2VvS0dzOUlyS2NETGdKUnhoZTQ0?=
 =?utf-8?B?dVJsK01oU1VLQ1JxemFtbEU2Q01QRE44WEtROU94TThYZlNTMkNQVVhqV1d4?=
 =?utf-8?B?YWFnYmdrQjY4aEllbE1LUGNKTzZQc2xsUW56MXA1TWE4MmhnUkRSZURnc3Ey?=
 =?utf-8?B?QkRFSjgxeU9vcHBnT1RlVjhBU0dQb29lY3NFWkJML3lnek16Rmovd0ZWSDZR?=
 =?utf-8?B?YVk1YllhTEttbzRIM0FhOWtNK2w5ZVRsNE44a3g4VFpHUmJBQlBsbE9TK1ZD?=
 =?utf-8?B?c08xNmtmS2lKaHc2N0p4Q0UzbW1rb21UUGVGOXl2STdoN3FnNlpUZ2oxMFQy?=
 =?utf-8?B?eWIycElMRndaNWp0Uk81S2dheTRaTkExa1BCS3Noc1FBckpkMksramJVNnZ3?=
 =?utf-8?B?NWp2eWFyRWc3cDRsclRVeEZXWkV3ZVZ6cEJYNFhEN0xsemFURFJwbHFUS29l?=
 =?utf-8?B?bFJ0ZXVOUUFVTFBXeDU1K2lVcGNSSlJERFN2RnVvdWZYNWlJZldkMFFtSUVp?=
 =?utf-8?B?V1plN2VVcDcxalpqd0tGUT09?=
x-ms-exchange-transport-forked: True
Content-Type: text/plain; charset="utf-8"
Content-ID: <1CC31FE8840B25458DE72E1D442C9F8A@namprd06.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: qualys.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR06MB6910.namprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0efd9ad4-6cfc-4072-6685-08d915a02095
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 May 2021 23:46:13.3869
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 81a9ef9a-9a98-4b00-886a-895a603bc029
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: bt2kYRh8/2pa/zFRhoaONiwW9UgHKG4quKmZgIAbnvGPysUwT+zpIeIfIMF7two3w3W0RcoeI1m9/MM8NVJJUu+qPw5agEORfhUQbaRQ6mY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR06MB4839
X-Proofpoint-GUID: O8K2TNtmLZAYuDParo0XWTostBEHXtBU
X-Proofpoint-ORIG-GUID: O8K2TNtmLZAYuDParo0XWTostBEHXtBU
X-Proofpoint-SPF-Result: pass
X-Proofpoint-SPF-Record: v=spf1 include:_spf.qualys.com include:spf.protection.outlook.com
 include:spf-001ca501.pphosted.com include:stspg-customer.com
 include:_spf.salesforce.com include:emailus.freshservice.com
 include:mktomail.com ip4:3.225.140.251 ip4:168.245.25.245 ~all
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.391,18.0.761
 definitions=2021-05-12_13:2021-05-12,2021-05-12 signatures=0
X-Proofpoint-Spam-Details: rule=inbound_notspam policy=inbound score=0 phishscore=0 clxscore=1034
 suspectscore=0 lowpriorityscore=0 malwarescore=0 priorityscore=1501
 mlxscore=0 bulkscore=0 spamscore=0 adultscore=0 impostorscore=0
 mlxlogscore=859 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2104190000 definitions=main-2105120154
Subject: [oss-security] Re: [CVE-2020-28018] Use-After-Free on Exim Question

SGksDQoNCk9uIFdlZCwgTWF5IDEyLCAyMDIxIGF0IDAyOjQ2OjMxUE0gKzAw
MDAsIGhhcnJpcy5qb2huc29uLnggd3JvdGU6DQo+IFIgdSBndXlzIHVzaW5n
IGFueSBzcGVjaWZpYyB0ZWNobmlxdWUgdG8gZ3Jvb20gdGhlIGhlYXAgLyBn
ZXQgdGhlDQo+IGNodW5rIHJldHVybmVkIGJ5IHN0b3JlX2dldCgpIG9uIHRo
YXQgc3RydWN0Pw0KDQpXZSBmaXJzdCBzZW5kIGEgbGFyZ2UgRUhMTyBjb21t
YW5kIHRvIG1ha2Ugc3VyZSB0aGF0IHRoZSBuZXh0IGFsbG9jYXRpb24NCndp
bGwgb3ZlcndyaXRlIHRoZSBmcmVlZCBzdHJ1Y3QgZ3N0cmluZywgYW5kIHRo
ZW4gd2Ugc2VuZCB0aGUgTUFJTCBGUk9NDQpjb21tYW5kICh3aXRoIGFuIEFV
VEggcGFyYW1ldGVyKSB0byBhY3R1YWxseSBvdmVyd3JpdGUgdGhlIGZyZWVk
IHN0cnVjdA0KZ3N0cmluZyAod2l0aCBhcmJpdHJhcnkgY2hhcmFjdGVycyku
DQoNCkhvcGVmdWxseSB0aGlzIGhlbHBzISBXaXRoIGJlc3QgcmVnYXJkcywN
Cg0KLS0NCnRoZSBRdWFseXMgU2VjdXJpdHkgQWR2aXNvcnkgdGVhbQ0KDQoN
CltodHRwczovL2QxZGVqYWo2ZGNxdjI0LmNsb3VkZnJvbnQubmV0L2Fzc2V0
L2ltYWdlL2VtYWlsLWJhbm5lci0zODQtMngucG5nXTxodHRwczovL3d3dy5x
dWFseXMuY29tL2VtYWlsLWJhbm5lcj4NCg0KDQoNClRoaXMgbWVzc2FnZSBt
YXkgY29udGFpbiBjb25maWRlbnRpYWwgYW5kIHByaXZpbGVnZWQgaW5mb3Jt
YXRpb24uIElmIGl0IGhhcyBiZWVuIHNlbnQgdG8geW91IGluIGVycm9yLCBw
bGVhc2UgcmVwbHkgdG8gYWR2aXNlIHRoZSBzZW5kZXIgb2YgdGhlIGVycm9y
IGFuZCB0aGVuIGltbWVkaWF0ZWx5IGRlbGV0ZSBpdC4gSWYgeW91IGFyZSBu
b3QgdGhlIGludGVuZGVkIHJlY2lwaWVudCwgZG8gbm90IHJlYWQsIGNvcHks
IGRpc2Nsb3NlIG9yIG90aGVyd2lzZSB1c2UgdGhpcyBtZXNzYWdlLiBUaGUg
c2VuZGVyIGRpc2NsYWltcyBhbnkgbGlhYmlsaXR5IGZvciBzdWNoIHVuYXV0
aG9yaXplZCB1c2UuIE5PVEUgdGhhdCBhbGwgaW5jb21pbmcgZW1haWxzIHNl
bnQgdG8gUXVhbHlzIGVtYWlsIGFjY291bnRzIHdpbGwgYmUgYXJjaGl2ZWQg
YW5kIG1heSBiZSBzY2FubmVkIGJ5IHVzIGFuZC9vciBieSBleHRlcm5hbCBz
ZXJ2aWNlIHByb3ZpZGVycyB0byBkZXRlY3QgYW5kIHByZXZlbnQgdGhyZWF0
cyB0byBvdXIgc3lzdGVtcywgaW52ZXN0aWdhdGUgaWxsZWdhbCBvciBpbmFw
cHJvcHJpYXRlIGJlaGF2aW9yLCBhbmQvb3IgZWxpbWluYXRlIHVuc29saWNp
dGVkIHByb21vdGlvbmFsIGVtYWlscyAo4oCcc3BhbeKAnSkuIElmIHlvdSBo
YXZlIGFueSBjb25jZXJucyBhYm91dCB0aGlzIHByb2Nlc3MsIHBsZWFzZSBj
b250YWN0IHVzLg0K
