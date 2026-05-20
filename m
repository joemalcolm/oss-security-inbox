Received: (qmail 7453 invoked by uid 550); 20 May 2026 23:00:14 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 6019 invoked from network); 20 May 2026 22:09:38 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cpansec.org; s=gm1;
	t=1779314970;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=ObH68Z3GU70PaKB/jcZBQroKXcj5vdIHnlkNkoe2ZzM=;
	b=eG22cV8PmPMqVqVEV2+aWYFUgGtvuIHVtqp0XSR30tZuv+yVF4RnY7XmzLwViQe8UrPL82
	T5pp05eyn9Abn+zHuXRM9vOkK2xQyNS8VDoy6CSzRx6XNwsMs1uPdxNMe4DLY2oHjeNcAY
	nYfJ47gNg6OWhBmlpRwL9nTp6sO2A9SqF/aBf4FQSbmGM3/j7PYVDw8549Jb/Lv+OpBwXA
	EgsW+HQIk1bbfxKDg8lEBdVCMOmoN9nO+u1zv4YlYB7YWCmIAA2H5SKJ90i8XQZmvjzBzc
	nXGirWBgQlZ2AUKRZE1+v0TgyfcUru4wKtpGfe2YIwsGKJ0/Q82XFEEhMurzDg==
Message-ID: <378d1a7a-62a8-4b3e-b33c-2bb8a6fbb703@cpansec.org>
Date: Wed, 20 May 2026 23:09:29 +0100
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
X-GND-Cause: dmFkZTEiD6l8F5vNpdo+Ao1eYLTB/elOnUY+1RCjLx5sSjuWCM5LJfrZ/O/md2+7ixQeO453h75DZuq/EehfUyWKsYOBHCOXCQUvTZjMe4vm4dTortnsik6jTk1lN7NiVqp6ZFJV0ZoIvVXel/2pNjCCvfoe1Ku3WQFsJ4wLaLesONfyh53KC3HfDBeaCnsC1lGhRtahFu1YDNBUxUzfwGDidwXN0rKZPh/OsBa+WJ5sELrFBfwG3s1ECo+/CSvbf4k6cGM0aN/DMZrG4ufgAFxg36mcbVQ3r6kalGbapuZT9jwMeY2ZyXA9NUwS6pUOaB7cdA9JLLQJQ9fQ/Js7eGbqTv0nlXraZciaa8UaZFNfO3Nt5E50dzop803GbuTZiNVYuliBWotOQ6QxU1jqMXLST8SKdtVp7GGRqN9+/YCkW6DbyMl2qkKJcQNbvpK58ubPkz8qetC9DH8i9rWGBwOjew7fAck3J7TAn7wFvoSHXi9dfMadwJArGHDKx6a4tI8XzRcNB1Vs3+MmUxx/XmUEG+qzvblcOTi3wQg7FW9uCTXBhHMyIrClhUfRfBfZStM0wWybdfgPNYIFgkLkHKWPKPUQGrF15angMdHEUfaBDE43Ntzf63DaByctS3FRJdfdCV8pbtMdrHR9vwFTPYh4X89A5Pj7LDtR/yUfc9Mlw6qvNw
Subject: [oss-security] CVE-2026-47372: Crypt::SaltedHash versions through 0.09 for Perl
 generate insecure random values for salts

========================================================================
CVE-2026-47372                                       CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-47372
   Distribution:  Crypt-SaltedHash
       Versions:  through 0.09

       MetaCPAN:  https://metacpan.org/dist/Crypt-SaltedHash
       VCS Repo:  https://github.com/robrwo/perl-Crypt-SaltedHash


Crypt::SaltedHash versions through 0.09 for Perl generate insecure
random values for salts

Description
-----------
Crypt::SaltedHash versions through 0.09 for Perl generate insecure
random values for salts.

These versions use the built-in rand function, which is predictable and
unsuitable for cryptography.

Problem types
-------------
- CWE-338 Use of Cryptographically Weak Pseudo-Random Number Generator
   (PRNG)

Solutions
---------
Upgrade to version 0.10 or later.


References
----------
https://metacpan.org/release/RRWO/Crypt-SaltedHash-0.10/changes
https://github.com/robrwo/perl-Crypt-SaltedHash/commit/9b68437d2cd420b819b3a795474c3870338d38d5.patch



