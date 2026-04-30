Received: (qmail 7946 invoked by uid 550); 30 Apr 2026 17:12:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 3577 invoked from network); 30 Apr 2026 11:52:52 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cpansec.org; s=gm1;
	t=1777549962;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=66/JXeOgRXnde2Z20qekRZ/zBRxEsLbVPCKE/tJOe54=;
	b=EMsdCabcKk+1lIx4V8K5rnMsguSCFFcejP9+6Ih3qkMPHG0HNU5raTj+75vhyY8yvcx8OG
	Qz6lLtJMcPogz08mov19wCOr8SuJN0LR2gXzBXM0ACONi9QDAWONFpn4lh/bXLbk8kaCm5
	L9Pt6NkSOpPoSBwN6d0FBv49VXZae9mvyK6kKMDQOAE6Yoi+DX4Skt168Z7vfTAfJZWG9B
	lxwSvp7KtmfPZh4sb7UQqiENtLoaMzhVo9IyaDAkULrDpYgIGGttWd6h/T1UGtCVVBPokF
	EwaEN9zf6FS31RSM6T/+Fxl8Cerql3tx+kRTdLJzHOUAFt3jLFDds52kK5Psow==
Message-ID: <43836cfa-83b9-4fa9-b320-660321b7c6a8@cpansec.org>
Date: Thu, 30 Apr 2026 12:52:41 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Robert Rothenberg <rrwo@cpansec.org>
Content-Language: en-GB, en-ZA
To: cve-announce@security.metacpan.org, oss-security@lists.openwall.com
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-GND-Sasl: rrwo@cpansec.org
X-GND-Cause: dmFkZTFboS8hkIGgAVMRNel6X1rS3TkaPs6DL9XqIwZoFuzP1Q9RuJ1U5U7sRsbAeHDbcJwJXgY9EkaFIV6Y0eKOuQKvJq1195a8iRXiLa5r80yNGeHK4NDOlC6xH3LA7OtYG0HWoNhiQHhmcBsdIDMmKsBmiYUJ+nzeYeMHMqk7Tak0EEh+AhaaORimfrPPv1xvLci4BW4IvTCW9EQaHO47w8h/btWF2jf7gjb6oyIbpb8qrwe3srji8700DNAUehqFAOE+Sn3gQPL7hYdtbD03U8HxJkw21QUfBlwyvuioB6iNY/EOMnzwc/H9XZsZzcX5C52Q3XO6z2JY10UlSaYmuRVTdb+FcOVwjvGnLaNIHt6Oq305LasyiOMYeDIUvoFNJdjt2EUFzvW0PEoPMYl7nESZYiQ+2IWuf0Hp6NWTj4vRnybYluqN+X6Lb66/avU8C6pLOHKGvSfANtnkW8A+LmquiNM3J7d2H5hmnP/a8VItg0R1WOIFY80TPI5fbl4ztlg5Gk0Rj8FNlpHirGGtpeBYaRaHkLsBFg0nlVK7nBmjryctwMt1Y8dyZ4/2pjx5J9y0SiztiX+f/yl4bHa9gOm88TccJ73e4tf2rlQAUCF5lk50ZraIsPAtvDdvImV9+sVSdJb/Sif9ucbhbfJILSnv8ZD5jGBB9gH1/kpfRs9wZA
X-GND-State: clean
X-GND-Score: 0
Subject: [oss-security] CVE-2026-5080: Dancer::Session::Abstract versions through 1.3522 for
 Perl generates session ids insecurely

========================================================================
CVE-2026-5080                                        CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-5080
   Distribution:  Dancer
       Versions:  through 1.3522

       MetaCPAN:  https://metacpan.org/dist/Dancer
       VCS Repo:  https://github.com/PerlDancer/Dancer


Dancer::Session::Abstract versions through 1.3522 for Perl generates
session ids insecurely

Description
-----------
Dancer::Session::Abstract versions through 1.3522 for Perl generates
session ids insecurely.

The session id is generated from summing the character codepoints of
the absolute pathname with the process id, the epoch time and calls to
the built-in rand() function to return a number between 0 and
999-billion, and concatenating that result three times.

The path name might be known or guessed by an attacker, especially for
applications known to be written using Dancer with standard
installation locations.

The epoch time can be guessed by an attacker, and may be leaked in the
HTTP header.

The process id comes from a small set of numbers, and workers may have
sequential process ids.

The built-in rand() function is seeded with 32-bits and is considered
unsuitable for security applications.

Predictable session ids could allow an attacker to gain access to
systems.

Problem types
-------------
- CWE-340 Generation of Predictable Numbers or Identifiers
- CWE-338 Use of Cryptographically Weak Pseudo-Random Number Generator

Workarounds
-----------
Apply the linked patch.


References
----------
https://security.metacpan.org/patches/D/Dancer/1.3522/CVE-2026-5080-r1.patch
https://metacpan.org/release/BIGPRESH/Dancer-1.3522/source/lib/Dancer/Session/Abstract.pm#L85-102



