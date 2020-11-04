X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1599" "Wednesday" "4" "November" "2020" "11:33:26" "+0000" "=?utf-8?B?a2l5aW4o5bC55LquKQ==?=" "kiyin@tencent.com" "<619a4d6d03be41568f42c16958558281@tencent.com>" "27" "RE: [oss-security] Linux kernel: crypto: bcm - Verify GCM/CCM key length in setkey(Internet mail)" nil nil nil "11" "2020110411:33:26" "[oss-security] Linux kernel: crypto: bcm - Verify GCM/CCM key length in setkey(Internet mail)" (number mark "U       kiyin@tencen Nov  4   27/1599  " thread-indent "\"RE: [oss-security] Linux kernel: crypto: bcm - Verify GCM/CCM key length in setkey(Internet mail)\"\n") "<CAC5HUDz6+v0Tou3Fg=_5Q4ru9Vg7TA2x+SxtFAGfYBc3CighHA@mail.gmail.com>" ("<5a3464785c26496ea796470a1a0d82d1@tencent.com>" "<CAC5HUDz6+v0Tou3Fg=_5Q4ru9Vg7TA2x+SxtFAGfYBc3CighHA@mail.gmail.com>") nil nil nil nil nil nil nil "RE: [oss-security] Linux kernel: crypto: bcm - Verify GCM/CCM key length in setkey(Internet mail)" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 19637 invoked by uid 550); 4 Nov 2020 11:38:13 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15875 invoked from network); 4 Nov 2020 11:33:40 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=tencent.com;
	s=s202002; t=1604489702;
	bh=f++ggiINUW8k5DPsUC6/hQBcUvSvRoL7wgrHZHLD2Zo=;
	h=From:To:CC:Subject:Date:References:In-Reply-To;
	b=nGFvDKpzFJpNOL2C/RsncUgIr8p+TVBj/mf2DyD5C507qEx6TA/vR+n/eZPhY5Nb2
	 aXr+F0DTtxjdB9uhP9gttZRYTxC3wPaxzc25PjHo8Sw7+Lt0Be5DmoAbRprESI9ZKF
	 sgBOGJhCBuCoYl5sV4MvR4T7RLqRAoWY5QXyafto=
From: =?utf-8?B?a2l5aW4o5bC55LquKQ==?= <kiyin@tencent.com>
To: tausif <msiddiqu@redhat.com>
CC: Anthony Liguori <aliguori@amazon.com>, Solar Designer
	<solar@openwall.com>, "oss-security@lists.openwall.com"
	<oss-security@lists.openwall.com>
Thread-Topic: [oss-security] Linux kernel: crypto: bcm - Verify GCM/CCM key
 length in setkey(Internet mail)
Thread-Index: AQHWspt/sYE1zeKkzE2PcslL4Hkynam303Tw
Date: Wed, 4 Nov 2020 11:33:26 +0000
Message-ID: <619a4d6d03be41568f42c16958558281@tencent.com>
References: <5a3464785c26496ea796470a1a0d82d1@tencent.com>
 <CAC5HUDz6+v0Tou3Fg=_5Q4ru9Vg7TA2x+SxtFAGfYBc3CighHA@mail.gmail.com>
In-Reply-To: <CAC5HUDz6+v0Tou3Fg=_5Q4ru9Vg7TA2x+SxtFAGfYBc3CighHA@mail.gmail.com>
Accept-Language: zh-CN, en-US
Content-Language: zh-CN
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.17.90.51]
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
Subject: RE: [oss-security] Linux kernel: crypto: bcm - Verify GCM/CCM key
 length in setkey(Internet mail)

SGkgVGF1c2lmLA0KICAgIEkgc3VibWl0dGVkIHRoZSByZXF1ZXN0IGluIDIw
MjAvMTAvMDkuIGV4Y2VwdCBmb3IgYW4gYXV0byByZXBsYXkgZW1haWwgIkNW
RSBSZXF1ZXN0IDk3MTU0MyBmb3IgQ1ZFIElEIFJlcXVlc3QoSW50ZXJuZXQg
bWFpbCkiLCBJIGdvdCBubyByZXNwb25zZSB1bnRpbCBub3cuIEkgd29uZGVy
IHdoZXRoZXIgdGhleSBpZ25vcmUgcGVyc29uYWwgcmVxdWVzdC4NCg0KUmVn
YXJkcywNCmtpeWluLg0KDQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0t
DQo+IEZyb206IE1vaGFtbWFkIFRhdXNpZiBTaWRkaXF1aSBbbWFpbHRvOm1z
aWRkaXF1QHJlZGhhdC5jb21dDQo+IFNlbnQ6IFdlZG5lc2RheSwgTm92ZW1i
ZXIgNCwgMjAyMCA1OjE5IFBNDQo+IFRvOiBvc3Mtc2VjdXJpdHlAbGlzdHMu
b3BlbndhbGwuY29tDQo+IENjOiBBbnRob255IExpZ3VvcmkgPGFsaWd1b3Jp
QGFtYXpvbi5jb20+OyBTb2xhciBEZXNpZ25lcg0KPiA8c29sYXJAb3Blbndh
bGwuY29tPg0KPiBTdWJqZWN0OiBSZTogW29zcy1zZWN1cml0eV0gTGludXgg
a2VybmVsOiBjcnlwdG86IGJjbSAtIFZlcmlmeSBHQ00vQ0NNIGtleQ0KPiBs
ZW5ndGggaW4gc2V0a2V5KEludGVybmV0IG1haWwpDQo+IA0KPiBPbiBNb24s
IE9jdCAxMiwgMjAyMCBhdCAxMDoxMCBQTSBraXlpbijlsLnkuq4pIDxraXlp
bkB0ZW5jZW50LmNvbT4gd3JvdGU6DQo+IA0KPiA+IFRoZXJlIGFyZSBmb3Vy
IHNlY3VyaXR5IGJ1Z3MgaW4gQnJvYWRjb20gU1BVIGRyaXZlci4gVGhlIHBh
dGNoIHdhcw0KPiA+IHB1YmxpYyBpbiBodHRwczovL3d3dy5zcGluaWNzLm5l
dC9saXN0cy9saW51eC1jcnlwdG8vbXNnNTA4MzkuaHRtbC4NCj4gPiBDVkUg
SUQgcmVxdWVzdCBpcyBpbiBwcm9ncmVzcy4NCj4gPg0KPiANCj4gSGkgS2l5
aW4sIGRvIHlvdSBoYXZlIGFuIHVwZGF0ZSB0byB0aGUgQ1ZFIGFzc2lnbm1l
bnQgZnJvbSBNaXRyZSBoZXJlPw0KPiAtLQ0KPiANCj4gVEFVU0lGIFNJRERJ
UVVJIFJFRCBIQVQgUFJPRFVDVCBTRUNVUklUWQ0KPiANCj4gMEVFMSBGNkJG
IDg5OTEgOUE2NSAwQTc5IEEwQTcgNTg0OSA2MEVDIDg4QjggMkM3MQ0KPiAN
Cj4gc2VjYWxlcnRAcmVkaGF0LmNvbSA8aHR0cHM6Ly9hY2Nlc3MucmVkaGF0
LmNvbS9zZWN1cml0eS90ZWFtL2NvbnRhY3Q+IGZvcg0KPiB1cmdlbnQgcmVz
cG9uc2UuDQo=
