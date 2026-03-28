Received: (qmail 7813 invoked by uid 550); 28 Mar 2026 19:09:42 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 23950 invoked from network); 28 Mar 2026 18:58:01 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cpansec.org; s=gm1;
	t=1774724272;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=VQnlUBSERin6qfW+Q7uvw+8tmwBQfP8/mkX2gaZt2xw=;
	b=GaJ+CriedLiLzv28CcidrIF6jkigzLhtG02XL5JYKUhjZYJ6D8TgfH6i7QdyRBw3TdkyyT
	YXdtmDXY/f5UA4FNoqZ8TFS9v+Z+V7sPflUHt2rUheodc1UVA+DPZjmp5REw9XJ6f/1JO6
	O+S2juFooekRNaEUQVq5eyK1Yl43TmLaIxFe3n6vVJkuhYHhL/KMF7ObPWXXWnjeOLimoL
	e8pxlGLWkcxHccWX7o+pjz/rXnmAUJc71i76Y+FUAdEkISiSUpAkhWgL+2e+UkBYoUmUsI
	Pajhs75Qz0ZuErQqYiVN1zZlI7/59gnjNnL2RA7NwLDcNU2h4FBXzJwIqLWkUg==
Message-ID: <1f65be16-a94e-400f-a93e-4c84aeb8613d@cpansec.org>
Date: Sat, 28 Mar 2026 18:57:51 +0000
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-GB, en-ZA
References: <2adc7b51-5f5c-4fb9-ba2c-8ddb429ef498@cpansec.org>
From: Robert Rothenberg <rrwo@cpansec.org>
To: oss-security@lists.openwall.com
In-Reply-To: <2adc7b51-5f5c-4fb9-ba2c-8ddb429ef498@cpansec.org>
X-Forwarded-Message-Id: <2adc7b51-5f5c-4fb9-ba2c-8ddb429ef498@cpansec.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-GND-Sasl: rrwo@cpansec.org
X-GND-Cause: dmFkZTFJmq/2vbuxjo/WREeNyPrqP4Jm/WPbBQW7TLrjTDFvTT+eW2WtTMRsSix4PfZXsBtTYIlmMtRdtpZLop4UGn5oqAYQrlZii+UlEujY4nGvOk3ljMQcmz/r2yG8rLEuautHjaCWHzYrvpf/qYzhm6eajO6ku5W38lrVO2WqlFmG3th7L4luhBql85WR1B2DZVmfhwCuWlowC8PnljXDNXC0pYvFIg3HvGcyir3ZpLLwsPhD1HY2OLftPwETlDkbwKpxrr2uSD9nm1/aelB19SzO2GVaW+NCmpGPDJKtgrryFaKAdWH+lT8VYwpI10E0rDP/2sMJLTk3jQ05RvcNgwFEOB5p5vcz94t5VV7sBuNAyj/QplHIzBehgl00PLa5AJ79zVn1ST/TMzZepjEM/lRy1zwSXU6JXRSdTxuMC7rkQNYcriox5m/W5C1UiRZPOLDlbuzrP+xPPkqGawRjCVx9TFVQmMWl8GW13JBrVFag4s6PgPOQFlb3JQFwmNzfP9WIwtWW6g2GjdU+CUvtQ1vJplB2z5dIGKAZpoBZ3uipKlO4l21fYYZDmskm6IVnCOaRKnvqPv6qfTGk0RTYlzfZhZ/mSUCW4R21hckIaNPVcn24XQVW46wFKlLMo2gR9N2oGZO+XOS01yTNF1okKCjYUPaTzg+oZ66kcIswIRjEjw
X-GND-State: clean
X-GND-Score: 0
Subject: [oss-security] CVE-2026-3256: HTTP::Session versions through 0.53 for Perl defaults
 to using insecurely generated session ids

========================================================================
CVE-2026-3256                                        CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-3256
   Distribution:  http-session
       Versions:  through 0.53

       MetaCPAN:  https://metacpan.org/dist/http-session
       VCS Repo:  https://github.com/tokuhirom/http-session


HTTP::Session versions through 0.53 for Perl defaults to using
insecurely generated session ids

Description
-----------
HTTP::Session versions through 0.53 for Perl defaults to using
insecurely generated session ids.

HTTP::Session defaults to using HTTP::Session::ID::SHA1 to generate
session ids using a SHA-1 hash seeded with the built-in rand function,
the high resolution epoch time, and the PID. The PID will come from a
small set of numbers, and the epoch time may be guessed, if it is not
leaked from the HTTP Date header. The built-in rand function is
unsuitable for cryptographic usage.

The distribution includes HTTP::session::ID::MD5 which contains a
similar flaw, but uses the MD5 hash instead.

Problem types
-------------
- CWE-340 Generation of Predictable Numbers or Identifiers
- CWE-338 Use of Cryptographically Weak Pseudo-Random Number Generator

Workarounds
-----------
Users on systems with a /dev/urandom device should configure the module
to use HTTP::Session::ID::Urandom.

Users on systems without a /dev/urandom (such as Windows) device will
need to create custom ID modules that make use of module such as
Crypt::SysRandom or Crypt::URandom.


References
----------
https://metacpan.org/release/KTAT/http-session-0.53/source/lib/HTTP/Session/ID/SHA1.pm
https://metacpan.org/release/KTAT/http-session-0.53/source/lib/HTTP/Session/ID/MD5.pm
https://security.metacpan.org/docs/guides/random-data-for-security.html



