Received: (qmail 14318 invoked by uid 550); 21 Apr 2026 16:31:31 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 1720 invoked from network); 21 Apr 2026 15:36:08 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cpansec.org; s=gm1;
	t=1776785758;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=XZylB3a8XD/FkHfzvxHQdUDIYiIMu9mfdBv5O5n2EtQ=;
	b=nAZQFQ7cnZzKJoTy0sbRHtF3QrH+0oaU1wTc8Inr9VF5YE2UacPauTnlc6ksolIiSGYwIh
	8a5nHaFKcGOocabMZMZoB1na1j7q05G7SiYXqSkFhgLckhWp/cxwfMGre0hEkobbClvBOE
	OzT02OrlSqOxqnitsp4sE8Xjncd81IOZCAuA+Zg8WJP2PUC5YjVkBUmQ7QvEkDEk26YJD9
	lZzitZyZzKD9J8Pisa5Nsrj1j9Crr2KgR2q3HBqfH8PvOwzOUKqmUpsaK9I8YKDTT2Pa8A
	h3y7EZvWmGIQQQiTo8+bNrJchlEU69MN8Ks9iL/CaxBPQ+To02ZZlFXy9AwOvQ==
Message-ID: <74bd30d5-179d-4a2b-9180-6123011813e5@cpansec.org>
Date: Tue, 21 Apr 2026 16:35:57 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Robert Rothenberg <rrwo@cpansec.org>
Content-Language: en-GB, en-ZA
To: cve-announce@security.metacpan.org, oss-security@lists.openwall.com
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-GND-Sasl: rrwo@cpansec.org
X-GND-Cause: dmFkZTGWAv+m164jUjpSzzkLHoF/qnllThqv8z9BuxpudLTQOvyMUOiPRWH9fQHamNUrynYmA0LzNNAd32VfMZ1Y37iGowwS9Vc7U3KpxeqrU10EUmEY9auCU9QUxeR6Z5Nw7qwZD8C+tMaUxcCr5D3/+E1OR6VN2qwSSwsDCACb1e4rkrWFBCIuLjK4JVEYDpONvO7l7Jf9lGuO0y+FmLwHZgnG9FqM2qFOrMS3W2oucZwpYHwfcine9mXx/K8fZlyQp7vuFLVZBhTzZ0D4euB6GuUQ9U+OCL9N+a6hNFqAp3cHE6cW6EyNsvLyuX+rSmsOmmaOlpqg7qJNn0+dg0YxY94pnHCyaHZ8GyoSNwf3NEODM6Q3ZRi1QIE4KFOIGVJFlhoD9s5MNJZDY5xZI1TIzUyHE/zBS57ccry7G7lRbXfFS78PImcBVLTWKprcfNGwwJ49PP+RvPWTwZoHo5zfjEPNTiBKXxrfgFqnuTp2v1Ot42AiAr9DI483Ki1MUB7rDCwHXmOHiex7/PyBUtmuiAhrWxEcnF8HRMZxUqlps9ucH5tlfySFUSrCGYilqHvZXDFRvi8CLd4WRA5VYbK9cozX/4Q1x23nfsy7NH1wy86+1vkmBbvNCWMoD9NWYj54Pf2gpPsUmv6IHEgHQtj67DXnKq0PT2wNxuiJ87mhhSK7Qg
X-GND-State: clean
X-GND-Score: 0
Subject: [oss-security] CVE-2025-15638: Net::Dropbear versions before 0.14 for Perl contains
 a vulnerable version of libtomcrypt

========================================================================
CVE-2025-15638                                       CPAN Security Group
========================================================================

         CVE ID:  CVE-2025-15638
   Distribution:  Net-Dropbear
       Versions:  before 0.14

       MetaCPAN:  https://metacpan.org/dist/Net-Dropbear
       VCS Repo:  https://github.com/atrodo/Net-Dropbear


Net::Dropbear versions before 0.14 for Perl contains a vulnerable
version of libtomcrypt

Description
-----------
Net::Dropbear versions before 0.14 for Perl contains a vulnerable
version of libtomcrypt.

Net::Dropbear versions before 0.14 includes versions of Dropbear
2019.78 or earlier. These include versions of libtomcrypt v1.18.1 or
earlier, which is affected by CVE-2016-6129 and CVE-2018-12437.

Problem types
-------------
- CWE-1395 Dependency on Vulnerable Third-Party Component

References
----------
https://www.cve.org/CVERecord?id=CVE-2016-6129
https://www.cve.org/CVERecord?id=CVE-2018-12437
https://metacpan.org/release/ATRODO/Net-Dropbear-0.14/source/dropbear/libtomcrypt/changes


