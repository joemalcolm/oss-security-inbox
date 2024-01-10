Received: (qmail 3824 invoked by uid 550); 10 Jan 2024 14:09:28 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1835 invoked from network); 10 Jan 2024 14:07:17 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=stig.io;
	s=protonmail2; t=1704895718; x=1705154918;
	bh=w+W6M26+NizaO8EiFlSvAof0Fqqb21XYtI0YmAu2BU4=;
	h=Date:To:From:Subject:Message-ID:Feedback-ID:From:To:Cc:Date:
	 Subject:Reply-To:Feedback-ID:Message-ID:BIMI-Selector;
	b=YsdFsWtRWoe2ywnobue/XxNC1I4AKhbE4YLpEuVVGxB7juZkBzXQ1qCV+KTGNz1IF
	 3YKThfYwPOND+OenI3Cdc1YhGXkKUA9zkL/07JqCYy/y9yfamJ+IZ1dFMl4W3aU0x+
	 I5VdScXsKW9M2sG4+B144Y2LUHHx0Zq5DhM3TipOOhZ3qX5SGtAsNlR6TFOD8s2SL4
	 ZVz4Eh+xQxqbpSL8auN8z4vZAZbW3vvUhpSezeAaW/CNrS+bGMCN3iUt1m+J8OW4jJ
	 Uj9jVYSFDyPAPLVOGStZZ8pt3b5YoIQo8TcsBeX0oo6C/+UMF3KlZAFAGe/wJSUrR8
	 v5JcZ+ZKGsW7g==
Date: Wed, 10 Jan 2024 14:08:36 +0000
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>, "cpan-security@perl.org" <cpan-security@perl.org>
From: Stig Palmquist <stig@stig.io>
Message-ID: <EKHZPhjEjZJIuFAYgCzmchXulieLN17iiD2U9QmtgR4qxIFmifHnMN96gfspkPSbKEnKE5kMDfWK4RuBPWGh5tz_noNdWxMtUbqoT_qe0No=@stig.io>
Feedback-ID: 79171626:user:proton
MIME-Version: 1.0
Content-Type: multipart/alternative;
 boundary="b1_O1huJT1tRVOPgTyuYc2JSTLZV1UNOdnbV17aKHP4"
Subject: [oss-security] CVE-2024-22368: Spreadsheet::ParseXLSX for Perl is vulnerable to DoS via out-of-memory bugs

--b1_O1huJT1tRVOPgTyuYc2JSTLZV1UNOdnbV17aKHP4
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: base64

SGksCgrEkMOsbmggSOG6o2kgTMOqIGRpc2NvdmVyZWQgdGhhdCB0aGUgUGVy
bCBtb2R1bGUgU3ByZWFkc2hlZXQ6OlBhcnNlWExTWCAwLjI3IChhbmQgZWFy
bGllcikgaXMgdnVsbmVyYWJsZSB0byBkZW5pYWwgb2Ygc2VydmljZSBhdHRh
Y2sgdmlhIG91dC1vZi1tZW1vcnkgYnVncyB3aGVuIHBhcnNpbmcgYSBjcmFm
dGVkIFhMU1ggZmlsZS4KClVzZXJzIGFyZSBhZHZpc2VkIHRvIHVwZ3JhZGUg
dG8gMC4yOCBvciBsYXRlcgoKRml4ZWQgVmVyc2lvbjoKaHR0cHM6Ly9tZXRh
Y3Bhbi5vcmcvcmVsZWFzZS9OVURETEVHRy9TcHJlYWRzaGVldC1QYXJzZVhM
U1gtMC4yOAoKUmVmZXJlbmNlczoKaHR0cHM6Ly9jdmUubWl0cmUub3JnL2Nn
aS1iaW4vY3ZlbmFtZS5jZ2k/bmFtZT1DVkUtMjAyNC0yMjM2OApodHRwczov
L2dpdGh1Yi5jb20vaGFpbGUwMS9wZXJsX3NwcmVhZHNoZWV0X2V4Y2VsX3Jj
ZV9wb2MvYmxvYi9tYWluL3BhcnNlX3hsc3hfYm9tYi5tZAoKQmVzdCwKU3Rp
Zw==

--b1_O1huJT1tRVOPgTyuYc2JSTLZV1UNOdnbV17aKHP4--

