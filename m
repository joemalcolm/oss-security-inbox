X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2961" "Monday" "13" "February" "2017" "12:21:52" "+0000" "=?gb2312?B?wO7Hvw==?=" "liqiang6-s@360.cn" "<143C0AFC63FC204CB0C55BB88F3A8ABB33320994@EX02.corp.qihoo.net>" "49" "[oss-security] RE: CVE-2017-2615 Qemu: display: cirrus: oob access while doing bitblt copy backward mode" nil nil nil "2" "2017021312:21:52" "[oss-security] RE: CVE-2017-2615 Qemu: display: cirrus: oob access while doing bitblt copy backward mode" (number mark "U       liqiang6-s@3 Feb 13   49/2961  " thread-indent "\"[oss-security] RE: CVE-2017-2615 Qemu: display: cirrus: oob access while doing bitblt copy backward mode\"\n") "<alpine.LFD.2.20.1702011514510.25859@wniryva>" ("<alpine.LFD.2.20.1702011514510.25859@wniryva>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9874 invoked by uid 550); 13 Feb 2017 14:57:49 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 19581 invoked from network); 13 Feb 2017 12:22:04 -0000
From: =?gb2312?B?wO7Hvw==?= <liqiang6-s@360.cn>
To: oss security list <oss-security@lists.openwall.com>
CC: P J P <ppandit@redhat.com>
Thread-Topic: CVE-2017-2615 Qemu: display: cirrus: oob access while doing
 bitblt copy backward mode
Thread-Index: AQHSfHCYEmNUp0hPbEKCerSd7nyw0aFm7cRg
Date: Mon, 13 Feb 2017 12:21:52 +0000
Message-ID: <143C0AFC63FC204CB0C55BB88F3A8ABB33320994@EX02.corp.qihoo.net>
References: <alpine.LFD.2.20.1702011514510.25859@wniryva>
In-Reply-To: <alpine.LFD.2.20.1702011514510.25859@wniryva>
Accept-Language: zh-CN, en-US
Content-Language: zh-CN
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
x-originating-ip: [10.18.213.16]
Content-Type: text/plain; charset="gb2312"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
Subject: [oss-security] RE: CVE-2017-2615 Qemu: display: cirrus: oob access while doing
 bitblt copy backward mode

SGVsbG8gYWxsLA0KDQpUaGlzIGlzIExpIFFpYW5nIGZyb20gdGhlIEdlYXIg
VGVhbSwgUWlob28gMzYwIGluYy4gSSBoYXZlIGRpc2NvdmVyZWQgdGhpcyB2
dWxuZXJhYmlsaXR5IGFuZCBtYWtlIGEgcGF0Y2ggZm9yIHRoaXMsIHRob3Vn
aCANCm5vdCBjb21wbGV0ZS4gV2hlbiBJIHNlbmQgcGF0Y2ggdG8gZml4IHRo
aXMgaXNzdWUsIEkgZGlkIGtub3cgdGhlIENpcnJ1cyB2Z2EgaXMgbm90IHRo
ZSBkZWZhdWx0IHZnYSBpbiBxZW11LiBTbyBJIA0KanVzdCB0cmVhdCB0aGlz
IGFzIGEgbm9ybWFsIGlzc3VlLiBCdXQgYWZ0ZXJ3YXJkcyB3ZSBkaXNjb3Zl
cmVkIHRoYXQgdGhlIGxpYnZpcnQgYW5kIHhlbiB1c2UgdGhpcyB2Z2EgYXMg
ZGVmYXVsdC4NCldlIHRlc3RlZCBhIGxvdCBvZiBjbG91ZCBwbGF0Zm9ybSBp
biBDaGluYSwgZXZlcnkgb2YgdGhlbSB1c2VzIHRoZSBDaXJydXMgdmdhIGFz
IGRlZmF1bHQuIE1vc3Qgb2YgdGhlbSBpcyBhZmZlY3RlZCBieSB0aGlzDQpp
c3N1ZS4gVGhlIG9ubHkgb25lIGRvZXNuJ3QgYmUgYWZmZWN0ZWQgSSB0aGlu
ayBoYXZlIGZpeGVkIHRoaXMgaXNzdWUuIFNvIHdlIHRoaW5rIHRoaXMgaXNz
dWUgc2hvdWxkIGJlIGdvdCBtb3JlIGF0dGVudGlvbi4gV2UgDQpzdHJvbmds
eSBjb21tZW5kIGV2ZXJ5IGNsb3VkIHBsYXRmb3JtIHRyZWF0IHRoaXMgaXNz
dWUgc2VyaW91c2x5LiBUaG91Z2ggdGhpcyB2dWxuZXJhYmlsaXR5IGhhcyBi
ZWVuIGZpeGVkIGZvciAxMCsgZGF5cywNCkZvciByZXNwb25zaWJsZSB2dWxu
ZXJhYmlsaXR5IGRpc2Nsb3N1cmUsIHdlIHdpbGwgbm90IHB1YmxpYyB0aGUg
UG9DIGluIHRoaXMgZW1haWwuIFRoZSBQb0Mgd2lsbCBiZSBwdWJsaWMgbGF0
ZXIuDQoNClRoYW5rcy4NCg0KLS0NCkxpIFFpYW5nIC8gdGhlIEdlYXIgVGVh
bSwgUWlob28gMzYwIEluYy4NCg0KDQo+IC0tLS0tT3JpZ2luYWwgTWVzc2Fn
ZS0tLS0tDQo+IEZyb206IFAgSiBQIFttYWlsdG86cHBhbmRpdEByZWRoYXQu
Y29tXQ0KPiBTZW50OiBXZWRuZXNkYXksIEZlYnJ1YXJ5IDAxLCAyMDE3IDU6
NTAgUE0NCj4gVG86IG9zcyBzZWN1cml0eSBsaXN0DQo+IENjOiDA7se/DQo+
IFN1YmplY3Q6IENWRS0yMDE3LTI2MTUgUWVtdTogZGlzcGxheTogY2lycnVz
OiBvb2IgYWNjZXNzIHdoaWxlIGRvaW5nIGJpdGJsdA0KPiBjb3B5IGJhY2t3
YXJkIG1vZGUNCj4gDQo+ICAgIEhlbGxvLA0KPiANCj4gUXVpY2sgZW11bGF0
b3IoUWVtdSkgYnVpbHQgd2l0aCB0aGUgQ2lycnVzIENMR0QgNTR4eCBWR0Eg
RW11bGF0b3Igc3VwcG9ydCBpcw0KPiB2dWxuZXJhYmxlIHRvIGFuIG91dC1v
Zi1ib3VuZHMgYWNjZXNzIGlzc3VlLiBJdCBjb3VsZCBvY2N1ciB3aGlsZSBj
b3B5aW5nIFZHQQ0KPiBkYXRhIHZpYSBiaXRibHQgY29weSBpbiBiYWNrd2Fy
ZCBtb2RlLg0KPiANCj4gQSBwcml2aWxlZ2VkIHVzZXIgaW5zaWRlIGd1ZXN0
IGNvdWxkIHVzZSB0aGlzIGZsYXcgdG8gY3Jhc2ggdGhlIFFlbXUgcHJvY2Vz
cw0KPiByZXN1bHRpbmcgaW4gRG9TIE9SIHBvdGVudGlhbGx5IGV4ZWN1dGUg
YXJiaXRyYXJ5IGNvZGUgb24gdGhlIGhvc3Qgd2l0aA0KPiBwcml2aWxlZ2Vz
IG9mIFFlbXUgcHJvY2VzcyBvbiB0aGUgaG9zdC4NCj4gDQo+IFVwc3RyZWFt
IHBhdGNoDQo+IC0tLS0tLS0tLS0tLS0tDQo+ICAgIC0+IGh0dHBzOi8vbGlz
dHMuZ251Lm9yZy9hcmNoaXZlL2h0bWwvcWVtdS1kZXZlbC8yMDE3LTAyL21z
ZzAwMDE1Lmh0bWwNCj4gDQo+IEl0IGZpeGVzDQo+ICAgIC0+DQo+IGh0dHA6
Ly9naXQucWVtdS5vcmcvP3A9cWVtdS5naXQ7YT1jb21taXQ7aD1kMzUzMmEw
ZGIwMjI5NmU2ODc3MTFiOGNkYw0KPiA3NzkxOTI0ZWZjY2VhMA0KPiANCj4g
UmVmZXJlbmNlOg0KPiAtLS0tLS0tLS0tDQo+ICAgIC0+IGh0dHBzOi8vYnVn
emlsbGEucmVkaGF0LmNvbS9zaG93X2J1Zy5jZ2k/aWQ9MTQxODIwMA0KPiAN
Cj4gVGhpcyBpc3N1ZSB3YXMgcmVwb3J0ZWQgYnkgTGkgUWlhbmcgb2YgMzYw
LmNuIEluYy4NCj4gDQo+IENWRS0yMDE3LTI2MTUgd2FzIGFzc2lnbmVkIHRv
IHRoaXMgaXNzdWUgYnkgUmVkIEhhdCBJbmMuDQo+IA0KPiBUaGFuayB5b3Uu
DQo+IC0tDQo+IFByYXNhZCBKIFBhbmRpdCAvIFJlZCBIYXQgUHJvZHVjdCBT
ZWN1cml0eSBUZWFtIDQ3QUYgQ0U2OSAzQTkwIDU0QUEgOTA0NQ0KPiAxMDUz
IEREMTMgM0QzMiBGRTVCIDA0MUYNCg==
