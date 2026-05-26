Received: (qmail 9286 invoked by uid 550); 26 May 2026 23:49:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 24495 invoked from network); 26 May 2026 22:55:40 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cpansec.org; s=gm1;
	t=1779836131;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=ILcQe5LPbGd0tiSskspJcpJJ8dvcLf6D4+oQlCRSPhk=;
	b=mb+NcB+MLskdLfityd5PuJ5RJp5qnHXRgl3n0wcgjhjt3hQqJULFazlK2/LztbG2gX4C+s
	Xsmc6CN9jWOCFEB2RL0Ww8NeW+KmsnObQzS9/ZvIJ3ZCogJN35z3Sg3TUXNCLoMPXKk5eU
	4rAET1jqUIikaA4FYmyfANG/wt+oPM7bTTjWKkqIgRp9ioxtyVrIHm/0B7BPr5ScneuUCt
	VMqHoZZ2+pKfkbi6+bxjrrxwGaiY/2EUXi2EvEtkXK+d9kXFzE6Xvt9iOBHjCBecGRoG8Q
	3J3rHKEMWQ5gFE7qi4urYLZU5T6FlU7BST/zwu/fOR1SOjy6v03GqWNKx0d2TA==
Message-ID: <8bbe89c1-a955-4334-8da9-67b4c131e293@cpansec.org>
Date: Tue, 26 May 2026 23:55:30 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Robert Rothenberg <rrwo@cpansec.org>
Content-Language: en-GB, en-ZA
To: cve-announce@security.metacpan.org, oss-security@lists.openwall.com
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-GND-Sasl: rrwo@cpansec.org
X-GND-Score: 0
X-GND-Cause: dmFkZTFbns30y4IS7vBZJoZ9ztBHhxwoEKlI8PpmVrVMA3xu4ao+95dp1GrBYB8rSQqvH3F3m1exXnDFwrFyEL7PafOFL0LLXbydFwBv/ynwFFMGqFm08sWyuJ5jRBrSgf3rkKm3c4pNyPdL6B5gBw7Mzrfqabq2Q3Y++3/kWB+QasiosqNgCH/8ia63Sd85jgqpsKBB5OyjdGlp5aNyZvJjYei4jnY4S08dUST7gusZMoRmPhAXFXW6SPbp0cK2MDZ4Tdz6BoYytytoHVW78/6H5kt0RSmzaRZINJ2R6P6wEo8Y0hEA3FY8QrtTa29SOEZkAoIuw3NvsolEn7MI87kKponeAS1OtKqNp4gpCh0e3gQni23LiYb52LkIX+vB4tQf8H0QT6P48oXe8n4DM1QYBZ5PcegKSSM7QEYPnyJMu4HqQhMyoz+u7k/Q3mR7RjZ3qVPl0fLBF2N8caFcptLML3clzfllXN6ydH7x3w25YDxY//W8G1IrZ3VTPsRnV+oFVYnsBbbPkKK0bcanQhepr0PN746neJI4RMsKVrN5++BVJQ+5Fs8okAS6OweUXJjdD5MYEzqeOV2E+pt+N2cMHhP7//OVjn+m3Qr6e2cFxHnjdMc8iN5quDMnhMcPyQYes04f2XJEixea2PtuiC6V5E6FC0idlYOs8JINE3KiRM3iRg
X-GND-State: clean
Subject: [oss-security] CVE-2026-8647: Crypt::ScryptKDF versions through 0.010 for Perl uses
 insecure random number source when no CSPRNG module is available

========================================================================
CVE-2026-8647                                        CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-8647
   Distribution:  Crypt-ScryptKDF
       Versions:  through 0.010

       MetaCPAN:  https://metacpan.org/dist/Crypt-ScryptKDF
       VCS Repo:  https://github.com/DCIT/perl-Crypt-ScryptKDF


Crypt::ScryptKDF versions through 0.010 for Perl uses insecure random
number source when no CSPRNG module is available

Description
-----------
Crypt::ScryptKDF versions through 0.010 for Perl uses insecure random
number source when no CSPRNG module is available.

The random_bytes function fell back to using the built-in rand()
function when none of the Perl modules Crypt::PRNG,
Crypt::OpenSSL::Random, Net::SSLeay, Crypt::Random, or
Bytes::Random::Secure were available.

Problem types
-------------
- CWE-338 Use of Cryptographically Weak Pseudo-Random Number Generator

Workarounds
-----------
Install one of the recommended Perl modules, such as Crypt::PRNG.


Solutions
---------
Upgrade to version 0.011 or later.


References
----------
https://metacpan.org/release/MIK/Crypt-ScryptKDF-0.011/changes
https://metacpan.org/release/MIK/Crypt-ScryptKDF-0.011/diff/MIK/Crypt-ScryptKDF-0.010#lib/Crypt/ScryptKDF.pm

Timeline
--------
- 2026-05-13: Issue reported to CPANSec
- 2026-05-14: Issue reported to maintainer
- 2026-05-16: Version 0.011 with fix released.



