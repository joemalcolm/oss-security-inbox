X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2340" "Wednesday" "29" "April" "2015" "18:33:43" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20150429223343.CD9446C0058@smtpvmsrv1.mitre.org>" "58" "[oss-security] Re: CVE request - TelescopeJS Information Leakage: User BCrypt password hash post-authentication" nil nil nil "4" "2015042922:33:43" "[oss-security] Re: CVE request - TelescopeJS Information Leakage: User BCrypt password hash post-authentication" (number mark "        cve-assign@m Apr 29   58/2340  " thread-indent "\"[oss-security] Re: CVE request - TelescopeJS Information Leakage: User BCrypt password hash post-authentication\"\n") "<CAG8UnYPVfOtdRd4G7wcUQtJdRZYJS04AcpMadL0EPj0M_wUKHA@mail.gmail.com>" ("<CAG8UnYPVfOtdRd4G7wcUQtJdRZYJS04AcpMadL0EPj0M_wUKHA@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 31866 invoked by uid 550); 29 Apr 2015 22:33:56 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 31847 invoked from network); 29 Apr 2015 22:33:55 -0000
In-Reply-To: <CAG8UnYPVfOtdRd4G7wcUQtJdRZYJS04AcpMadL0EPj0M_wUKHA@mail.gmail.com>
Message-Id: <20150429223343.CD9446C0058@smtpvmsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Wed, 29 Apr 2015 18:33:43 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE request - TelescopeJS Information Leakage: User BCrypt password hash post-authentication
To: admin@shubh.am

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

> TelescopeJS leaks the users BCrypt password hash in incoming websocket
> messages once the user has authenticated. Due to the fact that TelescopeJS
> is an expressjs web application, it uses the model of storing session
> information in the browsers localStorage.
> 
> This means that if an attacker is able to find a single cross-site
> scripting flaw in MeteorJS, they would then be able to extract the users
> password hash from incoming websocket messages. This hash could then be
> cracked.
> 
> The bcrypt hash is sent in incoming websocket messages every time the user
> object is needed by the application.
> 
> This vulnerability affects TelescopeJS installations below version 0.15.
> 
> A discussion about these issues can be found here:
> https://github.com/TelescopeJS/Telescope/issues/838
> 
> The commits leading to the fix for this flaw can be found here:
> 
> https://github.com/TelescopeJS/Telescope/blob/dd6130637c00a8166cc4647153b441cb32b7ca61/lib/publications.js#L29-L31

In this case, it appears that a primary developer of TelescopeJS (the
person at the top of the GitHub contributors list) is indicating that
the previous behavior was unsafe:

  https://github.com/TelescopeJS/Telescope/issues/838#issuecomment-85762182

Use CVE-2015-3454.

(In other cases, it is possible that an issue exploitable only after
"find a single cross-site scripting flaw" would not have a CVE ID
assigned.)

Also, as suggested by the
https://github.com/TelescopeJS/Telescope/issues/838#issuecomment-85734879
comment, lack of the HTTPOnly flag is not relevant to this product. There
is no CVE ID for that HTTPOnly issue.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.14 (SunOS)

iQEcBAEBAgAGBQJVQVvJAAoJEKllVAevmvmsgP8H/AwdIXhHywd7hzcTswbNx1aJ
mJNAPXzix/1aMU2Ptj3BaUNazeEyb+6KprV4I7ob8mXw1IEus66YQhsrUfKX46XD
bIiZ1lNNDbZeOrmygP1t4P3F2gOYq3T20R16aDxuPsGCD9JXSJulxcjqsvvHWecy
Qq7GpjTg0jBCuLOjvTIldslH9QeL4sheGdPzo4RrP66tc67X//btJ78zvwx+5r8i
eAqjrreIiF3rFae0PJj9lwn5S6FSIe8cwvN+j2oF6AVfmbHg4Ueiw/ADJ8YSqpoa
2OOXl1IkpNmHn2L2HkOsaTZ4xu3bJSty0jLBGSmZW8WTpn7TmNO1IdbYmi4AQ1w=
=LWDM
-----END PGP SIGNATURE-----
