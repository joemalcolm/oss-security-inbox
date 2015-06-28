X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1599" "Sunday" "28" "June" "2015" "06:55:07" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20150628105507.210D96C00E7@smtpvmsrv1.mitre.org>" "40" "[oss-security] Re: CVE Request: Django CMS" nil nil nil "6" "2015062810:55:07" "[oss-security] Re: CVE Request: Django CMS" (number mark "        cve-assign@m Jun 28   40/1599  " thread-indent "\"[oss-security] Re: CVE Request: Django CMS\"\n") "<mmnb8q$9lh$1@ger.gmane.org>" ("<mmnb8q$9lh$1@ger.gmane.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 11675 invoked by uid 550); 28 Jun 2015 10:55:20 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 11652 invoked from network); 28 Jun 2015 10:55:19 -0000
In-Reply-To: <mmnb8q$9lh$1@ger.gmane.org>
Message-Id: <20150628105507.210D96C00E7@smtpvmsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Sun, 28 Jun 2015 06:55:07 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE Request: Django CMS
To: matthew@matthewwilkes.co.uk

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

> a CSRF issue around publishing of draft changes
> 
> http://www.django-cms.org/en/blog/2015/06/27/311-3014-release/
> https://github.com/divio/django-cms/commit/f77cbc607d6e2a62e63287d37ad320109a2cc78a

Use CVE-2015-5081 for the CSRF issue.

The cms.changelist.js and cms.toolbar.js changes include a comment
"send post request to prevent xss attacks." The "xss" word choice
might be a mistake. We are not currently assigning a CVE ID for a
separate XSS issue.

> Sylvain Fankhauser of L//P and Matthew Wilkes of The Code Distillery,
> who discovered and privately demonstrated to the django CMS core
> developers an important CSRF vulnerability and contacted us through
> the documented channels.

CVE IDs were not assigned on a per-discoverer basis here because there
was no available information suggesting that different persons
independently discovered different CSRF problems.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.14 (SunOS)

iQEcBAEBAgAGBQJVj9ICAAoJEKllVAevmvmsdu4H/1c3jL6XKKu20IXZe50bHo3q
LIqJQ5uIfYR3K1ZwO2UIP4GYQHfbnJw7sSMnijAeEqkKXOdZLNwyVXM8od20YR2x
axSLTHjl6Wygxn+z+inLf5pRNZiF4q+s4U+h0KXUIbJN6VDtSYkY5f0axh4P29sv
JwTmVzL6+WWEiJ24gRY8uB6awhoFCFJ+62BCqNSnBoa81rt6mwMIMO4z4deKJM5Y
p8K0jSeYJF8HHuhIGCBFUQ02jC8arlawuwnsyjnjFDOFSbLMrhuwVx7yF5Ut+Z8P
nNl38ABeqm03r6dRp1Fu81itEhH3Gw3EGXbDyr8Ivbk2TQ7L4bntdxnAPPOb8TU=
=3AtE
-----END PGP SIGNATURE-----
