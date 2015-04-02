X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2359" "Thursday" "2" "April" "2015" "07:52:17" "+0000" "Shachar Raindel" "raindel@mellanox.com" "<AM3PR05MB0935CC450033AE6DFF0B14B3DCF20@AM3PR05MB0935.eurprd05.prod.outlook.com>" "39" "[oss-security] RE: CVE-2014-8159 kernel: infiniband: uverbs: unprotected physical memory access" nil nil nil "4" "2015040207:52:17" "[oss-security] RE: CVE-2014-8159 kernel: infiniband: uverbs: unprotected physical memory access" (number mark "        raindel@mell Apr  2   39/2359  " thread-indent "\"[oss-security] RE: CVE-2014-8159 kernel: infiniband: uverbs: unprotected physical memory access\"\n") "<CAL1RGDXQh2+WQxf9w2Qvo-Npr2MnBZYObyfYfy7fn-Pfue=Odg@mail.gmail.com>" ("<AM3PR05MB0935AABF569F15EA846B8E72DC000@AM3PR05MB0935.eurprd05.prod.outlook.com>" "<CAL1RGDXQh2+WQxf9w2Qvo-Npr2MnBZYObyfYfy7fn-Pfue=Odg@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 15379 invoked by uid 550); 2 Apr 2015 07:52:56 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 14320 invoked from network); 2 Apr 2015 07:52:52 -0000
Thread-Topic: CVE-2014-8159 kernel: infiniband: uverbs: unprotected physical
 memory access
Thread-Index: AQHQbKFSAJ8uYP/xzk2HjJ6PPOPj8Z05V7qA
Deferred-Delivery: Thu, 2 Apr 2015 07:52:14 +0000
Message-ID: <AM3PR05MB0935CC450033AE6DFF0B14B3DCF20@AM3PR05MB0935.eurprd05.prod.outlook.com>
References: <AM3PR05MB0935AABF569F15EA846B8E72DC000@AM3PR05MB0935.eurprd05.prod.outlook.com>
 <CAL1RGDXQh2+WQxf9w2Qvo-Npr2MnBZYObyfYfy7fn-Pfue=Odg@mail.gmail.com>
In-Reply-To: <CAL1RGDXQh2+WQxf9w2Qvo-Npr2MnBZYObyfYfy7fn-Pfue=Odg@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
x-originating-ip: [193.47.165.251]
authentication-results: purestorage.com; dkim=none (message not signed)
 header.d=none;
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:AM3PR05MB0933;
x-microsoft-antispam-prvs: <AM3PR05MB0933348105982436D7A82E5EDCF20@AM3PR05MB0933.eurprd05.prod.outlook.com>
x-forefront-antispam-report: BMV:1;SFV:NSPM;SFS:(10009020)(6009001)(13464003)(164054003)(24454002)(51704005)(377454003)(2900100001)(230783001)(46102003)(33656002)(2950100001)(40100003)(122556002)(77156002)(62966003)(76576001)(50986999)(76176999)(19580395003)(54356999)(110136001)(92566002)(19580405001)(102836002)(87936001)(86362001)(74316001)(66066001)(106116001)(2656002)(15975445007)(569784001);DIR:OUT;SFP:1101;SCL:1;SRVR:AM3PR05MB0933;H:AM3PR05MB0935.eurprd05.prod.outlook.com;FPR:;SPF:None;MLV:sfv;LANG:en;
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0;PCL:0;RULEID:(601004)(5005006)(5002010);SRVR:AM3PR05MB0933;BCL:0;PCL:0;RULEID:;SRVR:AM3PR05MB0933;
x-forefront-prvs: 0534947130
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: Mellanox.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Apr 2015 07:52:39.4808
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a652971c-7d2e-4d9b-a6a4-d149256f461b
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM3PR05MB0933
CC: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>,
	"<linux-rdma@vger.kernel.org> (linux-rdma@vger.kernel.org)"
	<linux-rdma@vger.kernel.org>, "stable@vger.kernel.org"
	<stable@vger.kernel.org>
Date: Thu, 2 Apr 2015 07:52:17 +0000
From: Shachar Raindel <raindel@mellanox.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] RE: CVE-2014-8159 kernel: infiniband: uverbs: unprotected physical
 memory access
