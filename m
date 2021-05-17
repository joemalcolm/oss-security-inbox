X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["741" "Monday" "17" "May" "2021" "17:30:48" "+0000" "Priedhorsky, Reid" "reidpr@lanl.gov" nil "13" "[oss-security] Re: rxvt terminal (+bash) remoteish code execution 0day" nil nil nil "5" nil nil (number mark "U       reidpr@lanl. May 17   13/741   " thread-indent "\"[oss-security] Re: rxvt terminal (+bash) remoteish code execution 0day\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Re: rxvt terminal (+bash) remoteish code execution 0day" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5788 invoked by uid 550); 17 May 2021 18:05:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5679 invoked from network); 17 May 2021 17:31:02 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=lanl.gov; h=from : to : subject :
 date : message-id : references : in-reply-to : content-type : content-id :
 content-transfer-encoding : mime-version; s=lanl;
 bh=dXnsm4TpbYbXKhp/8Bn1ilP1Vf93P+BS22OWXpUey+s=;
 b=gT9N+9zEFa33JSAAWiOWigq160EkDFvLwRRWDUNXwO+nIg0pYqD2w1qwN4CGnIMjL8nO
 WPS+oWi8dVHJVps2XJFgfg+SG+UykM/v1MudfvhcxLc5NKxLshNDe5A04Wr+KF6Qcg5n
 Kk34y6uBVGe1j14Ow5YZz+nbJmn6UGTkSNsShuLL1ONBb/l0U55CzGLDy6qFrQtJcAKu
 Gidb0t3Pb4y2awwbMJhdn0JTbii/aWIBkni+e9w/p3VHa5P0IPCtWfEtQTyl/pvF7vvN
 sBtxDPEstS2w9Qo5vK09T16hVGmUJ8NqHyu+wwE05NHuufhy9xQYFwrb2NWzFhg+4rZN Jw== 
X-NIE-2-Virus-Scanner: amavisd-new at mailrelay2.lanl.gov
From: "Priedhorsky, Reid" <reidpr@lanl.gov>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Thread-Topic: rxvt terminal (+bash) remoteish code execution 0day
Thread-Index: AQHXS0Jgxns6DgXeokCpq8QKXQVKiw==
Date: Mon, 17 May 2021 17:30:48 +0000
Message-ID: <E4A97F5B-5187-411A-9122-B9C3EE047171@lanl.gov>
References: <20210517134904.GA24667@huumeet.info>
In-Reply-To: <20210517134904.GA24667@huumeet.info>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [128.165.106.146]
Content-Type: text/plain; charset="utf-8"
Content-ID: <0293BF6B625EF44CA580972328954A60@win.lanl.gov>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.391,18.0.761
 definitions=2021-05-17_08:2021-05-17,2021-05-17 signatures=0
X-Proofpoint-Spam-Reason: safe
Subject: [oss-security] Re: rxvt terminal (+bash) remoteish code execution 0day

SGVsbG8sDQoNClRoYW5rcyBmb3IgdGhlIGJ1ZyByZXBvcnQuIEhvd2V2ZXIg
4oCUDQoNCj4gT24gTWF5IDE3LCAyMDIxLCBhdCA3OjQ5IEFNLCBkZWYgPGRl
ZkBodXVtZWV0LmluZm8+IHdyb3RlOg0KPiANCj4gIyBIb3dldmVyLCByeHZ0
IHJlc3BvbmRzIHRvIHRoZSBxdWVyeSB3aXRoIGEgbmV3bGluZS10ZXJtaW5h
dGVkIG1lc3NhZ2UsIHdoaWNoDQo+ICMgaXMgcmV0YXJkZWQgYW5kIGV4cG9z
ZXMgZ29hdHNlLXdpZGUgZ2FwaW5nIHNlY3VyaXR5IGhvbGVzIGluIG1hbnkg
cG9wdWxhciBDTEkNCg0KQ2FuIHdlIHBsZWFzZSByZXBvcnQgYnVncyBpbiBh
IHByb2Zlc3Npb25hbCBtYW5uZXIsIGluY2x1ZGluZyB3aXRob3V0IGluc3Vs
dHMgb2YgYW55IGtpbmQsIGxldCBhbG9uZSBpbnN1bHRzIGNvbnRhaW5pbmcg
c2x1cnMgYW5kIHNleHVhbCBtZXRhcGhvcnMuDQoNCklNTyBzdWNoIHJlcG9y
dGluZyBzdGFuZGFyZHMgc2hvdWxkIGJlIGFkZGVkIHRvIHRoZSBsaXN0IGNv
bnRlbnQgZ3VpZGVsaW5lcy4NCg0KVGhhbmtzLA0KUmVpZA0KDQrigJQNCmhl
L2hpcw==
