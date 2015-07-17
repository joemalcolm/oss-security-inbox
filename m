X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2171" "Friday" "17" "July" "2015" "13:20:19" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20150717172019.4BBA26C0013@smtpvmsrv1.mitre.org>" "49" "[oss-security] Re: Squid HTTP proxy CVE request" nil nil nil "7" "2015071717:20:19" "[oss-security] Re: Squid HTTP proxy CVE request" (number mark "        cve-assign@m Jul 17   49/2171  " thread-indent "\"[oss-security] Re: Squid HTTP proxy CVE request\"\n") "<559A65F3.80103@treenet.co.nz>" ("<559A65F3.80103@treenet.co.nz>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 3752 invoked by uid 550); 17 Jul 2015 17:20:31 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 3729 invoked from network); 17 Jul 2015 17:20:30 -0000
In-Reply-To: <559A65F3.80103@treenet.co.nz>
Message-Id: <20150717172019.4BBA26C0013@smtpvmsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Fri, 17 Jul 2015 13:20:19 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: Squid HTTP proxy CVE request
To: squid3@treenet.co.nz

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

>  - the "must" in "must be denied". "should" would be closer. It has been
> a public issue for a long time and to our knowledge no actual DoS has
> occured.

>  - other products had issues with client certificate authentication.
> None so far for us. If that is complained about we will likely re-enable
> it for that specific use case.


> When the OpenSSL library provides that flag definition, we set it

The case is somewhat unusual, but we feel that this seems "too
optional" to have a CVE ID.
http://wiki.squid-cache.org/SquidFaq/CompilingSquid doesn't tell the
user that the OpenSSL library (when an old version is used) must be
configured in a certain way to address a Squid vulnerability.
Admittedly, a user might have already -- for an unrelated reason --
configured OpenSSL to disable client-initiated renegotiation, and
might have an expectation that there would be (in effect) propagation
of this choice into a Squid build. We feel that this isn't an obvious
expectation, especially because that type of propagation isn't
automatic: it requires that an OpenSSL-based product have
application-specific code to support the propagation.

There's no CVE ID for now. If there's a future case where either the
official Squid distribution, or a repackager, decides to
unconditionally force "defined(SSL3_FLAGS_NO_RENEGOTIATE_CIPHERS)" to
be true as a vulnerability fix for an OpenSSL 0.9.8l-1.0.2
environment, then a CVE ID should then be available.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.14 (SunOS)

iQEcBAEBAgAGBQJVqTjaAAoJEKllVAevmvmsB2QH/irNR+AYV7bea/MTN3GdJymn
NqP9rlZXtfIDUuDnjJ24bg4+CYcglhbt4kK5rbGl4TBAFY6dd1YCZHwYR29iPPEE
lhTeuPXmlwWIDCyxN/tsdptvbatjrax8P0vc/7UAO0YgSSHTWPATrdCqZ1v03oYO
IPeB/Yd4Axk406h8HoKYIwnawr6ifjILlRDDL8io5fh6PXU3nJdwPeLjwPLbtXH6
tpDAPFhysF5YhZ4tNJxTOeIULS3D79M/wMn/+KpP3PQOFf+8RJY5Obg+KFKQ6XCk
/zDsppAMtcjQIduWiLxZHTU0bzaWidWpEM7ODSe6TEnBk8DATfMc06rapZNdoqo=
=L1eB
-----END PGP SIGNATURE-----
