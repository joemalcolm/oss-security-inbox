X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2892" "Thursday" "15" "October" "2020" "17:33:53" "+0000" "Karp, Samuel" "skarp@amazon.com" "<5b9cad3b63470a24da85f7eb36fb46d91894be4d.camel@amazon.com>" "48" "[oss-security] CVE-2020-15157: containerd v1.2.x can be coerced into leaking credentials during image pull" nil nil nil "10" "2020101517:33:53" "[oss-security] CVE-2020-15157: containerd v1.2.x can be coerced into leaking credentials during image pull" (number mark "U       skarp@amazon Oct 15   48/2892  " thread-indent "\"[oss-security] CVE-2020-15157: containerd v1.2.x can be coerced into leaking credentials during image pull\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2020-15157: containerd v1.2.x can be coerced into leaking credentials during image pull" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9507 invoked by uid 550); 15 Oct 2020 17:43:45 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5789 invoked from network); 15 Oct 2020 17:34:12 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=amazon.com; i=@amazon.com; q=dns/txt; s=amazon201209;
  t=1602783253; x=1634319253;
  h=from:to:subject:date:message-id:content-id:
   content-transfer-encoding:mime-version;
  bh=EsgU7a0PeR/LCPQm7eO8ie1wY794qK8/GlelwWh11Ow=;
  b=S9Ow82d2Lrj3KAUIlEZlJFIM0mp7Rgj63Z30CGNutflCOCOldqWrBk51
   zq3goEqYU2O5VbTKyBuJH3ZUnaW/IrM9964CUCtem2J+cgGAqzVxYQ7gW
   4uTUqR6Bk6nKzcZqWW8GsPjhhtF8ovIAcW39CRE1BEBd5tiPoQAVdtm4A
   4=;
X-IronPort-AV: E=Sophos;i="5.77,379,1596499200"; 
   d="scan'208";a="59985021"
From: "Karp, Samuel" <skarp@amazon.com>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Thread-Topic: CVE-2020-15157: containerd v1.2.x can be coerced into leaking
 credentials during image pull
Thread-Index: AQHWoxlZPy19u+tdo0WqeZLhB6ga6w==
Date: Thu, 15 Oct 2020 17:33:53 +0000
Message-ID: <5b9cad3b63470a24da85f7eb36fb46d91894be4d.camel@amazon.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.43.162.73]
Content-Type: text/plain; charset="utf-8"
Content-ID: <DFFFDC18956C404EA94922FF12C4C03A@amazon.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
Subject: [oss-security] CVE-2020-15157: containerd v1.2.x can be coerced into leaking
 credentials during image pull

