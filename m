X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2949" "Sunday" "21" "June" "2015" "09:16:40" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20150621131640.2EA966FC123@smtpvmsrv1.mitre.org>" "63" "[oss-security] Re: CVE Request: MITM & Shoulder-surfing vuln in Ruby OTP/HOTP/TOTP library \"ROPT\" - ROTP" nil nil nil "6" "2015062113:16:40" "[oss-security] Re: CVE Request: MITM & Shoulder-surfing vuln in Ruby OTP/HOTP/TOTP library \"ROPT\" - ROTP" (number mark "        cve-assign@m Jun 21   63/2949  " thread-indent "\"[oss-security] Re: CVE Request: MITM & Shoulder-surfing vuln in Ruby OTP/HOTP/TOTP library \"ROPT\" - ROTP\"\n") "<0F109ADF-DF22-4D47-8810-6229FC0D4F73@justinbull.ca>" ("<0F109ADF-DF22-4D47-8810-6229FC0D4F73@justinbull.ca>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 31789 invoked by uid 550); 21 Jun 2015 13:16:52 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 31771 invoked from network); 21 Jun 2015 13:16:51 -0000
In-Reply-To: <0F109ADF-DF22-4D47-8810-6229FC0D4F73@justinbull.ca>
Message-Id: <20150621131640.2EA966FC123@smtpvmsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Sun, 21 Jun 2015 09:16:40 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE Request: MITM & Shoulder-surfing vuln in Ruby OTP/HOTP/TOTP library "ROPT" - ROTP
To: me@justinbull.ca

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

> https://github.com/mdp/rotp/issues/44
> https://github.com/mdp/rotp/pull/45

As far as we can tell, ROTP is advertised as "A ruby library for
generating one time passwords (HOTP & TOTP) according to RFC 4226 and
RFC 6238." This applies to "generating." We did not find any
documentation stating that the "verifier" complies with RFC 6238.
Admittedly, it is plausible that many users expected that the verifier
would comply with this RFC, just because this RFC was mentioned. The
vendor's position (see the
https://github.com/mdp/rotp/issues/44#issuecomment-113824151 comment)
is, roughly, that this verifier behavior is outside the scope of the
ROTP design, and that anyone who wants this verifier behavior needs to
write code or obtain code elsewhere.

Possibly a second issue is
https://github.com/f3ndot/rotp/commit/a7ffd1b5aa60235ac197859619dd29753499a666.
We might not understand this, but we think it essentially means that
"if ROTP were to consume an OTP, then this should be done consistently
for the current-timestamp case and the acceptable-past-timestamp
case." So, we don't think that this is an independent concern.

We don't think there can be a CVE ID for any aspect of the report
recommending that the verifier comply with RFC 6238. We agree that it
would be useful for the ROTP documentation to place some emphasis on
the actual verifier behavior, to cover the scenario where a user
guesses that full RFC compliance was intended, and later discovers
that a "MUST NOT" condition isn't met.

> NOTE: I have already sent a similar email to MITRE requesting a CVE
> ID, but been advised to submit here as well (then cancel the request
> to MITRE

We aren't exactly sure what this means. The MITRE CVE team currently
does not advise anyone to send messages to oss-security. The "already
sent" apparently refers to a message from an hour earlier. Messages
for us can be sent to either oss-security or to cve-assign@mitre.org
but should not be sent to both addresses. Of course, we are willing to
accommodate the occasional case where someone accidentally sends to
cve-assign@mitre.org but actually wanted to make the information
public immediately on oss-security.

(Subject line modified to account for the "ROPT" typo.)

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.14 (SunOS)

iQEcBAEBAgAGBQJVhriWAAoJEKllVAevmvmsBL0H/iF7pqv9Mi6IgR29G/L+77xx
Uq+rSiqThEcm/DXyIJiRU9lFjwp+i+icPPp/1Tfz0QW2mXYSpwYuOWW6EtBwhLbJ
VjiGSyGSvobvNbX6kX/t7P5zD+IwvnI3pUVbMssPpTdgW8XWmOL0pDetdb44IUgh
YiXuwxWMBdkP5F06pYQAUpvk6UFW9Te5gM7JK2UVcI56Tuj5LKEe1owckbalSj9k
E8CIS2LzGSWRuWls4widtmQnfBn3D6Nc2OKriGCmmfLsKbSXOaM8sjVjPv6LiV62
3RXhDHoVPHMa/hOHqCSbeD7m4az8m/oVz/yShDv2hCRBeXh49ojX6805/UGuiP4=
=E1cO
-----END PGP SIGNATURE-----
