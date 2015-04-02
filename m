X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2001" "Thursday" "2" "April" "2015" "16:39:05" "+0000" "Shachar Raindel" "raindel@mellanox.com" "<AM2PR05MB09290399282201D960BAE8D2DCF20@AM2PR05MB0929.eurprd05.prod.outlook.com>" "33" "[oss-security] RE: CVE-2014-8159 kernel: infiniband: uverbs: unprotected physical memory access" nil nil nil "4" "2015040216:39:05" "[oss-security] RE: CVE-2014-8159 kernel: infiniband: uverbs: unprotected physical memory access" (number mark "        raindel@mell Apr  2   33/2001  " thread-indent "\"[oss-security] RE: CVE-2014-8159 kernel: infiniband: uverbs: unprotected physical memory access\"\n") "<CAL1RGDWtbEzepxbmHUzteJ-+dcW=VxmTshGzsSN219Tgx3bMvQ@mail.gmail.com>" ("<AM3PR05MB0935AABF569F15EA846B8E72DC000@AM3PR05MB0935.eurprd05.prod.outlook.com>" "<CAL1RGDXQh2+WQxf9w2Qvo-Npr2MnBZYObyfYfy7fn-Pfue=Odg@mail.gmail.com>" "<AM3PR05MB0935CC450033AE6DFF0B14B3DCF20@AM3PR05MB0935.eurprd05.prod.outlook.com>" "<CAL1RGDWtbEzepxbmHUzteJ-+dcW=VxmTshGzsSN219Tgx3bMvQ@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 1614 invoked by uid 550); 2 Apr 2015 16:39:45 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 1528 invoked from network); 2 Apr 2015 16:39:40 -0000
Thread-Topic: CVE-2014-8159 kernel: infiniband: uverbs: unprotected physical
 memory access
Thread-Index: AQHQbKFSAJ8uYP/xzk2HjJ6PPOPj8Z05V7qAgACUXACAAABiUA==
Deferred-Delivery: Thu, 2 Apr 2015 16:38:56 +0000
Message-ID: <AM2PR05MB09290399282201D960BAE8D2DCF20@AM2PR05MB0929.eurprd05.prod.outlook.com>
References: <AM3PR05MB0935AABF569F15EA846B8E72DC000@AM3PR05MB0935.eurprd05.prod.outlook.com>
 <CAL1RGDXQh2+WQxf9w2Qvo-Npr2MnBZYObyfYfy7fn-Pfue=Odg@mail.gmail.com>
 <AM3PR05MB0935CC450033AE6DFF0B14B3DCF20@AM3PR05MB0935.eurprd05.prod.outlook.com>
 <CAL1RGDWtbEzepxbmHUzteJ-+dcW=VxmTshGzsSN219Tgx3bMvQ@mail.gmail.com>
In-Reply-To: <CAL1RGDWtbEzepxbmHUzteJ-+dcW=VxmTshGzsSN219Tgx3bMvQ@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
x-originating-ip: [193.47.165.251]
authentication-results: purestorage.com; dkim=none (message not signed)
 header.d=none;
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:AM2PR05MB0932;
x-forefront-antispam-report: BMV:1;SFV:NSPM;SFS:(10009020)(6009001)(24454002)(13464003)(51704005)(377454003)(164054003)(110136001)(2900100001)(122556002)(2656002)(87936001)(66066001)(74316001)(2950100001)(46102003)(93886004)(33656002)(230783001)(86362001)(102836002)(76576001)(92566002)(50986999)(106116001)(19580405001)(19580395003)(54356999)(77156002)(76176999)(62966003);DIR:OUT;SFP:1101;SCL:1;SRVR:AM2PR05MB0932;H:AM2PR05MB0929.eurprd05.prod.outlook.com;FPR:;SPF:None;MLV:sfv;LANG:en;
x-microsoft-antispam-prvs: <AM2PR05MB09329A4C9F8A82BA6DF4C46FDCF20@AM2PR05MB0932.eurprd05.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0;PCL:0;RULEID:(601004)(5002010)(5005006);SRVR:AM2PR05MB0932;BCL:0;PCL:0;RULEID:;SRVR:AM2PR05MB0932;
x-forefront-prvs: 0534947130
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: Mellanox.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Apr 2015 16:39:28.9530
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a652971c-7d2e-4d9b-a6a4-d149256f461b
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM2PR05MB0932
CC: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>,
	"<linux-rdma@vger.kernel.org> (linux-rdma@vger.kernel.org)"
	<linux-rdma@vger.kernel.org>, "stable@vger.kernel.org"
	<stable@vger.kernel.org>
Date: Thu, 2 Apr 2015 16:39:05 +0000
From: Shachar Raindel <raindel@mellanox.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] RE: CVE-2014-8159 kernel: infiniband: uverbs: unprotected physical
 memory access
