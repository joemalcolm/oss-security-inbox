X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2756" "Friday" "16" "June" "2017" "11:53:09" "+0800" "=?ISO-8859-1?Q?fefe?=" "qbenjin@qq.com" "<tencent_18C312B86EA079DA42B11D83@qq.com>" "53" "[oss-security] two vulns in  uClibc-0.9.33.2" "^Date:" nil nil "6" "2017061603:53:09" "[oss-security] two vulns in uClibc-0.9.33.2" (number mark "        qbenjin@qq.c Jun 16   53/2756  " thread-indent "\"[oss-security] two vulns in  uClibc-0.9.33.2\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 20436 invoked by uid 550); 16 Jun 2017 04:22:47 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 32706 invoked from network); 16 Jun 2017 03:53:38 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qq.com; s=s201512;
	t=1497585190; bh=zv6hRmbpFjwXFfUK3437YPRcW/NDClSBhOwd//W7zDM=;
	h=From:To:Subject:Mime-Version:Content-Type:Content-Transfer-Encoding:Date:Message-ID;
	b=T21sGDZBtRF+HFdyQb6nKGLDe7hTJzRMtHr4rSqUt7EAd4p0AXm+5MWgil2YQ5mck
	 sNsLWXNryQlvOiIECSi807adZgzEMEwY8vHDWMAWkYxZbJck6uxTPofckAC/S/gddx
	 8zGb0wtEIMfPDF4x/eg6q6gA4GOQPiDeXQ93uap4=
X-QQ-FEAT: Q2EhamckE16QfcR3ZKvr952Is3pGYSNKaPDnAAwa/odEP6YzegoZY/dCY9P1k
	8TzLPAKAgcZCLFdhUy6dFsALOmJyBA4Tkhr/CSVbKJHjBok0Y0Ye1bcpJqMzdenfrEShMNF
	pu3ZlRB5ISx2LI2undy1rLp8HQQnyLC0uAPTstImyOKOjyGZDHpi+En51K+6XapgrD1sYGJ
	3sFQ+vHxSisDuNgvNMFmnXNyXauIvKWZyQvn+hUfFk4pAlU41JPQy6mKug7XjdBJdy09l4a
	GnxSBdMA13rsXDun1h/ySGhHA=
X-QQ-SSF: 0000000000000000000000000000001
X-HAS-ATTACH: no
X-QQ-BUSINESS-ORIGIN: 2
X-QQ-DNTY: 1
X-Originating-IP: 220.181.54.165
X-QQ-STYLE: 
X-QQ-mid: webmail448t1497585189t8290783
Mime-Version: 1.0
Content-Type: multipart/alternative;
	boundary="----=_NextPart_59435625_09932D28_3D5A2D64"
Content-Transfer-Encoding: 8Bit
X-Priority: 3
Message-ID: <tencent_18C312B86EA079DA42B11D83@qq.com>
X-QQ-MIME: TCMime 1.0 by Tencent
X-Mailer: QQMail 2.x
X-QQ-Mailer: QQMail 2.x
X-QQ-SENDSIZE: 520
Feedback-ID: webmail:qq.com:bgforeign:bgforeign1
X-QQ-Bgrelay: 1
Date: Fri, 16 Jun 2017 11:53:09 +0800
From: "=?ISO-8859-1?B?ZmVmZQ==?=" <qbenjin@qq.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] two vulns in  uClibc-0.9.33.2
To: "=?ISO-8859-1?B?b3NzLXNlY3VyaXR5?=" <oss-security@lists.openwall.com>

------=_NextPart_59435625_09932D28_3D5A2D64
Content-Type: text/plain;
	charset="ISO-8859-1"
Content-Transfer-Encoding: base64

