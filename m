Received: (qmail 15677 invoked by uid 550); 26 Apr 2022 15:29:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 25785 invoked from network); 26 Apr 2022 14:34:26 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=Date:From:Subject:MIME-Version:Message-ID; bh=z2XVw
	qFYElMpOusFTm+/ewpGaZlTBzmlKR9fA3SHByY=; b=NndZdsuJYYQpfBhjy/ylJ
	IRssshFw+r6FWfKK4lXFmYCi56vkfRPDI6lrBwV6antpQjgVwILNQCMUHfUSdo8h
	lUMzS3HwonlQz6p2KPzsaGBliIoqCLSwk5fp6uUQhdNVT82DB5MESE56TFxODWHR
	BJR4r6EKzrX3S6Fwa3x/30=
X-Originating-IP: [223.72.42.184]
Date: Tue, 26 Apr 2022 22:33:47 +0800 (CST)
From: =?GBK?B?s8LD99Pq?= <morningman@163.com>
To: general <general@incubator.apache.org>, me@dw1.io, security@apache.org, 
	oss-security@lists.openwall.com
X-Priority: 3
X-Mailer: Coremail Webmail Server Version XT5.0.13 build 20210622(1d4788a8)
 Copyright (c) 2002-2022 www.mailtech.cn 163com
X-CM-CTRLDATA: jJEtKGZvb3Rlcl9odG09MTc2Nzo1Ng==
Content-Type: multipart/alternative; 
	boundary="----=_Part_99302_1418156252.1650983627838"
MIME-Version: 1.0
Message-ID: <3f9af332.69b6.180664aec3f.Coremail.morningman@163.com>
X-Coremail-Locale: zh_CN
X-CM-TRANSID: j8GowABH433LAmhix4odAA--.45410W
X-CM-SenderInfo: xpru0xpqjpt0i6rwjhhfrp/1tbi6wzu1lXl1CkSFQACsX
X-Coremail-Antispam: 1U5529EdanIXcx71UUUUU7vcSsGvfC2KfnxnUU==
Subject: [oss-security] CVE-2022-23942: Apache Doris(incubating) hardcoded cryptography
 initialization

------=_Part_99302_1418156252.1650983627838
Content-Type: text/plain; charset=GBK
Content-Transfer-Encoding: base64

U2V2ZXJpdHk6IG1vZGVyYXRlCgpEZXNjcmlwdGlvbjoKPT09PT09PT09PT09
PQpEb3JpcyB1c2UgaGFyZGNvZGVkIGtleSBhbmQgSVYgdG8gaW5pdGlhbGl6
ZSB0aGUgY2lwaGVyIHVzZWQgZm9yIGxkYXAgcGFzc3dvcmQsIHdoaWNoIG1h
eSBsZWFkIHRvIGluZm9ybWF0aW9uIGRpc2Nsb3N1cmUuCgpNaXRpZ2F0aW9u
Ogo9PT09PT09PT09PT09ClVwZ3JhZGUgdG8gMS4wLjBbMV0gb3IgaGlnaGVy
IHdpbGwgcmVzb2x2ZSB0aGlzIHByb2JsZW0uCgpDcmVkaXQ6Cj09PT09PT09
PT09PT0KV2Ugd291bGQgbGlrZSB0byB0aGFua3MgdG8gRHdpIFNpc3dhbnRv
IGZvciB0aGUgcmVwb3J0IG9mIHRoaXMgaXNzdWUKClJlZmVyZW5jZXM6Cj09
PT09PT09PT09PT0KaHR0cHM6Ly9saXN0cy5hcGFjaGUub3JnL3RocmVhZC9j
b20yZHl6cDNibjJyZHJvdHJ5OTBxMnp6b3JkNHR2dFsxXSBodHRwOi8vZG9y
aXMuaW5jdWJhdG9yLmFwYWNoZS5vcmcvZG93bmxvYWRzL2Rvd25sb2Fkcy5o
dG1sCgoKCi0tCgq0y9bCo6FCZXN0IFJlZ2FyZHMKs8LD99PqIE1pbmd5dSBD
aGVuCgpFbWFpbDoKY2hlbm1pbmd5dUBhcGFjaGUub3Jn

------=_Part_99302_1418156252.1650983627838--

