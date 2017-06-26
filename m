X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2941" "Monday" "26" "June" "2017" "20:49:43" "+0000" "Christey, Steven M." "coley@mitre.org" "<CY1PR09MB08286A7F2D8571137E7BC7FEB5DF0@CY1PR09MB0828.namprd09.prod.outlook.com>" "49" "RE: [oss-security] Re: More CONFIG_VMAP_STACK vulnerabilities, refcount_t UAF, and an ignored Secure Boot bypass / rootkit method" "^CC:" nil nil "6" "2017062620:49:43" "[oss-security] Re: More CONFIG_VMAP_STACK vulnerabilities, refcount_t UAF, and an ignored Secure Boot bypass / rootkit method" (number mark "        coley@mitre. Jun 26   49/2941  " thread-indent "\"RE: [oss-security] Re: More CONFIG_VMAP_STACK vulnerabilities, refcount_t UAF, and an ignored Secure Boot bypass / rootkit method\"\n") "<CANO=Ty1f8yEyvBy_ZR9xU3MxSjjxKUk5q1S_VRsmJAHy7z2KhQ@mail.gmail.com>" ("<20170624005003.GB27479@grsecurity.net>" "<CAADWXX8JYe-AewtzoY6VBVLPTs+UvnfZst76vL4tccf6x9cY=g@mail.gmail.com>" "<20170624151504.GA25902@grsecurity.net>" "<CA+55aFyZpWutYKccn1eZBV5Lj_bF7gEZqy=LgjDOBqHk4poeTA@mail.gmail.com>" "<20170625013537.GA21637@grsecurity.net>" "<CALogXGW++8_OVkE_hyREa_fYjK1eDkinZQfBDVYVJ=vA0Nw-dg@mail.gmail.com>" "<CANO=Ty1f8yEyvBy_ZR9xU3MxSjjxKUk5q1S_VRsmJAHy7z2KhQ@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 26338 invoked by uid 550); 26 Jun 2017 20:51:48 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 25664 invoked from network); 26 Jun 2017 20:49:58 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mitre.onmicrosoft.com;
 s=selector1-mitre-org;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
 bh=DvUbZuY33HfRcoJ8u7oe51iJTKfBe91CHs63dVWcTNw=;
 b=B3GVpQ1bR2lx6bRz137vkYYjcvIvw0oNGgUEMl/zzkRY3cDYLCou2TwP7J13LhLIpyIL90y/rw6EenPk5MmFMxFGR8cJ+tYK9YiU/UoTfCoXuPISYD0okfEWvv/rHeUdXk/7fwLYg1y7bYxRSwUmfKsT9mPWKfjf8atslwyXGxc=
Thread-Topic: [oss-security] Re: More CONFIG_VMAP_STACK vulnerabilities,
 refcount_t UAF, and an ignored Secure Boot bypass / rootkit method
Thread-Index: AQHS7ItADAjY0JOFu02nZF4ZbYMV9aI0IDkAgAAZdgCAAJPrgIACuqEAgAAItQCAABEKcA==
Message-ID: <CY1PR09MB08286A7F2D8571137E7BC7FEB5DF0@CY1PR09MB0828.namprd09.prod.outlook.com>
References: <20170624005003.GB27479@grsecurity.net>
 <CAADWXX8JYe-AewtzoY6VBVLPTs+UvnfZst76vL4tccf6x9cY=g@mail.gmail.com>
 <20170624151504.GA25902@grsecurity.net>
 <CA+55aFyZpWutYKccn1eZBV5Lj_bF7gEZqy=LgjDOBqHk4poeTA@mail.gmail.com>
 <20170625013537.GA21637@grsecurity.net>
 <CALogXGW++8_OVkE_hyREa_fYjK1eDkinZQfBDVYVJ=vA0Nw-dg@mail.gmail.com>
 <CANO=Ty1f8yEyvBy_ZR9xU3MxSjjxKUk5q1S_VRsmJAHy7z2KhQ@mail.gmail.com>
In-Reply-To: <CANO=Ty1f8yEyvBy_ZR9xU3MxSjjxKUk5q1S_VRsmJAHy7z2KhQ@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
authentication-results: lists.openwall.com; dkim=none (message not signed)
 header.d=none;lists.openwall.com; dmarc=none action=none
 header.from=mitre.org;
x-originating-ip: [192.160.51.89]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1;CY1PR09MB0825;7:iMnIdg7M8n+hMeEi0gAnJXgEqJD+/gRmvqiJ2LMKdw9uLwuF8gdUony0U6R7VO8VpOJHzxOyjdDbAjO+oPM8qNWACkthKvM+d88038HqDnmVF1yfft4yhqslrMoFwbObbr6Ef+8a91nCQluf/6gmfuxn0IJ+RbSV3RJWSTSmyNjhy52AJl4rjCGelCIICL3NRUeWYrFL+y4edH5EmzSRxfkDcA6ceuKcVUcA63S/TPIXp+ZAejqrVuQklfkaxPmGlv8KL6b+rfiifUmKgWkDcrRn2UIbAkHXu4zeQ8VhFDstNSZsyUgBFnF68U0Xbvwleeh47kq1OtHJpQfAj0/C6ohHKLth3vEz2QPr3mk8wnqwnpzPNZaWxAFICOuE++DZUgmM/vMy96SXIJ3XTcWQRkAfkQgRWnNNT65HXPt7LmTmzYIHGKDWvXO3CbdQyVPvRawN5XfatJeHMbqZcP2iUbGc7yzAFTpHBmTH0OahbWNbfzDzH9yhi3/YqHxw+kDMw3+3Z/4UzTzPF8Ke0dDAHmuRHBhbXD7xHlWRU3cU+c+0JG1xAyB0GZez1dimmGMGjOpvwqRWBI9TUot95rKjkqUNLtl9d0bjuxIYFjJR9BHfpMhQpuS5R7JYeOus9tkxxBQH8pOMncQSPycMILm5Bmei4C0kQ7erV/BCPWtENXFhejakXPPCF2E/Vl+qZtPEJWKPMavsJ9EQtnhwBZYg+AcXWTkBdFImV5sdMzCe2zPIOw76mYdyUfGjDbYpBTpCkJVzOsyv0ZsNHRe6EKJzlaL2uu5Ruu3PhUYLPV5c+9U=
x-ms-office365-filtering-correlation-id: 9607db9c-bfd5-498d-9623-08d4bcd4dfd1
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:(300000500095)(300135000095)(300000501095)(300135300095)(22001)(300000502095)(300135100095)(2017030254075)(48565401081)(300000503095)(300135400095)(201703131423075)(201703031133081)(300000504095)(300135200095)(300000505095)(300135600095)(300000506067)(300135500095);SRVR:CY1PR09MB0825;
x-ms-traffictypediagnostic: CY1PR09MB0825:
x-microsoft-antispam-prvs: <CY1PR09MB0825E2E87197F53A611BDBC0B5DF0@CY1PR09MB0825.namprd09.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:(125551606395959)(236129657087228)(192374486261705)(48057245064654)(88311986221270)(256282310955234);
x-exchange-antispam-report-cfa-test: BCL:0;PCL:0;RULEID:(100000700101)(100105000095)(100000701101)(100105300095)(100000702101)(100105100095)(6040450)(601004)(2401047)(5005006)(8121501046)(93006095)(93001095)(3002001)(10201501046)(100000703101)(100105400095)(6055026)(6041248)(20161123562025)(201703131423075)(201702281528075)(201703061421075)(201703061406153)(20161123560025)(20161123564025)(20161123558100)(20161123555025)(6072148)(100000704101)(100105200095)(100000705101)(100105500095);SRVR:CY1PR09MB0825;BCL:0;PCL:0;RULEID:(100000800101)(100110000095)(100000801101)(100110300095)(100000802101)(100110100095)(100000803101)(100110400095)(100000804101)(100110200095)(100000805101)(100110500095);SRVR:CY1PR09MB0825;
x-forefront-prvs: 0350D7A55D
x-forefront-antispam-report: SFV:NSPM;SFS:(10009020)(6009001)(39860400002)(39450400003)(39850400002)(39410400002)(39400400002)(24454002)(377454003)(13464003)(229853002)(8936002)(122556002)(189998001)(14454004)(8676002)(2900100001)(81166006)(305945005)(2950100002)(6116002)(74316002)(6916009)(53546010)(2501003)(5640700003)(15650500001)(5660300001)(6436002)(2351001)(7736002)(86362001)(53936002)(77096006)(7696004)(3846002)(3280700002)(6246003)(50986999)(2906002)(110136004)(102836003)(66066001)(38730400002)(3660700001)(99286003)(25786009)(4326008)(478600001)(33656002)(76176999)(9686003)(6506006)(55016002)(54356999);DIR:OUT;SFP:1101;SCL:1;SRVR:CY1PR09MB0825;H:CY1PR09MB0828.namprd09.prod.outlook.com;FPR:;SPF:None;MLV:sfv;LANG:en;
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Jun 2017 20:49:43.8975
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c620dc48-1d50-4952-8b39-df4d54d74d82
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY1PR09MB0825
X-OriginatorOrg: mitre.org
CC: Pax Team <pageexec@freemail.hu>
Date: Mon, 26 Jun 2017 20:49:43 +0000
From: "Christey, Steven M." <coley@mitre.org>
Reply-To: oss-security@lists.openwall.com
Subject: RE: [oss-security] Re: More CONFIG_VMAP_STACK vulnerabilities,
 refcount_t UAF, and an ignored Secure Boot bypass / rootkit method
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>

RXZlbiBpZiBpdCB0dXJucyBpbnRvIGFuIGF3a3dhcmQgY29udmVyc2F0aW9u
LCBJJ20gc3VyZSB0aGF0IFNvbGFyIHdvdWxkIGJlIHBvbGl0ZSwgcG9pbnRl
ZCwgYW5kIHJlc3BlY3RmdWwuICBXZSBjb3VsZCBhbGwgbGVhcm4gZnJvbSBo
aXMgc3R5bGUgb2YgbW9kZXJhdGlvbi4NCg0KLSBTdGV2ZQ0KDQoNCj4gLS0t
LS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogS3VydCBTZWlmcmll
ZCBbbWFpbHRvOmtzZWlmcmllZEByZWRoYXQuY29tXQ0KPiBTZW50OiBNb25k
YXksIEp1bmUgMjYsIDIwMTcgMzo0NyBQTQ0KPiBUbzogb3NzLXNlY3VyaXR5
IDxvc3Mtc2VjdXJpdHlAbGlzdHMub3BlbndhbGwuY29tPg0KPiBDYzogUGF4
IFRlYW0gPHBhZ2VleGVjQGZyZWVtYWlsLmh1Pg0KPiBTdWJqZWN0OiBSZTog
W29zcy1zZWN1cml0eV0gUmU6IE1vcmUgQ09ORklHX1ZNQVBfU1RBQ0sgdnVs
bmVyYWJpbGl0aWVzLA0KPiByZWZjb3VudF90IFVBRiwgYW5kIGFuIGlnbm9y
ZWQgU2VjdXJlIEJvb3QgYnlwYXNzIC8gcm9vdGtpdCBtZXRob2QNCj4gDQo+
IEkgdGhpbmsgd2UgY2FuIGFncmVlIGFzIGEgY29tbXVuaXR5IG9mIHByb2Zl
c3Npb25hbHMgdGhhdCBpbnN1bHRzIGFuZCBuYW1lDQo+IGNhbGxpbmcgYXJl
IHVubmVjZXNzYXJ5IGFuZCBhbHNvIG5vdCB2ZXJ5IGVmZmVjdGl2ZS4gQW5k
IGJlZm9yZSBJIGdldA0KPiBhY2N1c2VkIG9mIGNlbnNvcnNoaXAgSSB3b3Vs
ZCBwb2ludCBvdXQgSSdtIG5vdCB3YW50aW5nIHRvIHN0b3AgYW55b25lIGZy
b20NCj4gdGFsa2luZywgSSdtIG9ubHkgd2FudGluZyB0byBzdG9wIHBlb3Bs
ZSBmcm9tIHRhbGtpbmcgaW4gYSB3YXkgdGhhdCBpcyBzbw0KPiBydWRlIGFu
ZCBpbnN1bHRpbmcgdGhhdCBpdCBwb2lzb25zIHRoZSBjb21tdW5pdHkgYW5k
IHNjYXJlcyBwZW9wbGUgYXdheS4gSQ0KPiBhc3N1bWUgU29sYXIgYWxzbyBz
dXBwb3J0cyB0aGlzIChpZiBub3QuLi4gZXJnaC4gdGhhdCdzIGdvbm5hIGJl
IGFuIGF3a3dhcmQNCj4gY29udmVyc2F0aW9uKS4NCj4gDQo+IE9uIE1vbiwg
SnVuIDI2LCAyMDE3IGF0IDE6MTYgUE0sIE1hbnNvdXIgTW91ZmlkDQo+IDxt
YW5zb3VybW91ZmlkQGdtYWlsLmNvbT4NCj4gd3JvdGU6DQo+IA0KPiA+IEhl
bGxvLg0KPiA+DQo+ID4gT24gU2F0LCBKdW4gMjQsIDIwMTcgYXQgOTozNSBQ
TSwgQnJhZCBTcGVuZ2xlciA8c3BlbmRlckBncnNlY3VyaXR5Lm5ldD4NCj4g
PiB3cm90ZToNCj4gPg0KPiA+ID4gSG93IGNvdWxkIHRoZXkga25vdyB0aGF0
IGNhbGxpbmcgcGVvcGxlIGNsb3ducyBhbmQgdGhlaXIgd29yayBnYXJiYWdl
DQo+ID4gd2Fzbid0DQo+ID4gPiBwYXltZW50IGVub3VnaD8NCj4gPiA+DQo+
ID4gPiBXaXRoIG5vIHRlY2huaWNhbCBjb250ZW50IGNvbWluZyBmcm9tIHlv
dXIgZW5kLCB0aGVyZSdzIG5vIG5lZWQgdG8NCj4gPiBkaXNjdXNzDQo+ID4g
PiBhbnl0aGluZyBmdXJ0aGVyIC0tIGRvbid0IHdhc3RlIHlvdXIgdGltZSBi
ZWNhdXNlIEkgd29uJ3QgcmVwbHkuDQo+ID4gPg0KPiA+ID4gR29vZCBsdWNr
IHRvIHlvdSBhbmQgYW55b25lIGVsc2Ugc3R1cGlkIGVub3VnaCB0byBkbyBh
bnkgd29yayBhdCBhbGwgZm9yDQo+ID4gPiB5b3UgYW5kIHlvdXIgbXVsdGkt
YmlsbGlvbiBkb2xsYXIgc3BvbnNvcnMgZm9yIGZyZWUuDQo+ID4gPg0KPiA+
ID4gLUJyYWQNCj4gPg0KPiA+IElzIHRoZXJlIGFub3RoZXIgbWFpbGluZyBs
aXN0IGZvciBkaXNjdXNzaW9ucyBvZiBMaW51eCBzZWN1cml0eT8gT3IgZm9y
dW0/DQo+ID4NCj4gPiBJIGhhdmUgYmVlbiB0aGlua2luZyBvZiBzaGFyaW5n
IGEgZmV3IHBhdGNoZXMgZm9yIHRoZSBsYXN0IGNvdXBsZSBtb250aHMuDQo+
ID4gSSBkb24ndCB0aGluayB0aGlzIGlzIHRoZSByaWdodCBwbGFjZSBhZnRl
ciB0aGUga2luZCBvZiBpbnN1bHRzIEkgc2F3IHRoaXMNCj4gPiB3ZWVrLg0K
PiA+DQo+ID4gQXBvbG9naWVzIGlmIG9mZiB0b3BpYy4NCj4gPg0KPiANCj4g
DQo+IA0KPiAtLQ0KPiANCj4gS3VydCBTZWlmcmllZCAtLSBSZWQgSGF0IC0t
IFByb2R1Y3QgU2VjdXJpdHkgLS0gQ2xvdWQNCj4gUEdQIEE5MEIgRjk5NSA3
MzUwIDE0OEYgNjZCRiA3NTU0IDE2MEQgNDU1MyA1RTI2IDc5OTMNCj4gUmVk
IEhhdCBQcm9kdWN0IFNlY3VyaXR5IGNvbnRhY3Q6IHNlY2FsZXJ0QHJlZGhh
dC5jb20NCg==
