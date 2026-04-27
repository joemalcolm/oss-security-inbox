Received: (qmail 1394 invoked by uid 550); 27 Apr 2026 15:06:36 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 15979 invoked from network); 27 Apr 2026 12:31:55 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cpansec.org; s=gm1;
	t=1777293105;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=oZWHyAeyZ0BdarCaXx1mN5qeq33L+c+3r+NFTvJsx1c=;
	b=Nj1tIlHyLP1bkMLD8k1C3RZ282vJ4eJYyGkqvSGXyF14q4c4vDcJ20ldCNXDOQTeBc2BaF
	oweh038Oxxj+8trA0Amg65MpDp8QlEC3Wt7LNCk8SXVMPiUlIp8jg24jeas+IqV+3YSKdo
	DRNLAX9TKTSrcgZvl/l+VwSHXzCt7eqanKfAcnO6u/Kc7Bv2HHChHQsGWn8M0ISRg+1GQ5
	g7CpVUL/vtN5p/W46Si8qnLkOmlQu7/+0qJ52eLaHRIL+BLazHV3pX6Q1dOdf4DDdKJtLw
	YxEsN/5s6XH7Lv6Oo/2BvLhgacVRBwWxT5ELQYt0RDD+MxSOiXlQrbLrQGfv5A==
Message-ID: <a28db23e-ff76-424c-9945-8e96a36015c3@cpansec.org>
Date: Mon, 27 Apr 2026 13:31:45 +0100
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
X-GND-Cause: dmFkZTFMA4X3M+ABZEjJ1i7aqhSqktc73OBNxOXXhhbFRNi2ppzS1hD+fceFkWPtYx+3Rn7hHefcAMoKYf5Yi1qeSx86kVlIIvhS+joO+CNzbN6UfKPqiE8qfRNFgvZOXjpoQ/qsltBWrVFTf6oDTrrf7M13/7ObYLJBNOVDUWZ0cQ1xrjIGfpHWIQdPyRPI8LyqmEQUmUepFSkO1AZMvzkDR94FUN7Ohg8zydDGJRM84iA3+TWGEE//Bt6xLE2hTE1UA/H+dP+QGh1xHoSCaxR7QleYjRuc/9GvboLrzcy7oybYeGwqkKHLDYMxs2c69O8YCGhQu103b8DMigWNbERwqfoheVQGxvapJlC/OJj6ZRFeQFI9s2UWYPplssmbpB/66sVAf87XH2lA0iMrBfoewo19YVk4LvVXYErB1xwIayZ+ZyVUboGcNICDI1WNApXnUYy+/we1BWIifKz12fRbxPkTlHbKn06goQsWJJ0zs1/XAzS375ZA7I1AbH2MyhPF4nQ7NdWciLzEDWb8geJ6rKt8utLI0e72skYTdUpQsf7G1wukJOwocR0rA20q+sltHm09g9s90GholsZu2MJcsvKMLHZQzeNLg7YkiHSL3F/Z6JY0v7XmX33L6vIW8Z0rcaOrAcuqDemKsWaam+YS3Um1eLW60Au1Wy5FGf20QeJuvQ
Subject: [oss-security] CVE-2026-7040: Text::Minify::XS versions from v0.3.0 before v0.7.8
 for Perl have heap overflow when processing some malformed UTF-8 characters

========================================================================
CVE-2026-7040                                        CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-7040
   Distribution:  Text-Minify-XS
       Versions:  from v0.3.0 before v0.7.8

       MetaCPAN:  https://metacpan.org/dist/Text-Minify-XS
       VCS Repo:  https://github.com/robrwo/Text-Minify-XS


Text::Minify::XS versions from v0.3.0 before v0.7.8 for Perl have heap
overflow when processing some malformed UTF-8 characters

Description
-----------
Text::Minify::XS versions from v0.3.0 before v0.7.8 for Perl have a
heap overflow when processing some malformed UTF-8 characters.

The minify functions mishandled some malformed UTF-8 characters,
leading to heap corruption.

Note that the minify_utf8 function is an alias for minnify.

Problem types
-------------
- CWE-176 Improper Handling of Unicode Encoding
- CWE-122 Heap-based Buffer Overflow

Workarounds
-----------
Validate that all strings passed to the minify and minify_utf8
functions.


Solutions
---------
Upgrade to v0.7.8 or later.


References
----------
https://github.com/robrwo/Text-Minify-XS/security/advisories/GHSA-jqhf-vv4h-77h2
https://metacpan.org/release/RRWO/Text-Minify-XS-v0.7.8/changes

Timeline
--------
- 2026-04-23: This issue was identified by CPANSec
- 2025-04-25: Fix uploaded to CPAN

