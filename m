X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["5312" "Thursday" "18" "February" "2021" "15:52:54" "+0000" "Felix Kosterhon" "felix.kosterhon@secuinfra.com" nil "88" "Re: [oss-security] Vulnerability in the Linux Audit Framework Auditd" nil nil nil "2" nil nil (number mark "U       felix.koster Feb 18   88/5312  " thread-indent "\"Re: [oss-security] Vulnerability in the Linux Audit Framework Auditd\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] Vulnerability in the Linux Audit Framework Auditd" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 25931 invoked by uid 550); 18 Feb 2021 16:00:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 22194 invoked from network); 18 Feb 2021 15:53:08 -0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VT+d6hscWIJf/RfL/WmXsv2xMCGZZMJYR0S1oiI/MxD/9UrDIElc5zL0fQfXRf3rK3e3rXuhsNE16F9ZYCtNV98P5plBwrzzncNtJnT4zlebxFndIwLdLjp3MwffHUb14hOpMBY4a9iUma4miK33+JV1r5YJweM9ypflJLR7cOLGYJ/q+9fGYidcWiRJWXaYYwDEv+5tDCqmWn9vO+k+D3Fejoe2lYqL8djq21VkLEmCMIV8MurJAOfB7hkejVTDo2z5fOg5EnL6uUfoq0ziIDmME7LJPkSH8PMm3TuKVkt7zGnr9SWUl3FvnsmGzVYgHgFkv+DXlKrNJi+Z7z7UBQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6X7pJPILEYGoaRj5TxqqhvgqTHm5Y4YV0g7HBbhplIE=;
 b=RXcvs5dKY6ogSTO74TbsovoSNP2scZPIT078qdh/6iAz8ayMszKEj7vZvU9EZ3/0VPt+ZzaMBCwYa3x8r3pVcbW5xzLaE70nDaR7ZC/yArVCb1hJlCzkdrray5y9JCkffMZQX9H0zBYURSLA5qjkvz3fxOrrrb20T0o2E0H8MYqDfw7TqgwvubqY7QXU8r47GCSvaW0tnGar5n8y1Ut3eKBgteC72qyP6dsv6VGcfKu8DQdlFdZ685KCNf9Zc/wu7fyHEzjHNWEzpFjIaM2Jv1Se7ry514jFQ+igQB4nYHc9qmA9kMIpaDA5TKp/yBjmDN/1gSiwNMbQJXmySb6o/A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=secuinfra.com; dmarc=pass action=none
 header.from=secuinfra.com; dkim=pass header.d=secuinfra.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=SecuInfra.onmicrosoft.com; s=selector2-SecuInfra-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6X7pJPILEYGoaRj5TxqqhvgqTHm5Y4YV0g7HBbhplIE=;
 b=CHNbvRw6AVaCBw1uuWnhyM0/KiMC7iPkRh7g++L5vD8uSciVWFX1NnRN5rGTIv+ldEBp3pP39NKZrdMlu7e/VaV31mbJofLyYArOi4naEYyD+XWjc81UYunZbdgK3dn2a2hMokM1piRCrwYKI7NFVnYxBPOL4QBMaS2dj4LGwOE=
From: Felix Kosterhon <felix.kosterhon@secuinfra.com>
To: Steve Grubb <sgrubb@redhat.com>, "oss-security@lists.openwall.com"
	<oss-security@lists.openwall.com>
Thread-Topic: [oss-security] Vulnerability in the Linux Audit Framework Auditd
Thread-Index: AQHXBd72NVl/4i+pqU+cphxVWIrrLKpd+esAgAAnVwA=
Date: Thu, 18 Feb 2021 15:52:54 +0000
Message-ID: <E42466DE-9ABE-4996-9F6B-D82DA14396B9@secuinfra.com>
References: <41A7FAA9-5814-47A7-A9A5-B36D9DE550A8@secuinfra.com>
 <2132838.iZASKD2KPV@x2>
In-Reply-To: <2132838.iZASKD2KPV@x2>
Accept-Language: en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: redhat.com; dkim=none (message not signed)
 header.d=none;redhat.com; dmarc=none action=none header.from=secuinfra.com;
