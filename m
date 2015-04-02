X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2876" "Thursday" "2" "April" "2015" "16:34:05" "+0000" "Shachar Raindel" "raindel@mellanox.com" "<AM2PR05MB0929EDC60BBE5DAAAD4AB1B4DCF20@AM2PR05MB0929.eurprd05.prod.outlook.com>" "48" "[oss-security] RE: CVE-2014-8159 kernel: infiniband: uverbs: unprotected physical memory access" nil nil nil "4" "2015040216:34:05" "[oss-security] RE: CVE-2014-8159 kernel: infiniband: uverbs: unprotected physical memory access" (number mark "        raindel@mell Apr  2   48/2876  " thread-indent "\"[oss-security] RE: CVE-2014-8159 kernel: infiniband: uverbs: unprotected physical memory access\"\n") "<1427987752.22575.65.camel@opteya.com>" ("<AM3PR05MB0935AABF569F15EA846B8E72DC000@AM3PR05MB0935.eurprd05.prod.outlook.com>" "<1427969085.17020.5.camel@opteya.com>" "<AM3PR05MB0935AA4898B4B519D2DAA3C4DCF20@AM3PR05MB0935.eurprd05.prod.outlook.com>" "<1427987752.22575.65.camel@opteya.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 14107 invoked by uid 550); 2 Apr 2015 16:34:45 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 14077 invoked from network); 2 Apr 2015 16:34:41 -0000
Thread-Topic: CVE-2014-8159 kernel: infiniband: uverbs: unprotected physical
 memory access
Thread-Index: AQHQbSyEAQwf8AzEREiGaKM63FVWmJ05imaQgABLEQCAAAmVgA==
Deferred-Delivery: Thu, 2 Apr 2015 16:34:02 +0000
Message-ID: <AM2PR05MB0929EDC60BBE5DAAAD4AB1B4DCF20@AM2PR05MB0929.eurprd05.prod.outlook.com>
References: <AM3PR05MB0935AABF569F15EA846B8E72DC000@AM3PR05MB0935.eurprd05.prod.outlook.com>
	 <1427969085.17020.5.camel@opteya.com>
	 <AM3PR05MB0935AA4898B4B519D2DAA3C4DCF20@AM3PR05MB0935.eurprd05.prod.outlook.com>
 <1427987752.22575.65.camel@opteya.com>
In-Reply-To: <1427987752.22575.65.camel@opteya.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
x-originating-ip: [193.47.165.251]
authentication-results: opteya.com; dkim=none (message not signed)
 header.d=none;
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:AM2PR05MB0929;
x-forefront-antispam-report: BMV:1;SFV:NSPM;SFS:(10009020)(6009001)(51704005)(13464003)(164054003)(377454003)(2656002)(46102003)(122556002)(86362001)(66066001)(87936001)(77156002)(230783001)(76176999)(110136001)(102836002)(62966003)(54356999)(93886004)(2950100001)(92566002)(50986999)(106116001)(19580395003)(19580405001)(33656002)(74316001)(76576001)(2900100001);DIR:OUT;SFP:1101;SCL:1;SRVR:AM2PR05MB0929;H:AM2PR05MB0929.eurprd05.prod.outlook.com;FPR:;SPF:None;MLV:sfv;LANG:en;
x-microsoft-antispam-prvs: <AM2PR05MB09297E2856E9EC55D1635832DCF20@AM2PR05MB0929.eurprd05.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0;PCL:0;RULEID:(601004)(5002010)(5005006);SRVR:AM2PR05MB0929;BCL:0;PCL:0;RULEID:;SRVR:AM2PR05MB0929;
x-forefront-prvs: 0534947130
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: Mellanox.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Apr 2015 16:34:28.9350
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a652971c-7d2e-4d9b-a6a4-d149256f461b
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM2PR05MB0929
CC: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>,
	"<linux-rdma@vger.kernel.org> (linux-rdma@vger.kernel.org)"
	<linux-rdma@vger.kernel.org>, "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>, "stable@vger.kernel.org"
	<stable@vger.kernel.org>
Date: Thu, 2 Apr 2015 16:34:05 +0000
From: Shachar Raindel <raindel@mellanox.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] RE: CVE-2014-8159 kernel: infiniband: uverbs: unprotected physical
 memory access
To: Yann Droneaud <ydroneaud@opteya.com>

SGksDQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTog
WWFubiBEcm9uZWF1ZCBbbWFpbHRvOnlkcm9uZWF1ZEBvcHRleWEuY29tXQ0K
PiBTZW50OiBUaHVyc2RheSwgQXByaWwgMDIsIDIwMTUgNjoxNiBQTQ0KPiBU
bzogU2hhY2hhciBSYWluZGVsDQo+IENjOiBvc3Mtc2VjdXJpdHlAbGlzdHMu
b3BlbndhbGwuY29tOyA8bGludXgtcmRtYUB2Z2VyLmtlcm5lbC5vcmc+DQo+
IChsaW51eC1yZG1hQHZnZXIua2VybmVsLm9yZyk7IGxpbnV4LWtlcm5lbEB2
Z2VyLmtlcm5lbC5vcmc7DQo+IHN0YWJsZUB2Z2VyLmtlcm5lbC5vcmcNCj4g
U3ViamVjdDogUmU6IENWRS0yMDE0LTgxNTkga2VybmVsOiBpbmZpbmliYW5k
OiB1dmVyYnM6IHVucHJvdGVjdGVkDQo+IHBoeXNpY2FsIG1lbW9yeSBhY2Nl
c3MNCj4gDQo+IEhpLA0KPiBMZSBqZXVkaSAwMiBhdnJpbCAyMDE1IMOgIDEw
OjUyICswMDAwLCBTaGFjaGFyIFJhaW5kZWwgYSDDqWNyaXQgOg0KPiA+ID4g
LS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gPiA+IEZyb206IFlhbm4g
RHJvbmVhdWQgW21haWx0bzp5ZHJvbmVhdWRAb3B0ZXlhLmNvbV0NCj4gPiA+
IFNlbnQ6IFRodXJzZGF5LCBBcHJpbCAwMiwgMjAxNSAxOjA1IFBNDQo+ID4g
PiBMZSBtZXJjcmVkaSAxOCBtYXJzIDIwMTUgw6AgMTc6MzkgKzAwMDAsIFNo
YWNoYXIgUmFpbmRlbCBhIMOpY3JpdCA6DQo+IC4uLg0KPiA+ID4gPiArCS8q
DQo+ID4gPiA+ICsJICogSWYgdGhlIGNvbWJpbmF0aW9uIG9mIHRoZSBhZGRy
IGFuZCBzaXplIHJlcXVlc3RlZCBmb3IgdGhpcw0KPiA+ID4gbWVtb3J5DQo+
ID4gPiA+ICsJICogcmVnaW9uIGNhdXNlcyBhbiBpbnRlZ2VyIG92ZXJmbG93
LCByZXR1cm4gZXJyb3IuDQo+ID4gPiA+ICsJICovDQo+ID4gPiA+ICsJaWYg
KChQQUdFX0FMSUdOKGFkZHIgKyBzaXplKSA8PSBzaXplKSB8fA0KPiA+ID4g
PiArCSAgICAoUEFHRV9BTElHTihhZGRyICsgc2l6ZSkgPD0gYWRkcikpDQo+
ID4gPiA+ICsJCXJldHVybiBFUlJfUFRSKC1FSU5WQUwpOw0KPiA+ID4gPiAr
DQo+ID4gPg0KPiA+ID4gQ2FuIGFjY2Vzc19vaygpIGJlIHVzZWQgaGVyZSA/
DQo+ID4gPg0KPiA+ID4gICAgICAgICAgaWYgKCFhY2Nlc3Nfb2sod3JpdGFi
bGUgPyBWRVJJRllfV1JJVEUgOiBWRVJJRllfUkVBRCwNCj4gPiA+ICAgICAg
ICAgICAgICAgICAgICAgICAgIGFkZHIsIHNpemUpKQ0KPiA+ID4gICAgICAg
ICAgICAgICAgICAgcmV0dXJuIEVSUl9QVFIoLUVJTlZBTCk7DQo+ID4gPg0K
PiA+DQo+ID4gTm8sIHRoaXMgd2lsbCBicmVhayB0aGUgY3VycmVudCBPRFAg
c2VtYW50aWNzLg0KPiA+DQo+ID4gT0RQIGFsbG93cyB0aGUgdXNlciB0byBy
ZWdpc3RlciBtZW1vcnkgdGhhdCBpcyBub3QgYWNjZXNzaWJsZSB5ZXQuDQo+
ID4gVGhpcyBpcyBhIGNyaXRpY2FsIGRlc2lnbiBmZWF0dXJlLCBhcyBpdCBh
bGxvd3MgYXZvaWRpbmcgaG9sZGluZw0KPiA+IGEgcmVnaXN0cmF0aW9uIGNh
Y2hlLiBBZGRpbmcgdGhpcyBjaGVjayB3aWxsIGJyZWFrIHRoZSBiZWhhdmlv
ciwNCj4gPiBmb3JjaW5nIG1lbW9yeSB0byBiZSBhbGwgYWNjZXNzaWJsZSB3
aGVuIHJlZ2lzdGVyaW5nIGFuIE9EUCBNUi4NCj4gPg0KPiANCj4gRmFpbGVk
IHRvIG5vdGljZSBwcmV2aW91c2x5LCBidXQgc2luY2UgdGhpcyB3b3VsZCBi
cmVhayBPRFAsIGFuZCBPRFAgaXMNCj4gb25seSBhdmFpbGFibGUgc3RhcnRp
bmcgdjMuMTktcmMxLCBteSBwcm9wb3NlZCBmaXggbWlnaHQgYmUgYXBwbGlj
YWJsZQ0KPiBmb3Igb2xkZXIga2VybmVsIChpZiBub3QgYmV0dGVyKS4NCj4g
DQoNCkNhbiB5b3UgZXhwbGFpbiBob3cgdGhpcyBwcm9wb3NlZCBmaXggaXMg
YmV0dGVyIHRoYW4gdGhlIGV4aXN0aW5nIHBhdGNoPw0KV2h5IGRvIHdlIHdh
bnQgdG8gcHVzaCB0byB0aGUgc3RhYmxlIHRyZWUgYSBwYXRjaCB0aGF0IGlz
IG5vdCBpbiB0aGUNCnVwc3RyZWFtPyBUaGVyZSBpcyBhbiBleGlzdGluZywg
dGVzdGVkLCBwYXRjaCB0aGF0IGlzIGdvaW5nIHRvIHRoZSB0aXANCm9mIHRo
ZSBkZXZlbG9wbWVudC4gSXQgZXZlbiBhcHBsaWVzIGNsZWFubHkgb24gZXZl
cnkga2VybmVsIHZlcnNpb24gYXJvdW5kLg0KDQpUaGFua3MsDQotLVNoYWNo
YXINCg==
