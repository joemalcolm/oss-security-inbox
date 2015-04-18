X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1549" "Saturday" "18" "April" "2015" "00:07:22" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20150418040722.6B003132F2BB@smtpvbsrv1.mitre.org>" "38" "[oss-security] Re: Buffer overruns in Linux kernel RFC4106 implementation using AESNI" nil nil nil "4" "2015041804:07:22" "[oss-security] Re: Buffer overruns in Linux kernel RFC4106 implementation using AESNI" (number mark "        cve-assign@m Apr 18   38/1549  " thread-indent "\"[oss-security] Re: Buffer overruns in Linux kernel RFC4106 implementation using AESNI\"\n") "<1429044392.3211.72.camel@decadent.org.uk>" ("<1429044392.3211.72.camel@decadent.org.uk>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 28052 invoked by uid 550); 18 Apr 2015 04:07:38 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 28017 invoked from network); 18 Apr 2015 04:07:34 -0000
In-Reply-To: <1429044392.3211.72.camel@decadent.org.uk>
Message-Id: <20150418040722.6B003132F2BB@smtpvbsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com, 782561@bugs.debian.org
Date: Sat, 18 Apr 2015 00:07:22 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: Buffer overruns in Linux kernel RFC4106 implementation using AESNI
To: ben@decadent.org.uk

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

> Linux kernel commit ccfe8c3f7e52 ("crypto: aesni - fix memory usage in
> GCM decryption") fixes two bugs in pointer arithmetic that lead to
> buffer overruns (even with valid parameters!):
> 
> https://git.kernel.org/linus/ccfe8c3f7e52ae83155cb038753f4c75b774ca8a
> https://bugs.debian.org/782561
> 
> These are described as resulting in DoS (local or remote), but are
> presumably also exploitable for privilege escalation.

> As the destination buffer for decryption only needs to hold the
> plaintext memory but cryptlen references the input buffer holding
> (ciphertext || authentication tag), the assumption of the destination
> buffer length in RFC4106 GCM operation leads to a too large size. ...
> In addition, ... cryptlen already includes the size of the tag. Thus,
> the tag does not need to be added.

Use CVE-2015-3331.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.14 (SunOS)

iQEcBAEBAgAGBQJVMdeRAAoJEKllVAevmvmsidIH/i/kj781LmDCrwkAoGRREwKE
Bw8eKCM7Rb5u5om8T+wfX93UBvXQEm9sms3B4LAhpvhQ+hE64M8ETsQq8/Y2J5b3
gz5UQDd57TxIiBUkKuSA6CTQxUw5m+SRd2tlZckgpBjRRWYfKZvaPj/KqI/Uztq+
/WwFU0hXDzAq650mMFGluduwpKpeDIXxtYaNajbFHJdDDhVL0eUiJv2SxUsc3cse
Okx2fFoAKXmyf7YfXN6bgZKE4A4w2LWq175/TvcDTsVzUdct3ramDPVRNBE2LCYx
JXkLV4vuoFxkCScPH6zUPOgaqC+obqCWN0XBjkXx064on9BAM/34aZgZfX5TCf0=
=KYnV
-----END PGP SIGNATURE-----
