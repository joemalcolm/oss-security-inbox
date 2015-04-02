X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["6259" "Thursday" "2" "April" "2015" "16:44:07" "+0000" "Shachar Raindel" "raindel@mellanox.com" "<AM2PR05MB0929FB71C5A4DE92A7709F92DCF20@AM2PR05MB0929.eurprd05.prod.outlook.com>" "103" "[oss-security] RE: CVE-2014-8159 kernel: infiniband: uverbs: unprotected physical memory access" nil nil nil "4" "2015040216:44:07" "[oss-security] RE: CVE-2014-8159 kernel: infiniband: uverbs: unprotected physical memory access" (number mark "        raindel@mell Apr  2  103/6259  " thread-indent "\"[oss-security] RE: CVE-2014-8159 kernel: infiniband: uverbs: unprotected physical memory access\"\n") "<1427992506.22575.80.camel@opteya.com>" ("<AM3PR05MB0935AABF569F15EA846B8E72DC000@AM3PR05MB0935.eurprd05.prod.outlook.com>" "<1427969085.17020.5.camel@opteya.com>" "<AM3PR05MB0935AA4898B4B519D2DAA3C4DCF20@AM3PR05MB0935.eurprd05.prod.outlook.com>" "<1427981431.22575.21.camel@opteya.com>" "<551D5DC8.6070909@mellanox.com>" "<1427992506.22575.80.camel@opteya.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 14221 invoked by uid 550); 2 Apr 2015 16:44:46 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 14186 invoked from network); 2 Apr 2015 16:44:41 -0000
Thread-Topic: CVE-2014-8159 kernel: infiniband: uverbs: unprotected physical
 memory access
Thread-Index: AQHQbSyEAQwf8AzEREiGaKM63FVWmJ05imaQgAAtooCAAB4uAIAAFWQAgAABBCA=
Deferred-Delivery: Thu, 2 Apr 2015 16:43:43 +0000
Message-ID: <AM2PR05MB0929FB71C5A4DE92A7709F92DCF20@AM2PR05MB0929.eurprd05.prod.outlook.com>
References: <AM3PR05MB0935AABF569F15EA846B8E72DC000@AM3PR05MB0935.eurprd05.prod.outlook.com>
	 <1427969085.17020.5.camel@opteya.com>
	 <AM3PR05MB0935AA4898B4B519D2DAA3C4DCF20@AM3PR05MB0935.eurprd05.prod.outlook.com>
	 <1427981431.22575.21.camel@opteya.com> <551D5DC8.6070909@mellanox.com>
 <1427992506.22575.80.camel@opteya.com>
In-Reply-To: <1427992506.22575.80.camel@opteya.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
x-originating-ip: [193.47.165.251]
authentication-results: opteya.com; dkim=none (message not signed)
 header.d=none;
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:AM2PR05MB1028;
x-microsoft-antispam-prvs: <AM2PR05MB1028AF7DE2278158E47AA825DCF20@AM2PR05MB1028.eurprd05.prod.outlook.com>
x-forefront-antispam-report: BMV:1;SFV:NSPM;SFS:(10009020)(6009001)(51704005)(13464003)(24454002)(51914003)(164054003)(479174004)(377454003)(87936001)(76176999)(86362001)(66066001)(2656002)(15975445007)(2900100001)(230783001)(102836002)(2950100001)(77156002)(92566002)(62966003)(122556002)(19580405001)(19580395003)(106116001)(33656002)(46102003)(76576001)(50986999)(54356999)(93886004)(74316001);DIR:OUT;SFP:1101;SCL:1;SRVR:AM2PR05MB1028;H:AM2PR05MB0929.eurprd05.prod.outlook.com;FPR:;SPF:None;MLV:sfv;LANG:en;
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0;PCL:0;RULEID:(601004)(5005006)(5002010);SRVR:AM2PR05MB1028;BCL:0;PCL:0;RULEID:;SRVR:AM2PR05MB1028;
x-forefront-prvs: 0534947130
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: Mellanox.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Apr 2015 16:44:29.0335
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a652971c-7d2e-4d9b-a6a4-d149256f461b
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM2PR05MB1028
CC: Sagi Grimberg <sagig@mellanox.com>, "oss-security@lists.openwall.com"
	<oss-security@lists.openwall.com>, "<linux-rdma@vger.kernel.org>
 (linux-rdma@vger.kernel.org)" <linux-rdma@vger.kernel.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"stable@vger.kernel.org" <stable@vger.kernel.org>
Date: Thu, 2 Apr 2015 16:44:07 +0000
From: Shachar Raindel <raindel@mellanox.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] RE: CVE-2014-8159 kernel: infiniband: uverbs: unprotected physical
 memory access
To: Yann Droneaud <ydroneaud@opteya.com>, Haggai Eran <haggaie@mellanox.com>

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogWWFu
biBEcm9uZWF1ZCBbbWFpbHRvOnlkcm9uZWF1ZEBvcHRleWEuY29tXQ0KPiBT
ZW50OiBUaHVyc2RheSwgQXByaWwgMDIsIDIwMTUgNzozNSBQTQ0KPiBUbzog
SGFnZ2FpIEVyYW4NCj4gQ2M6IFNoYWNoYXIgUmFpbmRlbDsgU2FnaSBHcmlt
YmVyZzsgb3NzLXNlY3VyaXR5QGxpc3RzLm9wZW53YWxsLmNvbTsNCj4gPGxp
bnV4LXJkbWFAdmdlci5rZXJuZWwub3JnPiAobGludXgtcmRtYUB2Z2VyLmtl
cm5lbC5vcmcpOyBsaW51eC0NCj4ga2VybmVsQHZnZXIua2VybmVsLm9yZzsg
c3RhYmxlQHZnZXIua2VybmVsLm9yZw0KPiBTdWJqZWN0OiBSZTogQ1ZFLTIw
MTQtODE1OSBrZXJuZWw6IGluZmluaWJhbmQ6IHV2ZXJiczogdW5wcm90ZWN0
ZWQNCj4gcGh5c2ljYWwgbWVtb3J5IGFjY2Vzcw0KPiANCj4gSGkgSGFnZ2Fp
LA0KPiANCj4gTGUgamV1ZGkgMDIgYXZyaWwgMjAxNSDDoCAxODoxOCArMDMw
MCwgSGFnZ2FpIEVyYW4gYSDDqWNyaXQgOg0KPiA+IE9uIDAyLzA0LzIwMTUg
MTY6MzAsIFlhbm4gRHJvbmVhdWQgd3JvdGU6DQo+ID4gPiBIaSwNCj4gPiA+
DQo+ID4gPiBMZSBqZXVkaSAwMiBhdnJpbCAyMDE1IMOgIDEwOjUyICswMDAw
LCBTaGFjaGFyIFJhaW5kZWwgYSDDqWNyaXQgOg0KPiA+ID4+PiAtLS0tLU9y
aWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiA+ID4+PiBGcm9tOiBZYW5uIERyb25l
YXVkIFttYWlsdG86eWRyb25lYXVkQG9wdGV5YS5jb21dDQo+ID4gPj4+IFNl
bnQ6IFRodXJzZGF5LCBBcHJpbCAwMiwgMjAxNSAxOjA1IFBNDQo+ID4gPj4+
IExlIG1lcmNyZWRpIDE4IG1hcnMgMjAxNSDDoCAxNzozOSArMDAwMCwgU2hh
Y2hhciBSYWluZGVsIGEgw6ljcml0IDoNCj4gPiA+DQo+ID4gPj4+PiArCS8q
DQo+ID4gPj4+PiArCSAqIElmIHRoZSBjb21iaW5hdGlvbiBvZiB0aGUgYWRk
ciBhbmQgc2l6ZSByZXF1ZXN0ZWQgZm9yIHRoaXMNCj4gPiA+Pj4gbWVtb3J5
DQo+ID4gPj4+PiArCSAqIHJlZ2lvbiBjYXVzZXMgYW4gaW50ZWdlciBvdmVy
ZmxvdywgcmV0dXJuIGVycm9yLg0KPiA+ID4+Pj4gKwkgKi8NCj4gPiA+Pj4+
ICsJaWYgKChQQUdFX0FMSUdOKGFkZHIgKyBzaXplKSA8PSBzaXplKSB8fA0K
PiA+ID4+Pj4gKwkgICAgKFBBR0VfQUxJR04oYWRkciArIHNpemUpIDw9IGFk
ZHIpKQ0KPiA+ID4+Pj4gKwkJcmV0dXJuIEVSUl9QVFIoLUVJTlZBTCk7DQo+
ID4gPj4+PiArDQo+ID4gPj4+DQo+ID4gPj4+IENhbiBhY2Nlc3Nfb2soKSBi
ZSB1c2VkIGhlcmUgPw0KPiA+ID4+Pg0KPiA+ID4+PiAgICAgICAgICBpZiAo
IWFjY2Vzc19vayh3cml0YWJsZSA/IFZFUklGWV9XUklURSA6IFZFUklGWV9S
RUFELA0KPiA+ID4+PiAgICAgICAgICAgICAgICAgICAgICAgICBhZGRyLCBz
aXplKSkNCj4gPiA+Pj4gICAgICAgICAgICAgICAgICAgcmV0dXJuIEVSUl9Q
VFIoLUVJTlZBTCk7DQo+ID4gPj4+DQo+ID4gPj4NCj4gPiA+PiBObywgdGhp
cyB3aWxsIGJyZWFrIHRoZSBjdXJyZW50IE9EUCBzZW1hbnRpY3MuDQo+ID4g
Pj4NCj4gPiA+PiBPRFAgYWxsb3dzIHRoZSB1c2VyIHRvIHJlZ2lzdGVyIG1l
bW9yeSB0aGF0IGlzIG5vdCBhY2Nlc3NpYmxlIHlldC4NCj4gPiA+PiBUaGlz
IGlzIGEgY3JpdGljYWwgZGVzaWduIGZlYXR1cmUsIGFzIGl0IGFsbG93cyBh
dm9pZGluZyBob2xkaW5nDQo+ID4gPj4gYSByZWdpc3RyYXRpb24gY2FjaGUu
IEFkZGluZyB0aGlzIGNoZWNrIHdpbGwgYnJlYWsgdGhlIGJlaGF2aW9yLA0K
PiA+ID4+IGZvcmNpbmcgbWVtb3J5IHRvIGJlIGFsbCBhY2Nlc3NpYmxlIHdo
ZW4gcmVnaXN0ZXJpbmcgYW4gT0RQIE1SLg0KPiA+ID4+DQo+ID4gPg0KPiA+
ID4gV2hlcmUncyB0aGUgY2hlY2sgZm9yIHRoZSByYW5nZSBiZWluZyBpbiB1
c2Vyc3BhY2UgbWVtb3J5IHNwYWNlLA0KPiA+ID4gZXNwZWNpYWxseSBmb3Ig
dGhlIE9EUCBjYXNlID8NCj4gPiA+DQo+ID4gPiBGb3Igbm9uIE9EUCBjYXNl
IChlZy4gcGxhaW4gb2xkIGJlaGF2aW9yKSwgZG9lcyBnZXRfdXNlcl9wYWdl
cygpDQo+ID4gPiBlbnN1cmUgdGhlIHJlcXVlc3RlZCBwYWdlcyBmaXQgaW4g
dXNlcnNwYWNlIHJlZ2lvbiBvbiBhbGwNCj4gPiA+IGFyY2hpdGVjdHVyZXMg
PyBJIHRoaW5rIHNvLg0KPiA+DQo+ID4gWWVzLCBnZXRfdXNlcl9wYWdlcyB3
aWxsIHJldHVybiBhIHNtYWxsZXIgYW1vdW50IG9mIHBhZ2VzIHRoYW4NCj4g
cmVxdWVzdGVkDQo+ID4gaWYgaXQgZW5jb3VudGVycyBhbiB1bm1hcHBlZCBy
ZWdpb24gKG9yIGEgcmVnaW9uIHdpdGhvdXQgd3JpdGUNCj4gPiBwZXJtaXNz
aW9ucyBmb3Igd3JpdGUgcmVxdWVzdHMpLiBJZiB0aGlzIGhhcHBlbnMsIHRo
ZSBsb29wIGluDQo+ID4gaWJfdW1lbV9nZXQgY2FsbHMgZ2V0X3VzZXJfcGFn
ZXMgYWdhaW4gd2l0aCB0aGUgbmV4dCBzZXQgb2YgcGFnZXMsIGFuZA0KPiA+
IHRoaXMgdGltZSBpZiBpdCB0aGUgZmlyc3QgcGFnZSBzdGlsbCBjYW5ub3Qg
YmUgbWFwcGVkIGFuIGVycm9yIGlzDQo+IHJldHVybmVkLg0KPiA+DQo+ID4g
Pg0KPiA+ID4gSW4gT0RQIGNhc2UsIEknbSBub3Qgc3VyZSBzdWNoIGNoZWNr
IGlzIGV2ZXIgZG9uZSA/DQo+ID4NCj4gPiBJbiBPRFAsIHdlIGFsc28gY2Fs
bCBnZXRfdXNlcl9wYWdlcywgYnV0IG9ubHkgd2hlbiBhIHBhZ2UgZmF1bHQg
b2NjdXJzDQo+ID4gKHNlZSBpYl91bWVtX29kcF9tYXBfZG1hX3BhZ2VzKCkp
LiBUaGlzIGFsbG93cyB0aGUgdXNlciB0byBwcmUtDQo+IHJlZ2lzdGVyDQo+
ID4gYSBtZW1vcnkgcmVnaW9uIHRoYXQgY29udGFpbnMgdW5tYXBwZWQgdmly
dHVhbCBzcGFjZSwgYW5kIHRoZW4gbW1hcA0KPiA+IGRpZmZlcmVudCBmaWxl
cyBpbnRvIHRoYXQgYXJlYSB3aXRob3V0IG5lZWRpbmcgdG8gcmUtcmVnaXN0
ZXIuDQo+ID4NCj4gDQo+IE9LLCB0aGFua3MgZm9yIHRoZSBkZXNjcmlwdGlv
bi4NCj4gDQo+ID4gPiAoQXNpZGUsIGRvZXMgaXQgdGFrZSBzcGVjaWFsIG1l
c3VyZSB0byBwcm90ZWN0IHNoYXJlZCBtYXBwaW5nIGZyb20NCj4gPiA+IGJl
aW5nIHJlYWQgYW5kL29yICp3cml0dGVuKiA/KQ0KPiA+DQo+ID4gSSdtIG5v
dCBzdXJlIEkgdW5kZXJzdGFuZCB0aGUgcXVlc3Rpb24uIFNoYXJlZCBtYXBw
aW5ncyB0aGF0IHRoZQ0KPiBwcm9jZXNzDQo+ID4gaXMgYWxsb3dlZCB0byBy
ZWFkIG9yIHdyaXRlIGFyZSBhbHNvIGFsbG93ZWQgZm9yIHRoZSBIQ0ENCj4g
KHNwZWNpZmljYWxseSwNCj4gPiB0byBsb2NhbCBhbmQgcmVtb3RlIG9wZXJh
dGlvbnMgdGhlIHNhbWUgcHJvY2VzcyBwZXJmb3JtcyB1c2luZyB0aGUNCj4g
SENBKSwNCj4gPiBwcm92aWRlZCB0aGUgYXBwbGljYXRpb24gaGFzIHJlZ2lz
dGVyZWQgdGhlaXIgdmlydHVhbCBhZGRyZXNzIHNwYWNlIGFzDQo+IGENCj4g
PiBtZW1vcnkgcmVnaW9uLg0KPiA+DQo+IA0KPiBJIHdhcyByZWZlcmluZyB0
byBkZXNjcmlwdGlvbiBvZiBnZXRfdXNlcl9wYWdlcygpOg0KPiANCj4gaHR0
cDovL2dpdC5rZXJuZWwub3JnL2NnaXQvbGludXgva2VybmVsL2dpdC90b3J2
YWxkcy9saW51eC5naXQvdHJlZS9tbS9nDQo+IHVwLmM/aWQ9djQuMC1yYzYj
bjc2NQ0KPiANCj4gICogQGZvcmNlOgl3aGV0aGVyIHRvIGZvcmNlIGFjY2Vz
cyBldmVuIHdoZW4gdXNlciBtYXBwaW5nIGlzIGN1cnJlbnRseQ0KPiAgKgkJ
cHJvdGVjdGVkIChidXQgbmV2ZXIgZm9yY2VzIHdyaXRlIGFjY2VzcyB0byBz
aGFyZWQgbWFwcGluZykuDQo+IA0KPiBCdXQgc2luY2UgaWJfdW1lbV9vZHBf
bWFwX2RtYV9wYWdlcygpIHVzZSBnZXRfdXNlcl9wYWdlcygpIHdpdGggZm9y
Y2UNCj4gYXJndW1lbnQgc2V0IHRvIDAsIGl0J3MgT0suDQo+IA0KPiBBbm90
aGVyIHJlbGF0ZWQgcXVlc3Rpb246IGFzIHRoZSBsYXJnZSBtZW1vcnkgcmFu
Z2UgY291bGQgYmUgcmVnaXN0ZXJlZA0KPiBieSB1c2VyIHNwYWNlIHdpdGgg
aWJ2X3JlZ19tcihwZCwgYmFzZSwgc2l6ZSwgSUJfQUNDRVNTX09OX0RFTUFO
RCksDQo+IHdoYXQncyBwcmV2ZW50IHRoZSBrZXJuZWwgdG8gbWFwIGEgZmls
ZSBhcyB0aGUgcmVzdWx0IG9mIG1tYXAoMCwgLi4uKQ0KPiBpbiB0aGlzICBy
ZWdpb24sIG1ha2luZyBpdCBhdmFpbGFibGUgcmVtb3RlbHkgdGhyb3VnaCBJ
QlZfV1JfUkRNQV9SRUFEIC8NCj4gSUJWX1dSX1JETUFfV1JJVEUgPw0KPiAN
Cg0KVGhpcyBpcyBub3QgYSBidWcuIFRoaXMgaXMgYSBmZWF0dXJlLg0KDQpF
eHBvc2luZyBhIGZpbGUgdGhyb3VnaCBSRE1BLCB1c2luZyBPRFAsIGNhbiBi
ZSBkb25lIGV4YWN0bHkgbGlrZSB0aGlzLg0KR2l2ZW4gdGhhdCB0aGUgYXBw
bGljYXRpb24gZXhwbGljaXRseSByZXF1ZXN0ZWQgdGhpcyBiZWhhdmlvciwg
SSBkb24ndA0Kc2VlIHdoeSBpdCBpcyBhIHByb2JsZW0uIEFjdHVhbGx5LCBz
b21lIG9mIG91ciB0ZXN0cyB1c2Ugc3VjaCBmbG93cy4NClRoZSBtbXUgbm90
aWZpZXJzIG1lY2hhbmlzbSBhbGxvdyB1cyB0byBkbyB0aGlzIHNhZmVseS4g
V2hlbiB0aGUgcGFnZSBpcw0Kd3JpdHRlbiBiYWNrIHRvIGRpc2ssIGl0IGlz
IHJlbW92ZWQgZnJvbSB0aGUgT0RQIG1hcHBpbmcuIFdoZW4gaXQgaXMNCmFj
Y2Vzc2VkIGJ5IHRoZSBIQ0EsIGl0IGlzIGJyb3VnaHQgYmFjayB0byBSQU0u
DQoNCg0KVGhhbmtzLA0KLS1TaGFjaGFyDQo=
