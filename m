Received: (qmail 5803 invoked by uid 550); 28 Mar 2026 19:09:35 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 15636 invoked from network); 28 Mar 2026 18:50:21 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cpansec.org; s=gm1;
	t=1774723812;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=tLRWT8XLt/s3HdQotrqr7oTHW1dXJJpNgIqC3FJIpB4=;
	b=MRwjnCuGvwLuJ9YphOFuxxV1J4wdW+DJVv41+sK3hMIbuUAFv3sMJ5K9UgPc5D+tgXKAax
	QhWUcUC57ablDD9p/37EKlVJD7PRP7rSsxXodyU/k9xEzBn3CWflyiP3ijNB7meDW0Cuvx
	ZZ35H9X061MEnGA84ERBZL+OY3nltzpNLlwnOMLOT/mW7rHMQuMtpzuOyWVFyMtN/OoVRo
	6UPn73fAS01zVuIV+54+7ElsjefnZyzm+UN136+cMuXPeCYYeX9tDRqsTWqG17gQlkvz+t
	lHENKuqVeIN+a/Z4wgMgACFpQVDlTfe/1PLLl6Hi6MZ/engmjGznNlGMpDzUKg==
Message-ID: <336aa718-600f-41dd-8f11-4fac99dd8755@cpansec.org>
Date: Sat, 28 Mar 2026 18:50:11 +0000
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-GB, en-ZA
References: <675056ee-fa94-4d0c-ad56-0b9cd9aec050@cpansec.org>
From: Robert Rothenberg <rrwo@cpansec.org>
To: oss-security@lists.openwall.com
In-Reply-To: <675056ee-fa94-4d0c-ad56-0b9cd9aec050@cpansec.org>
X-Forwarded-Message-Id: <675056ee-fa94-4d0c-ad56-0b9cd9aec050@cpansec.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-GND-Sasl: rrwo@cpansec.org
X-GND-State: clean
X-GND-Score: 0
X-GND-Cause: dmFkZTEcGMhbuPjKFCOuMb1XXgHWvEKD7bD/I82ekvB5PGw+xGPr2IgldQN2RoTWtEVeLuLkDFr+1k5XfgXhPw0JrOAU8RCrsqTt44O3xMBBdMd6Mlfk7tsexFdyT0rD/Aiy/Q4NJCl844pH1l81D5uo+Jjb8AUO/giWOaGbObfRKZbzBpGZJRqvVHqj4fNpbEADnFDGPjewdUoC8i9r3fHR1GcmXWJHRwoRnA8hZiOC6E0HUWRreIqjHhyA4TVfSBVwNKp/IWnuVaBSg0buL96nZ1FLdxupEtzVKpPJf7YD+Bxoh/LGBp/XQKVVPwQYPULVlKHpz/PXXdyhowzaZQ81ugQzsEqe5jQVlo1OqXRNix5tD4pqetH4F7LjEDZXbAteWLsV4/VU4sKgqHp9VcLCbwJeNXnukyWzZgP0jCZ6eIjQhd6k7nggpv3hjAQhNk7umOFxY25krwxPtIR/CwWlEjxm0LSGLiM43Fl5iCVqDI2ISmdwd2Gt7ZXPakmQ6Eiu4lEJJ6i4+IkUS+wh6r1Qs+N0N5aDsvtQgpbEn0DOUixRlwigQNK0F0agXABVZa35eb+MEBBPt4KXZP3LBt4tSBFM85T1gs2RAUy43PrufCN16drefdUOPVykP9iIbFLKV47sBLcN8De70muCJeo5w9CXgmio7XCucXzlbSm9RQlLAg
Subject: [oss-security] CVE-2025-15604: Amon2 versions before 6.17 for Perl use an insecure
 random_string implementation for security functions

========================================================================
CVE-2025-15604                                       CPAN Security Group
========================================================================

         CVE ID:  CVE-2025-15604
   Distribution:  Amon2
       Versions:  before 6.17

       MetaCPAN:  https://metacpan.org/dist/Amon2
       VCS Repo:  https://github.com/tokuhirom/Amon


Amon2 versions before 6.17 for Perl use an insecure random_string
implementation for security functions

Description
-----------
Amon2 versions before 6.17 for Perl use an insecure random_string
implementation for security functions.

In versions 6.06 through 6.16, the random_string function will attempt
to read bytes from the /dev/urandom device, but if that is unavailable
then it generates bytes by concatenating a SHA-1 hash seeded with the
built-in rand() function, the PID, and the high resolution epoch time.
The PID will come from a small set of numbers, and the epoch time may
be guessed, if it is not leaked from the HTTP Date header. The built-in
rand function is unsuitable for cryptographic usage.

Before version 6.06, there was no fallback when /dev/urandom was not
available.

Before version 6.04, the random_string function used the built-in
rand() function to generate a mixed-case alphanumeric string.

This function may be used for generating session ids, generating
secrets for signing or encrypting cookie session data and generating
tokens used for Cross Site Request Forgery (CSRF) protection.

Problem types
-------------
- CWE-340 Generation of Predictable Numbers or Identifiers
- CWE-338 Use of Cryptographically Weak Pseudo-Random Number Generator

Solutions
---------
Upgrade to Amon2 version 6.17 or later.


References
----------
https://metacpan.org/release/TOKUHIROM/Amon2-6.17/diff/TOKUHIROM/Amon2-6.16#lib/Amon2/Util.pm
https://metacpan.org/release/TOKUHIROM/Amon2-6.17/changes
https://github.com/tokuhirom/Amon/pull/135
https://security.metacpan.org/docs/guides/random-data-for-security.html



