X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2046" "Tuesday" "11" "May" "2021" "20:55:17" "+0000" "Qualys Security Advisory" "qsa@qualys.com" nil "34" "Re: [oss-security] [CVE-2020-28018] Use-After-Free on Exim Question" nil nil nil "5" nil nil (number mark "U       qsa@qualys.c May 11   34/2046  " thread-indent "\"Re: [oss-security] [CVE-2020-28018] Use-After-Free on Exim Question\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] [CVE-2020-28018] Use-After-Free on Exim Question" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 14228 invoked by uid 550); 11 May 2021 20:55:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 14204 invoked from network); 11 May 2021 20:55:33 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualys.com; h=from : to : cc :
 subject : date : message-id : references : in-reply-to : content-type :
 content-id : content-transfer-encoding : mime-version; s=qualyscom;
 bh=BnL0/Mz8EMK4FSV3Jcr7sPd0T3gCWe7WvN4srtfO4Ek=;
 b=vGf74k0MTuJsIf3VaxvjFYjQE33U3cs5Uj/AWNljx8Orn6wt8eTdLRjiPQW3KoBKjZ0n
 N6+uY51dAD5gTbBdj9PSoJcnUfXMaV3SNtgpTEKNRB/lT90dGCeAcnMllMovnis9yGHa
 m5XAnZDZKtrR4kJlB/fOvNmhQFXigSlk1Sp7R1WjWxC47FA2adJxZjZzVeTkW/V0sPK1
 qUEmoElz6C0kU15iTLCxd0qNS2KhQAlEq7jZ0Q8iF/MUPOOadrTI9dpyKlgvAW7bXf2L
 0a9XlS44ZmlgINWySViDB9Q93n3ofmAkPNIJMiJIKaIau0cf8JdrH6waGj5bFlN+/iWo mw== 
Authentication-Results: ppops.net;
	spf=pass smtp.mailfrom=qsa@qualys.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hum1xwFv/G6m3DfW8ilKQBggGYxLWrMvNiNyfG+t1cZ/z+BGHTKDHZ7i0S2ss9pjVxgli5yxt2O0uaWA7Q9pSuqOl/4T/sEjMXuRL4HkiPwYFBg9kfYpj70tFZQP2BTRDykvPkQd7+OJyRNwm36zkgWyGOPr3kpmUrS2z1Oz7WKFYuSa9GIsO1VGmaz2ooiel99fK9U0kNNkI5OoukvrniSn/h1LHYAWGo2yeEqePayXcvGfwl8x7Zvt9hnekL8ZsGYvpN81R7xQAOBaKGbLfG95HLFIjC9YTMMDUxqUbMuWSP/FeIs+IFae+BxWoN+sGkl4zxy0v/HHg2jJzaUBOA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=BnL0/Mz8EMK4FSV3Jcr7sPd0T3gCWe7WvN4srtfO4Ek=;
 b=jLVTYSbwIn+YjX6wdryiRcQl3JXQ71UgenKUp4nkjdZkd0YWIVRxU7fhfiEfhw34kCt0PAgQYMUdekZG32JuMBix4L2dzkWJxKSot+8z8tmmLzHsSW2SNSncLm6c9n41JarzWrw7jt4CnADRPldE139Ge1HaL17L4q90mh835D6t5SSw6iAgvxcAx/P7/j5gadp6XFdM/UiTTc64et3HYBl/vhDw0XPa30xNQz7198+VZbov1ge/ko39lxp/YIbpq7hwPsekG/V6B5/364lqBiiiat7U/pnA+CVZ0/I9zGUbv5g6BGGrr0Np1dday3u/pv68NmWTdMxDSfHOvYDjWg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=qualys.com; dmarc=pass action=none header.from=qualys.com;
 dkim=pass header.d=qualys.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=qualys.onmicrosoft.com; s=selector2-qualys-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=BnL0/Mz8EMK4FSV3Jcr7sPd0T3gCWe7WvN4srtfO4Ek=;
 b=wrWVrKasAllNo/cR2P34gOrNT4grCFhUHULNBT7vr/nhr9Rbqrd17fruqWn+d2v3zoHO1zBayUJXFBznDgAMA8zjmDThobGPTOITfgrGaE2P1LrveP8q2Mzbc9Hhld/9AgfbyLUyqBUO9HQwfNZILypgQ0/FgkbclbR5KfpJZw55G16nX8RQFqQ3Qdr6TzbEkuR8Fc7mhr8XjNu285qa9BhyvQGJFxidhlj/hSxL3op0eZ8xsGRQlkJvAfzHJpHs+g4QeR1/0BHqKZ0mmo671lv3OkNZRLHv5GAZGTD8yGi5cL8J9vxJkaC2RJ5b4Sjtb7RHKc83mxar8iLvJ6L0kg==
