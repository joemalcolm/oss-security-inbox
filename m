Received: (qmail 19896 invoked by uid 550); 31 Mar 2026 16:32:51 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 23725 invoked from network); 31 Mar 2026 10:08:41 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cpansec.org; s=gm1;
	t=1774951711;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=8gplNX0pteaeQeiiacy+cKA8BOtM+lvpRTBf64sovMg=;
	b=mCR8SgRIW0P10t7npfJ0I4YsGAGWZBExKN7gYtx2jGCTv1O0vhaO5b2vTXae2qjTDAbruA
	6WTleHiBlFMnW65RV+9t9MPufKwvLCOibXD8UcZfBkE+/9CLNCWNysZIMooAscvZfE8v7t
	87pYe5MOdvjwLIxCif1Diszvz2CMXEZkci3R3MYn5vHD55OZZn5bWrsDTQ6qLny07NQEIM
	nyaC7xY6EGBs3W1oeB3VQW/8G+7/z3lzWa/esfvh/wUo9Uq2jYSPphAVqygVO46ufjUddD
	pZ8iM4HrUtK9hrj9MWcXZcJNRBln49LiCR8oLTR1EWl6xhUrLC013430gjVu6Q==
Message-ID: <b99763a0-470f-4299-97f1-40e67a619548@cpansec.org>
Date: Tue, 31 Mar 2026 11:08:30 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-GB, en-ZA
References: <5889e814-4cd1-4d8d-8587-8bd8b7741c1f@cpansec.org>
From: Robert Rothenberg <rrwo@cpansec.org>
To: oss-security@lists.openwall.com
In-Reply-To: <5889e814-4cd1-4d8d-8587-8bd8b7741c1f@cpansec.org>
X-Forwarded-Message-Id: <5889e814-4cd1-4d8d-8587-8bd8b7741c1f@cpansec.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-GND-Sasl: rrwo@cpansec.org
X-GND-State: clean
X-GND-Score: 0
X-GND-Cause: dmFkZTFxXFfyHM7K5JecM668J2ZjWSabSa2S7qVgHcYKlx0MbXcW4bNVzAB8I/PAkj2PwMgEEjmjFOP16Hg9Oq2CW8NQBz7q35XyiiyvvYHAicouz9RSZv2Qguq8/eAgw2e6s31z52LUOhf2/PpCfScbI1+8W33MbGhsxQIUZGdCGAG9K4yJg+BYQlZZ9QfNQy3eKBVOQgjPhOYOsPDbys4LRK6gmDkKjVmhCygs+wqDfXlbdyhDCdYnP02NOWpUB+i3F3xp3pdjebN84IxHZcXAxDbqF25z7WFQFo286dSzUHWG7IOk3qumByTjNWcl4ZAdAjf5x8JhHA1GZiaYUS/B2Fb6hFH2oTky8YmMtjCzd8CxwUbDARirgdFTxTwWjf9PU4o+QDeE9NzH227y4BOz6X4utEnNJ9YqiztzCLfh7YHq8UxULIB10wDCk4rirJ+gSxhUCwL2odigZXpvzJBtxo3Dg6dUH1HxisTheSuVlxq874nQxbvlQjtvf2qNd+gtmlXbLW6TqfOxmcaq9paL0oh3wlNJ6m9iAkMTngNS7n1wKRuLSmurdAdk6U0vXAQEsD35qd/g1NSA+jSLzXTGkMfk+Lb2JjUZvErHzHzXNlhaiV4RrilvqAyjxvmvKiJnWdOlG8HIbBVUKbFcEHfoAWKynYtdkxSJmatiygGfIApebA
Subject: [oss-security] CVE-2025-15618: Business::OnlinePayment::StoredTransaction versions
 through 0.01 for Perl uses an insecure secret key

========================================================================
CVE-2025-15618                                       CPAN Security Group
========================================================================

         CVE ID:  CVE-2025-15618
   Distribution:  Business-OnlinePayment-StoredTransaction
       Versions:  through 0.01

       MetaCPAN: 
https://metacpan.org/dist/Business-OnlinePayment-StoredTransaction


Business::OnlinePayment::StoredTransaction versions through 0.01 for
Perl uses an insecure secret key

Description
-----------
Business::OnlinePayment::StoredTransaction versions through 0.01 for
Perl uses an insecure secret key.

Business::OnlinePayment::StoredTransaction generates a secret key by
using a MD5 hash of a single call to the built-in rand function, which
is unsuitable for cryptographic use.

This key is intended for encrypting credit card transaction data.

Problem types
-------------
- CWE-338 Use of Cryptographically Weak Pseudo-Random Number Generator
- CWE-693 Protection Mechanism Failure

Workarounds
-----------
Apply the patch that uses Crypt::URandom to generate a secret key.


References
----------
https://metacpan.org/dist/Business-OnlinePayment-StoredTransaction/source/lib/Business/OnlinePayment/StoredTransaction.pm#L64-75
https://security.metacpan.org/patches/B/Business-OnlinePayment-StoredTransaction/0.01/CVE-2025-15618-r1.patch



