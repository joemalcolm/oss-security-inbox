X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1538" "Friday" "15" "May" "2020" "12:54:12" "+0000" "Singh, Balbir" "sblbir@amazon.com" "<4a73fa85204d307c3dedb81a34e019e83a2c417e.camel@amazon.com>" "26" "[oss-security] Re:  [test case][kunit] CVE-2020-10711 Kernel netLabel" nil nil nil "5" "2020051512:54:12" "[oss-security] Re: [test case][kunit] CVE-2020-10711 Kernel netLabel" (number mark "U       sblbir@amazo May 15   26/1538  " thread-indent "\"[oss-security] Re: [test case][kunit] CVE-2020-10711 Kernel netLabel\"\n") "<nycvar.YSQ.7.76.2005151113190.1451610@xnncv>" ("<640d9869f8e7ea0aedaca2e29ecc3efeb7dfc940.camel@amazon.com>" "<nycvar.YSQ.7.76.2005151113190.1451610@xnncv>") nil nil nil nil nil nil nil "[oss-security] Re: [test case][kunit] CVE-2020-10711 Kernel netLabel" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1840 invoked by uid 550); 15 May 2020 13:00:16 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30598 invoked from network); 15 May 2020 12:54:41 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=amazon.com; i=@amazon.com; q=dns/txt; s=amazon201209;
  t=1589547281; x=1621083281;
  h=from:to:cc:subject:date:message-id:references:
   in-reply-to:content-id:content-transfer-encoding:
   mime-version;
  bh=cqt2fNUGQFVMYb/4kEEokXp76mkfF9kYkuHRNTSJa7M=;
  b=FWcIV5yc+eKINQE4Ez/xeqrOFLSaf2BmbDw+ROBXePpKohFg+EdIE96V
   vK+NsVT/XOqewXWtVXfsnKRqiWjLt0IM2iC9wqlTPXNO8Nz4WsvsZowWe
   WhLdOQEnIR8z35D41H1rt2vUf2UT30/FdFYNhrYd0VgjdzQVIl4vO6Iff
   E=;
IronPort-SDR: Ofmom4LYRXooi2fpB8vOzJzgGxGvOdMfpD6wuCxIJVxmzdLdVwHvMOlioYmvKlUAEM7c3qKEwK
 x/b08NsWDZIQ==
X-IronPort-AV: E=Sophos;i="5.73,395,1583193600"; 
   d="scan'208";a="30568545"
From: "Singh, Balbir" <sblbir@amazon.com>
To: "ppandit@redhat.com" <ppandit@redhat.com>
CC: "matthew.sheets@gd-ms.com" <matthew.sheets@gd-ms.com>, "code@tyhicks.com"
	<code@tyhicks.com>, "Mendoza-jonas, Samuel" <samjonas@amazon.com>,
	"pabeni@redhat.com" <pabeni@redhat.com>, "oss-security@lists.openwall.com"
	<oss-security@lists.openwall.com>
Thread-Topic: [test case][kunit] CVE-2020-10711 Kernel netLabel
Thread-Index: AQHWKrfuUz0f0Q6q00e+okSZhQbfLw==
Date: Fri, 15 May 2020 12:54:12 +0000
Message-ID: <4a73fa85204d307c3dedb81a34e019e83a2c417e.camel@amazon.com>
References: <640d9869f8e7ea0aedaca2e29ecc3efeb7dfc940.camel@amazon.com>
	 <nycvar.YSQ.7.76.2005151113190.1451610@xnncv>
In-Reply-To: <nycvar.YSQ.7.76.2005151113190.1451610@xnncv>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.43.160.90]
Content-Type: text/plain; charset="utf-8"
Content-ID: <AB11013E91E6C549AA24ED124F613F48@amazon.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
Subject: [oss-security] Re:  [test case][kunit] CVE-2020-10711 Kernel netLabel

T24gRnJpLCAyMDIwLTA1LTE1IGF0IDExOjI3ICswNTMwLCBQIEogUCB3cm90
ZToNCj4gDQo+ICAgSGVsbG8gQmFsYmlyLA0KPiANCj4gKy0tIE9uIEZyaSwg
MTUgTWF5IDIwMjAsIFNpbmdoLCBCYWxiaXIgd3JvdGUgLS0rDQo+ID4gSSd2
ZSBzcGVudCBzb21lIHRpbWUgd3JpdGluZyBhIGt1bml0IHRlc3QgY2FzZSBm
b3IgQ1ZFLTIwMjAtMTA3MTEgdXNpbmcgdGhlDQo+ID4gS1VOSVQgZnJhbWV3
b3JrLiBJIGFtIGF0dGFjaGluZyB0aGUgcGF0Y2ggYmVsb3cgZm9yIHJlZmVy
ZW5jZS4gVGhlIHBhdGNoIGlzDQo+ID4gYWdhaW5zdCB0aGUgbGF0ZXN0IGxp
bnV4LW5leHQuIFRoZSBkZXRhaWxzIGFyZSBpbiB0aGUgdGVzdCBjYXNlLCB0
aGVyZQ0KPiA+IGFyZSBzb21lIFRPRE9zOg0KPiA+IA0KPiA+IDEuIEFkZCB0
ZXN0IGNhc2VzIGZvciB0aGUgaXB2NiB2YXJpYW50DQo+ID4gMi4gQWRkIGEg
dGVzdCBjYXNlIGZvciBjaXBzb192NF9wYXJzZXRhZ19ycG0gdmFyaWFudA0K
PiA+IA0KPiA+IFBsZWFzZSBmZWVsIHRvIHN1Z2dlc3QgaW1wcm92ZW1lbnRz
IG9yIGJldHRlciB3YXlzIHRvIHRlc3QgdGhpcywgdGhpcyBpcw0KPiA+IGEg
cm91Z2ggcGF0Y2gsIGJ1dCBJIHN0aWxsIHdhbnRlZCB0byBzaGFyZSBpdCBh
bmQgc2VlIGlmIGl0IGhlbHBzIG90aGVycy8NCj4gPiBnZXQgY29tbWVudHMg
b24gdGhlIGFwcHJvYWNoIHRvIHRlc3RpbmcgaXQuDQo+IA0KPiBUaGFuayB5
b3Ugc28gbXVjaCBmb3Igd29ya2luZyBvbiB0aGlzLiBBdCBmaXJzdCBnbGFu
Y2UgaXQgbG9va3Mgb2theSwgeW91IG5lZWQNCj4gdG8gc2VuZCB0aGlzIHRv
IGFuIHVwc3RyZWFtIC1uZXRkZXYgbGlzdCBmb3IgYmV0dGVyIHJldmlld3Mv
aW5wdXRzLg0KPiANCj4gICAtPiBodHRwOi8vdmdlci5rZXJuZWwub3JnL3Zn
ZXItbGlzdHMuaHRtbCNuZXRkZXYNCj4NCg0KVGhhbmtzIFByYXNhZCENCg0K
SSB3YXMgcmVhY2hpbmcgb3V0IHRoZSBzZWN1cml0eSBsaXN0IHRvIGNoZWNr
IGlmIHRoZSBwYXRjaGVzIHdlcmUgY29ycmVjdA0KZnJvbSBhIHNlY3VyaXR5
IHZlcmlmaWNhdGlvbiB2aWV3IHBvaW50LiBJIHdpbGwgZ2V0IGZlZWRiYWNr
IGZyb20gbmV0ZGV2IA0KYXMgd2VsbCBpbiBhIHdoaWxlDQoNCkJhbGJpciBT
aW5naC4NCg0K
