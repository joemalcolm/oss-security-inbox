Received: (qmail 27802 invoked by uid 550); 13 Apr 2026 14:02:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 29959 invoked from network); 13 Apr 2026 07:00:37 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cpansec.org; s=gm1;
	t=1776063627;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=LNIgz6YikiZBQGFxNd686+k4UaJUH6zmy/7ONstiQXg=;
	b=HFn4wvE+7iiz5nkvnlFzMKqtIYB7YqtkOxeKOv1lwcI5ww1WvUP9vCXCgv/qZ2DatvVORy
	yeXFF0Cy4VYtWXyU6oXDO3p7qhf+FLPH7GgJSa8oJxyz6irFwv36WVXcMgO/9sq5hjGIoH
	v39vRmA/04bo3KJEh7okqzdtjFLWZMF0srJGK4z8U2a/zhf+oe/5Lxpg8UwStAnRzRkkM0
	iFTAcrUB0Jm7hQINsD88fmKeVFQMGfjEDMhMWTfIhcwFFbVaoiBBqL/t4KuJPodgwCR8k6
	osbKXE8vtX4fe9v1mx/tH3di3yPNz9JhcJ1fAqOH1GP2z1iWjVkhPbA5+qPASA==
Message-ID: <cb29954e-6432-4cbb-8851-45a8c14d4263@cpansec.org>
Date: Mon, 13 Apr 2026 08:00:24 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Robert Rothenberg <rrwo@cpansec.org>
Content-Language: en-GB, en-ZA
To: cve-announce@security.metacpan.org, oss-security@lists.openwall.com
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-GND-Sasl: rrwo@cpansec.org
X-GND-Score: 0
X-GND-Cause: dmFkZTFxP9rEqaswTGWNBdkjI/MsVWr4JmGPzd3vpk3yh5AgOFN6JaI9wAocBTVX7R7jG7I9ZE9uydkoAwWRTii7yea8mYa85Dxe+TL3RVngoKG00gqcyzTuVB1Af/xvIxUB34PgMiS7C2wn/YC0CMfMkHgeC1+JAPpPn02Qix4NgBBBrJ8W0Q29Taffkg0FwB+AwXnZn7EsBsRLoyqrmEPZt2BGxwraaPOnlZ4RtJcWQ71+tjb3hzf2Wz+Q/wjTJyD1SKdtbdmaie3lvLmofL1MZRM3QfqA2LKheLwB3sglRl2wWfwlEFeMrLk+ikHN28K4DayZjudu4I8lZIRUdfgBMLvaAmGXypn2aAeGLzLJvFnTdyGiZVStMSyqoIA3jew6h5n3n94F6ShDLh0NZpiII3BzNmfUKFOKGHBfuzeSFHFsTeg1SYzX12OK5cl2Ng707rppEtpqC1/HEM8B6zcYVuB/W68BOaBwy1M68Ky9fewL00pO/N5cgO2YNvC7+hoAsYAdrGg1JAVrESGtEWYoZmNa1HEjWkPE58s5j2wMAwGxOEiOHD140LOaSsrTJsY2oSLLbEmNToEwHjp8bvfeBiU9s2FQoloxK2oyi+XXkQdzN5fdsBvKhQXN12yGNBjtCwLpK3j0RoDyZXiLeIaBoh/wLexMOjC8xhOUAGEAbqNbng
X-GND-State: clean
Subject: [oss-security] CVE-2026-5085: Solstice::Session versions through 1440 for Perl
 generates session ids insecurely

========================================================================
CVE-2026-5085                                        CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-5085
   Distribution:  Solstice
       Versions:  through 1440

       MetaCPAN:  https://metacpan.org/dist/Solstice


Solstice::Session versions through 1440 for Perl generates session ids
insecurely

Description
-----------
Solstice::Session versions through 1440 for Perl generates session ids
insecurely.

The _generateSessionID method returns an MD5 digest seeded by the epoch
time, a random hash reference, a call to the built-in rand() function
and the process id.

The same method is used in the _generateID method in
Solstice::Subsession, which is part of the same distribution.

The epoch time may be guessed, if it is not leaked in the HTTP Date
header. Stringified hash refences will contain predictable content. The
built-in rand() function is seeded by 16-bits and is unsuitable for
security purposes. The process id comes from a small set of numbers.

Predictable session ids could allow an attacker to gain access to
systems.

Problem types
-------------
- CWE-340 Generation of Predictable Numbers or Identifiers
- CWE-338 Use of Cryptographically Weak Pseudo-Random Number Generator

References
----------
https://metacpan.org/dist/Solstice/source/lib/Solstice/Session.pm#L481
https://metacpan.org/dist/Solstice/source/lib/Solstice/Subsession.pm#L105
https://security.metacpan.org/docs/guides/random-data-for-security.html



