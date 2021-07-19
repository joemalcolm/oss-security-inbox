X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1826" "Monday" "19" "July" "2021" "18:44:24" "+0000" "Karp, Samuel" "skarp@amazon.com" nil "30" "[oss-security] CVE-2021-32760: containerd archive package allows chmod of file outside of unpack target directory" nil nil nil "7" nil nil (number mark "U       skarp@amazon Jul 19   30/1826  " thread-indent "\"[oss-security] CVE-2021-32760: containerd archive package allows chmod of file outside of unpack target directory\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2021-32760: containerd archive package allows chmod of file outside of unpack target directory" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 15881 invoked by uid 550); 19 Jul 2021 19:35:06 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 22517 invoked from network); 19 Jul 2021 18:44:37 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=amazon.com; i=@amazon.com; q=dns/txt; s=amazon201209;
  t=1626720278; x=1658256278;
  h=from:to:subject:date:message-id:content-id:
   content-transfer-encoding:mime-version;
  bh=J+HFYQwd4kcNhasGSF1od6QF8zUAo905ZNmxKIScXks=;
  b=GgMPa87tLugwlj2lKVuCZe9hjUNMyG8RPTlvYbOhqsHGTo45Rl0DmfED
   Ig2UTfeTlAOfXEHRLdUbw5ST5czsX4yBA07+FsMcg01898eF5YjWmeN+X
   gNuROq3OulXTr+8RYNdkVFNH9BvWnz2qU+iEGmTuvCuh31iMpSlvxR/lp
   I=;
X-IronPort-AV: E=Sophos;i="5.84,252,1620691200"; 
   d="scan'208";a="123439411"
From: "Karp, Samuel" <skarp@amazon.com>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Thread-Topic: CVE-2021-32760: containerd archive package allows chmod of file
 outside of unpack target directory
Thread-Index: AQHXfM4YL+v6XAo9h0+J4mhLFJWpmw==
Date: Mon, 19 Jul 2021 18:44:24 +0000
Message-ID: <b948d018a470d7bc6d016a9bbdb3c444aead770c.camel@amazon.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.43.160.41]
Content-Type: text/plain; charset="utf-8"
Content-ID: <EBDF8D9A43FD2749B3DA5B3B9615CC3A@amazon.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
Subject: [oss-security] CVE-2021-32760: containerd archive package allows chmod of file
 outside of unpack target directory

QSBidWcgd2FzIGZvdW5kIGluIGNvbnRhaW5lcmQgd2hlcmUgcHVsbGluZyBh
bmQgZXh0cmFjdGluZyBhIHNwZWNpYWxseS0NCmNyYWZ0ZWQgY29udGFpbmVy
IGltYWdlIGNhbiByZXN1bHQgaW4gVW5peCBmaWxlIHBlcm1pc3Npb24gY2hh
bmdlcyBmb3INCmV4aXN0aW5nIGZpbGVzIGluIHRoZSBob3N04oCZcyBmaWxl
c3lzdGVtLiBDaGFuZ2VzIHRvIGZpbGUgcGVybWlzc2lvbnMNCmNhbiBkZW55
IGFjY2VzcyB0byB0aGUgZXhwZWN0ZWQgb3duZXIgb2YgdGhlIGZpbGUsIHdp
ZGVuIGFjY2VzcyB0bw0Kb3RoZXJzLCBvciBzZXQgZXh0ZW5kZWQgYml0cyBs
aWtlIHNldHVpZCwgc2V0Z2lkLCBhbmQgc3RpY2t5LiBUaGlzIGJ1Zw0KZG9l
cyBub3QgZGlyZWN0bHkgYWxsb3cgZmlsZXMgdG8gYmUgcmVhZCwgbW9kaWZp
ZWQsIG9yIGV4ZWN1dGVkIHdpdGhvdXQNCmFuIGFkZGl0aW9uYWwgY29vcGVy
YXRpbmcgcHJvY2Vzcy4NCg0KUGF0Y2hlcw0KVGhpcyBidWcgaGFzIGJlZW4g
Zml4ZWQgaW4gY29udGFpbmVyZCAxLjUuNCBhbmQgMS40LjguIFVzZXJzIHNo
b3VsZA0KdXBkYXRlIHRvIHRoZXNlIHZlcnNpb25zIGFzIHNvb24gYXMgdGhl
eSBhcmUgcmVsZWFzZWQuIFJ1bm5pbmcNCmNvbnRhaW5lcnMgZG8gbm90IG5l
ZWQgdG8gYmUgcmVzdGFydGVkLg0KDQpXb3JrYXJvdW5kcw0KRW5zdXJlIHlv
dSBvbmx5IHB1bGwgaW1hZ2VzIGZyb20gdHJ1c3RlZCBzb3VyY2VzLg0KDQpM
aW51eCBzZWN1cml0eSBtb2R1bGVzIChMU01zKSBsaWtlIFNFTGludXggYW5k
IEFwcEFybW9yIGNhbiBsaW1pdCB0aGUNCmZpbGVzIHBvdGVudGlhbGx5IGFm
ZmVjdGVkIGJ5IHRoaXMgYnVnIHRocm91Z2ggcG9saWNpZXMgYW5kIHByb2Zp
bGVzDQp0aGF0IHByZXZlbnQgY29udGFpbmVyZCBmcm9tIGludGVyYWN0aW5n
IHdpdGggdW5leHBlY3RlZCBmaWxlcy4NCkZvciBtb3JlIGluZm9ybWF0aW9u
DQoNCklmIHlvdSBoYXZlIGFueSBxdWVzdGlvbnMgb3IgY29tbWVudHMgYWJv
dXQgdGhpcyBhZHZpc29yeToNCg0KT3BlbiBhbiBpc3N1ZSBbMV0NCkVtYWls
IHVzIGF0IHNlY3VyaXR5QGNvbnRhaW5lcmQuaW8gaWYgeW91IHRoaW5rIHlv
deKAmXZlIGZvdW5kIGEgc2VjdXJpdHkNCmJ1Zy4NCg0KVmlldyB0aGlzIGFk
dmlzb3J5IG9uIHRoZSB3ZWI6IA0KaHR0cHM6Ly9naXRodWIuY29tL2NvbnRh
aW5lcmQvY29udGFpbmVyZC9zZWN1cml0eS9hZHZpc29yaWVzL0dIU0EtYzcy
cC05eG1qLXJ4M3cNCg0KT24gYmVoYWxmIG9mIHRoZSBjb250YWluZXJkIHBy
b2plY3QsDQpTYW11ZWwgS2FycA0KDQpbMV0gaHR0cHM6Ly9naXRodWIuY29t
L2NvbnRhaW5lcmQvY29udGFpbmVyZC9pc3N1ZXMvbmV3L2Nob29zZQ0K
