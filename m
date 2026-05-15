Received: (qmail 9217 invoked by uid 550); 15 May 2026 23:07:06 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 21831 invoked from network); 15 May 2026 22:12:34 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cpansec.org; s=gm1;
	t=1778883146;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=odxvJPSwxyGaZgrGpCqAudw/I46/V7h0haGCkYKc/T8=;
	b=pt3F/h299ReVHqAVe26LEwaSNG5lbZBIDkxntlsywGusqwG58KHD0nAfhc/xSsZdLCePvd
	5cZqe03VTtAjhjX/EIh0d5ig22MLPKAJN1i9w8PoheoFRtKZEe9ZSsLMYlTNz1jNQjJ0iT
	r1TJ8ZDmYdW9MUqoBMioJ4uprVxcE73KD4HhNqEWuwJIiLvazzx15otmJnKudzhjN+/bCK
	d6LjmHdmcIfoHCdmuFVbX+onMiDR09H5aoc52Rcgb2XOmIQUANWxT+R8p+QQ4WgjPkeXbv
	njkDMJgFyh6/xN5iHX+V4d4e3wFTI2tXqAbaR/jvs9KV2+vvPW3emEuap6Pr/w==
MIME-Version: 1.0
Date: Fri, 15 May 2026 19:12:25 -0300
From: Timothy Legge <timlegge@cpansec.org>
To: Cve Announce <cve-announce@security.metacpan.org>, Oss Security
 <oss-security@lists.openwall.com>
Message-ID: <11f05be71f0408fd4106472a85084cbe@cpansec.org>
X-Sender: timlegge@cpansec.org
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
X-GND-Sasl: timlegge@cpansec.org
X-GND-Score: -100
X-GND-Cause: dmFkZTFTOJJYsQCC+QBk9UD6A8Rqbl69RaFIZEJn5FYtUogt9l5q5vNDsuPTVgmKLAKRn6TwdaXCFP8TPHsNe4uNRxZwjxdbErgpDVMwpnPob5yoJWRnFVBnpIma/TbrW+Pd4bgjAup4iTMNC1cLNAoyC+Mc9d7UZYcH9Vr8uhn8XgZRf76Cm1/6FIxMouosZzIRV8l9w6B2j6jCRtPaJg2qfrsnXcx/I46N4gZiBEwZ2LzLQ01uscygfjjuUN/Zux5tlAy5erjkuOFdHEKGrNJYGlDLi8pvcW5yBhYoBZYlaxh7v9FQflC6UcoWtB+bfLKi2Cgev8K7mWr/KPZf7cC+V1YCDuTGAh8vA2Zu+dKBfFLFGzHCV0nhVDK9lY8jRRfC5dNJj9mlCLqW6GnOZ56nj5XKyreimaWrss5fwjTUo7G9f495h5NDNjsEpyQVolLEQOWWDOVnzHBAJd+6BDVuWBHzwkMVZGqygHyQJXP5kVW/ibuAu8EXziIKX1n5G1P2OJYwgK7l0wXRvp0In+zk3dJb+kzu2sHyDyltYOdHjsxOLY1+t8iYWUn5KjzIJvaN5ZX5c37ge8SmS+nQya8g2mooCI4I38s1qe7bZe5y5aF1tSDsOqCbhRrUGoET6UCBcWmS6UKjZckCdpt42+SEC7ksI9RC86AdS0CLlgf+zI/dIA
X-GND-State: clean
Subject: [oss-security] CVE-2026-8700: Crypt::DSA versions before 1.20 for Perl generate
 seeds using rand

========================================================================
CVE-2026-8700                                        CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-8700
   Distribution:  Crypt-DSA
       Versions:  before 1.20

       MetaCPAN:  https://metacpan.org/dist/Crypt-DSA
       VCS Repo:  https://github.com/perl-Crypt-OpenPGP/Crypt-DSA.git


Crypt::DSA versions before 1.20 for Perl generate seeds using rand

Description
-----------
Crypt::DSA versions before 1.20 for Perl generate seeds using rand.

Seeds were generated using Perl's built-in rand function, which is
predictable and unsuitable for security usage.

Problem types
-------------
- CWE-331 Insufficient Entropy

Solutions
---------
Upgrade to version 1.20 or later.


References
----------
https://metacpan.org/release/TIMLEGGE/Crypt-DSA-1.20/changes
https://metacpan.org/release/TIMLEGGE/Crypt-DSA-1.20/diff/TIMLEGGE/Crypt-DSA-1.19#lib/Crypt/DSA/KeyChain.pm

Timeline
--------
- 2026-05-15: CPANSec identified issue
- 2026-05-15: Author was notified
- 2026-05-15: Version 1.20 released.
