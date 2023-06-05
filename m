Received: (qmail 29859 invoked by uid 550); 5 Jun 2023 14:51:06 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 20057 invoked from network); 5 Jun 2023 14:35:30 -0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Pic/1x5WPTBMuWQ6KyIAaDTSDrYDsBP20IMkYmEnV11s22kHfDnBQzCF6q9/P7IpQKt45YOiZfj7i+Cb7LpYt0lIjeMMBVHSCttgs4XyxSFvRXdgmOir8KbdQ/tz/1lempCibIwes54uNeUJVjEr+4afPkvcLf+RjHBtceK4nilyEWPjAMHu74BqItBGcwznyNx3YoP178N6UYAMEwd/G9mEQMdCNn5HyVrtZgZcVKIWoFp4mNQqC2BLIPCRpXCeVZe228dW71zTfz8vCdYZv0wD9r59v1LcecqmXLAnc/q6xwn6zKMOQAwBrTqU/BSzRi4hyT03UQCSW5eg9csAbg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dvaziz3u2wshOSSaaqbcU+X68eeiRAPgOlpMWSfzvZA=;
 b=XvBZqnklRyBV0IbKJBXqFNFrO51T4u5HcUBVfUalXnkfRwjUyLUZGoIzJ5KG0EWQoWvaK44aZdGLMZwL78AsVHpmFOVvDcmp1ZeDTAsQH9IPHnnPy/GP5+3PKeahkDNfUlL1PZXE/SLWF3TwNS207lydPHYqMIjOIQPNbFc1FkSoffMBs6/4qDYQ/bkCxxKtgbdNL8XCbVKlPhLBAaVGT4uEmMxjk4PebESUyP0dI+6zXmbxhpfbvjZmygbgDwE91nQrtRkrxPyWgKmrdlszOAZnoUlzXMEUfecRczfuEF/TAhm5Dc7OTsVLBZNdSRlTg4uU+eumXS27IWnuPQeDog==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nist.gov; dmarc=pass action=none header.from=nist.gov;
 dkim=pass header.d=nist.gov; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nist.gov; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dvaziz3u2wshOSSaaqbcU+X68eeiRAPgOlpMWSfzvZA=;
 b=NPJ33xzur7Z30+aN8vAxEiE+HLYOSENfduVXKiJWP4WgyrzDp6g6wNZtBHtzTK+V95RFBW9Q64GD+Pb0FieU1ZauT4m+GARGqowN6zjLe5dbLIPLKH0ZLDXx8oEGbBv3mmGv5skeBAxNqCn0ENRCF2famNXw3N6RriDo8LX56YRvwldmBU9lpuC2vDbfN6Ap6YUhsAp+77mrQm/6A6ONsGZ0+YYUgB9tzJiNlpv5VzbXbBsfQXmL2WwYix7h46jxauE94a5b0l6kVP3K7TqttX2FKRGBgy+TbIedXsrxLI/dUjlxdzS2C0qFE9cR9FlMXXvbeYqToD2DbnaPcB5Iqw==
From: cpe_dictionary <cpe_dictionary@nist.gov>
To: =?utf-8?B?QmFzdGllbiBSb3VjYXJpw6hz?= <rouca@debian.org>,
	"oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
CC: cpe_dictionary <cpe_dictionary@nist.gov>
Thread-Topic: Update CVE-2021-3610
Thread-Index: AQHZklHpwu4We7GEo02HErpQOtSMjq98USjA
Date: Mon, 5 Jun 2023 14:35:15 +0000
Message-ID:
 <SA1PR09MB7583C04FD0BFCF3663F20D22F94DA@SA1PR09MB7583.namprd09.prod.outlook.com>
