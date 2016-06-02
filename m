X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2314" "Thursday" "2" "June" "2016" "12:18:14" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160602161814.9F65C42E023@smtpvbsrv1.mitre.org>" "49" "[oss-security] Re: CVE request: DoS in phantomjs 2.1.1 rasterizing websites" nil nil nil "6" "2016060216:18:14" "[oss-security] Re: CVE request: DoS in phantomjs 2.1.1 rasterizing websites" (number mark "U       cve-assign@m Jun  2   49/2314  " thread-indent "\"[oss-security] Re: CVE request: DoS in phantomjs 2.1.1 rasterizing websites\"\n") "<CACn5sdRoP9Aek2NFS84gCQjiNA-cK0udHRZaZxsJ4mq2ivR81Q@mail.gmail.com>" ("<CACn5sdRoP9Aek2NFS84gCQjiNA-cK0udHRZaZxsJ4mq2ivR81Q@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 8034 invoked by uid 550); 2 Jun 2016 16:18:27 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 8015 invoked from network); 2 Jun 2016 16:18:27 -0000
From: cve-assign@mitre.org
To: gustavo.grieco@gmail.com
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <CACn5sdRoP9Aek2NFS84gCQjiNA-cK0udHRZaZxsJ4mq2ivR81Q@mail.gmail.com>
Message-Id: <20160602161814.9F65C42E023@smtpvbsrv1.mitre.org>
Date: Thu,  2 Jun 2016 12:18:14 -0400 (EDT)
Subject: [oss-security] Re: CVE request: DoS in phantomjs 2.1.1 rasterizing websites

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> A denegation of service vulnerability was found in phantomjs when it
> is processing a particular svg file. This crash caused by a null
> pointer dereference can be easily used by a malicious website to
> avoid rasterizing when it is crawled using phantomjs 2.1.1. Previous
> versions like 1.9.x are not affected. A reproducer is available here:
> 
> https://github.com/ariya/phantomjs/issues/14244

Please provide more information about the threat model. Do you mean
that a single PhantomJS process is commonly used to access a series of
independently operated web sites, and the operator of any one web site
could disrupt this use case by placing the crafted SVG file on their
site? Or, do you mean that the only known impact is that one web-site
operator could prevent PhantomJS access (e.g., screenshotting) of
their own web site by using the crafted SVG file -- in other words,
the crash would not realistically disrupt any use of PhantomJS by the
same client to access other web sites?

Is ongoing use of PhantomJS disrupted only in the
http://phantomjs.org/api/webserver/ case? In other words, any one
web-site operator could crash the web server within PhantomJS, and
there would be an outage until the web server within PhantomJS is
manually restarted?

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJXUFvYAAoJEHb/MwWLVhi2qSAP/ieu7bSO3I9bPOqkc5+5YkI3
/rjZASGY/nV5BCoDv0F7uv3AAKQYd+EzKoa9Nu6soOo2LCnhE4TdFL9VhdJQcSLk
UwGcx+Iqk/s44igsWML2GnTOsSldxzLHKP9a1IDYj+lU+kZ07yYXytUlx1bbKJNZ
w2nzT2+sn4V0pHkRMx0a8YkugzTJzD2MGkYxDsLUh0aTDvbA/U53S20obYe7wJjq
xwinllQRW8cE/Rf0yglxbJpBeV3/dsdOcKC/lnNYbvGMDYWe3t8DIpqVdDXM7nlg
NfqfDU7pl9q31FpEmxnSzTi7MmnWimgQbxAT/Jpi59sGIx0+XE9KqNdwPpj4YQYT
FCUujyJBNNdU0+yLHi5NHb6fsT65Wq3AaTK/10220siLAfFfNU11bT/nIUv572Aa
j81M04BwotyzuQE76MRrXZKswncHyYJZPY5LCvr4KfBntwBfxwJx/xxdSPOtQA59
mkV1gvVBbL+ANJUZOPuiRNTi95UCTi4z9CEfNgIONCMxtLIvCJZ65QGDGvL+kV8o
ko8+W5/7FWR2j53AhxGYICoiXlLc/v3OVektEx5LwFxp6Mc6IFqhbsnIy6m+p8NU
JQVoDfj1NLy+oRzh+7aysYFOUxqAMU20fQLReZNfBmvjRz9DPiYnsZcmd8igYP6K
4QzOCYC0rF1y6PbhjAd0
=2USQ
-----END PGP SIGNATURE-----
