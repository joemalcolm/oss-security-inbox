X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2437" "Wednesday" "17" "February" "2016" "19:22:53" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160218002253.DAAF452E03D@smtpvbsrv1.mitre.org>" "60" "[oss-security] Re: CVE Request: graphite-web: open redirect" nil nil nil "2" "2016021800:22:53" "[oss-security] Re: CVE Request: graphite-web: open redirect" (number mark "U       cve-assign@m Feb 17   60/2437  " thread-indent "\"[oss-security] Re: CVE Request: graphite-web: open redirect\"\n") "<56C4B83A.3060609@gmail.com>" ("<56C4B83A.3060609@gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3374 invoked by uid 550); 18 Feb 2016 00:23:06 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3356 invoked from network); 18 Feb 2016 00:23:05 -0000
From: cve-assign@mitre.org
To: sinkmanu@gmail.com
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com, security@debian.org
In-Reply-To: <56C4B83A.3060609@gmail.com>
Message-Id: <20160218002253.DAAF452E03D@smtpvbsrv1.mitre.org>
Date: Wed, 17 Feb 2016 19:22:53 -0500 (EST)
Subject: [oss-security] Re: CVE Request: graphite-web: open redirect

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> https://github.com/graphite-project/graphite-web/issues/1441
> 
> two OpenRedirects in /webapp/graphite/account/views.py
> 
> Proof of Concept:

>     http://graphiteSite/account/logout?nextPage=https://www.google.com

Is there a response from the author of the code indicating that this
is a vulnerability? Open redirects to http/https are not universally
considered vulnerabilities for all vendors and products, e.g.,

  https://sites.google.com/site/bughunteruniversity/nonvuln/open-redirect

is probably the most well-known counterargument.


>     http://graphiteSite/account/update
>         POST: nextPage=https://www.google.com

What is the threat model for this open redirect issue that requires a
POST request? Often, an attacker's ability to make a client submit a
POST request with an attacker-controlled parameter means that the
client is executing JavaScript code from an attacker-controlled site,
and in that case the JavaScript can send the browser to an arbitrary
http/https URL without any realistic ability of the client user to
predict that that might occur. Is there a way in which the existence
of http://graphiteSite/account/update helps the attacker to accomplish
the redirect?

> Also, inside the logout and update functions, the session should be checked.

What vulnerability are you reporting here? Are /account/logout and
/account/update vulnerable to CSRF?

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJWxQ5TAAoJEL54rhJi8gl56toP/RgPonDpkFFnaK3k2vIfRsMy
nnQzTUpalPdY3EbOv8LAhNy66ayVnUrL8ksQWtv6Y/ISU9R48ChAZGOARsbD0YTH
bN2Lnvzni5AO6NXdaNXeqyKyTKz04uB3UgTAnZRWJuLmGUXFKBD/9GZgaiykw2v3
lqPLExJdGYVncuSaKDzuh/Cqt6x6WDdL7zJK9XoqtqelrqCKCx3Evb7Zp2g6qAEd
0nnp/RyYl3X84ym2w1gxAl/O7yavHKlxT53dWB0thsy6t0DZC5STj9bYn5sgLGtj
V6c2xpVO39FpCJpjJrc41f6jr3G8cq7AY93HIpJA33E2P1B8PLiaOjgjCUAYG8Q+
fO8EEWf4hpSGcwCHvWI+/RNdMNTW/IYlnqhTwmJ8tujHfb6tqw0eKqxCZEUL5pFV
QHunbNM+UCMOZxqyGoiI/Hcvaj1iwjD1yUVHNyVkC5RjH3zvtU7lFm/ectUP5htx
cws4bX47qlHCk0S6W+B4ea/6u4Ul8mlW/F2yxa/ZP3IINjCUuyB5CbFey3MLXcoL
f5UYLEAgodYcVv4MuzYuccaEon/FVyL+i5jkZysMl/z6d7UnFAc8hdRMAdxw67wn
87naZl4uxLk74bBAkjMAiu4CT5TQ2+3d8USisYzI5c1UVLnzpTFYef7DipWQ5l1a
ZpcBByiMZgHSvw7WyKU0
=14sK
-----END PGP SIGNATURE-----
