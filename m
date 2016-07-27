X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2973" "Wednesday" "27" "July" "2016" "17:36:06" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160727213606.5DA3D6C02CA@smtpvmsrv1.mitre.org>" "64" "[oss-security] Re: Ruining the Magic of Magento's Encryption Library" "^Cc:" nil nil "7" "2016072721:36:06" "[oss-security] Re: Ruining the Magic of Magento's Encryption Library" (number mark "U       cve-assign@m Jul 27   64/2973  " thread-indent "\"[oss-security] Re: Ruining the Magic of Magento's Encryption Library\"\n") "<CAKws9z0pq63ZK2q_zVgoYF+U+evLNvqD5v=7HKnOy5H263Z8rA@mail.gmail.com>" ("<CAKws9z0pq63ZK2q_zVgoYF+U+evLNvqD5v=7HKnOy5H263Z8rA@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 15566 invoked by uid 550); 27 Jul 2016 21:36:27 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 15507 invoked from network); 27 Jul 2016 21:36:19 -0000
In-Reply-To: <CAKws9z0pq63ZK2q_zVgoYF+U+evLNvqD5v=7HKnOy5H263Z8rA@mail.gmail.com>
Message-Id: <20160727213606.5DA3D6C02CA@smtpvmsrv1.mitre.org>
Cc: cve-assign@mitre.org
Date: Wed, 27 Jul 2016 17:36:06 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: Ruining the Magic of Magento's Encryption Library
To: oss-security@lists.openwall.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

We wanted to provide at least one CVE ID for this report, because
there are some CVE use cases in which it's of interest to track
whether a code review exists, even if there isn't yet a specific
association with patch management.

> Magento, one of the largest open source e-commerce platforms, ships a
> broken cryptography library that clueless developers are probably using to
> encrypt your credit card information for their client's customers.

It's possible that some CVE ID assignments could be made for
third-party applications that use this library.
http://openwall.com/lists/oss-security/2016/07/19/3 doesn't directly
discuss what parts of the cryptography code are reachable in default
or typical deployments of Magento. We haven't been able to find
documentation that describes how independent developers were expected
to use the library code.
http://devdocs.magento.com/guides/v2.1/ext-best-practices/extension-coding/security-performance-data-bp.html
has general comments such as "Avoid using low-level functionality" and
"Always encrypt sensitive data or configurations." Finally, there are
no recent Crypt.php or Encryptor.php commits on the
https://github.com/magento/magento2/tree/develop/lib/internal/Magento/Framework/Encryption
page.

Given the above, we will initially focus on

  https://github.com/magento/magento2/blob/6ea7d2d85cded3fa0fbcf4e7aa0dcd4edbf568a6/lib/internal/Magento/Framework/Encryption/Crypt.php#L64-L69
  https://github.com/magento/magento2/blob/6ea7d2d85cded3fa0fbcf4e7aa0dcd4edbf568a6/lib/internal/Magento/Framework/Encryption/Crypt.php#L83

http://php.net/manual/en/function.rand.php says "rand - Generate a
random integer ... This function does not generate cryptographically
secure values, and should not be used for cryptographic purposes."

Use CVE-2016-6485 for the incorrect choice of the rand function within
the

  $initVector .= $abc[rand(0, strlen($abc) - 1)];

line.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJXmSjCAAoJEHb/MwWLVhi2KmsQAJ2YBrxx5yz6GSUWaa+UuAXm
0GGgPwkR3sCFo+1oABrgQqqoIaNyn7F/swUV5WzBxYd7FfDC7/I805sVACemVaej
txtcPNVPzVy75uezC6hcEK17gC/Vx2NSyFItp7UTzm5YslZwfBXKXuBV3+9nWChi
bJ0NjaptH3WoWGUtb8M3OcQiq7S5DDbvUgG+VZE7BBbbb6Q+/APkCf2R5NhAY7yx
2bmGGg7LHAjCAlfJf0tT6Jj9Fi+sDAmyNGn6uNYajOM9t4ywlBaQl6A30+6hiJSM
s7SqMd/WRLsOpION1l3nYLi32D/Uf5JxDffQJdrQ41mXZ5fIrpwbAAXv8Nb8x7QK
Cn/4sUQ7tg/7XsBODGBEDXuPo5yYQrp8cLEKCzW7lq05G+ZXW9kVIplcpUyaI8iy
qTuIG68OlsGxitA03cLHjQaVMio6JcLejr3Jmyq8peAcNH5WAOMhyehgOOmp8oxC
9m/UmJeu7OZDqGVpM2b4jyBpaU75mMbysOibPu3zaHVD9OtsGevFtNYeVVtun5dT
V1sHc/Fn6cPfVgaFPSHxBG4o6/Og++5wvQ6eGntd6zKIaA7Dzd20Okv/GkNxyoom
sqLAQ5EmW4n+Msl15rYUFFjXHv0iZWBZ5eAtuZczdBHV9WY2T63X9zgrB3vPXLQT
S1aJi4ZDOqOe86EYoLdH
=DJ+Z
-----END PGP SIGNATURE-----