SSBmb3VuZCB0d28gdnVsbnMgaW4gIHVDbGliYy0wLjkuMzMuMiAoaHR0cHM6
Ly91Y2xpYmMub3JnLykNCg0KDQpvbmUgaXMgYWJvdXQgbGluZSAyNjgyIG9m
IGdldF9zdWJleHAuYyA6DQoNCg0KCQlpZiAoQkUgKGJrcmVmX3N0cl9vZmYg
Pj0gbWN0eC0+aW5wdXQudmFsaWRfbGVuLCAwKSkNCgkJew0KCQkgIC8qIElm
IHdlIGFyZSBhdCB0aGUgZW5kIG9mIHRoZSBpbnB1dCwgd2UgY2Fubm90IG1h
dGNoLiAgKi8NCgkJICBpZiAoYmtyZWZfc3RyX29mZiA+PSBtY3R4LT5pbnB1
dC5sZW4pDQoJCSAgICBicmVhazsNCg0KDQoJCSAgZXJyID0gZXh0ZW5kX2J1
ZmZlcnMgKG1jdHgpOw0KCQkgIGlmIChCRSAoZXJyICE9IFJFRzFfTk9FUlJP
UiwgMCkpDQoJCSAgICByZXR1cm4gZXJyOw0KDQoNCgkJICBidWYgPSAoY29u
c3QgY2hhciAqKSByZV9zdHJpbmdfZ2V0X2J1ZmZlciAoJm1jdHgtPmlucHV0
KTsNCgkJfQ0KCSAgICAgIGlmIChidWYgW2JrcmVmX3N0cl9vZmYrK10gIT0g
YnVmW3NsX3N0ciAtIDFdKQ0KCQlicmVhazsgLyogV2UgZG9uJ3QgbmVlZCB0
byBzZWFyY2ggdGhpcyBzdWIgZXhwcmVzc2lvbg0KCQkNCiJia3JlZl9zdHJf
b2ZmID49IG1jdHgtPmlucHV0LnZhbGlkX2xlbiIgLCB3aGVuICBia3JlZl9z
dHJfb2ZmID09IG1jdHgtPmlucHV0LnZhbGlkX2xlbiwgImJ1ZiBbYmtyZWZf
c3RyX29mZisrXSAhPSBidWZbc2xfc3RyIC0gMV0iIGNhc2UgT3V0IG9mIG9u
ZSBiaXQgYm91bmRzIHJlYWQNCg0KDQpUaGUgcG9jIGNvZGUgbGlrZToNCgkN
CglpZihyZWdjb21wICgmcmVndG1wLCIoLispdXBwZXJcXDFeIiwgUkVHX0VY
VEVOREVEfFJFR19JQ0FTRSB8IFJFR19OT1NVQiApPT0wKQ0KCXsJCQ0KICAg
ICAgICAJcmVnMW1hdGNoX3QgcG1hdGNoWzFdOw0KCQlyZWdleGVjKCZyZWd0
bXAsICJ1cHBlcnVwcGVydXBwZXJ4IiwxLCBwbWF0Y2gsIDApOw0KCQlyZWdm
cmVlKCZyZWd0bXApOw0KCX0NCg0KDQoNCg0KDQoNClRoZSBhbm90aGVyIGlz
IGFvdXQgbGluZSAxODM3IG9mIHJlZ2V4Y2UuYyA6DQoNCg0KCQljaGVja19k
c3RfbGltaXRzX2NhbGNfcG9zXzEgKGNvbnN0IHJlX21hdGNoX2NvbnRleHRf
dCAqbWN0eCwgaW50IGJvdW5kYXJpZXMsDQoJCQkgICAgIGludCBzdWJleHBf
aWR4LCBpbnQgZnJvbV9ub2RlLCBpbnQgYmtyZWZfaWR4KQ0KICAgICAgICAg
ICAgICAgIC4uLi4uLi4NCg0KDQoJCSAgY3BvcyA9DQoJCSAgICBjaGVja19k
c3RfbGltaXRzX2NhbGNfcG9zXzEgKG1jdHgsIGJvdW5kYXJpZXMsIHN1YmV4
cF9pZHgsDQoJCQkJCQkgZHN0LCBia3JlZl9pZHgpOw0KDQoNCgkJDQpjaGVj
a19kc3RfbGltaXRzX2NhbGNfcG9zXzEgcmVjdXJzaXZlIGNhbGxzIGNhc2Ug
RERPUywgYmVjYXVzZSBvZiBzdGFjayBleGhhdXN0aW9uLg0KDQoNClRoZSBw
b2MgY29kZSBsaWtlOgkNCgkNCglpZihyZWdjb21wICgmcmVndG1wLCJceDI4
XHgyRVx4M0ZceDNGXHgyOFx4MkVceDNGXHgyOVx4NUNceDQyXHg0NFx4M0Zc
eDNGXHgyOFx4MkVceDVDXHgzMlx4MjlceDJBXHg1Q1x4MzJceDI4XHgyRVx4
M0ZceDI5XHg1Q1x4MzJceDI5XHgyQVx4NUNceDMyXHhCRCIsIFJFR19FWFRF
TkRFRHxSRUdfSUNBU0UgfCBSRUdfTk9TVUIgKT09MCkNCgl7CQkNCiAgICAg
ICAgCXJlZzFtYXRjaF90IHBtYXRjaFsxXTsNCgkJcmVnZXhlYygmcmVndG1w
LCAiXHg3Mlx4RkZceEZGXHhGRlx4RkZceEJEIiwxLCBwbWF0Y2gsIDApOw0K
CQlyZWdmcmVlKCZyZWd0bXApOw0KCX0NCg0KDQoNCg0KQSBsYXJnZSBudW1i
ZXIgb2YgZW1iZWRkZWQgZGV2aWNlcyB1c2VzIHVjbGliYyBpbnN0ZWFkIG9m
IGdsaWJjLg0KQ291bGQgeW91IGFzc2lnbiBDVkUgaWQgZm9yIHRob3NlPw0K
DQoNClRoYW5rIHlvdQ0KDQoNCkJlbmppbiBMaXUNCkNvZGVzYWZlIFRlYW0g
b2YgUWlob28gMzYw

------=_NextPart_59435625_09932D28_3D5A2D64--



