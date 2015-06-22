X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3450" "Monday" "22" "June" "2015" "07:35:39" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20150622113539.4066D6C028A@smtpvmsrv1.mitre.org>" "79" "[oss-security] Re: CVE Request: MITM & Shoulder-surfing vuln in Ruby OTP/HOTP/TOTP library \"ROPT\" - ROTP" nil nil nil "6" "2015062211:35:39" "[oss-security] Re: CVE Request: MITM & Shoulder-surfing vuln in Ruby OTP/HOTP/TOTP library \"ROPT\" - ROTP" (number mark "        cve-assign@m Jun 22   79/3450  " thread-indent "\"[oss-security] Re: CVE Request: MITM & Shoulder-surfing vuln in Ruby OTP/HOTP/TOTP library \"ROPT\" - ROTP\"\n") "<E53B5E6C-1251-424F-A1F8-564775158247@justinbull.ca>" ("<E53B5E6C-1251-424F-A1F8-564775158247@justinbull.ca>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 25872 invoked by uid 550); 22 Jun 2015 11:35:52 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 25854 invoked from network); 22 Jun 2015 11:35:51 -0000
In-Reply-To: <E53B5E6C-1251-424F-A1F8-564775158247@justinbull.ca>
Message-Id: <20150622113539.4066D6C028A@smtpvmsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Mon, 22 Jun 2015 07:35:39 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE Request: MITM & Shoulder-surfing vuln in Ruby OTP/HOTP/TOTP library "ROPT" - ROTP
To: me@justinbull.ca

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

> A tangible example would be the devise-two-factor library, which uses ROTP
> ... an (albeit narrow) attack surface is available as a result

>> https://github.com/tinfoil/devise-two-factor/issues/30
>> vilda: RFC 6238 requires the implementation to disallow (MUST NOT) multiple submissions
>> ShaneWilton: Thanks for pointing this out! I'll fix it when I have a chance.

devise-two-factor can potentially have a CVE ID. As you mentioned, the
attack surface is somewhat narrow, and it might make more sense to see
how the devise-two-factor vendor announces the update. For example, if
the vendor makes a code change to prevent multiple submissions and
describes the code change as resolving a vulnerability, then there can
be a CVE ID.

> If software that uses ROTP to provide two-factor authentication fails
> to implement the TOTP "burning" in its verification step, and does not
> explicitly state full RFC 6238 compliance, is that grounds for a CVE
> ID? Iâ..m curious as to what *counts* as a valid CVE ID, since at the
> end of the day, an RFC designed to define & provide a 2FA mechanism is
> not being followed

We don't currently know of a way to comprehensively and precisely
specify this for all possible behaviors in all products. A CVE is
typically not used for a case in which, when the product was
originally shipped, the implemented behavior was the behavior desired
by the vendor. This, of course, has the ambiguity of what "desired"
means.

>>> https://github.com/mdp/rotp/issues/44#issuecomment-113824151
>>> Looking at other OTP libraries, I can't find any that actually try and
>>> implement protection against reuse, most likely because it requires
>>> some external storage to do correctly.

This is an example in which it appears reasonable for a vendor to skip
full RFC compliance (and, importantly, not advertise full RFC
compliance) because the context and capabilities of the product make
it substantially difficult to address one of the threat models.


Another example:

>> https://github.com/tinfoil/devise-two-factor/blob/master/README.md
>> 
>> you'll need to generate an encryption key, and store it in an
>> environment variable of your choice

>> http://www.ietf.org/rfc/rfc6238.txt
>> 
>> 5.1
>> 
>> The key store MUST be in a secure area

It appears that this devise-two-factor documentation doesn't
explicitly rule out operating systems where environment-variable
values are readable by all users (see
http://security.stackexchange.com/questions/14000/environment-variable-accessibility-in-linux
for related discussion). So, this might be another case where there
isn't full RFC 6238 compliance, and yet the vendor may have never had
any intention of supporting the applicable operating systems.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.14 (SunOS)

iQEcBAEBAgAGBQJVh/KyAAoJEKllVAevmvmsDysH/01bM5ToKwulwBHN8TDIUWPa
RXA+YCJ6UePNhyrfzSnaXP0RtnfU5gpKGws8oZnxENjz4Vgmkv/exPpDZzgVedQ9
B6M9cy6rFM+Qyu8SMaUp4wtjet7FAO/ZyyyBjwQSGMQ9LQoz7QBp09OHN68F0MBe
YTuk+uswC1BgWtSJJVEzTUkOKn88Lg0Og8H3m5FDdLhrO/i74yOmEofe1LokR6ww
a6SfNRfFXS/BWMVvgtJw1JVHc5FnJsiDjIB6rTBfhfm2vhxVvMqqdq3GpUVtpnYP
AlBzqUwtGm4D/rUxVgrSYae2zdFPuQXqkmVOcZy9aa8r15oH0i1R6bBUsi6B2nM=
=aJW2
-----END PGP SIGNATURE-----
