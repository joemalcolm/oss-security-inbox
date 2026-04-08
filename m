Received: (qmail 9910 invoked by uid 550); 8 Apr 2026 15:44:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 1414 invoked from network); 8 Apr 2026 05:51:32 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cpansec.org; s=gm1;
	t=1775627481;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=KgGuKVG9y1pNFfI8WlvX3GBb7I5IEqV0hl5J6+TpDXo=;
	b=TpkdxVRqfV9Ksw9od0mvm5S4P0NU0chfeyNKLqnQK+SKhhzu3XDKTSyekHEI1xLMlVAsmD
	Wr8MolWCJ5lLshKWj/wpWtlKT7apXEUtXPqgoy4SWotrHXMpaBDh2U9evf+jwMuhv4482L
	CzNhffuVi3JR0p/GhtvnrubV5wJcSE1ZPP24UNz8zn7EcGomnPfAJtaHFYU1FEC0J8SQv+
	GH0tQY1n7mHGEGecjSBYjvWYYqcZqh1bYyrJrk+9rMVsQLu5KnzHpjDuPsJEFKUYbl67zf
	bIm6CIfIVTb0kHLJE3T7UFb/LT00PEp/SFiv52F72rquA/prYDjUEhbzFyIW/Q==
Message-ID: <c8c53c8b-acb6-48b0-bc32-166842dd18e9@cpansec.org>
Date: Wed, 8 Apr 2026 06:51:21 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Robert Rothenberg <rrwo@cpansec.org>
Content-Language: en-GB, en-ZA
To: cve-announce@security.metacpan.org, oss-security@lists.openwall.com
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-GND-Sasl: rrwo@cpansec.org
X-GND-Cause: dmFkZTG1GpAf42Z05RNqgtLC+AHdBviIwUf6A+tly3BOen9PwBHElRevqzFfTeyEQQU8jBpoVl36JpYDTtZHj/8/ZTHWJR+DvmXgE2uvaCjFa0nboyh2azrqPLLLajI+n6D7uLvmK6FZfJyl8APDiTL5uqy6pvAInb386UMRDyJBAzbuf5QHi/bTzLRzaaEcN59DS5O9FYkcXHhadB99XLRRpYtc3+uHKzwqKAIdQjfgSASkpAFBG3whgrqIuwkg6YzM8XKycBumuDY0PrOv7jvjzMId9XhEbwe7HFcGST/D3fZfBXLkpQOjE6vj0/oQ5hf2m7v98oH8bPaBJrm9BvUq3TLhRJ0WMZUfp+evpk2bduTQ32j9D5Zr4dPW/+Gs0aaeWr5avXMh7ErjVD5VOKclTezc4Hkn3ToTOLTKgL4r/SiMpDWW1kUgBxX6QprfiOYIjwE+fm3Hy5R6qamtptyQsKf6zhrgq8HC/Cl/f9gx82jCRWzuN4Zs4/lZKN1e3hGjEUBawsofC4QnT6PBksln3zBi1b9fYqybKqxfsYaPE7lLeLXNVy6Utl3V3LLic7jQCYhZ4s+KWBD8GZJfRenQgjDehHzhblhYVjJKWpccaaT/7dzn8tAl2b1eFMJ7Iq0kr9metXqZgC4X6DW+1MKYYCCQrYso/15BQ5LZ7VCZTtMtJw
X-GND-State: clean
X-GND-Score: 0
Subject: [oss-security] CVE-2026-5082: Amon2::Plugin::Web::CSRFDefender versions from 7.00
 through 7.03 for Perl generate an insecure session id

========================================================================
CVE-2026-5082                                        CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-5082
   Distribution:  Amon2-Plugin-Web-CSRFDefender
       Versions:  from 7.00 through 7.03

       MetaCPAN: https://metacpan.org/dist/Amon2-Plugin-Web-CSRFDefender
       VCS Repo: https://github.com/tokuhirom/Amon2-Plugin-Web-CSRFDefender


Amon2::Plugin::Web::CSRFDefender versions from 7.00 through 7.03 for
Perl generate an insecure session id

Description
-----------
Amon2::Plugin::Web::CSRFDefender versions from 7.00 through 7.03 for
Perl generate an insecure session id.

The generate_session_id function will attempt to read bytes from the
/dev/urandom device, but if that is unavailable then it generates bytes
using SHA-1 hash seeded with the built-in rand() function, the PID, and
the high resolution epoch time.  The PID will come from a small set of
numbers, and the epoch time may be guessed, if it is not leaked from
the HTTP Date header. The built-in rand function is unsuitable for
cryptographic usage.

Amon2::Plugin::Web::CSRFDefender versions before 7.00 were part of
Amon2, which was vulnerable to insecure session ids due to
CVE-2025-15604.

Note that the author has deprecated this module.

Problem types
-------------
- CWE-340 Generation of Predictable Numbers or Identifiers
- CWE-338 Use of Cryptographically Weak Pseudo-Random Number Generator

Solutions
---------
Upgrade to Amon2::Plugin::Web::CSRFDefender version 7.04 or later.


References
----------
https://metacpan.org/release/TOKUHIROM/Amon2-Plugin-Web-CSRFDefender-7.03/source/lib/Amon2/Plugin/Web/CSRFDefender/Random.pm
https://metacpan.org/release/TOKUHIROM/Amon2-Plugin-Web-CSRFDefender-7.04/changes
https://www.cve.org/CVERecord?id=CVE-2025-15604