From: Qualys Security Advisory <qsa@qualys.com>
To: null p0int3r <nullp0int3rx@gmail.com>
CC: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Thread-Topic: [oss-security] [CVE-2020-28018] Use-After-Free on Exim Question
Thread-Index: AQHXRliv/YvkVSMIr0yN6gbgJd2Vg6rewqaA
Date: Tue, 11 May 2021 20:55:17 +0000
Message-ID: <20210511205319.GA22017@localhost.localdomain>
References: 
 <CAOni+oNB4JCe+Z=V+_bQGHBJ-HfN0AwVLC_H0qwVBsF0KKEoYQ@mail.gmail.com>
In-Reply-To: 
 <CAOni+oNB4JCe+Z=V+_bQGHBJ-HfN0AwVLC_H0qwVBsF0KKEoYQ@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: gmail.com; dkim=none (message not signed)
 header.d=none;gmail.com; dmarc=none action=none header.from=qualys.com;
x-originating-ip: [165.193.18.162]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: cef23a95-0d77-41c6-ef85-08d914bf1513
x-ms-traffictypediagnostic: BYAPR06MB4919:
x-microsoft-antispam-prvs: 
 <BYAPR06MB4919AEABB8C8B4A130F423B3D5539@BYAPR06MB4919.namprd06.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 eIwz7QcoReld4DoBgHsk92ygXBZn+dBYgjFIG0pY9YH9V3MIS/65e5Jr6rCc7qQjVUrnvbe2iRsZTHqHnCBChoZPO2y86H5fPinNXcvKaWnRIC0a0raMXrd0lcEvhWyama9TsBAOCNcI3Z1yT+JxlimkPXkIrA1mf/aBEJ85QRCQNsETks8c5oNe6S/Y/hPV4pWROQ86c+Ybw+DNiZMVGFqdhmc7CZ5XF4e/9HP6Dz1+IWBK2i9qaWj+YEkj9dkPoJHLpB77c92Q4S5J+MsRJ6WhasnbVzbEZZ7hkvgCadcmewmlIYw4EEIJysb2+6AzbVJerqpAxqfC+SNNOU60q6zu2R2TjJrGSKYpp7Wy5Z4YpjbQBuaIn+Rf4OlJd+tbQf6hOol3FHU8Vv6Q7vBSa9KHDFWzJQkDXNAUgT6v19nMN3gAC0vq7XH6x2CWeT3adn5LgqGsGxh6WlCjtamlxMDJHoPWmMImKh3t+HlRN/eRYWeWYEAIRDkKLRJe55lqtjiK6akdMVGw2/Pe5zDn8eT6Qt7ZM4Ic4ogbqeoIjvtTmNhroc/0Mj5/daq3hGmR3RRRUiNXicCNALbEkFV/ETAMMBKJaKGsTp4OqzawgRcEYXfRrt/PzwS7zoDzS96zLAe99yfYutCTiNpWn1SC3n68jXzjbwyjYnE3YsvhBfg=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ0PR06MB6910.namprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(366004)(136003)(346002)(396003)(376002)(39860400002)(1076003)(6916009)(15650500001)(71200400001)(86362001)(83380400001)(6486002)(478600001)(186003)(9686003)(2906002)(316002)(76116006)(4326008)(66946007)(8676002)(26005)(64756008)(6506007)(8936002)(66446008)(66556008)(38100700002)(33656002)(6512007)(66476007)(5660300002)(122000001)(131040200001);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata: 
 =?utf-8?B?a21xcm5Gd2JmSHZ3SEloSVhubHduZndIMXpyS3NLc3FTbU54UFdESE45Zysv?=
 =?utf-8?B?VXR3K3U1c3owSzFzUVA4dFNXbnlEd2RRSmsrVmtmUW56UkVTcCt1VE9weWV6?=
 =?utf-8?B?dVpzS3Jvc1p0dk5mTks4RmIxeC9FeXlDeG1BUGx0YkEza1Q4OUttd1k5aGlP?=
 =?utf-8?B?aTZwbU9Bc2NiRUwyVWxHMUtmdGRVYWZRV3Z2UVZaRHk0bGtBS3lMNkpaUFph?=
 =?utf-8?B?eGJ4eUFFdlpiN3RHSWRhaW5MOVBFYmRJQ0dRTk5LVkUyZWJINU9HaUN0U0Zq?=
 =?utf-8?B?ZW5McHUvdEJwTldiWS9TYzlnZlE0ZCszaGdCSjdCeHIvV3dtSU92azI4eTE3?=
 =?utf-8?B?Z0Zrem4wS2VweGZTYjJSek0xeWlFcUhUMThaWWZhQS9PMDFiWTgyT1ArT3V2?=
 =?utf-8?B?b01IR25PSGhvK2psclBoSnpVYjB0MXlUS1Y5UzNUbC9iVmpVbitMTEpXb1VH?=
 =?utf-8?B?M0VoNjFtamw3N3l1OTFQMERzd3Q1R01QcDVrejlnOFNmVDhta2pjbDI0Mk10?=
 =?utf-8?B?V3Z6cm14OWZXT0MyeFBBRTlHUWcweURIRnhXUFNVTkdSeHFEM2dENGZoaEtE?=
 =?utf-8?B?eU1zOTdCU245L0dGUDg0NGxlWTRvTWRtMFM2NWh4ZEgzQlFkUUJqU2pJclBa?=
 =?utf-8?B?MG5odVY2MzJLSDd0REFCbGRTSkIvbkh5dnFOZ0dGMjREZWI4em5sd3ptVDJp?=
 =?utf-8?B?d012UmtJbDB2TitKTWk4UVFyQzBnQTZEZU5ZaEJ6b3RtRWw5NVlmcHU3TEph?=
 =?utf-8?B?L0JNeVhEUWJJbGpheXZYTHVweXlQWXZPQ3IrTFR0dXFoMC82WHNOVndaT0g0?=
 =?utf-8?B?b0hVSjduQ1RsK3BIWlllTkp2Y2ZsaFljSzRZQ1dMWmJ2QU9IL1hkUlFWcFlv?=
 =?utf-8?B?aXJvOGE0V2VsckNvdUZGUzVORkdZSzNWL0M5ZCtXNTNNQUhBTVo0MGpyNEZ6?=
 =?utf-8?B?SlhVTlFkdDFXczF4b1VEL2Q1MFAxcDhta0hkNWFONGFaYkVONElTQVpETDJx?=
 =?utf-8?B?TXFXVG9HSVdsNWg1RUtLR0Z0dWljMHBtOXhnYkVJdWtwT1FGTDN2VWN5MlpW?=
 =?utf-8?B?UjBWK2ZiRlJXV3ZWbzFLQzB2S09kNTUvM1gzUGlTbExKZjM1Q2JqZjRtTVRY?=
 =?utf-8?B?ZHBHMk4waENMaGY4bFpKdllzMTNoZVQ4b05sRDhqR0VDK01NUlllY3hLVDAv?=
 =?utf-8?B?TnNEM0ppS0o1ZFgxbDZNdVJXUHBMQ2MxNGwrWm4xY1lIY2J0U0FCeS95emEr?=
 =?utf-8?B?dGo3RmFGZU9OTUU2VERTdjFwL3Qyd0RCUnMwY3huV3Y0TnQvYUF5Qks1c1BM?=
 =?utf-8?B?Z2R3NjV6YmwranV2QTc2YmRwdHVsMG4rci9CMTNkWGR4ZkJRRjNrZk5id0Fn?=
 =?utf-8?B?NHM1K01ZS3BXN21PdTY0R0J1RExuSDFmc25vbE9RYzlWcWxFL2lUZEpXbys4?=
 =?utf-8?B?NWZ0Q1Rpd1hDd1l0QnpGWFpDNEhKUnA1MWErNHVMd1B4bUNhRWVNSVdhSmpk?=
 =?utf-8?B?aTJWMDMyTnFoRlVSTWF4ZEE5bkJVbURud2wxT25pS1p0R0p1OUxxc1JPQndR?=
 =?utf-8?B?c0dYY1FBaVZlQXpDbEYxalNlY01EOFRZOTZ3N3NrMjBWb2JTT3lEOEtQbUdD?=
 =?utf-8?B?cm5uVmZKay9KQzdWSW1kUlZwZlRDWXc0QW5GRzg0QmFNbWFMeWZYb3BZUzhZ?=
 =?utf-8?B?VTlpbWJLN0dyZExTUlNjWkthVzR5a0lQd0NJSW5mU2VqQVJtTnUwc004K2N3?=
 =?utf-8?B?dnR1VGxnR1ZPYWYyWXFFY296RkxLUVU5SXlUbGJ4U3NxKzRtYWZuRjBhVUNT?=
 =?utf-8?B?WXdUcXFGUVEzV0hGQWs5QT09?=