To: Roland Dreier <roland@purestorage.com>

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogUm9s
YW5kIERyZWllciBbbWFpbHRvOnJvbGFuZEBwdXJlc3RvcmFnZS5jb21dDQo+
IFNlbnQ6IFRodXJzZGF5LCBBcHJpbCAwMiwgMjAxNSA3OjMzIFBNDQo+IFRv
OiBTaGFjaGFyIFJhaW5kZWwNCj4gQ2M6IG9zcy1zZWN1cml0eUBsaXN0cy5v
cGVud2FsbC5jb207IDxsaW51eC1yZG1hQHZnZXIua2VybmVsLm9yZz4NCj4g
KGxpbnV4LXJkbWFAdmdlci5rZXJuZWwub3JnKTsgc3RhYmxlQHZnZXIua2Vy
bmVsLm9yZw0KPiBTdWJqZWN0OiBSZTogQ1ZFLTIwMTQtODE1OSBrZXJuZWw6
IGluZmluaWJhbmQ6IHV2ZXJiczogdW5wcm90ZWN0ZWQNCj4gcGh5c2ljYWwg
bWVtb3J5IGFjY2Vzcw0KPiANCj4gT24gVGh1LCBBcHIgMiwgMjAxNSBhdCAx
Mjo1MiBBTSwgU2hhY2hhciBSYWluZGVsIDxyYWluZGVsQG1lbGxhbm94LmNv
bT4NCj4gd3JvdGU6DQo+ID4gVGhpcyBpcyBhIGNvbW1vbiBwcmFjdGljZSBp
biB0aGUgc2VjdXJpdHkgaW5kdXN0cnksIGNhbGxlZA0KPiA+ICJyZXNwb25z
aWJsZSBkaXNjbG9zdXJlLiINCj4gPg0KPiA+IEZvbGxvd2luZyB0aGUga2Vy
bmVsICBzZWN1cml0eSBidWdzIHBvbGljeSBbMV0sIHdlIHJlcG9ydGVkIGl0
IHRvDQo+ID4gdGhlIGtlcm5lbCBzZWN1cml0eSBjb250YWN0cyBmZXcgZGF5
cyBiZWZvcmUgbWFraW5nIHRoZSBpc3N1ZSBwdWJsaWMuDQo+ID4gRmV3IGRh
eXMgYWZ0ZXIgaXNzdWUgYmVjYW1lIHB1YmxpYywgd2UgcHVibGlzaGVkIGEg
Y2xlYXIgcmVwb3J0IHRvIGFsbA0KPiA+IG9mIHRoZSByZWxldmFudCBtYWls
aW5nIGxpc3RzLg0KPiANCj4gSXNuJ3QgdGhlIHBvaW50IG9mIHJlc3BvbnNp
YmxlIGRpc2Nsb3N1cmUgdG8gZGVsYXkgZGlzY2xvc3VyZSB1bnRpbCBhDQo+
IGZpeCBpcyBpbiBwbGFjZT8gIFdoYXQncyB0aGUgcG9pbnQgb2Ygc2VuZGlu
ZyBhIG5vdGlmaWNhdGlvbiB0byB0aGUNCj4ga2VybmVsIHNlY3VyaXR5IHRl
YW0gaWYgeW91J3JlIGdvaW5nIHRvIGRpc2Nsb3NlIHB1YmxpY2x5IGJlZm9y
ZSB0aGUNCj4gdXBzdHJlYW0ga2VybmVsIGlzIGZpeGVkPw0KPiANCg0KV2Ug
ZGVsYXllZCB0aGUgZGlzY2xvc3VyZSB1bnRpbCBtb3N0IG1ham9yIExpbnV4
IHZlbmRvcnMgcmVsZWFzZWQgYSBmaXggZm9yDQp0aGUgaXNzdWUsIGdpdmUg
b3IgdGFrZSBpbiBzeW5jaHJvbml6YXRpb24uDQoNClRoZSBMaW51eCBzZWN1
cml0eSBjb250YWN0IGxpc3Qgb25seSBndWFyYW50ZWUgc2VjcmVjeSBmb3Ig
NyBkYXlzLiBXZQ0KdGhlcmVmb3JlIGNvbnRhY3RlZCB0aGVtIG9ubHkgY2xv
c2UgdG8gdGhlIGRhdGUgYXQgd2hpY2ggZml4ZXMgd2VyZSBnb2luZyB0bw0K
YmUgcmVsZWFzZWQsIHRvIGZvbGxvdyB0aGVpciBleHBlY3RhdGlvbnMgZm9y
IHBlcmlvZCBvZiB0aW1lIGJldHdlZW4gY29udGFjdA0KYW5kIHB1YmxpYyBk
aXNjbG9zdXJlLg0KDQpUaGFua3MsDQotLVNoYWNoYXINCg==