References: <4860199.GXAFRqVoOG@portable-bastien>
In-Reply-To: <4860199.GXAFRqVoOG@portable-bastien>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nist.gov;
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SA1PR09MB7583:EE_|BLAPR09MB7282:EE_
x-ms-office365-filtering-correlation-id: b44d6c45-3901-4756-3be4-08db65d2140d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info:
 LuhATZ6ly7qa1BzP42a+vH+HmcvT8rXuDoxN/2+ylbCG1pJMcpI272hkkFkjfsgfKOxySDD9W6fXtDAofQH6SQI7Ebd2R1GKm0GxDNJ3cKwhZqQXoG/1rMEaNNHu07II8wCCB5sYKh6bXfn3IgRHSNdKwdmnvztpjcTklXce3PVxIYBDD7qABzDcjS6HFbPwXGTXVToTbaQKk+22bBgZWiUCJl3LGmcpikwX3o/qT78j0sfAjOntRsA2cX9EdWyACHQ31rmlL7kcncRHEy7cmyu+feF9W9dRxXymD4vkZaGk77aArd8kL32DK2sKMZQhtp4RcPE8V3xSD5fO84mfaeOMpLOLVInop4Y9AOMXFZUWxVTi7WpG+ffsUO6+69of442ITdXninRzLiaC7iQsXtqs4j4Ks7N1A/UAd+GXeFpWRrjc5zDwmn3a9cLFLmzTF2OOtOUs67R1Mw6c7Y44VoVF7RiDJEiFRi9TEK04rPPcbCpdc3JfrHLm2+3VDehQcU4/DPSyfjNPZ23HJhRZW3pW+TId5AbIxA240yQ1l40U7o6Gb37x7EPpNmKdRs7p6p2fA5bXxIzT3FW0oUTsf0iqtLHfpY4ineRpqSrNU3A=
