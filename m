X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4380" "Monday" "9" "October" "2017" "01:59:52" "+0000" "=?utf-8?B?6L+e5LiA5rGJ?=" "lianyihan@360.cn" "<A962A2D04FAB5C4499FEFD15B642FA0A35DEFDF7@EX02.corp.qihoo.net>" "72" "[oss-security] =?utf-8?B?562U5aSNOiBbb3NzLXNlY3VyaXR5XSBDVkUtMjAxNy0xNDE2MDogbGlidm9y?==?utf-8?B?YmlzLTEuMy41IGJhcmtfbm9pc2VfaHlicmlkbXAoKSBpbnRlZ2VyIHNpZ25l?==?utf-8?B?ZG5lc3MgYnVn?=" nil nil nil "10" "2017100901:59:52" "[oss-security] =?utf-8?B?562U5aSNOg==?= =?utf-8?B?W29zcy1zZWN1cml0eV0=?= =?utf-8?B?Q1ZFLTIwMTctMTQxNjA6?= =?utf-8?B?bGlidm9y?==?utf-8?B?YmlzLTEuMy41?= =?utf-8?B?YmFya19ub2lzZV9oeWJyaWRtcCgp?= =?utf-8?B?aW50ZWdlcg==?= =?utf-8?B?c2lnbmU=?==?utf-8?B?ZG5lc3M=?= =?utf-8?B?YnVn?=" (number mark "U       lianyihan@36 Oct  9   72/4380  " thread-indent "\"[oss-security] =?utf-8?B?562U5aSNOiBbb3NzLXNlY3VyaXR5XSBDVkUtMjAxNy0xNDE2MDogbGlidm9y?==?utf-8?B?YmlzLTEuMy41IGJhcmtfbm9pc2VfaHlicmlkbXAoKSBpbnRlZ2VyIHNpZ25l?==?utf-8?B?ZG5lc3MgYnVn?=\"\n") "<20170930183612.mkgwgygmi7qri4wb@bogon.m.sigxcpu.org>" ("<A962A2D04FAB5C4499FEFD15B642FA0A35DEB814@EX02.corp.qihoo.net>" "<20170930183612.mkgwgygmi7qri4wb@bogon.m.sigxcpu.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 18212 invoked by uid 550); 9 Oct 2017 03:34:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 14172 invoked from network); 9 Oct 2017 02:00:06 -0000
From: =?utf-8?B?6L+e5LiA5rGJ?= <lianyihan@360.cn>
To: =?utf-8?B?R3VpZG8gR8O8bnRoZXI=?= <agx@sigxcpu.org>
CC: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Thread-Topic: [oss-security] CVE-2017-14160: libvorbis-1.3.5
 bark_noise_hybridmp() integer signedness bug
Thread-Index: AQHTQKGZRfGFKb5JpE2hZw5jG+tmKaLawv4Q
Date: Mon, 9 Oct 2017 01:59:52 +0000
Message-ID: <A962A2D04FAB5C4499FEFD15B642FA0A35DEFDF7@EX02.corp.qihoo.net>
References: <A962A2D04FAB5C4499FEFD15B642FA0A35DEB814@EX02.corp.qihoo.net>
 <20170930183612.mkgwgygmi7qri4wb@bogon.m.sigxcpu.org>
In-Reply-To: <20170930183612.mkgwgygmi7qri4wb@bogon.m.sigxcpu.org>
Accept-Language: zh-CN, en-US
Content-Language: zh-CN
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
x-originating-ip: [10.18.213.15]
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
Subject: [oss-security] =?utf-8?B?562U5aSNOiBbb3NzLXNlY3VyaXR5XSBDVkUtMjAxNy0xNDE2MDogbGlidm9y?=
 =?utf-8?B?YmlzLTEuMy41IGJhcmtfbm9pc2VfaHlicmlkbXAoKSBpbnRlZ2VyIHNpZ25l?=
 =?utf-8?Q?dness_bug?=

PiBXaGVyZSBjYW4gdGhlIHJlcHJvZHVjZXIgZm9yIHRoaXMgYmUgZm91bmQ/
IENhbiB5b3UgYXR0YWNoIGl0IHRvDQoNCkkgaGF2ZSBhZGQgcG9jLWF0dGFj
aG1lbnQgb24gaHR0cHM6Ly9naXRsYWIueGlwaC5vcmcveGlwaC92b3JiaXMv
aXNzdWVzLzIzMzAgOikNCg0KLS0tLS3pgq7ku7bljp/ku7YtLS0tLQ0K5Y+R
5Lu25Lq6OiBHdWlkbyBHw7xudGhlciBbbWFpbHRvOmFneEBzaWd4Y3B1Lm9y
Z10gDQrlj5HpgIHml7bpl7Q6IDIwMTflubQxMOaciDHml6UgMjozNg0K5pS2
5Lu25Lq6OiDov57kuIDmsYkNCuaKhOmAgTogb3NzLXNlY3VyaXR5QGxpc3Rz
Lm9wZW53YWxsLmNvbQ0K5Li76aKYOiBSZTogW29zcy1zZWN1cml0eV0gQ1ZF
LTIwMTctMTQxNjA6IGxpYnZvcmJpcy0xLjMuNSBiYXJrX25vaXNlX2h5YnJp
ZG1wKCkgaW50ZWdlciBzaWduZWRuZXNzIGJ1Zw0KDQpIaSwNCk9uIFRodSwg
U2VwIDIxLCAyMDE3IGF0IDA2OjI3OjE1QU0gKzAwMDAsIOi/nuS4gOaxiSB3
cm90ZToNCj4gSGksDQo+IA0KPiBJ4oCZbSBhIHNlY3VyaXR5IHJlc2VhcmNo
ZXIgb2YgUWlob28gMzYwIEdlYXJUZWFtLg0KPiBNeSBwYXJ0bmVyIFpoaWJp
biBIdSBhbmQgSSBmb3VuZCBhIHZ1bG5lcmFiaWxpdHkgb2YgbGlidm9yYmlz
LTEuMy41Lg0KPiBBbmQgd2UgaGF2ZSBhcHBsaWVkIGZvciBDVkUtMjAxNy0x
NDE2MCBvZiB0aGlzIHZ1bG5lcmFiaWxpdHkuDQo+ID09PT09PT09PT09PT09
PT09PSB0ZXN0IGNvbW1hbmQgPT09PT09PT09PT09PT09PT09PT0NCj4gDQo+
IGZmbXBlZyDigJNpIHBvYy5tcDQg4oCTeSAxLm1rdg0KDQpXaGVyZSBjYW4g
dGhlIHJlcHJvZHVjZXIgZm9yIHRoaXMgYmUgZm91bmQ/IENhbiB5b3UgYXR0
YWNoIGl0IHRvDQoNCiAgICBodHRwczovL2dpdGxhYi54aXBoLm9yZy94aXBo
L3ZvcmJpcy9pc3N1ZXMvMjMzMA0KDQpDaGVlcnMsDQogLS0gR3VpZG8NCg0K
PiAvLyBsaWJ2b3JiaXMtMS4zLjUgaGFzIGJlZW4gY29tcGlsZWQgaW50byBm
Zm1wZWcgc3RhdGljLg0KPiANCj4gPT09PT09PT09PT09PT09PT0gbmVlZGVk
IHZlcnNpb24gPT09PT09PT09PT09PT09PT09PT0NCj4gDQo+IEkgY29tcGls
ZSBpdCBhcyBodHRwczovL2dpdGh1Yi5jb20vZ29vZ2xlL29zcy1mdXp6L2Js
b2IvbWFzdGVyL3Byb2plY3RzL2ZmbXBlZy9idWlsZC5zaA0KPiANCj4gVGhp
cyBpcyB0aGUgcHJvYmxlbSBvZiBsaWJ2b3JiaXMtMS4zLjUsIGFuZCBJIHRy
aWVkIGxpYnZvcmJpcyBpbiB1YnVudHUgcmVwbywgaXQgY291bGQgYWxzbyB0
cmlnZ2VyIHRoaXMgdnVsIG9yIGJ1Zy4NCj4gDQo+ID09PT09PT09PT09PT09
PT09PT0gY3Jhc2ggaW5mbyA9PT09PT09PT09PT09PT09PT09PT09DQo+IA0K
PiAoZ2RiKSBidA0KPiAjMCAgMHgwMDAwMDAwMDAxZjk1YWZkIGluIGJhcmtf
bm9pc2VfaHlicmlkbXAgKG49MjU2LCBiPTB4MzJjZDk0MCwgZj0weDMyZTUw
MTAsIG5vaXNlPTB4MzJmN2VkMCwgb2Zmc2V0PTE0MCwgZml4ZWQ9LTEpIGF0
IHBzeS5jOjYzMA0KPiANCj4gIzEgIDB4MDAwMDAwMDAwMWY5NTQzMCBpbiBf
dnBfbm9pc2VtYXNrIChwPTB4MzJhYTgyMCwgbG9nbWRjdD0weDMyZTUwMTAs
IGxvZ21hc2s9MHgzMmY3ZWQwKSBhdCBwc3kuYzo3MDUNCj4gIzIgIDB4MDAw
MDAwMDAwMWZhY2FjOSBpbiBtYXBwaW5nMF9mb3J3YXJkICh2Yj0weDMyOWNm
YjApIGF0IG1hcHBpbmcwLmM6NDE3DQo+ICMzICAweDAwMDAwMDAwMDFmOTJj
OWUgaW4gdm9yYmlzX2FuYWx5c2lzICh2Yj0weDMyOWNmYjAsIG9wPTB4MCkg
YXQgYW5hbHlzaXMuYzo0Ng0KPiAjNCAgMHgwMDAwMDAwMDAwYmMyNzI1IGlu
IGxpYnZvcmJpc19lbmNvZGVfZnJhbWUgKGF2Y3R4PTB4MzI5Y2EwMCwgYXZw
a3Q9MHgzMmFiNTQwLCBmcmFtZT0weDMyZTQ0MDAsIGdvdF9wYWNrZXRfcHRy
PTB4N2ZmZmZmZmZkYmY0KSBhdCBsaWJhdmNvZGVjL2xpYnZvcmJpc2VuYy5j
OjMxMQ0KPiAjNSAgMHgwMDAwMDAwMDAwOWU1NzE3IGluIGF2Y29kZWNfZW5j
b2RlX2F1ZGlvMiAoYXZjdHg9MHgzMjljYTAwLCBhdnBrdD0weDMyYWI1NDAs
IGZyYW1lPTB4MzJlNDQwMCwgZ290X3BhY2tldF9wdHI9MHg3ZmZmZmZmZmRi
ZjQpYXQgbGliYXZjb2RlYy9lbmNvZGUuYzoxOTgNCj4gIzYgIDB4MDAwMDAw
MDAwMDllNjJkOCBpbiBkb19lbmNvZGUgKGF2Y3R4PTB4MzI5Y2EwMCwgZnJh
bWU9MHgzMmU0NDAwLCBnb3RfcGFja2V0PTB4N2ZmZmZmZmZkYmY0KSBhdCBs
aWJhdmNvZGVjL2VuY29kZS5jOjM3NQ0KPiANCj4gIzcgIDB4MDAwMDAwMDAw
MDllNjIyNCBpbiBhdmNvZGVjX3NlbmRfZnJhbWUgKGF2Y3R4PTB4MzI5Y2Ew
MCwgZnJhbWU9MHgzMmU0NDAwKSBhdCBsaWJhdmNvZGVjL2VuY29kZS5jOjQy
MQ0KPiAjOCAgMHgwMDAwMDAwMDAwNDM4ZWY1IGluIGRvX2F1ZGlvX291dCAo
b2Y9MHgzMjk5NTYwLCBvc3Q9MHgzMjljN2EwLCBmcmFtZT0weDMyZTQ0MDAp
IGF0IGZmbXBlZy5jOjkyMQ0KPiAjOSAgMHgwMDAwMDAwMDAwNDM2YzViIGlu
IHJlYXBfZmlsdGVycyAoZmx1c2g9MCkgYXQgZmZtcGVnLmM6MTUxNQ0KPiAj
MTAgMHgwMDAwMDAwMDAwNDJkYzMwIGluIHRyYW5zY29kZV9zdGVwICgpIGF0
IGZmbXBlZy5jOjQ1NTMNCj4gIzExIDB4MDAwMDAwMDAwMDQyYmM0OSBpbiB0
cmFuc2NvZGUgKCkgYXQgZmZtcGVnLmM6NDU5Nw0KPiAjMTIgMHgwMDAwMDAw
MDAwNDJiMDkyIGluIG1haW4gKGFyZ2M9NSwgYXJndj0weDdmZmZmZmZmZTY3
OCkgYXQgZmZtcGVnLmM6NDgwMw0KPiANCj4gKGdkYikgbA0KPiA2MjUNCj4g
NjI2ICAgICAgICAgbG8gPSBiW2ldID4+IDE2Ow0KPiA2MjcgICAgICAgICBo
aSA9IGJbaV0gJiAweGZmZmY7DQo+IDYyOCAgICAgICAgIGlmKGhpPj1uKWJy
ZWFrOw0KPiA2MjkNCj4gNjMwICAgICAgICAgdE4gPSBOW2hpXSAtIE5bbG9d
Ow0KPiA2MzEgICAgICAgICB0WCA9IFhbaGldIC0gWFtsb107DQo+IDYzMiAg
ICAgICAgIHRYWCA9IFhYW2hpXSAtIFhYW2xvXTsNCj4gNjMzICAgICAgICAg
dFkgPSBZW2hpXSAtIFlbbG9dOw0KPiA2MzQgICAgICAgICB0WFkgPSBYWVto
aV0gLSBYWVtsb107DQo+IChnZGIpIHAgaGkNCj4gJDQgPSAwDQo+IChnZGIp
IHAgbG8NCj4gJDUgPSA0OTY1NiAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgLy8gISEh
ISEhISEhISEhISEhISEhISEhISEhISEhISEhISEhISEhISEhISEhISEhISEh
ISEhIQ0KPiAoZ2RiKSBwIGkNCj4gJDYgPSAyNTkNCj4gDQo=
