Received: (qmail 8106 invoked by uid 550); 20 May 2026 20:44:41 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 11824 invoked from network); 20 May 2026 20:27:28 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cpansec.org; s=gm1;
	t=1779308839;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=Lu0P8srGSEcDx77OnqQjlRegVZuyeiYVbgqyjF4h+ng=;
	b=fZuZ1Tcim2NMWxpanmvKfmfcl0jwtfOm8pN9Q32zHFFCTjP8MBX+Cjjpb6vf1c+1UUJJkp
	mi0b77HzrQQ5ktDiaC5PQux1SXXczsBWF80E7FK6d8UFKkC4UHdfyIb5E123ld9U+LaE/g
	ZTx/zMgmm3niLtpXi4rsrhxZ3+s+NlQi9qh3PZOiXTZFqtHby5HEUQO7HPK49lmT1gcPZp
	d1uQ+mVSZGEiYYvYfKRX+FHJM2P8zQkoAX7CUAqq5b3bchJUKoZDWLgEuamn0D1segurDs
	0ebJBgG4A0iU7OQgy+qujZKVQaGq7vVMQawhYgIb6DUn2qAoGkwt5h0eRsVwbQ==
Message-ID: <a58262e5-1da1-464c-9ce4-80de1b916bee@cpansec.org>
Date: Wed, 20 May 2026 21:27:19 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Robert Rothenberg <rrwo@cpansec.org>
Content-Language: en-GB, en-ZA
To: cve-announce@security.metacpan.org, oss-security@lists.openwall.com
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-GND-Sasl: rrwo@cpansec.org
X-GND-State: clean
X-GND-Score: 0
X-GND-Cause: dmFkZTEx7i6R+vG90GCvC0YalLtKxU8ktSESR+SyH9LWIb5BmEbyTG9tZVip87hfWDHTg910LyT5R7dljkUV1S+1HByFjNhtvDshkIZB0Y+Qbwef6bBya9CxIn75TdA4utFMmiS+v2ykg29lbPy1g8li0oEG+wCIRRP5rWyk/rEwqI6NDcrtew0UqN6smYvfoFHBzquwUZB5o/8iYqb5Li8tyFvMDlguM8UbqJ7fdXmB/EyTzUKicd/3bd6uijzluJfuFm/R/cETL8cuDJMxxIuwe69KA5xpkKg0/NmLKG+Of7fwP24Y0B4hmvRHyIGW9iFMLBaSre7WRYmTny02cEB8x/xYa7UKFq1Fdp372gEerHF7tTer/tKKXbkUv2bc8m22c9wc4B7RrIbGNiCKF4W/Vh9ROyNBC/S/N5XX6GwbdChLEp9wwpD0xzbwevhGcoaHGBeHpnRAF99mLjwJ1rx4OzMEAjac/Pysz/RiFf16n8frZcLXW7oeuf8cIquKmthuJjtIV3EtBqk98hGtcpIMVGAjpTeD8xkkZwhqOdyfu9JTp1qO5JBTFnbfT2V4N9PQ3tlXUD0D9TLWrYkZYIZ+JFNOWmUCXFWsncrDextKIdAJfeCYRcdJDoZ0qtw1V6zJUu5OaDM6npL3vyrPItaH0KuuLNCh6bX/E7PuyhtcaMLibA
Subject: [oss-security] CVE-2026-47373: Crypt::SaltedHash versions through 0.09 for Perl is
 susceptible to timing attacks

========================================================================
CVE-2026-47373                                       CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-47373
   Distribution:  Crypt-SaltedHash
       Versions:  through 0.09

       MetaCPAN:  https://metacpan.org/dist/Crypt-SaltedHash
       VCS Repo:  https://github.com/robrwo/perl-Crypt-SaltedHash


Crypt::SaltedHash versions through 0.09 for Perl is susceptible to
timing attacks

Description
-----------
Crypt::SaltedHash versions through 0.09 for Perl is susceptible to
timing attacks.

These versions use Perl's built-in eq comparison. Discrepencies in
timing could be used to guess the underlying hash.

Problem types
-------------
- CWE-208 Observable Timing Discrepancy

Solutions
---------
Upgrade to version 0.10 or later.


References
----------
https://metacpan.org/release/RRWO/Crypt-SaltedHash-0.10/changes
https://github.com/robrwo/perl-Crypt-SaltedHash/commit/c07bfc5c23185b0667233d0f2e1252d81f1f027a.patch