x-forefront-antispam-report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SA1PR09MB7583.namprd09.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(4636009)(366004)(451199021)(107886003)(53546011)(9686003)(6506007)(38100700002)(7696005)(26005)(186003)(66574015)(966005)(83380400001)(71200400001)(498600001)(110136005)(4326008)(64756008)(66446008)(66476007)(66556008)(122000001)(55016003)(82960400001)(76116006)(66946007)(8936002)(8676002)(5660300002)(52536014)(2906002)(33656002)(86362001)(15650500001)(38070700005);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:
 =?utf-8?B?OVFIYWdMaU00b0xUWGVvS0VYbHU1YVRIOGlndUI0azlEVHI3SW9weTNOL1cz?=
 =?utf-8?B?WGFHM2pvcUJ3bmxHNGxJK1JwTFpIaWwyR3RteHZaV3JZcmZNU3RLQVJjM3pn?=
 =?utf-8?B?VzlkMThoV2paYWRzMjcwZnFwKzZXYjlXd1FHeEo1MC93TFhONlo4bTZtWE0w?=
 =?utf-8?B?Qk9ON3hMclhZMnhPbVkvVksyV1NYOEtvdlZYVSsvbWQ1aG56Sk9XYldIcmN4?=
 =?utf-8?B?WWlacExWU3NOZGZaNlN0UGtvb21UdmhZNUp2TmtCVDI0KzFnajRWODJaK2RO?=
 =?utf-8?B?YWovUTJKUmFZa0gxTWdXak5kVnIxbzJYcUFRMzh1M3pwVU5tVGNaMTVZV3BM?=
 =?utf-8?B?SE9rSS9KOFVIUzFwMGU4cEF5Q1N6T2R6Y3h0MnptazVwYU1PWllOUnBBMlFO?=
 =?utf-8?B?VFAreTNjcTVPemFqNW5JWHpvTFhEWjN0VnU0REJkdkxtRVJpRko3TmI3OS8r?=
 =?utf-8?B?MUtXZ1laVWRaYnpnL0hjNWZLZEQveU52RnRLeUh1Y1c1cGt2SmhNNVdpNWx5?=
 =?utf-8?B?VjFVZTViU1p0bWFCLy9NWlFpZDBlaEkzQk5sMCtWcTE3UGRCRHNNRURncjZl?=
 =?utf-8?B?TEhIT1ZZMjNzNVBEZ21JZmVGK1RjVlFuMFNlVDVTRzFjSk1oRlZra1Evbnk3?=
 =?utf-8?B?MU9QWG1aaGl1Smp2YmdQdUVLNldueVlIWnpvYWh2Q1RDYWlLK25IRnJnWDZC?=
 =?utf-8?B?RExEVldrTW9qSTdmNzFIcnZhSUhYK2xTeG5Yd2pDUFFDMHY5b00vN0JEaGgr?=
 =?utf-8?B?a2JHVGQ5aTVkc1NMNCtYak5lUFVEUkw4QjBzZGRJN1l5NzJuQXE3dy9rMndF?=
 =?utf-8?B?azdRMEE1MjluVGM0SXJqYTRQVVZ2SWI5T2FhdmtmelBPYTdlMTl6c0J3YU1K?=
 =?utf-8?B?Rk85b0NQeVp3cXZxSytXcE1YOEhTaFJuTklFcFVoZzM0eG0rWGFhTmdTVTFz?=
 =?utf-8?B?bGNhTGtsSnQ0SXBwclJXSEpKOW5mUzVDRVByTDVCdFNSYUhhcVZZN1NvbS9T?=
 =?utf-8?B?N2NEZEFNZUp1OUhTRzhHeHhqcWthSFUzQVNjSW9uZ0ZneTIyTERxZXo4YmNm?=
 =?utf-8?B?U3UrRG9BUk9yMkhVdE82bFhZVlJtZ1dGVXhNRGVMWGowNmNNbHlNR3EzMWNJ?=
 =?utf-8?B?TmQxamUvb043bGpKbGI2OXpRQ0wvanV3Rmp1dWFJemxhZDM5c2VVNWEvK0VY?=
 =?utf-8?B?ayt4WVFPRjlNQ3ptUVBhQzFjZ1VsR3pXZmhYL2M2WTdyNDNZWEc4V2lCbW0z?=
 =?utf-8?B?Wk96bUM2Vld0QktVT2wxVmQ5Mm5XY0dqOG1DVjBRSHF0RTM4b1lpWFlXYlVz?=
 =?utf-8?B?Ni9sRUV0VG52VG1UM2tKTm8rd2l4Mnc1TkxmbDN6a1RxTjhWU0hLQ1IxS2VF?=
 =?utf-8?B?RytFNTUxSUE0dnY5ckN3QXRaZlhMWUxTTXNJbHU3NlBOdHdkdlJ1cStINDJM?=
 =?utf-8?B?a1Q1dmM2bDFKR3FqSU1NVmNUelFzdUd4Y1RlSUdEN2I5T0xzc3VLUDFsYVZD?=
 =?utf-8?B?Z2R2WE5LWXpXdUlhRWNUZFdaMXlJY0Fud1JWVDFTS0RFcmFPMEJZUE1SRUM2?=
 =?utf-8?B?Wit1cTZIYmdhdSt6SjV4czZ1Q2o4K2RYRnlzckVVSFRzejBkWnI3bFFWMTRW?=
 =?utf-8?B?T29HYVpUTzA0NDdyZFZiOUw4K2g1YzZnZjFnSE5iTnJYNGhSM1M2aFc1N0NJ?=
 =?utf-8?B?UzkrcXpSSjVleVZzd28wT1U5azFiYWVzUWd5d253ekc0V3c5Q2RpUStVWk5P?=
 =?utf-8?B?VDFaQWdHd2lhd2JDMHk4L0xTNGJEeVlMSkUzc1RoZ2xiVzVnSUp4akprSUFL?=
 =?utf-8?B?TGdWSnNNVUcycWhNRnZJazNwcmZuRW1DRWwvVGEydElPczlza1Z5UXMwb0Zh?=
 =?utf-8?B?KzEzRHR3Y1NCUE53OHZJTEc0aXFRUFRlY2NQSktESnlpcFRVVGsyZ3hMbFYz?=
 =?utf-8?B?MzU0MDFEcDJTZm8wTkNCc3FQRmR5THh3aC9VYVEyRXRyeDJEZjBOVWdtRkZQ?=
 =?utf-8?B?L1dYeFdrZHhUc0MyU0V2LzRIYStvOG5zQndZN2xyaXJiczh1WmZoZnJydjMr?=
 =?utf-8?B?WFphaVlSREpzMitZN1JTaTlMazJQcnlUdGY5aWRhb1JVT0s0MDZadEZ0b2Qv?=
 =?utf-8?Q?hTOY=3D?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: nist.gov
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SA1PR09MB7583.namprd09.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b44d6c45-3901-4756-3be4-08db65d2140d
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Jun 2023 14:35:15.6597
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 2ab5d82f-d8fa-4797-a93e-054655c61dec
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BLAPR09MB7282
Subject: [oss-security] RE: Update CVE-2021-3610

