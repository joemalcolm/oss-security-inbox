X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1124" "Wednesday" "24" "June" "2015" "21:21:06" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20150625012106.1E8F8B2E283@smtpvbsrv1.mitre.org>" "31" "[oss-security] Re: CVE Request for Wordpress-Plugin Broken Link Checker v1.10.8: Persistent XSS in admin panel enabled by modified headers" nil nil nil "6" "2015062501:21:06" "[oss-security] Re: CVE Request for Wordpress-Plugin Broken Link Checker v1.10.8: Persistent XSS in admin panel enabled by modified headers" (number mark "        cve-assign@m Jun 24   31/1124  " thread-indent "\"[oss-security] Re: CVE Request for Wordpress-Plugin Broken Link Checker v1.10.8: Persistent XSS in admin panel enabled by modified headers\"\n") "<558AC98E.4070709@hsasec.de>" ("<558AC98E.4070709@hsasec.de>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 5300 invoked by uid 550); 25 Jun 2015 01:21:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 5278 invoked from network); 25 Jun 2015 01:21:17 -0000
In-Reply-To: <558AC98E.4070709@hsasec.de>
Message-Id: <20150625012106.1E8F8B2E283@smtpvbsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Wed, 24 Jun 2015 21:21:06 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE Request for Wordpress-Plugin Broken Link Checker v1.10.8: Persistent XSS in admin panel enabled by modified headers
To: disclosure@hsasec.de

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

> Persistent XSS in wordpress-admin-panel enabled by not proper sanitized
> HTTP-Headers.
> There are no special priviliges required to exploit this vulnerability.

> fixed in version 1.10.9, 2015-06-19
> https://wordpress.org/plugins/broken-link-checker/changelog/

>> Fixed a security vulnerability where part of the log data visibile in
>> the "Details" view was not properly sanitized.

Use CVE-2015-5057.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.14 (SunOS)

iQEcBAEBAgAGBQJVi1a+AAoJEKllVAevmvms/QgIAJyJGmjfYa6hrC1WGDacj6Dd
OT3keKp81n2peXJX9xoEyVmqxE6BNojePbNpG+tkrjlODB6g3Zp6wC3VnSbuxT1e
KGA0/qNtiRT30+tiEFwwbofG58UAzCKlG5k/6oB0WSJP//OsquHATkL4ayHl92yw
G7xeWOuZHhZl7jyCgapfVBLTLIrUNNB80TOiGUY3OcjL4J2PQP5AlCcqCqUcCkij
hqBWpkrSs2lbOs57K5oJRdGHlVdGEp2zXDTlXLPBbwctR0S+0BkrF1lIW2RxLmwJ
5qAuL/70t1Wj1sJ5odpMG3bMvOE2B7iTW6HCLqzQLjY8r3ADtY+o82Pa03OKHrI=
=yIkG
-----END PGP SIGNATURE-----
