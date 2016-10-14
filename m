X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1439" "Friday" "14" "October" "2016" "03:17:50" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20161014071750.E195342E060@smtpvbsrv1.mitre.org>" "37" "[oss-security] Re: CVE Request: another recursion in GRE" nil nil nil "10" "2016101407:17:50" "[oss-security] Re: CVE Request: another recursion in GRE" (number mark "U       cve-assign@m Oct 14   37/1439  " thread-indent "\"[oss-security] Re: CVE Request: another recursion in GRE\"\n") "<20161013161041.GR25134@suse.de>" ("<20161013161041.GR25134@suse.de>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7519 invoked by uid 550); 14 Oct 2016 09:55:54 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7492 invoked from network); 14 Oct 2016 09:55:54 -0000
From: cve-assign@mitre.org
To: meissner@suse.de
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <20161013161041.GR25134@suse.de>
Message-Id: <20161014071750.E195342E060@smtpvbsrv1.mitre.org>
Date: Fri, 14 Oct 2016 03:17:50 -0400 (EDT)
Subject: [oss-security] Re: CVE Request: another recursion in GRE

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> If a packet has the layout: | IPv4 header | GRE header | IPv4 header | GRE header | ...
> depending on left over stack it could run the kernel out of stack due to
> recursion and so crash the kernel.

> commit fac8e0f579695a3ecbc4d3cac369139d7f819971

>     This
>     generalizes that solution to prevent any kind of tunnel stacking
>     that would cause problems.

Use CVE-2016-8666.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJYAIYdAAoJEHb/MwWLVhi25UIP/iSHd0YpyLjwP1wtmcZYOXx7
jT7XMtGRXR7uXNUGBDd92u7VMe9Vy344znXvevg2MSRfIW1i8t6lQvaNE3TDDxC4
yDXlnrLaSR6bfjNCv9ngaEiSgKlG+640LL5OTQvMQC8mhN+Bh3/UWmp1UjyadBEt
wks3QEZQAhtnbLAUOa7j7BGZu5+F52WUtzwc5j4ncLZ7jbR8nUPg+DgASu2HRgiB
MhPZsaGnyuNIXis35IgB08p91IsIOrg055s3j8uFle7twyaEykU1XbbpnAwGu8q7
p3tw9cNp1KI7XbjbLG2Dh+wxubvvwJ0NsV4g5FXbXbn7CxJ/UWJ2Deymn/NdwXgg
wrmkMy/N2H8eLweP3tn3KQlNef/4G3D9hHsqnb8KoOX+3cmH3UMMb7oSoovhCyQm
/rBfmHX38BVRF2Rq8qYIS5hBADSo0DtLmSmqtMLsVI2Dflyo79CX7cSjAvhezxJu
c4hqHbum5DsgvHFUS5gEIRQEHjv4sDRVYGav7Aik6NG6dlA7edGmLaWGczqtgujP
c1BvVbbzDm9Ug9Hvq9C+qfjfDoPVtw/SpUz5T+jcu1BFf0aaUkejhrdn1FCtb1GC
pbZIDGt4vRoeNAzUd4kCkjtS3cvbOK+MtsuV0C4YzdMwfG5odSS7bS1KX0zt6pL7
2ZaO/xi1g1pNa4zIuC4S
=ShWc
-----END PGP SIGNATURE-----