R29vZCBtb3JuaW5nLA0KDQpUaGFuayB5b3UgZm9yIGJyaW5naW5nIHRoaXMg
dG8gb3VyIGF0dGVudGlvbi4gV2UgYXBwcmVjaWF0ZSBjb21tdW5pdHkgaW5w
dXQgaW4gb3JkZXIgdG8gcHJvdmlkZSB0aGUgbW9zdCBhY2N1cmF0ZSBhbmQg
dXAtdG8tZGF0ZSBpbmZvcm1hdGlvbiBhcyBwb3NzaWJsZS4gQWZ0ZXIgcmV2
aWV3aW5nIHB1YmxpY2x5IGF2YWlsYWJsZSBpbmZvcm1hdGlvbiB3ZSBoYXZl
IG1hZGUgdGhlIGFwcHJvcHJpYXRlIG1vZGlmaWNhdGlvbnMgaW4gYWRkaXRp
b24gdG8gYWRkaW5nIG1pc3NpbmcgdmVyc2lvbnMgZm9yIHRoZSBjb2RlYmFz
ZS4gUGxlYXNlIGFsbG93IHVwIHRvIDI0IGhvdXJzIGZvciB0aGUgY2hhbmdl
cyB0byBiZSByZWZsZWN0ZWQgb24gdGhlIHdlYnNpdGUgYW5kIGluIHRoZSBk
YXRhIGZlZWRzLg0KDQpWL3IsDQpDb21tb24gUGxhdGZvcm0gRW51bWVyYXRp
b24gVGVhbQ0KY3BlX2RpY3Rpb25hcnlAbmlzdC5nb3YNCg0KLS0tLS1Pcmln
aW5hbCBNZXNzYWdlLS0tLS0NCkZyb206IEJhc3RpZW4gUm91Y2FyacOocyA8
cm91Y2FAZGViaWFuLm9yZz4gDQpTZW50OiBNb25kYXksIE1heSAyOSwgMjAy
MyAxOjIxIFBNDQpUbzogb3NzLXNlY3VyaXR5QGxpc3RzLm9wZW53YWxsLmNv
bQ0KQ2M6IGNwZV9kaWN0aW9uYXJ5IDxjcGVfZGljdGlvbmFyeUBuaXN0Lmdv
dj4NClN1YmplY3Q6IFVwZGF0ZSBDVkUtMjAyMS0zNjEwDQoNCkhpLA0KDQpJ
IHdhbnQgdG8gdXBkYXRlIHN0YXR1cyBvZiBDVkUtMjAyMS0zNjEwOg0KDQpD
b250cmFyeSB0byBjb21tb24gYmVsaWVmIG92ZXIgdGhlIGxpbnV4IGRpc3Ry
aWJ1dGlvbiB0aGlzIENWRSBhZmZlY3RzIGltYWdlbWFnaWNrIDYuIEl0IHdh
cyBpbnRyb2R1Y2VkIGJ5IGNvbW1pdCBiODc0ZDUwMDcwNTU3ZWI5OGJkYzZh
MzA5NWVmNDc2OWFmNTgzZGQyIGZvciAgNi45LjEwLjg4DQoNClBhcnRpYWwg
Zml4ZXM6DQpJbWFnZW1hZ2ljazYgPD0gNi45LjEwLTkyIGh0dHBzOi8vZ2l0
aHViLmNvbS9JbWFnZU1hZ2ljay9JbWFnZU1hZ2ljazYvY29tbWl0LzJkOTYy
MjhlZWM5ZmJlYTYyZGRiNmMxNDUwZmE4ZDQzZTJjNmI2OGENCkltYWdlbWFn
aWNrNiA8PSA2LjkuMTEtMTAgaHR0cHM6Ly9naXRodWIuY29tL0ltYWdlTWFn
aWNrL0ltYWdlTWFnaWNrNi9jb21taXQvNzM3NDg5NDM4NTE2MTg1OWZmYmI4
NGUyODBmY2M4OWU3YWUyNTdlNA0KSW1hZ2VNYWdpY2s2IDw9IDYuOS4xMS01
NCBodHRwczovL2dpdGh1Yi5jb20vSW1hZ2VNYWdpY2svSW1hZ2VNYWdpY2s2
L2NvbW1pdC9jZGI2NzAwNTM3NmJjYzhjYmIwYjc0M2ZiMjI3ODc3OTRjZDMw
ZWINCkltYWdlTWFnaWNrNiBbMS8yXTogaHR0cHM6Ly9naXRodWIuY29tL0lt
YWdlTWFnaWNrL0ltYWdlTWFnaWNrNi9jb21taXQvYjMwN2JjYWRjZGY2ZWE2
ODE5OTUxYWMxNzg2Yjc5MDRmMjdiMjVjNg0KRmluYWwgZml4ZXMNCkltYWdl
TWFnaWNrNiBbMi8yXTogaHR0cHM6Ly9naXRodWIuY29tL0ltYWdlTWFnaWNr
L0ltYWdlTWFnaWNrNi9jb21taXQvYzc1YWU3NzFhMDBjMzhiNzU3YzVlZjRi
NDI0YjUxZTc2MWIwMjU1Mg0KDQpJIGFtIG5vdCBzdWJzY3JpYmVkIHNvIGNj
IG1lDQoNCkJhc3RpZW4NCg==
