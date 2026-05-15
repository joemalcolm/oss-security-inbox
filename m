Received: (qmail 25890 invoked by uid 550); 15 May 2026 19:31:59 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 3952 invoked from network); 15 May 2026 17:43:16 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cpansec.org; s=gm1;
	t=1778866987;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=acYhNqjhzad2K/8QAcQ7qgjTj2SgxTtoPdDyl9KgK3U=;
	b=WDTYrSVxPTfRMAnSf1KU4OjcTvTrsyWCxKu6FcANvJDf5agWBt5mGteI9Wy1DFxgXSDsdx
	LJHxA3Hs2A9X9q/MHHDITa/+JW99oyQ7Or23aUay/OHzeeqi5YLmlbYUwept6fPV8yTBKO
	WDedih9WE7nvoe4CfgO4dqqs6zy3UCar0IZqqPZKMPD7tLdzTKWs+bCV35mgV4aiNYWaTB
	OSzYgpIuOMGFKADktW/sZ9QMv7Qbw3jEnlz40/wJ/AUZ/uFvQ4Ndtab4PPmi07vHle6po2
	DDmjyQGmaFBe6Vdx7eO2o0UW5g0GtBDWMUYfgnGHyGCRmCAGeZTtFhgMxyV/iA==
Message-ID: <c7d19401-d50a-4c63-b547-de9cc09618c9@cpansec.org>
Date: Fri, 15 May 2026 18:43:06 +0100
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
X-GND-Cause: dmFkZTEwpjmASrAZH0SAXf8oPHI5yU9GXcbrfvMOjie+5PFEZGmYVHnd3u6EtqC7baZKzUT1R/caRPo2tIjcsbhpSEbw7mE7F8w/cK4GZ7ic+VvtY8LVKpFmebzhbhADxoaKPeO/E/qR84HfMQ2Ht1it408TIuDZJ0XC5m9gj/RLPzklALXTy33BylgZs/H+VRIDk/ChHVU/VTrbIR+2otoJOjPTQWBRIbGKVqjcEdZdjFTwxM/N4ffiiaU3bX6qGPxLSUvN7laIuCiWq1u5F5BJmYbgwmyuSRY/VZ/krfNGezYYN2HTATGpNh0wzlWnmLz+jZiy++CSNxPML2Yoj6pBznXrEEObS96G16x/L2qGQNFrwwAz6gpclFr49+2/xlS88eGdjAPpS1ADPs0+Kc77ipkc9bRTJGsEoJe5Y5aiuRlnlHNs94CtQVBBgKZ3OUr0ORyD/4rY8dm4RzXH6oOU7FrggTuUpH71y5xi/kA/0DEdwNFRCwI/SEK0caf5CAIYZ9y9portCfr03riU5/FXh6+7v8QQgZYINeNRko/Rlttma6QfC4jWlXv/tQXUjh4BdIkmeSdu5pm5PLkrahjdWTuTEULphtdMnvw1vHhvfqUh15dNYEQmEiDCKc/J7iKXA6twdoX+lurk9IOVtrxKU/IQgejwcjCRYfaey3nkCIs70A
Subject: [oss-security] CVE-2026-46474: Trog::TOTP versions before 1.006 for Perl generate
 secrets using rand

========================================================================
CVE-2026-46474                                       CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-46474
   Distribution:  Trog-TOTP
       Versions:  before 1.006

       MetaCPAN:  https://metacpan.org/dist/Trog-TOTP
       VCS Repo:  https://github.com/teodesian/Trog-TOTP


Trog::TOTP versions before 1.006 for Perl generate secrets using rand

Description
-----------
Trog::TOTP versions before 1.006 for Perl generate secrets using rand.

Secrets were generated using Perl's built-in rand function, which is
predictable and unsuitable for security usage.

Problem types
-------------
- CWE-331 Insufficient Entropy

Solutions
---------
Upgrade to version 1.006 or later.


References
----------
https://metacpan.org/release/TEODESIAN/Trog-TOTP-1.006/changes
https://metacpan.org/release/TEODESIAN/Trog-TOTP-1.006/diff/TEODESIAN/Trog-TOTP-1.005#lib/Trog/TOTP.pm

Timeline
--------
- 2026-05-13: CPANSec identified issue
- 2026-05-14: Author was notified
- 2026-05-15: Version 1.006 released.



