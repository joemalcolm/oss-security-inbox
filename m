X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1452" "Wednesday" "2" "March" "2022" "19:17:44" "+0000" "Karp, Samuel" "skarp@amazon.com" nil "24" "[oss-security] CVE-2022-23648: containerd CRI plugin: Insecure handling of image volumes" nil nil nil "3" nil nil (number mark "U       skarp@amazon Mar  2   24/1452  " thread-indent "\"[oss-security] CVE-2022-23648: containerd CRI plugin: Insecure handling of image volumes\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2022-23648: containerd CRI plugin: Insecure handling of image volumes" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 21745 invoked by uid 550); 2 Mar 2022 19:22:41 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 19772 invoked from network); 2 Mar 2022 19:17:57 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=amazon.com; i=@amazon.com; q=dns/txt; s=amazon201209;
  t=1646248677; x=1677784677;
  h=from:to:subject:date:message-id:content-id:
   content-transfer-encoding:mime-version;
  bh=QeSvEeRz3yu8huGx8mGYg7SED5H9rK72jnGsjUZcLiw=;
  b=cnbXAVhLBSofrQx3cJfeD7eNfvp+U1fEwo1rdiGPo4yt7ZD8qqGwZXBV
   yBAGmdITwf316KJqRrgFrzkANF7/5loRvdDgdQCEeELbKihgVwhfvJdH1
   wOUJAQ6CQ2AlKA2eA65yQPUMIfj7ib4E/MsIaE7vFr69vPArFz1xLV1F5
   Y=;
X-IronPort-AV: E=Sophos;i="5.90,150,1643673600"; 
   d="scan'208";a="181199808"
From: "Karp, Samuel" <skarp@amazon.com>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Thread-Topic: CVE-2022-23648: containerd CRI plugin: Insecure handling of
 image volumes
Thread-Index: AQHYLmox60wpSaFm20mFWyiUfKtUqQ==
Date: Wed, 2 Mar 2022 19:17:44 +0000
Message-ID: <1337086b8006fc71c151904764857e3ed29d3a3a.camel@amazon.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.43.161.134]
Content-Type: text/plain; charset="utf-8"
Content-ID: <574D78FE4FD4C043B7DC999B035B02E5@amazon.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
Subject: [oss-security] CVE-2022-23648: containerd CRI plugin: Insecure handling of image
 volumes

QSBidWcgd2FzIGZvdW5kIGluIGNvbnRhaW5lcmQgd2hlcmUgY29udGFpbmVy
cyBsYXVuY2hlZCB0aHJvdWdoDQpjb250YWluZXJkJ3MgQ1JJIGltcGxlbWVu
dGF0aW9uIHdpdGggYSBzcGVjaWFsbHktY3JhZnRlZCBpbWFnZQ0KY29uZmln
dXJhdGlvbiBjb3VsZCBnYWluIGFjY2VzcyB0byByZWFkLW9ubHkgY29waWVz
IG9mIGFyYml0cmFyeSBmaWxlcw0KYW5kIGRpcmVjdG9yaWVzIG9uIHRoZSBo
b3N0LiBUaGlzIG1heSBieXBhc3MgYW55IHBvbGljeS1iYXNlZA0KZW5mb3Jj
ZW1lbnQgb24gY29udGFpbmVyIHNldHVwIChpbmNsdWRpbmcgYSBLdWJlcm5l
dGVzIFBvZCBTZWN1cml0eQ0KUG9saWN5KSBhbmQgZXhwb3NlIHBvdGVudGlh
bGx5IHNlbnNpdGl2ZSBpbmZvcm1hdGlvbi4gS3ViZXJuZXRlcyBhbmQNCmNy
aWN0bCBjYW4gYm90aCBiZSBjb25maWd1cmVkIHRvIHVzZSBjb250YWluZXJk
J3MgQ1JJIGltcGxlbWVudGF0aW9uLg0KDQpQYXRjaGVzDQpUaGlzIGJ1ZyBo
YXMgYmVlbiBmaXhlZCBpbiBjb250YWluZXJkIDEuNi4xLCAxLjUuMTAgYW5k
IDEuNC4xMy4gVXNlcnMNCnNob3VsZCB1cGRhdGUgdG8gdGhlc2UgdmVyc2lv
bnMgdG8gcmVzb2x2ZSB0aGUgaXNzdWUuDQoNCldvcmthcm91bmRzDQpFbnN1
cmUgdGhhdCBvbmx5IHRydXN0ZWQgaW1hZ2VzIGFyZSB1c2VkLg0KDQpJZiB5
b3UgaGF2ZSBhbnkgcXVlc3Rpb25zIG9yIGNvbW1lbnRzIGFib3V0IHRoaXMg
YWR2aXNvcnk6DQoqIE9wZW4gYW4gaXNzdWUgWzFdDQoqIEVtYWlsIHVzIGF0
IHNlY3VyaXR5QGNvbnRhaW5lcmQuaW8gaWYgeW91IHRoaW5rIHlvdSd2ZSBm
b3VuZCBhDQpzZWN1cml0eSBidWcuDQoNClZpZXcgdGhpcyBhZHZpc29yeSBv
biB0aGUgd2ViOiANCmh0dHBzOi8vZ2l0aHViLmNvbS9jb250YWluZXJkL2Nv
bnRhaW5lcmQvc2VjdXJpdHkvYWR2aXNvcmllcy9HSFNBLWNycDItcXJyNS04
cHE3DQoNCk9uIGJlaGFsZiBvZiB0aGUgY29udGFpbmVyZCBwcm9qZWN0LA0K
U2FtdWVsIEthcnANCg0KWzFdIGh0dHBzOi8vZ2l0aHViLmNvbS9jb250YWlu
ZXJkL2NvbnRhaW5lcmQvaXNzdWVzL25ldy9jaG9vc2UNCg==
