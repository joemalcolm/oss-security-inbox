X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2110" "Thursday" "4" "June" "2015" "16:52:06" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20150604205206.753EF8BC034@smtpvmsrv1.mitre.org>" "46" "[oss-security] Re: CVE requests / Advisory: Codestyling Localization (Wordpress plugin) - multiple RCE via CSRF, multiple XSS" nil nil nil "6" "2015060420:52:06" "[oss-security] Re: CVE requests / Advisory: Codestyling Localization (Wordpress plugin) - multiple RCE via CSRF, multiple XSS" (number mark "        cve-assign@m Jun  4   46/2110  " thread-indent "\"[oss-security] Re: CVE requests / Advisory: Codestyling Localization (Wordpress plugin) - multiple RCE via CSRF, multiple XSS\"\n") "<CAD3CanenHhNaYu6koiNheG0w=n31ybLFw0hZt+bZar1nkkBgfA@mail.gmail.com>" ("<CAD3CanenHhNaYu6koiNheG0w=n31ybLFw0hZt+bZar1nkkBgfA@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 15642 invoked by uid 550); 4 Jun 2015 20:52:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 15620 invoked from network); 4 Jun 2015 20:52:17 -0000
In-Reply-To: <CAD3CanenHhNaYu6koiNheG0w=n31ybLFw0hZt+bZar1nkkBgfA@mail.gmail.com>
Message-Id: <20150604205206.753EF8BC034@smtpvmsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Thu,  4 Jun 2015 16:52:06 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE requests / Advisory: Codestyling Localization (Wordpress plugin) - multiple RCE via CSRF, multiple XSS
To: mattd@bugfuzz.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

> The plugin contains multiple AJAX actions that, while having the
> necessary permission checks, do not have anti-CSRF protection

It appears that the main vulnerability you are reporting is the
multiple CSRF. Use CVE-2015-4179.

In reading your advisory, we weren't able to determine if there are
any realistic scenarios in which an authenticated user would
intentionally use csp_po_scan_source_file or csp_po_save_catalog_entry
for RCE (i.e., scenarios that do not involve CSRF) and thereby obtain
additional access to the server machine. We think you may mean
scenarios in which the authenticated user has the manage_options
capability but not the edit_plugins capability.

(As always, to obtain multiple CVE IDs for a report, it is useful to
describe all of the substantially distinct scenarios, not only the
scenarios in which risk is greatest.)

Also, we did not understand whether the "Multiple XSS in various AJAX
actions ... reflected unescaped POST parameters in certain AJAX
actions' responses" issue is independently relevant. Do you mean that
there is unescaped reflection regardless of whether the AJAX action is
authorized? More specifically, if all of the CSRF issues in the plugin
were fixed in a normal way, would unauthenticated attackers be able to
conduct XSS attacks by hosting JavaScript code that forces an
administrator's browser to make a POST request without a nonce?

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.14 (SunOS)

iQEcBAEBAgAGBQJVcLnjAAoJEKllVAevmvmsH/EH+gJtzMpmfDSZvNRUMm+FvmwE
iKxnRF2dgbNddMflDOSs7PopaJNVqkrSCvRdU+0Aa1WTpzw53rGUMQaWE4B0G4yl
zhT7AdqrKwdyHPgPZRlB6eWHP0BYrMUxxnGCFUqNrbAxLoo56li7qvh/chngdK/P
bHwsqzH99SuwcAxkkIt5tKR6b0nuE9H4Y8VTCo6Ixtdwv+R9Rv+pc8vfBpfYR2WD
zJnzln93P00jjGeuzl2U4pfuAI0gWztvPPc9HxwuQ+mMLUjrsQiLE709wyz6+hL8
T5ihleND805qmlIMKPRWcEyDJKY4aWPdiasVTupWGDtUKhNzhVlBh0WPvo6GofM=
=yWSh
-----END PGP SIGNATURE-----