To: Roland Dreier <roland@purestorage.com>

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogUm9s
YW5kIERyZWllciBbbWFpbHRvOnJvbGFuZEBwdXJlc3RvcmFnZS5jb21dDQo+
IFNlbnQ6IFdlZG5lc2RheSwgQXByaWwgMDEsIDIwMTUgODoyOCBQTQ0KPiBU
bzogU2hhY2hhciBSYWluZGVsDQo+IENjOiBvc3Mtc2VjdXJpdHlAbGlzdHMu
b3BlbndhbGwuY29tOyA8bGludXgtcmRtYUB2Z2VyLmtlcm5lbC5vcmc+DQo+
IChsaW51eC1yZG1hQHZnZXIua2VybmVsLm9yZyk7IHN0YWJsZUB2Z2VyLmtl
cm5lbC5vcmcNCj4gU3ViamVjdDogUmU6IENWRS0yMDE0LTgxNTkga2VybmVs
OiBpbmZpbmliYW5kOiB1dmVyYnM6IHVucHJvdGVjdGVkDQo+IHBoeXNpY2Fs
IG1lbW9yeSBhY2Nlc3MNCj4gDQo+IE9uIFdlZCwgTWFyIDE4LCAyMDE1IGF0
IDEwOjM5IEFNLCBTaGFjaGFyIFJhaW5kZWwgPHJhaW5kZWxAbWVsbGFub3gu
Y29tPg0KPiB3cm90ZToNCj4gPiBEYXRlOiBTdW4sIDA0IEphbiAyMDE1IDE4
OjMwOjMyICswMjAwDQo+ID4gU3ViamVjdDogW1BBVENIXSBJQi9jb3JlOiBQ
cmV2ZW50IGludGVnZXIgb3ZlcmZsb3cgaW4gaWJfdW1lbV9nZXQNCj4gYWRk
cmVzcyBhcml0aG1ldGljDQo+IA0KPiBKdXN0IHNvIHdlJ3JlIGNsZWFyLCB0
aGlzIGJ1ZyBoYXMgYmVlbiBrbm93biBzaW5jZSBKYW51YXJ5IDQsIGFuZCBp
dCdzDQo+IGdldHRpbmcgc2VudCB1cHN0cmVhbSBub3c/DQo+IA0KDQpUaGlz
IGJ1ZyBoYXMgYmVlbiBrbm93biBzaW5jZSBKYW51YXJ5LCB5ZXMuIFRvIHJl
ZHVjZSB0aGUgd2luZG93IG9mDQp2dWxuZXJhYmlsaXR5LCB3ZSBwcml2YXRl
bHkgcmVwb3J0ZWQgaXQgdG8gbWFqb3IgZGlzdHJpYnV0aW9ucyBmaXJzdCwN
CmFsaWduaW5nIGV2ZXJ5b25lIG9uIHRoZSBzYW1lIHJlbGVhc2UgZGF0ZS4g
U3VjaCBzeW5jaHJvbml6YXRpb24gdGFrZXMNCnRpbWUuIEdpdmVuIHRoYXQg
dGhlIGJ1ZyB3YXMgbm90LCB0byB0aGUgYmVzdCBvZiBvdXIga25vd2xlZGdl
LA0KZXhwbG9pdGVkIGluIHRoZSB3aWxkLCB3ZSBiZWxpZXZlZCB0aGF0IDMg
bW9udGhzIG9mIGVtYmFyZ28gaXMgbm90DQpleHViZXJhdGVkLiBUaGlzIGlz
IGEgY29tbW9uIHByYWN0aWNlIGluIHRoZSBzZWN1cml0eSBpbmR1c3RyeSwg
Y2FsbGVkDQoicmVzcG9uc2libGUgZGlzY2xvc3VyZS4iDQoNCkZvbGxvd2lu
ZyB0aGUga2VybmVsICBzZWN1cml0eSBidWdzIHBvbGljeSBbMV0sIHdlIHJl
cG9ydGVkIGl0IHRvIA0KdGhlIGtlcm5lbCBzZWN1cml0eSBjb250YWN0cyBm
ZXcgZGF5cyBiZWZvcmUgbWFraW5nIHRoZSBpc3N1ZSBwdWJsaWMuDQpGZXcg
ZGF5cyBhZnRlciBpc3N1ZSBiZWNhbWUgcHVibGljLCB3ZSBwdWJsaXNoZWQg
YSBjbGVhciByZXBvcnQgdG8gYWxsDQpvZiB0aGUgcmVsZXZhbnQgbWFpbGlu
ZyBsaXN0cy4NCg0KPiBJIGFzc3VtZSB3ZSB3YW50IGl0IGluIDQuMCBhbmQg
LXN0YWJsZT8NCg0KWWVzLiBTaG91bGQgYmUgYXBwbGllZCBBU0FQIHRvIGFs
bCBrZXJuZWxzIHRoYXQgY29udGFpbiB1dmVyYnMuDQpXZSBwdXQgc29tZSBl
ZmZvcnQgdG8gbWFrZSBzdXJlIHRoZSBwYXRjaCB3aWxsIGFwcGx5IGNsZWFu
bHkgb24gYWxsDQpoaXN0b3JpY2FsIHZlcnNpb25zIG9mIHRoZSBrZXJuZWws
IHNvIGJhY2twb3J0aW5nIHNob3VsZCBiZSBzaW1wbGUuDQoNCg0KVGhhbmtz
LA0KLS1TaGFjaGFyDQoNClsxXSBodHRwczovL3d3dy5rZXJuZWwub3JnL2Rv
Yy9Eb2N1bWVudGF0aW9uL1NlY3VyaXR5QnVncw0K