SW1wYWN0DQoNCklmIGEgY29udGFpbmVyIGltYWdlIG1hbmlmZXN0IGluIHRo
ZSBPQ0kgSW1hZ2UgZm9ybWF0IG9yIERvY2tlciBJbWFnZQ0KVjIgU2NoZW1h
IDIgZm9ybWF0IGluY2x1ZGVzIGEgVVJMIGZvciB0aGUgbG9jYXRpb24gb2Yg
YSBzcGVjaWZpYyBpbWFnZQ0KbGF5ZXIgKG90aGVyd2lzZSBrbm93biBhcyBh
IOKAnGZvcmVpZ24gbGF5ZXLigJ0pLCB0aGUgZGVmYXVsdCBjb250YWluZXJk
DQpyZXNvbHZlciB3aWxsIGZvbGxvdyB0aGF0IFVSTCB0byBhdHRlbXB0IHRv
IGRvd25sb2FkIGl0LiBJbiB2MS4yLnggYnV0DQpub3QgMS4zLjAgb3IgbGF0
ZXIsIHRoZSBkZWZhdWx0IGNvbnRhaW5lcmQgcmVzb2x2ZXIgd2lsbCBwcm92
aWRlIGl0cw0KYXV0aGVudGljYXRpb24gY3JlZGVudGlhbHMgaWYgdGhlIHNl
cnZlciB3aGVyZSB0aGUgVVJMIGlzIGxvY2F0ZWQNCnByZXNlbnRzIGFuIEhU
VFAgNDAxIHN0YXR1cyBjb2RlIGFsb25nIHdpdGggcmVnaXN0cnktc3BlY2lm
aWMgSFRUUA0KaGVhZGVycy4NCg0KSWYgYW4gYXR0YWNrZXIgcHVibGlzaGVz
IGEgcHVibGljIGltYWdlIHdpdGggYSBtYW5pZmVzdCB0aGF0IGRpcmVjdHMN
Cm9uZSBvZiB0aGUgbGF5ZXJzIHRvIGJlIGZldGNoZWQgZnJvbSBhIHdlYiBz
ZXJ2ZXIgdGhleSBjb250cm9sIGFuZCB0aGV5DQp0cmljayBhIHVzZXIgb3Ig
c3lzdGVtIGludG8gcHVsbGluZyB0aGUgaW1hZ2UsIHRoZXkgY2FuIG9idGFp
biB0aGUNCmNyZWRlbnRpYWxzIHVzZWQgZm9yIHB1bGxpbmcgdGhhdCBpbWFn
ZS4gSW4gc29tZSBjYXNlcywgdGhpcyBtYXkgYmUgdGhlDQp1c2VyJ3MgdXNl
cm5hbWUgYW5kIHBhc3N3b3JkIGZvciB0aGUgcmVnaXN0cnkuIEluIG90aGVy
IGNhc2VzLCB0aGlzIG1heQ0KYmUgdGhlIGNyZWRlbnRpYWxzIGF0dGFjaGVk
IHRvIHRoZSBjbG91ZCB2aXJ0dWFsIGluc3RhbmNlIHdoaWNoIGNhbg0KZ3Jh
bnQgYWNjZXNzIHRvIG90aGVyIGNsb3VkIHJlc291cmNlcyBpbiB0aGUgYWNj
b3VudC4NCg0KVGhlIGRlZmF1bHQgY29udGFpbmVyZCByZXNvbHZlciBpcyB1
c2VkIGJ5IHRoZSBjcmktY29udGFpbmVyZCBwbHVnaW4NCih3aGljaCBjYW4g
YmUgdXNlZCBieSBLdWJlcm5ldGVzKSwgdGhlIGN0ciBkZXZlbG9wbWVudCB0
b29sLCBhbmQgb3RoZXINCmNsaWVudCBwcm9ncmFtcyB0aGF0IGhhdmUgZXhw
bGljaXRseSBsaW5rZWQgYWdhaW5zdCBpdC4NCg0KDQpQYXRjaGVzDQoNClRo
aXMgdnVsbmVyYWJpbGl0eSBoYXMgYmVlbiBmaXhlZCBpbiBjb250YWluZXJk
IDEuMi4xNCBbMV0uIGNvbnRhaW5lcmQNCjEuMyBhbmQgbGF0ZXIgYXJlIG5v
dCBhZmZlY3RlZC4NCg0KDQpXb3JrYXJvdW5kcw0KDQpJZiB5b3UgYXJlIHVz
aW5nIGNvbnRhaW5lcmQgMS4zIG9yIGxhdGVyLCB5b3UgYXJlIG5vdCBhZmZl
Y3RlZC4gSWYgeW91DQphcmUgdXNpbmcgY3JpLWNvbnRhaW5lcmQgaW4gdGhl
IDEuMiBzZXJpZXMgb3IgcHJpb3IsIHlvdSBzaG91bGQgZW5zdXJlDQp5b3Ug
b25seSBwdWxsIGltYWdlcyBmcm9tIHRydXN0ZWQgc291cmNlcy4gT3RoZXIg
Y29udGFpbmVyIHJ1bnRpbWVzDQpidWlsdCBvbiB0b3Agb2YgY29udGFpbmVy
ZCBidXQgbm90IHVzaW5nIHRoZSBkZWZhdWx0IHJlc29sdmVyIChzdWNoIGFz
DQpEb2NrZXIpIGFyZSBub3QgYWZmZWN0ZWQuDQoNCg0KQ3JlZGl0cw0KDQpU
aGUgY29udGFpbmVyZCBtYWludGFpbmVycyB3b3VsZCBsaWtlIHRvIHRoYW5r
IEJyYWQgR2Vlc2FtYW4sIEpvc2gNCkxhcnNlbiwgSWFuIENvbGR3YXRlciwg
RHVmZmllIENvb2xleSwgYW5kIFJvcnkgTWNDdW5lIGZvciByZXNwb25zaWJs
eQ0KZGlzY2xvc2luZyB0aGlzIGlzc3VlIGluIGFjY29yZGFuY2Ugd2l0aCB0
aGUgY29udGFpbmVyZCBzZWN1cml0eSBwb2xpY3kNClsyXS4NCg0KRm9yIGZ1
cnRoZXIgZGV0YWlscywgc2VlIA0KaHR0cHM6Ly9naXRodWIuY29tL2NvbnRh
aW5lcmQvY29udGFpbmVyZC9zZWN1cml0eS9hZHZpc29yaWVzL0dIU0EtNzQy
dy04OWdjLThtOWMNCg0KWzFdIGh0dHBzOi8vZ2l0aHViLmNvbS9jb250YWlu
ZXJkL2NvbnRhaW5lcmQvcmVsZWFzZXMvdGFnL3YxLjIuMTQNClsyXSBodHRw
czovL2dpdGh1Yi5jb20vY29udGFpbmVyZC9wcm9qZWN0L2Jsb2IvbWFzdGVy
L1NFQ1VSSVRZLm1kDQoNCg==
