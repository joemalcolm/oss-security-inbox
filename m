Received: (qmail 19499 invoked by uid 550); 23 Jun 2023 06:38:48 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11411 invoked from network); 23 Jun 2023 01:20:31 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=amazon.com; i=@amazon.com; q=dns/txt; s=amazon201209;
  t=1687483231; x=1719019231;
  h=from:to:subject:date:message-id:references:in-reply-to:
   content-id:content-transfer-encoding:mime-version;
  bh=I/qsmFJqJPVHf/5K99tfZsjHXhZ4bATaGtszczratmE=;
  b=d7dRtnJUPQ3LqqAa6ImFx182/3TtG5c33a/zfG56LyoZo3F5qXWikRV2
   KtHniDye54prPlun9MBBXTWOkrXIaiRJbMTScGOZSo6V1fRwhlYKUR254
   v1cUegFTV1sbwMEIp2K5PV1oNDOj070zCX2Vw0oyUfBSA+FCt53TYiRrb
   w=;
X-IronPort-AV: E=Sophos;i="6.01,150,1684800000"; 
   d="scan'208";a="138658808"
From: "Smith, Stewart" <trawets@amazon.com>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Thread-Topic: [oss-security] CVE-2023-31975: memory leak in yasm
Thread-Index: AQHZpXDebM9V9B3nFkmUBYgxW778NQ==
Date: Fri, 23 Jun 2023 01:20:17 +0000
Message-ID: <72BCBA86-4192-47C9-ACA7-5F1A39994104@amazon.com>
References: <a37bfa30-f7d2-ae37-5af4-e3674af29a7a@oracle.com>
In-Reply-To: <a37bfa30-f7d2-ae37-5af4-e3674af29a7a@oracle.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
x-mailer: Apple Mail (2.3731.600.7)
x-originating-ip: [10.111.100.149]
Content-Type: text/plain; charset="utf-8"
Content-ID: <0A4162EC989C7E44A26AE900F722ADB0@amazon.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
Subject: Re: [oss-security] CVE-2023-31975: memory leak in yasm

T24gSnVuIDIwLCAyMDIzLCBhdCAzOjQ3IFBNLCBBbGFuIENvb3BlcnNtaXRo
IDxhbGFuLmNvb3BlcnNtaXRoQG9yYWNsZS5jb20+IHdyb3RlOg0KPiBodHRw
czovL252ZC5uaXN0Lmdvdi92dWxuL2RldGFpbC9DVkUtMjAyMy0zMTk3NSBp
cyBmcmVha2luZyBvdXQgc2Nhbm5lcnMNCj4gc2luY2UgaXQgY2xhaW1zIHRo
aXMgYnVnIGhhcyBhIENWU1Mgb2YgOS44Lg0KPiANCj4gRnJvbSB3aGF0IEkg
c2VlIGF0IGh0dHBzOi8vZ2l0aHViLmNvbS95YXNtL3lhc20vaXNzdWVzLzIx
MCB0aG91Z2gsIEkgY2FuJ3QNCj4gc2VlIGFueSBDVlNTIGhpZ2hlciB0aGFu
IDAuMCBiZWluZyByZWxldmFudCBoZXJlIGFuZCB0aGluayB0aGUgQ1ZFIHNo
b3VsZA0KPiBiZSB3aXRoZHJhd24uICBBbSBJIG1pc3Npbmcgc29tZXRoaW5n
IGhlcmU/ICBBbGwgSSBzZWUgaXMgMiBvYmplY3RzIG9mDQo+IDE2IGJ5dGVz
IGVhY2ggbm90IGJlaW5nIGZyZWVkIGluIHRoZSBmcmFjdGlvbiBvZiBhIHNl
Y29uZCBiZWZvcmUgdGhlDQo+IGNvbW1hbmQgZXhpdHMgYW5kIGF1dG9tYXRp
Y2FsbHkgZnJlZXMgdGhlIG1lbW9yeSAtIGluIGEgY29tbWFuZCB0aGUgdXNl
cg0KPiBkZWxpYmVyYXRlbHkgY2hvb3NlcyB0byBydW4sIHdoaWNoIHJ1bnMg
YXMgdGhlbXNlbHZlcyB3aXRoIG5vIHJhaXNlZA0KPiBwcml2aWxlZ2VzLCBv
biBhbiBpbnB1dCBmaWxlIHRoZXkgcHJvdmlkZSwgYW5kIHdoaWNoIGV4aXRz
IGFmdGVyIHByb2Nlc3NpbmcNCj4gdGhlIGZpbGUgYW5kIGRvZXNuJ3QgaGFu
ZyBhcm91bmQga2VlcGluZyB0aGF0IG1lbW9yeSBhbGxvY2F0ZWQgLSBub3Qg
YSBiaXQNCj4gb2Ygc2VjdXJpdHkgcmlzayBhdCBhbGwgdGhlcmUuICAoWWVz
LCBpdCdzIGEgc21hbGwgYnVnIGFuZCBpcyBnb29kIHRvIGZpeCwNCj4gYnV0
IG5vdCB0byByYWlzZSBzZWN1cml0eSBhbGFybXMgZm9yLikNCj4gDQo+IC0t
DQo+ICAgICAgICAtQWxhbiBDb29wZXJzbWl0aC0gICAgICAgICAgICAgICAg
IGFsYW4uY29vcGVyc21pdGhAb3JhY2xlLmNvbQ0KPiAgICAgICAgIE9yYWNs
ZSBTb2xhcmlzIEVuZ2luZWVyaW5nIC0gaHR0cHM6Ly9ibG9ncy5vcmFjbGUu
Y29tL3NvbGFyaXMNCg0KSSBkb27igJl0IHRoaW5rIHlvdSBhcmUsIEkgY2Fu
4oCZdCBzZWUgYW55dGhpbmcgaGVyZSBlaXRoZXIuDQoNCkV2ZW4gaWYgeW91
IHdlcmUgZG9pbmcgYWxsIHRoZSB3cm9uZyB0aGluZ3MgYW5kIHJ1bm5pbmcg
YSB5YXNtLWFzLWEtc2VydmljZSBjb250aW51YWxseSBidWlsZGluZyB1bnRy
dXN0ZWQgc291cmNlIHJpZ2h0IGFsb25nc2lkZSBvdGhlciBwcm9jZXNzZXMg
YXMgdGhlIHNhbWUgdXNlciwgdGhhdCBjb250YWluIGFsbCBzb3J0cyBvZiB0
aGluZ3MgeW91IGRvbuKAmXQgd2FudCBleHBvc2VkLCBJIHN0aWxsIGRvbuKA
mXQgc2VlIGhvdyB0aGlzIHdvdWxkIGJlIGFueXRoaW5nIGJ1dCBhIDAuMC4=
