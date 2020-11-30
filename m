X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3010" "Monday" "30" "November" "2020" "19:00:16" "+0000" "Karp, Samuel" "skarp@amazon.com" "<142af9167b98ce5f330f2ce9ad10decb0bdb6163.camel@amazon.com>" "50" "[oss-security] CVE-2020-15257: containerd-shim API exposed to host network containers" nil nil nil "11" "2020113019:00:16" "[oss-security] CVE-2020-15257: containerd-shim API exposed to host network containers" (number mark "U       skarp@amazon Nov 30   50/3010  " thread-indent "\"[oss-security] CVE-2020-15257: containerd-shim API exposed to host network containers\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2020-15257: containerd-shim API exposed to host network containers" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 32511 invoked by uid 550); 30 Nov 2020 20:08:36 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32071 invoked from network); 30 Nov 2020 19:00:37 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=amazon.com; i=@amazon.com; q=dns/txt; s=amazon201209;
  t=1606762838; x=1638298838;
  h=from:to:subject:date:message-id:content-id:
   content-transfer-encoding:mime-version;
  bh=bQRsVDU/tTFYxJxC5TefphZi/cIQfV6GTQWSdrGigJE=;
  b=BOl40UD7bgznZ6/vjMssrBKGAyzPy2vWcD0jxaZplZcQ39dWv04uH4nH
   nf3HzwvriZGpid42hW78vGy46QTA1rqgPhIzKoU3+YflaVPEeHBh2xQZ2
   cO7cEsyrFpV4VOPLEzLYbAiW1pqJcDWdtQP2cuDvZv8xdviaVV/KuJScS
   0=;
X-IronPort-AV: E=Sophos;i="5.78,382,1599523200"; 
   d="scan'208";a="66520302"
From: "Karp, Samuel" <skarp@amazon.com>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Thread-Topic: CVE-2020-15257: containerd-shim API exposed to host network
 containers
Thread-Index: AQHWx0sK+v40LoadO0STL1gEHn2smg==
Date: Mon, 30 Nov 2020 19:00:16 +0000
Message-ID: <142af9167b98ce5f330f2ce9ad10decb0bdb6163.camel@amazon.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.43.162.144]
Content-Type: text/plain; charset="utf-8"
Content-ID: <C09AF5B6EEFA3D4BB305F61648DE2560@amazon.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
Subject: [oss-security] CVE-2020-15257: containerd-shim API exposed to host network
 containers

