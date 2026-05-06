Received: (qmail 13842 invoked by uid 550); 6 May 2026 15:09:42 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 11740 invoked from network); 6 May 2026 12:39:01 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cpansec.org; s=gm1;
	t=1778071131;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=rgb/7uZshQ9KSu1DKjQPLjhwgCuQKxlxPWyWIjkoE5E=;
	b=FWRLyXZQEVAwdRRArsUwFO/2VHViQA4fRgOdNIJacNybgm2brhMzXWzMsZ67Ho/VhcP3Bo
	kQMtJTcOXDO9v80+5Wgpj/+TKslpnKB7+PIV5aibTbruWwKTROPA3ZgX7cHC0h3Kw91ZCr
	aWmpII4jzb57XtdWAKUj9oRVMJUNnMI6wRJo4cc7Fh6t222bfndm3Cj8XvWwhRgFshe5Ir
	E9NXh2tkgL8i0gf4a10UzNPEDt5hV7V3xX4TpRdB0hBGR5bW1o283lki3bdELdysccuYIW
	HdfXkaROA2coPAalK26uZBkbHKt1YLJFf/3CtiYJMkXvr0Xjfi58nFKhuJ+gmQ==
Message-ID: <bd896c3a-f881-4469-8a4a-363a392924e4@cpansec.org>
Date: Wed, 6 May 2026 13:38:50 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Robert Rothenberg <rrwo@cpansec.org>
Content-Language: en-GB, en-ZA
To: cve-announce@security.metacpan.org, oss-security@lists.openwall.com
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-GND-Sasl: rrwo@cpansec.org
X-GND-Score: 0
X-GND-Cause: dmFkZTEtFoAk34kw7cfG6JTkVvmC9kwhkAvwQuRtYgvkjkYrfa/Vud8RCLbfJiDBm5NnNBJNNTXvjOS9d0+tknkQSApR4vV1Q0Z+kAA1PH1pyqUr8Q/2d1d6uGyhaDviBr2nAxnR+zUU4pBSWroU6ExDGgEKQZjqAI1jgsX35pDCOvwVCwAo5Rt6h6XAUo0KvkYZmhnsbzbA6LAEnk5UfgQksWLLNHzkG8SFJTL5tQLBoJJBiw+M+wIItpro5CRfWIguUpPgP63yxFkUDIcSY1WP6PO5dKo8E+0J42iF9EvmHlnWIsDDSpEIkSqcI8FlA8P/QQ9l/FxWWnq6XWYfr/94j3r0a2d3VlevoRPxFagQ6zCqztHOtf5BqkBF8ejNbOtrsG/niQEO3qKh+PkAto1SKKAQ6727GJ6rYGD9QYG/UxX4cZnE1Li3SPI2KivizHJzv5+KTS8EpM5k69rR6dCO9xiYS6nDJ76kHRzeVmTsbh4o3imxhKFNXcFhL9/YXAZ6vMFW75ex9aN0E2U/ojrMnLcXQveFY8GoBwDwBItZhkM+zKtxBPdhgZfuS9b2hCCOs8NdQCTSbJXYTRoRGbjzz//IuR4wTBphxXCeu3ozFi+iaE1ek9d9h2XfylW9XYKW9uedXhT9FGFu9kBKXwBDL6dPBf2cPf+YOpyxDz1QcgelTw
X-GND-State: clean
Subject: [oss-security] CVE-2026-40562: Gazelle versions through 0.49 for Perl allows HTTP
 Request Smuggling via Improper Header Precedence

========================================================================
CVE-2026-40562                                       CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-40562
   Distribution:  Gazelle
       Versions:  through 0.49

       MetaCPAN:  https://metacpan.org/dist/Gazelle
       VCS Repo:  https://github.com/kazeburo/Gazelle


Gazelle versions through 0.49 for Perl allows HTTP Request Smuggling
via Improper Header Precedence

Description
-----------
Gazelle versions through 0.49 for Perl allows HTTP Request Smuggling
via Improper Header Precedence.

Gazelle incorrectly prioritizes "Content-Length" over
"Transfer-Encoding: chunked" when both headers are present in an HTTP
request. Per RFC 7230 3.3.3, Transfer-Encoding must take precedence.

An attacker could exploit this to smuggle malicious HTTP requests via a
front-end reverse proxy.

Problem types
-------------
- CWE-444 Inconsistent Interpretation of HTTP Requests ('HTTP
   Request/Response Smuggling')

Workarounds
-----------
Migrate to Starman version 0.4018 or newer which has fixed the issue.
Or apply the patch.


References
----------
https://datatracker.ietf.org/doc/html/rfc7230#section-3.3.3
https://security.metacpan.org/patches/G/Gazelle/0.49/CVE-2026-40562-r1.patch

Timeline
--------
- 2026-04-12: Issue identified by CPANSec
- 2026-04-29: Issue reported to software maintainer

Credits
-------
CPANSec, finder


