X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1622" "Thursday" "25" "June" "2015" "07:46:15" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20150625114615.B19FA52E0C9@smtpvbsrv1.mitre.org>" "39" "[oss-security] Re: CVE request: Wesnoth authentication information disclosure" nil nil nil "6" "2015062511:46:15" "[oss-security] Re: CVE request: Wesnoth authentication information disclosure" (number mark "        cve-assign@m Jun 25   39/1622  " thread-indent "\"[oss-security] Re: CVE request: Wesnoth authentication information disclosure\"\n") "<2121534.CC5M7bqt55@nanacore>" ("<2121534.CC5M7bqt55@nanacore>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 1917 invoked by uid 550); 25 Jun 2015 11:46:28 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 1899 invoked from network); 25 Jun 2015 11:46:27 -0000
In-Reply-To: <2121534.CC5M7bqt55@nanacore>
Message-Id: <20150625114615.B19FA52E0C9@smtpvbsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Thu, 25 Jun 2015 07:46:15 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE request: Wesnoth authentication information disclosure
To: shadowm2006@gmail.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

> the function did not explicitly disallow files with the .pbl
> extension. The contents of these files could thus be stored in saved game
> files or even transmitted directly to other users in a networked game. Among
> the information that's compromised is a user-defined passphrase used to
> authenticate uploads to the game's content server.

>  * Original fix for lowercase extensions only:
>    https://github.com/wesnoth/wesnoth/commit/f8914468182e8d0a1551b430c0879ba236fe4d6d

Use CVE-2015-5069 for the vulnerability in versions before 1.12.3 that
allowed access upon supplying a pathname ending in .pbl (lowercase).


>  * More general, correct fix:
>    https://github.com/wesnoth/wesnoth/commit/b2738ffb2fdd2550ececb74f76f75583c43c8b59

Use CVE-2015-5070 for the vulnerability in versions 1.12.3 and earlier
that allowed access upon supplying a pathname ending with a mixed-case
or uppercase .pbl.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.14 (SunOS)

iQEcBAEBAgAGBQJVi+mXAAoJEKllVAevmvmsGaIIAIIzteLwsh5u6Ttwgt4wevWs
4p9zkaTwz5ly0NNRe/uB3MZrqUya8trLNPsqqGMqdNxcYXicDaWwP9VnOggAGplc
B+Qi1cpIek2rELlLHRvja8i9HJfFqJ4R1Tn7laff6oMZO0Arw8Dyh6uKowcz9Sqs
n5s3D1iP/NZqo7hVjqL4Nm1naO7tj4wGRVOo31zgwrP6Lw+ohQtzB9Hc5ZPY28vH
D/gUlfHYnyXq5u/pSIMmCJUhmVwnoRbAonrkwcu07sfoKGWN9O4swgJSJybY5Nse
1dSztK97/kcyF5Txm8tNamL1wElnhnfNkJcR9x37bhCKBGaO+oW6K8CdJ6RmTEk=
=yk02
-----END PGP SIGNATURE-----
