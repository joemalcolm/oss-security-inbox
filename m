X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1553" "Sunday" "31" "May" "2015" "08:23:15" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20150531122315.714A5B2E0A2@smtpvbsrv1.mitre.org>" "44" "[oss-security] Re: CVE request: XSS and CSRF in WP Smiley plugin for WordPress" nil nil nil "5" "2015053112:23:15" "[oss-security] Re: CVE request: XSS and CSRF in WP Smiley plugin for WordPress" (number mark "U       cve-assign@m May 31   44/1553  " thread-indent "\"[oss-security] Re: CVE request: XSS and CSRF in WP Smiley plugin for WordPress\"\n") "<20150529114001.GB739@nixu.com>" ("<20150529114001.GB739@nixu.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 27854 invoked by uid 550); 31 May 2015 12:23:28 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 27836 invoked from network); 31 May 2015 12:23:27 -0000
From: cve-assign@mitre.org
To: Henri.Salo@nixu.com
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com, joni.hauhia@nixu.com
In-Reply-To: <20150529114001.GB739@nixu.com>
Message-Id: <20150531122315.714A5B2E0A2@smtpvbsrv1.mitre.org>
Date: Sun, 31 May 2015 08:23:15 -0400 (EDT)
Subject: [oss-security] Re: CVE request: XSS and CSRF in WP Smiley plugin for WordPress

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

> Product: WordPress plugin wp-smiley
> Plugin page: https://wordpress.org/plugins/wp-smiley/
> Vulnerable Versions: 1.4.1

Your message didn't mention the direct impact of an unauthorized
change to the s4w&#45;more field.

We think you mean something like:

  The vulnerabilities are independent because:

  - if only the CSRF were fixed, then an editor could
    intentionally conduct an XSS attack against an Administrator

  - if only the XSS were fixed, then an attacker could trigger use of
    their own text for a "More" button within the plugin, e.g.,
    by replacing the default word "More" with the attacker-supplied
    word "0wned" - and this would be visible to all site visitors

In that case:

Vulnerability Type:
  CWE-79: Cross-site scripting          CVE-2015-4139
  CWE-352: Cross-Site Request Forgery   CVE-2015-4140

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.14 (SunOS)

iQEcBAEBAgAGBQJVavy/AAoJEKllVAevmvmsWe8H/RslzPq3sXdq7b3XlwYNee4R
tUchh3Qbj6T8mmght34qr1l6uFoqgiZU54kYIoZ8nzwzMFqO/ZJzryQyQekOWcw3
kWWJMG/0u7rm6hrrwCFcqfqKAsSloKyDJPr1LVBNdMAKOaVsMa21GtgyUGKXihcc
Nz16spkjHzjnsdVsCHM/MhQYSip8/lw5ldwmKKgzVujnhXo1/fpW+iEIEjHejS77
2hvTWTaSg/xd+fPCV0trUhQuhAVl6R1dXelv/AXjqXDapZSqgXvoH/0r4/csGFtY
izDxqGR6cUgOR2Zyw2KBfHyc/IWmVSKP8SJf7JrkCud34ukcP0Qwde/BZbacATU=
=h122
-----END PGP SIGNATURE-----
