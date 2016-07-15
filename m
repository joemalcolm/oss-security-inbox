X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2407" "Friday" "15" "July" "2016" "07:54:41" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160715115441.2B51D6C4292@smtpvmsrv1.mitre.org>" "53" "[oss-security] Re: CVE request for the Play Framework" nil nil nil "7" "2016071511:54:41" "[oss-security] Re: CVE request for the Play Framework" (number mark "U       cve-assign@m Jul 15   53/2407  " thread-indent "\"[oss-security] Re: CVE request for the Play Framework\"\n") "<CAAYo3BupQw4M1Ct5nO4UVC87TmQatCdcxbmZpaiyckMb8ws4sQ@mail.gmail.com>" ("<CAAYo3BupQw4M1Ct5nO4UVC87TmQatCdcxbmZpaiyckMb8ws4sQ@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 22243 invoked by uid 550); 15 Jul 2016 11:54:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 22221 invoked from network); 15 Jul 2016 11:54:53 -0000
From: cve-assign@mitre.org
To: dblack@atlassian.com
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <CAAYo3BupQw4M1Ct5nO4UVC87TmQatCdcxbmZpaiyckMb8ws4sQ@mail.gmail.com>
Message-Id: <20160715115441.2B51D6C4292@smtpvmsrv1.mitre.org>
Date: Fri, 15 Jul 2016 07:54:41 -0400 (EDT)
Subject: [oss-security] Re: CVE request for the Play Framework

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> In version 2.5.0 of the Play Framework a CSRF bypass that depends upon
> an implementation bug in chrome's beacon api was fixed.

We think additional information would help in deciding whether this is
commonly recognized as a Play Framework vulnerability (which would
have a CVE ID) or Play Framework security hardening (which would not
have a CVE ID). Our understanding thus far is:

  - Play Framework is not an Atlassian product

  - https://github.com/playframework/playframework/pull/5527#discussion-diff-51786858
    says "In order to make Play's CSRF filter more resilient to
    browser plugin vulnerabilities and new extensions, the default
    configuration for the CSRF filter has been made far more
    conservative."

  - Chromium issue 490015 has some debate about whether it is a
    Chrome/Chromium vulnerability, e.g., "The issue is whether it's
    the browser responsibility to act as a nanny to weak websites, or
    we should leave weak websites as sacrifice for great justice."
    versus "To be clear, this is a security bug ... There is a
    security bug in Chrome, but no action is being done."

Typically, it would be best not to have a CVE for Play Framework if
the essence of the Play Framework problem is "the product did not
proactively add workarounds for all browser-level vulnerabilities that
might be discovered later."

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJXiM35AAoJEHb/MwWLVhi2loIP/jPajrxasGvKZoI0KtBapJAR
QgeiNrem6Va0JL+j5AoTAXNWLhLCl5/geXn7GJuCGP2dt3MDKAMCQEnj2zhhjTha
FHmxzVfqOUAt3JsNZ7cium+pn6bKMybwrTQYW2YO2Vald+0JWm74QbYBLU+ZLZTn
CgSROeAwtpDvqislJLksajGn6U19L6U+S08uRWOHqEHFoeatF4xBhQySAeThvDop
QcxY0xaAnFNvv8RvYg0F6xaVcrylrkWmAmnFMt50RtfiJUXHMfzintK8ypypjQzr
DMF5So2QIbUht/fha5dpK7q3Yms3BnZ1kT2VRoCZGBFx3pY6cJ2YpdfddD4e9jdb
oOaOSK7gr7nUo4D8g/jeSHfhA1smrshrVi4dFFwFHXbj5xiF3dACzOmUBHBQ4hi6
B9RyrihdXpt1rsMAC8t3BitgaIou6yyrDRINb2hlu3OWiUFiUPNOJ314eTJWlNv9
TJcmqCM6hxM7L4/MWQp8GF+xCDpxnIWDTjrUUGbmFY1IjAIHOsXR3ctzwVdln2Sg
6ptiUPFn0hztEv1mPUVbJ/a4egATHjftNnznXNuzEdHxqwc49RwbgChsdDhkD2Kr
s990pECojFG9W22C4Ke32hXikhZfGSTuhpW06zks/dfbzxNbxPp21axAnG0uNI8i
G5NoAaXXknSzpZ/e5Dx3
=RxGV
-----END PGP SIGNATURE-----