SW1wYWN0DQoNCkFjY2VzcyBjb250cm9scyBmb3IgdGhlIHNoaW3igJlzIEFQ
SSBzb2NrZXQgdmVyaWZpZWQgdGhhdCB0aGUgY29ubmVjdGluZw0KcHJvY2Vz
cyBoYWQgYW4gZWZmZWN0aXZlIFVJRCBvZiAwLCBidXQgZGlkIG5vdCBvdGhl
cndpc2UgcmVzdHJpY3QNCmFjY2VzcyB0byB0aGUgYWJzdHJhY3QgVW5peCBk
b21haW4gc29ja2V0LiBUaGlzIHdvdWxkIGFsbG93IG1hbGljaW91cw0KY29u
dGFpbmVycyBydW5uaW5nIGluIHRoZSBzYW1lIG5ldHdvcmsgbmFtZXNwYWNl
IGFzIHRoZSBzaGltLCB3aXRoIGFuDQplZmZlY3RpdmUgVUlEIG9mIDAgYnV0
IG90aGVyd2lzZSByZWR1Y2VkIHByaXZpbGVnZXMsIHRvIGNhdXNlIG5ldw0K
cHJvY2Vzc2VzIHRvIGJlIHJ1biB3aXRoIGVsZXZhdGVkIHByaXZpbGVnZXMu
DQoNCg0KUGF0Y2hlcw0KDQpUaGlzIHZ1bG5lcmFiaWxpdHkgaGFzIGJlZW4g
Zml4ZWQgaW4gY29udGFpbmVyZCAxLjMuOSBbMV0gYW5kIDEuNC4zDQpbMl0u
IFVzZXJzIHNob3VsZCB1cGRhdGUgdG8gdGhlc2UgdmVyc2lvbnMgYXMgc29v
biBhcyB0aGV5IGFyZQ0KcmVsZWFzZWQuIEl0IHNob3VsZCBiZSBub3RlZCB0
aGF0IGNvbnRhaW5lcnMgc3RhcnRlZCB3aXRoIGFuIG9sZA0KdmVyc2lvbiBv
ZiBjb250YWluZXJkLXNoaW0gc2hvdWxkIGJlIHN0b3BwZWQgYW5kIHJlc3Rh
cnRlZCwgYXMgcnVubmluZw0KY29udGFpbmVycyB3aWxsIGNvbnRpbnVlIHRv
IGJlIHZ1bG5lcmFibGUgZXZlbiBhZnRlciBhbiB1cGdyYWRlLg0KDQoNCldv
cmthcm91bmRzDQoNCklmIHlvdSBhcmUgbm90IHByb3ZpZGluZyB0aGUgYWJp
bGl0eSBmb3IgdW50cnVzdGVkIHVzZXJzIHRvIHN0YXJ0DQpjb250YWluZXJz
IGluIHRoZSBzYW1lIG5ldHdvcmsgbmFtZXNwYWNlIGFzIHRoZSBzaGltICh0
eXBpY2FsbHkgdGhlDQoiaG9zdCIgbmV0d29yayBuYW1lc3BhY2UsIGZvciBl
eGFtcGxlIHdpdGggYGRvY2tlciBydW4gLS1uZXQ9aG9zdGAgb3INCmBob3N0
TmV0d29yazogdHJ1ZWAgaW4gYSBLdWJlcm5ldGVzIHBvZCkgYW5kIHJ1biB3
aXRoIGFuIGVmZmVjdGl2ZSBVSUQNCm9mIDAsIHlvdSBhcmUgbm90IHZ1bG5l
cmFibGUgdG8gdGhpcyBpc3N1ZS4NCg0KSWYgeW91IGFyZSBydW5uaW5nIGNv
bnRhaW5lcnMgd2l0aCBhIHZ1bG5lcmFibGUgY29uZmlndXJhdGlvbiwgeW91
IGNhbg0KZGVueSBhY2Nlc3MgdG8gYWxsIGFic3RyYWN0IHNvY2tldHMgd2l0
aCBBcHBBcm1vciBieSBhZGRpbmcgYSBsaW5lDQpzaW1pbGFyIHRvIGBkZW55
IHVuaXggYWRkcj1AKiosYCB0byB5b3VyIHBvbGljeS4NCg0KSXQgaXMgYmVz
dCBwcmFjdGljZSB0byBydW4gY29udGFpbmVycyB3aXRoIGEgcmVkdWNlZCBz
ZXQgb2YgcHJpdmlsZWdlcywNCndpdGggYSBub24temVybyBVSUQsIGFuZCB3
aXRoIGlzb2xhdGVkIG5hbWVzcGFjZXMuIFRoZSBjb250YWluZXJkDQptYWlu
dGFpbmVycyBzdHJvbmdseSBhZHZpc2UgYWdhaW5zdCBzaGFyaW5nIG5hbWVz
cGFjZXMgd2l0aCB0aGUgaG9zdC4NClJlZHVjaW5nIHRoZSBzZXQgb2YgaXNv
bGF0aW9uIG1lY2hhbmlzbXMgdXNlZCBmb3IgYSBjb250YWluZXINCm5lY2Vz
c2FyaWx5IGluY3JlYXNlcyB0aGF0IGNvbnRhaW5lcidzIHByaXZpbGVnZSwg
cmVnYXJkbGVzcyBvZiB3aGF0DQpjb250YWluZXIgcnVudGltZSBpcyB1c2Vk
IGZvciBydW5uaW5nIHRoYXQgY29udGFpbmVyLg0KDQoNCkNyZWRpdHMNCg0K
VGhlIGNvbnRhaW5lcmQgbWFpbnRhaW5lcnMgd291bGQgbGlrZSB0byB0aGFu
ayBKZWZmIERpbGVvIG9mIE5DQyBHcm91cA0KZm9yIHJlc3BvbnNpYmx5IGRp
c2Nsb3NpbmcgdGhpcyBpc3N1ZSBpbiBhY2NvcmRhbmNlIHdpdGggdGhlIGNv
bnRhaW5lcmQNCnNlY3VyaXR5IHBvbGljeSBbM10gYW5kIGZvciByZXZpZXdp
bmcgdGhlIHBhdGNoLg0KDQpGb3IgZnVydGhlciBkZXRhaWxzLCBzZWUgDQpo
dHRwczovL2dpdGh1Yi5jb20vY29udGFpbmVyZC9jb250YWluZXJkL3NlY3Vy
aXR5L2Fkdmlzb3JpZXMvR0hTQS0zNnh3LWZ4NzgtYzVyNA0KDQpbMV0gaHR0
cHM6Ly9naXRodWIuY29tL2NvbnRhaW5lcmQvY29udGFpbmVyZC9yZWxlYXNl
cy90YWcvdjEuMy45DQpbMl0gaHR0cHM6Ly9naXRodWIuY29tL2NvbnRhaW5l
cmQvY29udGFpbmVyZC9yZWxlYXNlcy90YWcvdjEuNC4zDQpbM10gaHR0cHM6
Ly9naXRodWIuY29tL2NvbnRhaW5lcmQvcHJvamVjdC9ibG9iL21hc3Rlci9T
RUNVUklUWS5tZA0KDQo=
