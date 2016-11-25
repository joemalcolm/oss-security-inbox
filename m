X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1948" "Thursday" "24" "November" "2016" "19:51:34" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<0e925c8eb72143eaa942d7abbd5ddd70@imshyb02.MITRE.ORG>" "45" "[oss-security] Re: CVE request: icu: stack-based buffer overflow in uloc_getDisplayName" nil nil nil "11" "2016112500:51:34" "[oss-security] Re: CVE request: icu: stack-based buffer overflow in uloc_getDisplayName" (number mark "U       cve-assign@m Nov 24   45/1948  " thread-indent "\"[oss-security] Re: CVE request: icu: stack-based buffer overflow in uloc_getDisplayName\"\n") "<20161124233908.GA20286@sin.redhat.com>" ("<20161124233908.GA20286@sin.redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11842 invoked by uid 550); 25 Nov 2016 00:51:46 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11824 invoked from network); 25 Nov 2016 00:51:46 -0000
From: <cve-assign@mitre.org>
To: <dmoppert@redhat.com>
CC: <cve-assign@mitre.org>, <oss-security@lists.openwall.com>
In-Reply-To: <20161124233908.GA20286@sin.redhat.com>
Message-ID: <0e925c8eb72143eaa942d7abbd5ddd70@imshyb02.MITRE.ORG>
Date: Thu, 24 Nov 2016 19:51:34 -0500
MIME-Version: 1.0
Content-Type: text/plain
Subject: [oss-security] Re: CVE request: icu: stack-based buffer overflow in uloc_getDisplayName

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> https://bugzilla.redhat.com/show_bug.cgi?id=1383569

> http://bugs.icu-project.org/trac/ticket/10891
> http://bugs.icu-project.org/trac/changeset/35699

> https://bugs.php.net/bug.php?id=67397

> Note that the PHP bug is exactly the same flaw, but they worked around
> it by limiting the length of strings passed to icu.  I don't believe
> this needs a separate CVE even though it was "fixed" independently.

Use CVE-2014-9911 for the ICU vulnerability, and use CVE-2014-9912 for
the PHP vulnerability. Admittedly, the code changes in ICU and PHP had
the same motivation. However, the code is not shared between
ures_getByKeyWithFallback in ICU and get_icu_disp_value_src_php in
PHP. Thus, two CVE IDs exist. This is also consistent with similar
ICU/PHP situations in the
http://www.openwall.com/lists/oss-security/2016/07/24/2 and
http://www.openwall.com/lists/oss-security/2016/09/15/10 posts.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJYN4pmAAoJEHb/MwWLVhi2iXQP/0p5ye6sA3p3BNLXi1HvLKN3
kTljswgWfZxD5/GINLjMGzf0Gr94weE6GfbxmrYbenjmghKTPU+tRgfpOd6TwteU
kai0Vuluk020bYb9d769qyYc47rzKZ0h5FJCc/Ef+kQNWPMOHS+ogF8D11p575W0
gFZyiw9h5HNHT7A5VV1NisFN607Q3IwJncNZfI1PLwZJ/t1dtNI8HGsKZCo5tlKq
ZdWIibAuVThj9k4OKmZfdxe3SHInFv2dfDoLXwQH+hwnLLs7xkN3X5Tu/PXpkqtV
cc/eqZTRW1TSxou4p0S8T7d410z3WArVecVNfFZxv58xua+Goj/bXwPRuAUQTY8q
SpuR3NDwFoM23IURqTStQ/+NXbhGtjJpUltQjZ776hBEm/S/rljYMA5sJs4sBtjI
VsiA8jqjeewOheQQnEOA/VVH8JvQQ8AATOKD6gRkDCuxTYwhemabzR9jUOpVP/Cv
9f/4e/KIYug2wHcfTtEoqZEGtgIEQRdcGpEjOq7y7X9ETMWnTRNh1iIzKVOilFyv
uCcNE1m0JJPALb0p72AqDb5rEL8cWynrvNQrcLifONF5/65uEa+5Hi4rXhayaQN1
MDo0OTwKJUw90vhEeLP+hTx3bQJtp6bRTfz1avIhEmG0DmoErm9opAj/pK7o8uWV
1EQnxE97WQjHimhYejXd
=jGfq
-----END PGP SIGNATURE-----