x-ms-exchange-transport-forked: True
Content-Type: text/plain; charset="utf-8"
Content-ID: <8A576A80BE11714DB9ADD69F46C3EF8F@namprd06.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: qualys.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR06MB6910.namprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cef23a95-0d77-41c6-ef85-08d914bf1513
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 May 2021 20:55:17.3607
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 81a9ef9a-9a98-4b00-886a-895a603bc029
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: C0gE99Rc6jQx4uLqPRFsCCzcAmPgYj+eqgFN0zPf3d13HtQCxJXB6d3+hC5w8okNC9siXFj0dTBJhfy8pK6px1riPVA5J/jh7ons3aw8MgI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR06MB4919
X-Proofpoint-ORIG-GUID: OuR7N-9JhMVKIRHGrVVd1Iwne4CUdMtH
X-Proofpoint-GUID: OuR7N-9JhMVKIRHGrVVd1Iwne4CUdMtH
X-Proofpoint-SPF-Result: pass
X-Proofpoint-SPF-Record: v=spf1 include:_spf.qualys.com include:spf.protection.outlook.com
 include:spf-001ca501.pphosted.com include:stspg-customer.com
 include:_spf.salesforce.com include:emailus.freshservice.com
 include:mktomail.com ip4:3.225.140.251 ip4:168.245.25.245 ~all
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.391,18.0.761
 definitions=2021-05-11_04:2021-05-11,2021-05-11 signatures=0
