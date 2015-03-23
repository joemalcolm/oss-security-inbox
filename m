X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2091" "Monday" "23" "March" "2015" "03:33:19" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20150323073319.4AAA534E02E@smtpvbsrv1.mitre.org>" "50" "[oss-security] Re: Assign a CVE for Python's restkit Please" nil nil nil "3" "2015032307:33:19" "[oss-security] Re: Assign a CVE for Python's restkit Please" (number mark "        cve-assign@m Mar 23   50/2091  " thread-indent "\"[oss-security] Re: Assign a CVE for Python's restkit Please\"\n") "<A53603BE-7F57-47FA-A462-C044166C2DF1@stufft.io>" ("<A53603BE-7F57-47FA-A462-C044166C2DF1@stufft.io>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 15541 invoked by uid 550); 23 Mar 2015 07:33:35 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 15508 invoked from network); 23 Mar 2015 07:33:31 -0000
In-Reply-To: <A53603BE-7F57-47FA-A462-C044166C2DF1@stufft.io>
Message-Id: <20150323073319.4AAA534E02E@smtpvbsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Mon, 23 Mar 2015 03:33:19 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: Assign a CVE for Python's restkit Please
To: donald@stufft.io

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

> does not properly validate TLS (see
> https://github.com/benoitc/restkit/issues/140). It appears to simply
> use ssl.wrap_socket from the standard library, which does not do any
> validation by default. This can be verified by doing:
> 
>     >>> from restkit import request
>     >>> r = request("https://tv.eurosport.com/")
>     >>> r.body_string()
>     '<HTML><HEAD>...'

As far as we can tell, what you mean is that
https://docs.python.org/2/library/ssl.html says "the default settings
of the ssl module are not necessarily appropriate for your
application" and therefore it was the responsibility of the restkit
developer to handle validation, because the goals of restkit include
completely general access to all https URLs. In other words, it
appears that your position is that it is acceptable for
ssl.wrap_socket to have cert_reqs=CERT_NONE as a default, because this
is fully documented and because there's an easy-to-notice "Warning"
paragraph. This seems reasonable (although potentially controversial).

Use CVE-2015-2674.

Also, our understanding is that this does not overlap CVE-2014-9365:
the CVE-2014-9365 changes did not have any effect on whether
ssl.wrap_socket uses CERT_NONE.

Finally, your message didn't explain why https://tv.eurosport.com/ was
used: apparently, tv.eurosport.com is an example of a live web site
with a certificate-name mismatch.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.14 (SunOS)

iQEcBAEBAgAGBQJVD8FtAAoJEKllVAevmvmsECQH/jYqJ6xNdy66zSRZmh+hawzB
U+xxuZ7VWzVPLfPNdoA84PoSe5+xJineh8dIX3bHHHA98cy7DfYxBP2LpcFASQqP
3QFcX5q+O0ZGrxTtEnVvD9O0UEQ9iN/aEuQYMY7qr7RK8qEDbm7/homm9AD3gM0w
qnDsiluj17R2hyKvM5gto1lYsdZB5pCFt8inW/uAjKpnrb1opLamh7DG78bVnqzC
RJ2K0lEca5u9F03GPnXCEcllWiFewCUUnZWJFGUZiOV+yDbcakzMPQnr1OUWkxd/
zZm5l5RYdRbTFIJWjALQckj6s0sYpcsJFL9U5UmkSeY8db2sZ8D+L1gcrIa/XCo=
=rQbd
-----END PGP SIGNATURE-----
