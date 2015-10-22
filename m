X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2011" "Thursday" "22" "October" "2015" "14:08:10" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20151022180810.411D8ABC008@smtpvmsrv1.mitre.org>" "46" "[oss-security] Re: CVE Request: invalid curve attack on bouncycastle" nil nil nil "10" "2015102218:08:10" "[oss-security] Re: CVE Request: invalid curve attack on bouncycastle" (number mark "U       cve-assign@m Oct 22   46/2011  " thread-indent "\"[oss-security] Re: CVE Request: invalid curve attack on bouncycastle\"\n") "<20151022102512.GA23523@home.ouaza.com>" ("<20151022102512.GA23523@home.ouaza.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 8181 invoked by uid 550); 22 Oct 2015 18:08:22 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 8162 invoked from network); 22 Oct 2015 18:08:21 -0000
From: cve-assign@mitre.org
To: hertzog@debian.org
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <20151022102512.GA23523@home.ouaza.com>
Message-Id: <20151022180810.411D8ABC008@smtpvmsrv1.mitre.org>
Date: Thu, 22 Oct 2015 14:08:10 -0400 (EDT)
Subject: [oss-security] Re: CVE Request: invalid curve attack on bouncycastle

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> bouncycastle versions older than 1.51 are vulnerable to an
> invalid curve attack as described in this article:
> http://web-in-security.blogspot.ca/2015/09/practical-invalid-curve-attacks.html
> 
> The attack allows to extract private keys used in elliptic curve
> cryptography with a few thousands queries.
> 
> According to upstream developer Peter Dettman, the issue has been fixed
> with those two commits:
> https://github.com/bcgit/bc-java/commit/5cb2f0578e6ec8f0d67e59d05d8c4704d8e05f83
> https://github.com/bcgit/bc-java/commit/e25e94a046a6934819133886439984e2fecb2b04

Use CVE-2015-7940.

A Bouncy Castle product intentionally has a unique CVE ID because of its
independent codebase. However, as noted in
the practical-invalid-curve-attacks.html posting, the issue is related
to CVE-2015-2613. The MITRE CVE team plans to update
http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2015-2613 to
reflect the additional information from Juraj Somorovsky.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJWKSUrAAoJEL54rhJi8gl532EP/i5pdcg7gnrde6hmPBG0i4p1
hiw0AHUkbXOZQi7X8Em7xdfRgZ4/jGVQFovQDfoB2DyDna5wgcdVgICp3cWrKDIG
v/E6UniIV1ksn7IXgY6SWEHBNoAO8NeIpeYJVXAZiQRquOv07efVbDq3UpUBF1lx
DqeN81DnnM0G7w/c39HsKsBYhgTbMK1uAQuwi0eH9X02P1DNkUB8Ppbs94TtnmFL
q8zlFEawj3XZxOL1Q/6Sxf/UnCD3l1rUilZI+etQgaDUZwBrMSR2Owcx4UD9zZPd
nyc8gL0yUSxfFz+svLcivCVq2ORFMpxpDJ4d5yTLb9dFQm2wwQN68zS/qUL9cJ8x
3VrRDdWsu2cPBfl1HPAt2th3aFNe8OKy4r4hXWWED1YfMKZsFr//hMOrrmOO197I
dm4tX42VTH2lg+nHzdts8bOVi7hIHy6+46mdEtB381cvDCKzs6af8KZU0CsvXeyH
a1S493BioNjt15jfn2MLQJx584kvaO5VLI+tGLgWksOX9aMjBMEXRk1Lnslt/fO7
K2e8NM101U0ff5+7eDr/o2EOCpIhY3uZFy5Bu2ZHPG2gi9+D8yAdx5ZyqI/KeMwO
yPQe0A3rxboxtPzJ/p3sMlPmADP8yNLxNdQINgOG3ZpzfTscmbmeDITVLsSAj1Gu
9adfN/uWSq8ehtoCeB3s
=p0IO
-----END PGP SIGNATURE-----