X-Proofpoint-Spam-Details: rule=inbound_notspam policy=inbound score=0 adultscore=0 mlxscore=0
 clxscore=1034 suspectscore=0 malwarescore=0 phishscore=0
 lowpriorityscore=0 mlxlogscore=561 impostorscore=0 priorityscore=1501
 bulkscore=0 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2104190000 definitions=main-2105110141
Subject: Re: [oss-security] [CVE-2020-28018] Use-After-Free on Exim Question

SGksDQoNCk9uIFR1ZSwgTWF5IDExLCAyMDIxIGF0IDAxOjIzOjQzUE0gKzAy
MDAsIG51bGwgcDBpbnQzciB3cm90ZToNCj4gU28gSSBzdXBwb3NlIHRoYXQg
Y29tbWFuZCBpcyB0aGUgZmlyc3QgeW91IHNlbmQgYWZ0ZXIgdGhlIHNlY29u
ZA0KPiAiU1RBUlRUTFMiIGNvbW1hbmQgYmVpbmcgc2VudCByaWdodD8NCg0K
WWVzISBBZnRlciB0aGUgc2Vjb25kIFNUQVJUVExTIHdlIHNlbmQgYW4gaW52
YWxpZCBNQUlMIEZST00gY29tbWFuZCAoZm9yDQpleGFtcGxlLCAiTUFJTCBG
Uk9NOihcIiR7cnVuey4uLn19XCIpXG4iKS4gRXhpbSB0aGVuIHJlc3BvbmRz
IHdpdGggYSA1MDENCmVycm9yIG1lc3NhZ2UgdGhhdCBpbmNsdWRlcyBvdXIg
IiR7cnVuey4uLn19IiBzdHJpbmcsIGFuZCBzaW5jZSBjb3JrZWQNCmluIHRs
c193cml0ZSgpIGlzIHN0aWxsIG5vbi1OVUxMLCB0aGlzIHN0cmluZyBpcyB3
cml0dGVuIHRvIHdoZXJlIHRoZQ0KdXNlZC1hZnRlci1mcmVlIGNvcmtlZCBw
b2ludHMgdG8uDQoNCkhvcGVmdWxseSB0aGlzIGhlbHBzIQ0KDQo+IFBEOiBD
b25ncmF0cyBmb3IgdGhvc2UgbmljZSBidWdzIGRpc2NvdmVyZWQuDQoNClRo
YW5rIHlvdSB2ZXJ5IG11Y2ggZm9yIHlvdXIgbWFpbCENCg0KV2l0aCBiZXN0
IHJlZ2FyZHMsDQoNCi0tDQp0aGUgUXVhbHlzIFNlY3VyaXR5IEFkdmlzb3J5
IHRlYW0NCg0KDQpbaHR0cHM6Ly9kMWRlamFqNmRjcXYyNC5jbG91ZGZyb250
Lm5ldC9hc3NldC9pbWFnZS9lbWFpbC1iYW5uZXItMzg0LTJ4LnBuZ108aHR0
cHM6Ly93d3cucXVhbHlzLmNvbS9lbWFpbC1iYW5uZXI+DQoNCg0KDQpUaGlz
IG1lc3NhZ2UgbWF5IGNvbnRhaW4gY29uZmlkZW50aWFsIGFuZCBwcml2aWxl
Z2VkIGluZm9ybWF0aW9uLiBJZiBpdCBoYXMgYmVlbiBzZW50IHRvIHlvdSBp
biBlcnJvciwgcGxlYXNlIHJlcGx5IHRvIGFkdmlzZSB0aGUgc2VuZGVyIG9m
IHRoZSBlcnJvciBhbmQgdGhlbiBpbW1lZGlhdGVseSBkZWxldGUgaXQuIElm
IHlvdSBhcmUgbm90IHRoZSBpbnRlbmRlZCByZWNpcGllbnQsIGRvIG5vdCBy
ZWFkLCBjb3B5LCBkaXNjbG9zZSBvciBvdGhlcndpc2UgdXNlIHRoaXMgbWVz
c2FnZS4gVGhlIHNlbmRlciBkaXNjbGFpbXMgYW55IGxpYWJpbGl0eSBmb3Ig
c3VjaCB1bmF1dGhvcml6ZWQgdXNlLiBOT1RFIHRoYXQgYWxsIGluY29taW5n
IGVtYWlscyBzZW50IHRvIFF1YWx5cyBlbWFpbCBhY2NvdW50cyB3aWxsIGJl
IGFyY2hpdmVkIGFuZCBtYXkgYmUgc2Nhbm5lZCBieSB1cyBhbmQvb3IgYnkg
ZXh0ZXJuYWwgc2VydmljZSBwcm92aWRlcnMgdG8gZGV0ZWN0IGFuZCBwcmV2
ZW50IHRocmVhdHMgdG8gb3VyIHN5c3RlbXMsIGludmVzdGlnYXRlIGlsbGVn
YWwgb3IgaW5hcHByb3ByaWF0ZSBiZWhhdmlvciwgYW5kL29yIGVsaW1pbmF0
ZSB1bnNvbGljaXRlZCBwcm9tb3Rpb25hbCBlbWFpbHMgKOKAnHNwYW3igJ0p
LiBJZiB5b3UgaGF2ZSBhbnkgY29uY2VybnMgYWJvdXQgdGhpcyBwcm9jZXNz
LCBwbGVhc2UgY29udGFjdCB1cy4NCg==
