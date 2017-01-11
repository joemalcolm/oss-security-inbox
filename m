X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2186" "Tuesday" "10" "January" "2017" "22:39:40" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<4375de127e2d48fd8cba3125c00de83c@imshyb02.MITRE.ORG>" "54" "[oss-security] Re: CVE request: python-pysaml2 XML external entity attack" nil nil nil "1" "2017011103:39:40" "[oss-security] Re: CVE request: python-pysaml2 XML external entity attack" (number mark "U       cve-assign@m Jan 10   54/2186  " thread-indent "\"[oss-security] Re: CVE request: python-pysaml2 XML external entity attack\"\n") "<20170110072939.GC18447@centurion.befour.org>" ("<20170110072939.GC18447@centurion.befour.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 12182 invoked by uid 550); 11 Jan 2017 03:39:52 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 12164 invoked from network); 11 Jan 2017 03:39:52 -0000
From: <cve-assign@mitre.org>
To: <seb@debian.org>
CC: <cve-assign@mitre.org>, <oss-security@lists.openwall.com>
In-Reply-To: <20170110072939.GC18447@centurion.befour.org>
Message-ID: <4375de127e2d48fd8cba3125c00de83c@imshyb02.MITRE.ORG>
Date: Tue, 10 Jan 2017 22:39:40 -0500
MIME-Version: 1.0
Content-Type: text/plain
Subject: [oss-security] Re: CVE request: python-pysaml2 XML external entity attack

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> python-pysaml2 does
> not sanitize SAML XML requests or responses:
> 
>   https://github.com/rohe/pysaml2/issues/366
>   https://github.com/rohe/pysaml2/pull/379
>   https://bugs.debian.org/850716
>   https://github.com/rohe/pysaml2/commit/6e09a25d9b4b7aa7a506853210a9a14100b8bc9b

Use CVE-2016-10127 for the vulnerability addressed by "Fix XXE in XML
parsing" in 6e09a25d9b4b7aa7a506853210a9a14100b8bc9b.

The scope of this CVE does not include the various other issues that
may be found in the above references:

 - it does not include any aspect of
   https://bugzilla.gnome.org/show_bug.cgi?id=772726

 - it does not include any vulnerabilities in the XML Security Library
   (xmlsec), such as ones that are now, or previously were, listed at
   https://github.com/lsh123/xmlsec/issues

 - it does not include any CWE-776 (Entity Expansion) issues that may
   have been fixed as a side effect of
   6e09a25d9b4b7aa7a506853210a9a14100b8bc9b (possibly there are new
   test cases in 6e09a25d9b4b7aa7a506853210a9a14100b8bc9b for CWE-776)

If the references need more CVE IDs related to any of these other
topics, please let us know.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJYdacpAAoJEHb/MwWLVhi2dU4QAJC8fNO+tSEsFjLxhpwerqp2
dqGm/ZfdGZ717A9BROlsycopbF9nVuuTp22PMEaNgJtO+sESnVdSJomVA6XvbGsk
kd7iq+r3opeplMuyuYkuqQaw585N6MRc27WBh21Cpis8ExlU/bYH3qapTkfV1G88
h6BqmhBJ2Yzae/FfOfG/kMCbh9Nbwem7gxB1tIHmWBxvKm/TXknH/tO4hOUsZlyt
sb9SSwYLmqZHbqdv3rBvdoHHS7LwBSL0niKSCpPmyYKwI3P3lrEn+C6DmqqfZpsS
0wmMse7ILe7/u28IutqCNjA5aDzaiclEE+P7KLgl/xyyGt80icM+tzBSXXwYbzMB
YTxOiBhCiXKVlkgkNFPpq9wXBU/L5eNqsntKiuqGhFeLZIOGIpE8dSXss1ERVifG
KL1TOLCj9jPnburB0g7f6FpDB4pSiWvhL47uMdNOSDKFBCT/SP+JiqzfH0PycspT
v1OrRvQXA08xGX/2kD94os/6yrZwbFe65AdKHui/rHgbAjXLwiKSe9R86ppGJ5OV
4mAG3qgh3ZJOqX6kPPOMCM7XCxN6/KpQsnLi17Va7fIhr4nq1zAjGTPJw1PhusnZ
98NJtjIpkXLk5dCxJY3w9RWAykY26HI2k8HPsAPMPClGtJU0EeOUTkbt4Nv4Q0cF
XZiw9PXbEwe75koEvajV
=s3t6
-----END PGP SIGNATURE-----
