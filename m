X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2588" "Tuesday" "4" "August" "2015" "14:42:56" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20150804184256.C8CD472E04C@smtpvbsrv1.mitre.org>" "88" "[oss-security] Re: CVE request: WordPress 4.2.3 and earlier multiple vulnerabilities" nil nil nil "8" "2015080418:42:56" "[oss-security] Re: CVE request: WordPress 4.2.3 and earlier multiple vulnerabilities" (number mark "        cve-assign@m Aug  4   88/2588  " thread-indent "\"[oss-security] Re: CVE request: WordPress 4.2.3 and earlier multiple vulnerabilities\"\n") "<20150804123051.GA27639@lakka.kapsi.fi>" ("<20150804123051.GA27639@lakka.kapsi.fi>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 9986 invoked by uid 550); 4 Aug 2015 18:43:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 9962 invoked from network); 4 Aug 2015 18:43:10 -0000
In-Reply-To: <20150804123051.GA27639@lakka.kapsi.fi>
Message-Id: <20150804184256.C8CD472E04C@smtpvbsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Tue,  4 Aug 2015 14:42:56 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE request: WordPress 4.2.3 and earlier multiple vulnerabilities
To: henri@nerv.fi

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> Can I get CVE for WordPress 4.2.3 and earlier multiple vulnerabilities

> https://codex.wordpress.org/Version_4.2.4 says:
> 
> "WordPress 4.2.4 fixes three cross-site scripting vulnerabilities and a
> potential SQL injection that could be used to compromise a site
> (CVE-2015-2213)."

The correct parsing of that sentence is like:

  WordPress 4.2.4 fixes three cross-site scripting vulnerabilities and
  [a potential SQL injection that could be used to compromise a site
  (CVE-2015-2213)]

not like:
  
  [WordPress 4.2.4 fixes three cross-site scripting vulnerabilities and
  a potential SQL injection that could be used to compromise a site]
  (CVE-2015-2213)

See below for the set of 6 CVE IDs that correspond to the currently
available information.

> https://core.trac.wordpress.org/changeset/33555
> https://core.trac.wordpress.org/changeset/33556
> "Comments: IDs are integers"

Use CVE-2015-2213 only for this SQL injection issue.


> https://core.trac.wordpress.org/changeset/33535
> https://core.trac.wordpress.org/changeset/33536
> "Customizer: Use hash_equals() for widgets" aka "a fix for a
> potential timing side-channel attack"

Use CVE-2015-5730.


> https://core.trac.wordpress.org/changeset/33542
> https://core.trac.wordpress.org/changeset/33543
> "Heartbeat: Ensure post locks are released" aka "prevents an attacker
> from locking a post from being edited"

Use CVE-2015-5731.



> cross-site scripting vulnerabilities



> https://core.trac.wordpress.org/changeset/33529
> "Nav menus: Consistent titles in widgets"

Use CVE-2015-5732.


> https://core.trac.wordpress.org/changeset/33540
> https://core.trac.wordpress.org/changeset/33541
> "Nav menus: Adjust redundant titles in accessibility helpers"

Use CVE-2015-5733.


> https://core.trac.wordpress.org/changeset/33549
> "Themes: Fix some broken links in the legacy theme preview."

Use CVE-2015-5734.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQEcBAEBCAAGBQJVwQcxAAoJEKllVAevmvmsQg8H/3xFZy/FzLYeOJh9oQS0NmYc
gjVMTeiG5eWf+rlw2hHu/caJLNC0lQGJOdhp5IjKmt0YmNA6Uai5WVkK9NtfJQEu
9WdPEWQXiHxf2qenhYZOOUedWDwxxx2B2X6NRbAMsfa61yYS0iyU8/CCXKEb28sn
pHMfAO+a7ejhbXE589mrRTBckmKmVWkpNjE/dzKP1CBxroj3AXBfyhzIzSkZ8FRw
cfAYY9AfKDYZpxY0BGPF/TuxFq06ptxp+oHcTj6bEAj0F1CmgcprKf44v232X0mR
+aLhA6W2dBfMzY2k9MwNhpQznldai0lto/XEjiAA67JqduWoZP87b44Jr7wNKpE=
=MlpN
-----END PGP SIGNATURE-----