x-originating-ip: [77.190.213.172]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 221feb44-e9b1-4757-aa13-08d8d42541a5
x-ms-traffictypediagnostic: AM4PR0101MB2164:
x-microsoft-antispam-prvs: 
 <AM4PR0101MB2164E69B31B643F1D975ED61EA859@AM4PR0101MB2164.eurprd01.prod.exchangelabs.com>
x-ms-oob-tlc-oobclassifiers: OLM:5797;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 XyQdfGDQ/h+DhnOsEGRpkmI8CrH+AKlMyvixCqkYb7BbEEx6tF/DWOw99dbCj35+w//Gvjl7dzhGGeBZN2eYlpwc72RPYVPtr4PL0jY9TfB5nTFUFN27xGUSJz0qbHihE6CTpKfg8syjACKsV17Ok0NHV5s3cMEQ74/WgN4b5LzoN4l21g+/PhoGNBO6w0A3XI8M2p3QiAt2McG/mKAwds4cfhkjo7dPVp1QfTQcavxg4H4MId9stlIN1g+kEhd5vbttpwe84kUZ3hvEy47DHotpQI0QzQ9P0hx1sp1+PSxRXB81WJS3cIptZM8PkjAohESfkUTV74wjxGys3j2Vdv3VfqroMkIrkpAXoYs2gjvZbkaq4jlurr68U+wLsjkKegKRXa2USSBNDKPokUd/gAsc5wHNaxlsDiNxjcAu7L9pNt1shwsbkVZGP2salVEfWkrDPrNT2VRd/bS/gn8Trp6Kh+gNHbV9oSu8pQiuwY3/7FSTU1kjqmilFsHUZl5+e/dVe1GGQnooEum4jGNhGrfgoThKlPUZFc8MQ9018joYSpN4QNH6c83WWlmMHksx0T/J+4/B4YA3gdoHgkaoSsh9gxiBoIwjxBEYXKx7gSU=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM8PR01MB7523.eurprd01.prod.exchangelabs.com;PTR:;CAT:NONE;SFS:(39830400003)(396003)(376002)(366004)(346002)(136003)(2906002)(316002)(6512007)(66476007)(53546011)(66574015)(6506007)(64756008)(33656002)(66446008)(44832011)(66946007)(6486002)(110136005)(2616005)(76116006)(36756003)(186003)(5660300002)(15650500001)(478600001)(8936002)(86362001)(66556008)(71200400001)(26005)(8676002)(15974865002)(83380400001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata: 
 =?utf-8?B?RXdRaTZmRjBTem1Uc0owY1h1VnF6T2JMNjFQSDFsaXRsMkg4RlZXb2g1TlBk?=
 =?utf-8?B?SllkN09YRXdVSVVlSUhHUW1ZRjExYy9rVXhwWU9FY1JyNC9iTy9iOTVxbyt4?=
 =?utf-8?B?Wkk4MUVHTHVad2hVNDlhMHNDOFUyNXYwNHhNK1BHVHRwdFJKRHRoNDFFR09z?=
 =?utf-8?B?VUh0L1lCY3o3SFlNQ3VySE5VZktiWEdWL0ZMaHIyRnRDQkEyem9KaHJuVTJT?=
 =?utf-8?B?ZElYMm1PZmtQSU1mQkwwS2pJYmE4K3RtbDVIWmQycVErcnVxRk94ZVdydW9Z?=
 =?utf-8?B?OGloZFBSdWpmMFFPYlhoZGJnZElZSDhaTmhhWnRJMmpVdkRyOW1zYVlldGx4?=
 =?utf-8?B?U0pEMFRYdlQyQ3RjeldJQ1VjcGRUcHFZcnR0ZTlYSEFCaDl1cWZVV2R4ZFkx?=
 =?utf-8?B?OWt1emdkaGFLK0E1ZEZDdFkyN1NtQXV5c1hyV2YydC9lMGkvUmxsbU1NdDk5?=
 =?utf-8?B?V3JiQ3FOOWpyckpuemxUb2hkUDJIRzl3dDYwQzk4aW9Wb2hnVWJhbEkwYUdM?=
 =?utf-8?B?dTBZTCtEL0p0czBKeEJ2Tlc3MUJPeWViejB4MlZkVk02Sk0rVWU3cGxkR2Zo?=
 =?utf-8?B?UmpKTlJCSWNvN05JK3IvQVBWOVlxRDU3eE5PVWxOTHU0YkdxakJvVGo5UkVi?=
 =?utf-8?B?aUgvd1ZkUjhHRnVBekdPS1dabyswZDFSMGhuTE51SXgxYkpCZVM4TS9xSTd1?=
 =?utf-8?B?UktVVTFadXdTNkxvdjZyQW1TQWRpa1pXY0d5T3QwZTJ1NUlPZ0ZNMm9qQjR0?=
 =?utf-8?B?RWdJbktWRDhwdmhJaFZLQnhtbTkwZXZmOHZWbUVJT2NIdytQRlNTRGdvR1ZF?=
 =?utf-8?B?cXlsNkVWRnBJRStNV0xYQWlqN2dLeUw5aTRtYy8xK1MvQ2wyWGNVNVNldmJ5?=
 =?utf-8?B?M1VlMlljbU9hMGdqMnVLU1ZndzdMdlBITlQ1VFBLdHFvbmFCamJ4Rk9Razd5?=
 =?utf-8?B?NFdnOFBOd3QyV0VaZFQwZjJsU3ZZaWk0L1Q0TUtuR3ZuZXJXUllDRzlHWmVz?=
 =?utf-8?B?VllhalVUYi9nRUVaZlBWRXJPQnZEVU1GQ3luK2c1QkhLSWNZQkdQS2N5L0sv?=
 =?utf-8?B?RUlPK1pYSDE1Sk5aZTg1SjJlaE55VkdEMlpZYVYyRk5RRldwYU5BcGZjSU9Z?=
 =?utf-8?B?b2RjZmI4ZjJLUUNIMXp6Zk5xL3A0aE9pQVA4cU1GdDEyM0xiYytUYWQ4UzlP?=
 =?utf-8?B?NGpTYjZnK0ozZERHZytCcWtXUmVwWTJrV255OEdocnJjM1NZZ2pwSkFXZUdi?=
 =?utf-8?B?MnVSVkNkVURlNGxJaXU1cnZjSmVnNFlOVVAwa3hvZ3VTWkZwY1ZjcXJQL1l1?=
 =?utf-8?B?WkUvbHgxOFhsVm5VTUI4dmhkMVJnZXJ5ZHRvdGpFbmdqSXdoSGgzbEQyUGtx?=
 =?utf-8?B?K2c5WituQ0E0Zmx5VFdJRjVGVzRtcDd2bXZvNEdJY0xOZUVxR3ZiRmN1TkJx?=
 =?utf-8?B?aWF5dHRobDZZZW00MDF2TXgzSmtNOVloYkxrbTRXeWVuQ0NZTDZWeVF4U01m?=
 =?utf-8?B?VlNDUEpZbkpOZlQ3Y0hpV3lFZlExZFhCMCsvWENIQmNib1RiaXN5R2lkWThP?=
 =?utf-8?B?VFVqdTl2VXVobmF6R0oxdTZtUVNXb0Z1eUx5WVJjUEZ6S0d6anR6Y291U3pL?=
 =?utf-8?B?VWg4MVBtQ01yeks2cDN1V3pITTUzU3RVbkpVRmI3M1lEdmpzeTVtOGtIWXd0?=
 =?utf-8?B?UThlUjVsSlh6eE9RaXZSTDlpbm9ZQ3cvd0IzZVBUcUJ2M1FKRDZMVVorWjNw?=
 =?utf-8?B?N2FyamFLK2I5aVBHb3M1RDg1SG0xZ0NDVjlRc1dwMkdLWEYzVXBvM05lYU8y?=
 =?utf-8?B?QmVRNlZpZ0FiSm9Pa29EUT09?=
