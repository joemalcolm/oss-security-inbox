X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2628" "Wednesday" "2" "December" "2015" "12:13:16" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20151202171316.74D4C52E0AA@smtpvbsrv1.mitre.org>" "57" "[oss-security] Re: shellinabox - DNS rebinding attack due to HTTP fallback" "^Cc:" nil nil "12" "2015120217:13:16" "[oss-security] Re: shellinabox - DNS rebinding attack due to HTTP fallback" (number mark "        cve-assign@m Dec  2   57/2628  " thread-indent "\"[oss-security] Re: shellinabox - DNS rebinding attack due to HTTP fallback\"\n") "<20151202102921.GQ2610@core.inversepath.com>" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 1958 invoked by uid 550); 2 Dec 2015 17:13:35 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 1888 invoked from network); 2 Dec 2015 17:13:29 -0000
In-Reply-To: <20151202102921.GQ2610@core.inversepath.com>
Message-Id: <20151202171316.74D4C52E0AA@smtpvbsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Wed,  2 Dec 2015 12:13:16 -0500 (EST)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: shellinabox - DNS rebinding attack due to HTTP fallback
To: andrea@inversepath.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> https://github.com/shellinabox/shellinabox/issues/355

As far as we can tell, "Stephen Roettger from the Google Security Team
reported to us" means that the report was sent to you in your role as
a maintainer of usbarmory, not in anyone's role as a maintainer of
shellinabox. The case for considering this a shellinabox vulnerability
report (rather than a shellinabox improvement suggestion) may be
marginal.

We decided to assign CVE-2015-8400 for a vulnerability in shellinabox.
This same CVE ID can be used by anyone (such as usbarmory) who makes a
security announcement in direct response to the vulnerability,
regardless of whether the announcement is about removing the package
or changing the package.

The basic rationale is that 'allows HTTP fallback, even when
configured for HTTPS, via the "/plain" URL' is apparently undocumented
(and has the stated security risk). If there had been something in
https://github.com/shellinabox/shellinabox/wiki/shellinaboxd_man or
even a source-code comment saying why the behavior had been chosen
despite the risk, the outcome may have been different. There are
various other choices in shellinaboxd that may seem unusual to people
unfamiliar with the product's use cases, e.g.,

  Unless SSL certificates can be found in the current directory, the
  daemon will automatically generate suitable self-signed
  certificates. ... the use of auto-generated self-signed certificates
  is intended for testing or in intranet deployments

(Someone could conceivably argue that "automatically generate" should
not be a default behavior.)

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJWXyYvAAoJEL54rhJi8gl5HHIQALCaT0oJcosS7cuES5nBei+1
gAakY0/tDSun231wnkRbG0D8r4OIYB9rsQRwCe8uJgompSkVpt3EvwQKwwkyOoQx
EqqXELBUNjeGo08XX9g4QDJ0Vi0rNm6XFQBvXqhAkIHcy12QLQ5uAS2h9oRPn6gA
/IT4KaIVxclvHTfYcTImBCWL3AS4WEcRNw2Ws0Ua8i4ZUCRZ2nq0VCztEV358JvX
4Rmw/0ZoudB2LUFFCOwCFohksyGvvct24e1aXz9m5jhxL5+yzrhAH3g50o8imzhI
jHm+LZz8T4MGQfQ8zw5dnMtJwL4BymZQKODmrjzgJZKk/URBvTRi7CjX6kR2f51C
gMABfQhOKKsF/ttOz2etKPvGQA47rIVnlsEmBYX62jZoRR6DcJURsXyw0qYMmzms
q0L/QAUKpy8OonZGQrxPcYa1DjVU47cbkew4iCuKYeyIcMFcflek3HU8Q+OxYk56
InyfFgXoU8VCG2+WQCglKRnkdOPU0RSaZqFDsWz2lAx2nVC4fkoZVnrLM7TPg4ua
0mqD46TSvoOM6sOwT6WXmO7PBP0DsiHPZqtHmnh0+bOTMjnSIEYgd+nw4GA2drSt
GOzMfxkf18YW9SgCvRPb97vomQuQykF6Om8jtlFQxOyVDk5UKYkmHpnHttp6n80o
dP0FvxlIGCMoiTJJA+24
=fFkK
-----END PGP SIGNATURE-----
