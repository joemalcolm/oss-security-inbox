X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1708" "Tuesday" "1" "March" "2016" "13:43:39" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160301184339.B62C3ABC04A@smtpvmsrv1.mitre.org>" "39" "[oss-security] Re: CVE's for SSLv2 support" "^Cc:" nil nil "3" "2016030118:43:39" "[oss-security] Re: CVE's for SSLv2 support" (number mark "        cve-assign@m Mar  1   39/1708  " thread-indent "\"[oss-security] Re: CVE's for SSLv2 support\"\n") "<CANO=Ty3qgsHtaivrfwoB=ZdbgyE=z5+Q+HkhazE06ppDbw63RQ@mail.gmail.com>" ("<CANO=Ty3qgsHtaivrfwoB=ZdbgyE=z5+Q+HkhazE06ppDbw63RQ@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 21609 invoked by uid 550); 1 Mar 2016 18:43:51 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 21588 invoked from network); 1 Mar 2016 18:43:51 -0000
In-Reply-To: <CANO=Ty3qgsHtaivrfwoB=ZdbgyE=z5+Q+HkhazE06ppDbw63RQ@mail.gmail.com>
Message-Id: <20160301184339.B62C3ABC04A@smtpvmsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Tue,  1 Mar 2016 13:43:39 -0500 (EST)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE's for SSLv2 support
To: kseifried@redhat.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> much like we would for products supporting DES or other known insecure
> cryptographic algorithms, hashes, digests and protocols?

It's unclear what the word "we" means here. If Red Hat at some point
wrote code that ships in a Red Hat product and, upon internal review,
Red Hat discovers that it supports (for example) DES, then Red Hat can
choose to assign a CVE ID if Red Hat is announcing a required security
update to remove DES for reasons of Red Hat policy or perceived
expectations of Red Hat customers.

MITRE does not assign CVE IDs to track whether the universe of
products has similar or dissimilar time scales in adapting to
technology changes.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJW1eJFAAoJEL54rhJi8gl5XpEP/2WyAGm+dz+xLncacnp1fnOr
iBa0db4eAkxG52l4kUO0Z01/xJD95LvdGiBTOBlfFJ9BUubVIoNvKRq3FrDzB2+s
VxuJSEpgD++Y5SW9TmpUs/BinM/SgUZdj03z2d74V15IB60s+p4WdszG+zrKt0Pq
YmPIouVAq3Fzb+ovCvGs0kjNuLmMWI3OntH6xWM+OHdNLbwzhSihbIP4BzolBnm5
dLnLmQdrElD8nXrVWqfHIPOBvaiz297jYBEFT6dztbfdTR5GreS/GqgAS4qiBwl+
ZTnqVdVBNx7pbEzkMJcFZznm7HKS7lTegiRq32BC5sLXbppDEUy0eNZIArkpeVCr
Pb2QNGrt6xF0ueRmyO/FyestW1dV3a77ry8xjY9trozB6yvOf+WR7t40x/Ovt13U
oEARKy7m3P/f2nV6gnfvtBhrEq8fm0VCVQiEZaXk6fs5NUHCC72ex0ewq3qBAc4o
lvP4O1fqLQYf4gtSZz46raR0Tear6m3kn3rJEEznNwP562v4cL1vrxnX2bn5z9Ad
t81pUaILikYB7Ft5+/+pdE/kcVR7m4B6NPq6JojXU7ECZjydgpZcGk16ILVlNTar
UNY1Okh+QOg5Y5weCeMzpTQD4CsXUyLJuDu2tmaLvPKBu8x+dnsBoVt9Lbstefbr
qRfdvYK+lXat94W+DxPh
=QGDB
-----END PGP SIGNATURE-----
