X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3773" "Tuesday" "17" "March" "2015" "13:24:31" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20150317172431.E3EBC6C0029@smtpvmsrv1.mitre.org>" "87" "[oss-security] Re: Mono TLS vulnerabilities" nil nil nil "3" "2015031717:24:31" "[oss-security] Re: Mono TLS vulnerabilities" (number mark "        cve-assign@m Mar 17   87/3773  " thread-indent "\"[oss-security] Re: Mono TLS vulnerabilities\"\n") "<54FAE77A.1000901@apebox.org>" ("<54FAE77A.1000901@apebox.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 28434 invoked by uid 550); 17 Mar 2015 17:24:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 28371 invoked from network); 17 Mar 2015 17:24:43 -0000
In-Reply-To: <54FAE77A.1000901@apebox.org>
Message-Id: <20150317172431.E3EBC6C0029@smtpvmsrv1.mitre.org>
Cc: cve-assign@mitre.org, directhex@apebox.org
Date: Tue, 17 Mar 2015 13:24:31 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: Mono TLS vulnerabilities
To: oss-security@lists.openwall.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

> A TLS impersonation attack was discovered in Mono's TLS stack by
> researchers at Inria. During checks on our TLS stack, we have
> discovered two further issues which we have fixed - SSLv2 support, and
> vulnerability to FREAK. These vulnerabilities affect basically every
> Mono version ever released.
> 
> All three issues should be addressed in the following patches:
> 
> https://github.com/mono/mono/commit/1509226c41d74194c146deb173e752b8d3cdeec4
> https://github.com/mono/mono/commit/9c38772f094168d8bfd5bc73bf8925cd04faad10
> https://github.com/mono/mono/commit/b371da6b2d68b4cdd0f21d6342af6c42794f998b
> 
> These patches should apply to all Mono versions from 3.4.0 or so
> onwards. The EXPORT cipher removal patch requires slight modification
> in order to apply to Mono releases prior to 3.x -
> https://gist.github.com/directhex/728af6f96d1b8c976659 should work for
> these users. The Impersonation patch requires slight modification to
> apply to Mono releases prior to 3.4 -
> https://gist.github.com/directhex/f8c6e67f551d8a608154 should work

As far as we can tell, this can be interpreted as a request for CVE
IDs for vulnerabilities in Mono, which has its own independent SSL/TLS
implementation.

The message is about three patches, but the patches are mentioned with
inconsistent terminology. What we think was meant is:

https://github.com/mono/mono/commit/1509226c41d74194c146deb173e752b8d3cdeec4

The commit message says "TLS protocol: add handshake state validation"
but this is also referenced as "The Impersonation patch" and "A TLS
impersonation attack was discovered in Mono's TLS stack by researchers
at Inria." Although there isn't a description of what impersonation
vulnerability existed, almost certainly it is "SKIP-TLS ... Mono:
default TLS library vulnerable to client impersonation. Version 3.12.1
prevents the attack" as listed on the https://www.smacktls.com web
site.


https://github.com/mono/mono/commit/9c38772f094168d8bfd5bc73bf8925cd04faad10

The commit message says "Remove the EXPORT ciphers and related code
path" - this directly matches "The EXPORT cipher removal patch" but it
is apparently also referenced as "FREAK patch" and "vulnerability to
FREAK." (It is conceivable that
1509226c41d74194c146deb173e752b8d3cdeec4 would also be applicable to
FREAK attacks.)


https://github.com/mono/mono/commit/b371da6b2d68b4cdd0f21d6342af6c42794f998b

The commit message says "Remove the client-side SSLv2 fallback," which
apparently matches both "SSLv2 support" and "SSLv2 patch." MITRE does
currently accept reports from authors of SSL/TLS code who want to
characterize their own SSLv2 support, after a recent drop of support,
as a vulnerability (i.e., "These vulnerabilities affect ..." in
http://www.openwall.com/lists/oss-security/2015/03/07/2 together with
https://uk.linkedin.com/in/directhex).


Use CVE-2015-2318 for the https://www.smacktls.com SKIP-TLS issue in
Mono.

Use CVE-2015-2319 for the https://www.smacktls.com FREAK issue in
Mono.

Use CVE-2015-2320 for b371da6b2d68b4cdd0f21d6342af6c42794f998b.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.14 (SunOS)

iQEcBAEBAgAGBQJVCGJ7AAoJEKllVAevmvmsBbUH/j0DEf0vfW282XefkhvCGHdY
gDcUlyVWgeBk/GJ0FXRsycYmZWrsL5YSJpWnIrK4cXXNaB46cgvu7U3bN5HQPj2p
MQyJ/WlR0EpDvjTMvzZTPGbNcrBo4jQIkOoB4J6dby75OXrSjmTVLPFXMiqvBdYV
eAAjOd0ZPGVLJom8K2mJKkiD6T94p7wkH4bJXejAQk5V4VWRK2xVjMHsZv2csuA1
EjoMSd8v78T6jPyLjh/nuw9mn8YD9ikdh+2jJax7JIOHKykylzlkyE3288vMY9Pc
LD8zsFrezUW7EgInBh0OUZExNuNEfyzBxyl4rvVcsOI4lXFi63jGcSDh9rgK7VQ=
=JinB
-----END PGP SIGNATURE-----
