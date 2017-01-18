X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3096" "Wednesday" "18" "January" "2017" "11:33:57" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<0133192437e54518a5616bc3c8d074e2@imshyb01.MITRE.ORG>" "70" "[oss-security] Re: CVE Request: Plone Sandbox escape vulnerability" nil nil nil "1" "2017011816:33:57" "[oss-security] Re: CVE Request: Plone Sandbox escape vulnerability" (number mark "U       cve-assign@m Jan 18   70/3096  " thread-indent "\"[oss-security] Re: CVE Request: Plone Sandbox escape vulnerability\"\n") "<CAL8hw9Et3-hdcmJPZk7cY+Z87Ggk3+yGpbbVZgMXJbuQ9CAdrw@mail.gmail.com>" ("<CAL8hw9Et3-hdcmJPZk7cY+Z87Ggk3+yGpbbVZgMXJbuQ9CAdrw@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 30635 invoked by uid 550); 18 Jan 2017 16:34:10 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30617 invoked from network); 18 Jan 2017 16:34:09 -0000
From: <cve-assign@mitre.org>
To: <nathan.van.gheem@plone.org>
CC: <cve-assign@mitre.org>, <oss-security@lists.openwall.com>
In-Reply-To: <CAL8hw9Et3-hdcmJPZk7cY+Z87Ggk3+yGpbbVZgMXJbuQ9CAdrw@mail.gmail.com>
Message-ID: <0133192437e54518a5616bc3c8d074e2@imshyb01.MITRE.ORG>
Date: Wed, 18 Jan 2017 11:33:57 -0500
MIME-Version: 1.0
Content-Type: text/plain
Subject: [oss-security] Re: CVE Request: Plone Sandbox escape vulnerability

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> [] Accessing private content via `str.format` in through-the-web templates
> and scripts. See this blog post by Armin Ronacher (
> http://lucumr.pocoo.org/2016/12/29/careful-with-str-format/) for the
> general idea. Since the `format` method was introduced in Python 2.6, this
> part of the hotfix is only relevant for Plone 4 and 5, not Plone 3.
>     Credit: Plone security team, Armin Ronacher
>     Reference: https://plone.org/security/hotfix/20170117/sandbox-escape
> 
> Versions Affected:
> 4.3.11 and any earlier 4.x version, 5.0.6 and any earlier 5.x version
> 
> Code fixes:
> https://pypi.python.org/pypi/Products.PloneHotfix20170117

Use CVE-2017-5524.

The scope of this CVE does not include the "reflected Cross Site
Scripting attack (XSS) in the ZMI (manage_findResult)" mentioned on
the PloneHotfix20170117 page. If that still needs a CVE ID, please let
us know.

In the http://lucumr.pocoo.org/2016/12/29/careful-with-str-format/ post,
the exploitation scenarios are:

>     untrusted translators on string files. This is a big one because
>     many applications that are translated into multiple languages will
>     use new-style Python string formatting and not everybody will vet
>     all the strings that come in.

We do not feel that a CVE would have been needed if this were the only
exploitation scenario. We do not think there is a security boundary
between "people who can contribute arbitrary code to a product" and
"people who can contribute code that expresses translations." However,
it is possible that an open-source project exists somewhere with a
completely untrusted channel for translators.

>     user exposed configuration. One some systems users might be
>     permitted to configure some behavior and that might be exposed as
>     format strings. In particular I have seen it where users can
>     configure notification mails, log message formats or other basic
>     templates in web applications.

This one seems completely valid, and might be the primary exploitation
scenario for CVE-2017-5524.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJYf5iGAAoJEHb/MwWLVhi27kcQAJHT6gBPBNBX+bevBoRdfS2h
NtBgjZrd1s2KVCPnCdZGfnayAFz4nhtaSPul1riqH4on/krV9QkxZmRXxV/8R8ic
IfmTWjg4DRuzYYwSGKKhrlNQa4OVWFVT/us4Rv4XDJwPTOXpf5qKFGjisp7udw8i
SmFFTEYUV6r26ons2Q5u5RQenmiml3gdiS48XTQ5RFVXRNRKpCeswM1E+kG+S6bV
G4Bx8QYUcRvCrRV2W1gEEjxBiI65FyOBQTX3jDg/N7DSn9v4dX4gZaSrbUaHIqLB
YAzuTD4liH/G3ABAUQf3C2uiGEYbDUjGb4v5DFptcGr+xHMx3gtak3sJS+BS2mXq
nrClrpO9BBoYFgQxV6QRTAEpuDoiAfcv6lB/Uj4/90Ub+hrqf94uqyS6XlGzyaxq
r8kWPiVuUf8YbUVfT5H5YSeRZVH1gMK16Mci/4EWw3Al25CuK+HwrIZT/oA7ljez
BL+zGzDGMPoIsHmge+PIS9yEbRvZ05Bim8p4yCE/0nFpWhipALEhNshADgVpkLME
338NhrrW1fyNQoOCggacrcHp51hqpaAVRzJ5yM8DTmMz+SmAGhq2vemqFageQkyr
B+P3VsnBCEFofULAXPgYYN1+Ub4tkWaO3enYCZ2YJIFe/Zj6ysKLnEW42l2edRNz
T2eqS7U/9gxzMdHRkqIn
=97Au
-----END PGP SIGNATURE-----
