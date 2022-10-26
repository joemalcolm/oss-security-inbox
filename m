Received: (qmail 9499 invoked by uid 550); 26 Oct 2022 11:28:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 25651 invoked from network); 26 Oct 2022 11:17:54 -0000
x-m-msg: CPCHECK
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp.checkpoint.com 29QBHdIP015857
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=checkpoint.com;
	s=default; t=1666783059;
	bh=DQgmCme/59dEvzkHWopBgLpYfe8OuNoSRlkicwROLA0=;
	h=From:To:Subject:Date:References:In-Reply-To:From;
	b=QasK2AsXnWFXxM0oPBOxT6o70YUizFFbswVmZIuwk2J+Ygq3HQ5cquyUoIutDc5Ds
	 6EU5v4wKwLFt43cUSoE0akGhb66WbXPI0c+BxpP3Hm8odBQSRyzQUAtiGhDz3Bn4Vp
	 pNp9WjmP4NA8c4gV1Ufn/WgIPUMMnMn/M6nc79Ok=
From: Matan Giladi <matangi@checkpoint.com>
To: "openssl-users@openssl.org" <openssl-users@openssl.org>,
        "openssl-announce@openssl.org" <openssl-announce@openssl.org>,
        "openssl-project@openssl.org" <openssl-project@openssl.org>,
        "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Thread-Topic: Forthcoming OpenSSL Bug Fix Release
Thread-Index: AQHY6QgrQIozUF73k0GNiXc0XQ8QKq4ghqkA
Date: Wed, 26 Oct 2022 11:17:32 +0000
Message-ID: <4a324f40d90b4cb5a6ceab5623615ed8@checkpoint.com>
References: <f6d07458-3515-4f79-c013-440d27278554@openssl.org>
In-Reply-To: <f6d07458-3515-4f79-c013-440d27278554@openssl.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [194.29.34.56]
x-cpdlp: 11f09100d311cd893f8224eed7d4e33c823a137eb4
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
Subject: [oss-security] RE: Forthcoming OpenSSL Bug Fix Release

RG9lcyAxLjEuMXMgaXMgZ29pbmcgdG8gaW5jbHVkZSBhbnkgc2VjdXJpdHkg
Zml4Pw0KQ2FuIHlvdSBwbGVhc2UgY29uZmlybSB0aGF0IHRoZSBjcml0aWNh
bCBpc3N1ZSBmb3VuZCBpbiAzLjAuNiB2ZXJzaW9uIGlzIGlycmVsZXZhbnQg
Zm9yIDEuMS4xPw0KDQotLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KRnJv
bTogb3BlbnNzbC1hbm5vdW5jZSA8b3BlbnNzbC1hbm5vdW5jZS1ib3VuY2Vz
QG9wZW5zc2wub3JnPiBPbiBCZWhhbGYgT2YgSW5nLiBNYXJ0aW4gS29jaSwg
TUJBDQpTZW50OiBUdWVzZGF5LCBPY3RvYmVyIDI1LCAyMDIyIDIxOjM2DQpU
bzogb3BlbnNzbC1hbm5vdW5jZUBvcGVuc3NsLm9yZzsgb3BlbnNzbC11c2Vy
c0BvcGVuc3NsLm9yZzsgb3BlbnNzbC1wcm9qZWN0QG9wZW5zc2wub3JnOyBv
c3Mtc2VjdXJpdHlAbGlzdHMub3BlbndhbGwuY29tDQpTdWJqZWN0OiBGb3J0
aGNvbWluZyBPcGVuU1NMIEJ1ZyBGaXggUmVsZWFzZQ0KDQpIZWxsbywNCg0K
SW4gYWRkaXRpb24gdG8gdGhlIGFscmVhZHkgYW5ub3VuY2VkIDMuMC43IHJl
bGVhc2UsIHRoZSBPcGVuU1NMIHByb2plY3QgdGVhbSB3b3VsZCBsaWtlIHRv
IGFubm91bmNlIHRoZSBmb3J0aGNvbWluZyByZWxlYXNlIG9mIE9wZW5TU0wg
dmVyc2lvbiAxLjEuMXMgdGhhdCBpcyBhIGJ1ZyBmaXggcmVsZWFzZS4NCg0K
VGhpcyBidWcgZml4IHJlbGVhc2Ugd2lsbCBiZSBtYWRlIGF2YWlsYWJsZSBv
biBUdWVzZGF5IDFzdCBOb3ZlbWJlciAyMDIyIGJldHdlZW4gMTMwMC0xNzAw
IFVUQyB0b28uDQoNCllvdXJzDQpUaGUgT3BlblNTTCBQcm9qZWN0IFRlYW0N
Cg0KDQpFbWFpbCBzZWN1cmVkIGJ5IENoZWNrIFBvaW50DQpSZXBvcnQgUGhp
c2hpbmc6IGh0dHBzOi8vbXRhLWNuZi5pYWFzLmNoZWNrcG9pbnQuY29tL210
YV9mZWVkYmFjaz9pZD1iM2RjOWU2MDA0ODA2ZmFjNWFkYjg2YTFhNDc1MDRk
MDA0MTZlYjI1OTBiNjMxNTAyNjIxNzM2ZjA2NTJkN2VhJmNrPTNENENDNkM4
Q0I1NTs0OERFNTVFMTYwRTU7QzVDRUFBMTk5ODg4OyZ2PW0NCg0KRW1haWwg
c2VjdXJlZCBieSBDaGVjayBQb2ludA0K
