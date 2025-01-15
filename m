Received: (qmail 3416 invoked by uid 550); 16 Jan 2025 00:40:41 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 25922 invoked from network); 15 Jan 2025 22:12:12 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=amazon.com; i=@amazon.com; q=dns/txt; s=amazon201209;
  t=1736979136; x=1768515136;
  h=from:to:subject:date:message-id:mime-version;
  bh=Uw8dcUI21zZluW43GjPk1GHnfIJLicEvf/vv30w3w2E=;
  b=b/oKbvkUNw/4aMSNKWxPicLsBffRqn8JJWwJWE7AgNtax0EDHbJipgwx
   6kGAkWbSi90FMiN9BZsT1rhwKr0BLTVV+nvgeqpM8ghMgOYybGmtmgKQq
   i4kQgFVi679xtsewhH638e+y2tQ/nrCgSVyN+SiFvkPiSvJIz73Ba+kq6
   I=;
X-IronPort-AV: E=Sophos;i="6.13,207,1732579200"; 
   d="scan'208,217";a="689545177"
X-Farcaster-Flow-ID: fdea9631-6bb2-4129-9ad2-b20634548430
From: "Vellore Rajakumar, Sri Saran Balaji" <srajakum@amazon.com>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Thread-Topic: [kubernetes] CVE-2024-9042: Command Injection affecting Windows
 nodes via nodes/*/logs/query API
Thread-Index: AQHbZ5p95NuXpgNIDEahWoNbVEE8rg==
Date: Wed, 15 Jan 2025 22:11:57 +0000
Message-ID: <3E7469E3-7A05-4823-843A-FEE4B752EBE9@amazon.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
user-agent: Microsoft-MacOutlook/16.91.24111020
x-originating-ip: [10.13.138.196]
Content-Type: multipart/alternative;
	boundary="_000_3E7469E37A054823843AFEE4B752EBE9amazoncom_"
MIME-Version: 1.0
Subject: [oss-security] [kubernetes] CVE-2024-9042: Command Injection affecting Windows nodes
 via nodes/*/logs/query API
X-Spam: Yes

--_000_3E7469E37A054823843AFEE4B752EBE9amazoncom_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGVsbG8gS3ViZXJuZXRlcyBDb21tdW5pdHksDQpBIHNlY3VyaXR5IHZ1bG5lcmFiaWxpdHkgaGFz
IGJlZW4gZGlzY292ZXJlZCBpbiBLdWJlcm5ldGVzIHdpbmRvd3Mgbm9kZXMgdGhhdCBjb3VsZCBh
bGxvdyBhIHVzZXIgd2l0aCB0aGUgYWJpbGl0eSB0byBxdWVyeSBhIG5vZGUncyAnL2xvZ3MnIGVu
ZHBvaW50IHRvIGV4ZWN1dGUgYXJiaXRyYXJ5IGNvbW1hbmRzIG9uIHRoZSBob3N0Lg0KDQpUaGlz
IGlzc3VlIGhhcyBiZWVuIHJhdGVkIE1lZGl1bSB3aXRoIGEgQ1ZTUyB2My4xIHNjb3JlIG9mIDUu
OSAoQ1ZTUzozLjEvQVY6Ti9BQzpIL1BSOkgvVUk6Ti9TOlUvQzpIL0k6SC9BOk48aHR0cHM6Ly93
d3cuZmlyc3Qub3JnL2N2c3MvY2FsY3VsYXRvci8zLjEjQ1ZTUzozLjEvQVY6Ti9BQzpIL1BSOkgv
VUk6Ti9TOlUvQzpIL0k6SC9BOk4+KSBhbmQgYXNzaWduZWQgQ1ZFLTIwMjQtOTA0Mi4NCg0KQW0g
SSB2dWxuZXJhYmxlPw0KVGhpcyBDVkUgYWZmZWN0cyBvbmx5IFdpbmRvd3Mgd29ya2VyIG5vZGVz
LiBZb3VyIHdvcmtlciBub2RlIGlzIHZ1bG5lcmFibGUgdG8gdGhpcyBpc3N1ZSBpZiBpdCBpcyBy
dW5uaW5nIG9uZSBvZiB0aGUgYWZmZWN0ZWQgdmVyc2lvbnMgbGlzdGVkIGJlbG93Lg0KDQpBZmZl
Y3RlZCBDb21wb25lbnRzDQoNCiAgKiAgIEt1YmVsZXQNCg0KQWZmZWN0ZWQgVmVyc2lvbnMNCg0K
ICAqICAgdjEuMzIuMA0KICAqICAgdjEuMzEuMCB0byB2MS4zMS40DQogICogICB2MS4zMC4wIHRv
IHYxLjMwLjgNCiAgKiAgIDw9djEuMjkuMTINCg0KSG93IGRvIEkgbWl0aWdhdGUgdGhpcyB2dWxu
ZXJhYmlsaXR5Pw0KVG8gbWl0aWdhdGUgdGhpcyB2dWxuZXJhYmlsaXR5LCB5b3UgbmVlZCB0byB1
cGdyYWRlIHRoZSBLdWJlbGV0IG9uIHlvdXIgV2luZG93cyB3b3JrZXIgbm9kZXMgdG8gb25lIG9m
IHRoZSBmaXhlZCB2ZXJzaW9ucyBsaXN0ZWQgYmVsb3cuDQoNCkZpeGVkIFZlcnNpb25zDQoNCiAg
KiAgIHYxLjMyLjENCiAgKiAgIHYxLjMxLjUNCiAgKiAgIHYxLjMwLjkNCiAgKiAgIHYxLjI5LjEz
DQoNCkRldGVjdGlvbg0KVG8gZGV0ZWN0IHdoZXRoZXIgdGhpcyB2dWxuZXJhYmlsaXR5IGhhcyBi
ZWVuIGV4cGxvaXRlZCwgeW91IGNhbiBleGFtaW5lIHlvdXIgY2x1c3RlcidzIGF1ZGl0IGxvZ3Mg
dG8gc2VhcmNoIGZvciBub2RlICdsb2dzJyBxdWVyaWVzIHdpdGggc3VzcGljaW91cyBpbnB1dHMu
DQoNCklmIHlvdSBmaW5kIGV2aWRlbmNlIHRoYXQgdGhpcyB2dWxuZXJhYmlsaXR5IGhhcyBiZWVu
IGV4cGxvaXRlZCwgcGxlYXNlIGNvbnRhY3Qgc2VjdXJpdHlAa3ViZXJuZXRlcy5pbzxtYWlsdG86
c2VjdXJpdHlAa3ViZXJuZXRlcy5pbz4NCg0KQWNrbm93bGVkZ2VtZW50cw0KVGhpcyB2dWxuZXJh
YmlsaXR5IHdhcyByZXBvcnRlZCBieSBQZWxlZCwgVG9tZXIgYW5kIG1pdGlnYXRlZCBieSBBcmF2
aW5kaCBQdXRoaXlhcHJhbWJpbC4NCg0KVGhhbmsgWW91LA0KQmFsYWppIG9uIGJlaGFsZiBvZiB0
aGUgS3ViZXJuZXRlcyBTZWN1cml0eSBSZXNwb25zZSBDb21taXR0ZWUNCg0K

--_000_3E7469E37A054823843AFEE4B752EBE9amazoncom_--
