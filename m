X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1513" "Monday" "4" "October" "2021" "18:57:19" "+0000" "Karp, Samuel" "skarp@amazon.com" nil "25" "[oss-security] Moby (Docker Engine) CVE-2021-41089" nil nil nil "10" nil nil (number mark "U       skarp@amazon Oct  4   25/1513  " thread-indent "\"[oss-security] Moby (Docker Engine) CVE-2021-41089\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Moby (Docker Engine) CVE-2021-41089" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 28192 invoked by uid 550); 4 Oct 2021 18:58:27 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28015 invoked from network); 4 Oct 2021 18:57:33 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=amazon.com; i=@amazon.com; q=dns/txt; s=amazon201209;
  t=1633373854; x=1664909854;
  h=from:to:subject:date:message-id:content-id:
   content-transfer-encoding:mime-version;
  bh=9a0L1RBo4BbMcm3/Nj+OA6D8FOtLdL66AHceiS3UkjY=;
  b=q0icubX50cMpiCWgGz+OuII5A2KtqAUUL0wiTDuqQ/uzVQitpIyuff9Y
   PKlRqNVkggswJYOn4Rysu0LbDnTkFcXhYQHXyzHu45EVgu1pA/G/fOgIU
   Xpj+SPOowk5VDi3UdH4nroRODeHXOr+KMYaoNa5MGMA6AuOZa6d3W8HxW
   g=;
X-IronPort-AV: E=Sophos;i="5.85,346,1624320000"; 
   d="scan'208";a="142195480"
From: "Karp, Samuel" <skarp@amazon.com>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Thread-Topic: Moby (Docker Engine) CVE-2021-41089
Thread-Index: AQHXuVGnS+V1bf3EwUCWGvFyCZTjEA==
Date: Mon, 4 Oct 2021 18:57:19 +0000
Message-ID: <f36fc3fefc0b5c429cb16adfe62bde6f4ab0bbd2.camel@amazon.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.43.162.36]
Content-Type: text/plain; charset="utf-8"
Content-ID: <B1F7C56A7FB36049A76A81D585B336F8@amazon.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
Subject: [oss-security] Moby (Docker Engine) CVE-2021-41089

QSBidWcgd2FzIGZvdW5kIGluIE1vYnkgKERvY2tlciBFbmdpbmUpIHdoZXJl
IGF0dGVtcHRpbmcgdG8gY29weSBmaWxlcw0KdXNpbmcgZG9ja2VyIGNwIGlu
dG8gYSBzcGVjaWFsbHktY3JhZnRlZCBjb250YWluZXIgY2FuIHJlc3VsdCBp
biBVbml4DQpmaWxlIHBlcm1pc3Npb24gY2hhbmdlcyBmb3IgZXhpc3Rpbmcg
ZmlsZXMgaW4gdGhlIGhvc3QncyBmaWxlc3lzdGVtLA0Kd2lkZW5pbmcgYWNj
ZXNzIHRvIG90aGVycy4gVGhpcyBidWcgZG9lcyBub3QgZGlyZWN0bHkgYWxs
b3cgZmlsZXMgdG8gYmUNCnJlYWQsIG1vZGlmaWVkLCBvciBleGVjdXRlZCB3
aXRob3V0IGFuIGFkZGl0aW9uYWwgY29vcGVyYXRpbmcgcHJvY2Vzcy4NCg0K
UGF0Y2hlcw0KVGhpcyBidWcgaGFzIGJlZW4gZml4ZWQgaW4gTW9ieSAoRG9j
a2VyIEVuZ2luZSkgMjAuMTAuOS4gVXNlcnMgc2hvdWxkDQp1cGRhdGUgdG8g
dGhpcyB2ZXJzaW9uIGFzIHNvb24gYXMgcG9zc2libGUuIFJ1bm5pbmcgY29u
dGFpbmVycyBkbyBub3QNCm5lZWQgdG8gYmUgcmVzdGFydGVkLg0KDQpXb3Jr
YXJvdW5kcw0KRW5zdXJlIHlvdSBvbmx5IHJ1biB0cnVzdGVkIGNvbnRhaW5l
cnMuDQoNCkNyZWRpdHMNClRoZSBNb2J5IHByb2plY3Qgd291bGQgbGlrZSB0
byB0aGFuayBMZWkgV2FuZyBhbmQgUnVpemhpIFhpYW8gZm9yDQpyZXNwb25z
aWJseSBkaXNjbG9zaW5nIHRoaXMgaXNzdWUgaW4gYWNjb3JkYW5jZSB3aXRo
IHRoZSDvu79Nb2J5IHNlY3VyaXR5DQpwb2xpY3kuDQoNCklmIHlvdSBoYXZl
IGFueSBxdWVzdGlvbnMgb3IgY29tbWVudHMgYWJvdXQgdGhpcyBhZHZpc29y
eToNCk9wZW4gYW4gaXNzdWUgWzFdDQpFbWFpbCB1cyBhdCDvu78gc2VjdXJp
dHlAZG9ja2VyLmNvbSDvu78gaWYgeW91IHRoaW5rIHlvdeKAmXZlIGZvdW5k
IGENCnNlY3VyaXR5IGJ1Zw0KDQpWaWV3IHRoaXMgYWR2aXNvcnkgb24gdGhl
IHdlYjoNCmh0dHBzOi8vZ2l0aHViLmNvbS9tb2J5L21vYnkvc2VjdXJpdHkv
YWR2aXNvcmllcy9HSFNBLXY5OTQtZjh2dy1nN2o0DQoNCk9uIGJlaGFsZiBv
ZiB0aGUgTW9ieSBwcm9qZWN0LA0KU2FtdWVsIEthcnANCg0KWzFdIGh0dHBz
Oi8vZ2l0aHViLmNvbS9tb2J5L21vYnkvaXNzdWVzL25ldw0K