x-ms-exchange-transport-forked: True
Content-Type: text/plain; charset="utf-8"
Content-ID: <EF3C250D42CF014684C926ECCBD4FE18@eurprd01.prod.exchangelabs.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: secuinfra.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AM8PR01MB7523.eurprd01.prod.exchangelabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 221feb44-e9b1-4757-aa13-08d8d42541a5
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Feb 2021 15:52:54.9426
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 8d7e1dc3-e4d6-4538-a7ef-53ec51a65148
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 0ersM+S0wigd1LQLUyyzPvtPqohjcEcHfEPTFM3TyKuGhrOn1p6zTPsivK4CN/sw5HqshWFEsKBy5TtSzUYDcedm5FYU5coKW5h3rvGhvNg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM4PR0101MB2164
Subject: Re: [oss-security] Vulnerability in the Linux Audit Framework Auditd

SGVsbG8gTXIuIEdydWJiLA0KIA0KdGhhbmsgeW91IGZvciB5b3VyIGluc2ln
aHQuDQpGaXJzdCBhbmQgZm9yZW1vc3Qgd2Ugd291bGQgbGlrZSB0byBjbGFy
aWZ5IHRoYXQgb3VyIGludGVudCBpcyBub3QgdG8gcHV0IGJsYW1lIG9uIGFu
eW9uZSBidXQgdG8gaW1wcm92ZSB0aGUgbGV2ZWwgb2Ygc2VjdXJpdHkgZm9y
IHRoZSBhZmZlY3RlZCBzeXN0ZW1zIGFuZCB0aGUgb3JnYW5pc2F0aW9ucyB1
dGlsaXNpbmcgQXVkaXRkLg0KQWNjb3JkaW5nIHRvIHRoZSBydWxlcy5jb25m
IG1hbnVhbCBwYWdlLCBmaWxlLXdhdGNoIHJ1bGVzIGFyZSBtZWFudCB0byBt
b25pdG9yIGFueSBhY2Nlc3NlcyB0byBmaWxlcyBiYXNlZCBvbiB0aGVpciBw
ZXJtaXNzaW9uIGxldmVsLg0KRm9yIHRoZSBzeXNjYWxscyBtZW50aW9uZWQg
aW4gdGhpcyByZXBvcnQgdGhpcyBpcyBub3QgdGhlIGNhc2UuDQogDQpSZWRI
YXQgSW5jLiBzaGFyZXMgb3VyIHBlcnNwZWN0aXZlIG9uIHRoaXMgaXNzdWUg
YW5kIGhhcyBhc3NpZ25lZCBhIENWRSBmb3IgdGhlIHZ1bG5lcmFiaWxpdHku
IEFkZGl0aW9uYWxseSB0aGV5IGluZm9ybWVkIHVzIHRoYXQgdGhleSB3aWxs
IHdvcmsgdG9nZXRoZXIgd2l0aCB0aGUgVXBzdHJlYW0gTGludXggS2VybmVs
IERldmVsb3BlcnMgb24gYmVoYWxmIG9mIGZpeGluZyB0aGlzIGlzc3VlLg0K
IA0KRnVydGhlcm1vcmUgd2Ugd2VyZSBhc2tlZCBieSBSZWRIYXQgSW5jLiB0
byBzaGFyZSBvdXIgZmluZGluZ3MgdmlhIHRoaXMgbWFpbGluZyBsaXN0Lg0K
IA0KS2luZCByZWdhcmRzLA0KIA0KRmVsaXggS29zdGVyaG9uDQpDeWJlciBE
ZWZlbnNlIEFuYWx5c3QNClNFQ1VJTkZSQSBHbWJILCBHZXJtYW55DQoNCu+7
v0FtIDE4LjAyLjIxLCAxNTozMiBzY2hyaWViICJTdGV2ZSBHcnViYiIgPHNn
cnViYkByZWRoYXQuY29tPjoNCg0KICAgIEhlbGxvLA0KDQogICAgSSBub3Jt
YWxseSBkbyBub3QgY29tbWVudCBvbiBzZWN1cml0eSBhbm5vdW5jZW1lbnRz
LCBidXQgdGhpcyBuZWVkcyBzb21lIA0KICAgIGZpeGluZy4uLg0KDQogICAg
T24gVGh1cnNkYXksIEZlYnJ1YXJ5IDE4LCAyMDIxIDU6MTU6MjAgQU0gRVNU
IEZlbGl4IEtvc3RlcmhvbiB3cm90ZToNCiAgICA+IG15IG5hbWUgaXMgRmVs
aXggS29zdGVyaG9uIGFuZCBpIGFtIEN5YmVyIERlZmVuc2UgQW5hbHlzdCBh
dCBTRUNVSU5GUkENCiAgICA+IEdtYkgsIEdlcm1hbnkuDQogICAgPiANCiAg
ICA+IFdlIGRpc2NvdmVyZWQgYSBzZWN1cml0eSB2dWxuZXJhYmlsaXR5IGlu
IHRoZSBMaW51eCBBdWRpdCBGcmFtZXdvcmsNCiAgICA+IChBdWRpdGQpLg0K
DQogICAgQmVmb3JlIHBlb3BsZSBzdGFydCBhc2tpbmcgZm9yIGFuIHVwZGF0
ZWQgYXVkaXQgcGFja2FnZSwgYXVkaXRkIGlzIG5vdCANCiAgICByZXNwb25z
aWJsZSBmb3IgdGhpcy4gVGhlIExpbnV4IEtlcm5lbCBpcyB3aGVyZSBhbnkg
aXNzdWUgbWlnaHQgbGllLiBCbGFtaW5nIA0KICAgIGF1ZGl0ZCAgaXMgbGlr
ZSBzYXlpbmcgc3lzbG9nIGhhcyBhIHNlY3VyaXR5IHByb2JsZW0gYmVjYXVz
ZSBhIGxvZ2luIHdhcyBub3QgDQogICAgcmVjb3JkZWQuDQoNCiAgICA+IER1
cmluZyBvdXIgcmVzZWFyY2ggd2UgZGlzY292ZXJlZCB0aGF0IHRoZSB1c2Fn
ZSBvZiBhIGNlcnRhaW4NCiAgICA+IG9wZW4tc3lzY2FsbCAob3Blbl9ieV9o
YW5kbGVfYXQpIGlzIG5vdCBjb3ZlcmVkIGJ5IHRoZSBjdXJyZW50IGZpbGUg
d2F0Y2gNCiAgICA+IGltcGxlbWVudGF0aW9uIG9mIEF1ZGl0ZC4NCg0KICAg
IFdoZXJlIHRvIGJlZ2luPyBuYW1lX3RvX2hhbmRsZV9hdC9vcGVuX2J5X2hh
bmRsZV9hdCB3b3JrIHRvZ2V0aGVyLiANCiAgICBuYW1lX3RvX2hhbmRsZV9h
dCBpcyB0aGUgc3lzY2FsbCB0aGF0IHdvdWxkIGhhdmUgdGhlIHBhdGggbmFt
ZSBhbmQgcmV0dXJucyBhIA0KICAgIGhhbmRsZS4gb3Blbl9ieV9oYW5kbGVf
YXQoKSB0YWtlcyB0aGUgaGFuZGxlIGFuZCBtYWtlcyBhIGRlc2NyaXB0b3Iu
IFRoYXQgDQogICAgbWVhbnMgb3Blbl9ieV9oYW5kbGVfYXQoKSBoYXMgbm8g
aWRlYSB3aGF0IHRoZSBwYXRoIG1pZ2h0IGJlLiBBbGwgaXQgaGFzIGlzIA0K
ICAgIG51bWJlcnMuIFNvLCBpZiB0aGVyZSB3YXMgZ29pbmcgdG8gYmUgYSB3
YXRjaCBwbGFjZWQsIGl0IHdvdWxkIGJlIG1vcmUgDQogICAgbWVhbmluZ2Z1
bCBvbiBuYW1lX3RvX2hhbmRsZV9hdCgpLiBBbnlvbmUgY29uY2VybmVkIGNh
biBwbGFjZSBhIHN5c2NhbGwgYXVkaXQgDQogICAgcnVsZSBvbiBuYW1lX3Rv
X2hhbmRsZV9hdCgpIGxpa2UgdGhpczoNCg0KICAgIC1hIGFsd2F5cyxleGl0
IC1GIGFyY2g9YjMyIC1TIG5hbWVfdG9faGFuZGxlX2F0ICAtRiBhdWlkPj0x
MDAwIC1GIGF1aWQhPXVuc2V0DQogICAgLWEgYWx3YXlzLGV4aXQgLUYgYXJj
aD1iNjQgLVMgbmFtZV90b19oYW5kbGVfYXQgLUYgYXVpZD49MTAwMCAtRiBh
dWlkIT11bnNldA0KDQogICAgQnV0IHRoZW4uLi53aGF0IG1pZ2h0IHVzZSB0
aGlzPyBBbGwgdGhlIHJlZmVyZW5jZXMgSSBjYW4gZmluZCBzZWVtIHRvIA0K
ICAgIGFzc29jaWF0ZSB0aGlzIHN5c2NhbGwgd2l0aCBORlMuIEFuZCBpZiB0
aGF0IGlzIHRoZSBjYXNlLCB0aGUgYXVkaXQgc3lzdGVtIA0KICAgIGRvZXNu
J3QgcmVhbGx5IHN1cHBvcnQgcmVtb3RlIGZpbGUgc3lzdGVtcy4gU29tZXRp
bWVzIGl0IGRvZXMuIEJ1dCB0aGF0IGlzIA0KICAgIG1vcmUgbGlrZWx5IGFj
Y2lkZW50YWwgdGhhbiBhbnl0aGluZyBwbGFubmVkLg0KDQogICAgQnV0IHRo
aXMgZG9lcyBub3Qgc3RvcCBhbnlvbmUgd2l0aCBhZG1pbiBwcml2aWxlZ2Vz
IGZyb20gdXNpbmcgdGhlIHN5c2NhbGwgDQogICAgcGFpciBsb2NhbGx5Lg0K
DQogICAgLVN0ZXZlDQoNCiAgICA+IFRoaXMgYWxsb3dzIGEgbG9jYWwgYXR0
YWNrZXIgd2l0aCBlbGV2YXRlZA0KICAgID4gcHJpdmlsZWdlcyAoQ0FQX0RB
Q19SRUFEX1NFQVJDSCBjYXBhYmlsaXR5KSB0byByZWFkIGFuZCBtb2RpZnkg
ZmlsZXMNCiAgICA+IHdpdGhvdXQgYmVpbmcgbm90aWNlZCBieSB0aGUgaW1w
bGVtZW50ZWQgQXVkaXRkIGZpbGUgd2F0Y2hlcy4NCiAgICA+DQogICAgPiBX
ZSBkaXNjbG9zZWQgb3VyIGZpbmRpbmcgdG8gUmVkSGF0LCBJbmMuIGluIE5v
dmVtYmVyIGFuZCBpdCB3aWxsIGJlDQogICAgPiBwdWJsaXNoZWQgdG9kYXks
IEZlYiAxOCwgdW5kZXIgQ1ZFLTIwMjAtMzU1MDEuIEFzIHN1Z2dlc3RlZCBi
eSBSZWRIYXQsDQogICAgPiBJbmMuLCB3ZSB3YW50IHRvIGluZm9ybSB5b3Ug
YWJvdXQgdGhpcyBzZWN1cml0eSBmbGF3LiBJZiB5b3UgaGF2ZSBhbnkNCiAg
ICA+IGZ1cnRoZXIgcXVlc3Rpb25zLCB3ZSBhcmUgaGFwcHkgdG8gaGVscCB5
b3UuDQogICAgPiANCiAgICA+IFdlIHdvdWxkIGFsc28gbGlrZSB0byBzdWJz
Y3JpYmUgdG8geW91ciBtYWlsaW5nIGxpc3QgdG8gc3RheSBpbmZvcm1lZCBh
Ym91dA0KICAgID4gY3VycmVudCBzZWN1cml0eSB0b3BpY3MuDQogICAgPiAN
CiAgICA+IEJlc3QgUmVnYXJkcywNCiAgICA+IA0KICAgID4gDQogICAgPiAN
CiAgICA+IEZlbGl4IEtvc3Rlcmhvbg0KICAgID4gDQogICAgPiBDeWJlciBE
ZWZlbnNlIEFuYWx5c3QNCiAgICA+IA0KICAgID4gDQogICAgPiANCiAgICA+
IA0KICAgID4gDQogICAgPiBTRUNVSU5GUkEgR21iSA0KICAgID4gDQogICAg
PiBNw7xuY2hlbmVyIFN0cmHDn2UgMzYNCiAgICA+IA0KICAgID4gNjAzMjkg
RnJhbmtmdXJ0L01haW4NCiAgICA+IA0KICAgID4gDQogICAgPiANCiAgICA+
IE1vYmlsZTogICs0OSAxNTEgMTg5NzU2NjYNCiAgICA+IA0KICAgID4gDQog
ICAgPiANCiAgICA+IGZlbGl4Lmtvc3RlcmhvbkBzZWN1aW5mcmEuY29tDQog
ICAgPiANCiAgICA+IHd3dy5zZWN1aW5mcmEuY29tDQogICAgPiANCiAgICA+
IA0KICAgID4gDQogICAgPiBGb2xsb3cgdXMgb24gWElORy4NCg0KDQoNCg0K
DQo=
