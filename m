X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2373" "Saturday" "5" "March" "2016" "18:41:03" "+0100" "Peter Bex" "peter@more-magic.net" "<20160305174103.GE6474@more-magic.net>" "58" "[oss-security] Cgit XSS \"vulnerability\" has no CVE?" "^Date:" nil nil "3" "2016030517:41:03" "[oss-security] Cgit XSS \"vulnerability\" has no CVE?" (number mark "        peter@more-m Mar  5   58/2373  " thread-indent "\"[oss-security] Cgit XSS \"vulnerability\" has no CVE?\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 5600 invoked by uid 550); 5 Mar 2016 17:41:14 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 5582 invoked from network); 5 Mar 2016 17:41:14 -0000
Message-ID: <20160305174103.GE6474@more-magic.net>
Mail-Followup-To: Open Source Security <oss-security@lists.openwall.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="TeJTyD9hb8KJN2Jy"
Content-Disposition: inline
X-PGP-Key: http://www.more-magic.net/peter-bex.asc
User-Agent: Mutt/1.5.21 (2010-09-15)
Date: Sat, 5 Mar 2016 18:41:03 +0100
From: Peter Bex <peter@more-magic.net>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Cgit XSS "vulnerability" has no CVE?
To: Open Source Security <oss-security@lists.openwall.com>

--TeJTyD9hb8KJN2Jy
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi there,

I just noticed that cgit versions before v0.12 contain a bug in
the "txt2html" filter script:
https://git.zx2c4.com/cgit/commit/filters/html-converters/txt2html?id=13c2d3df0440ce04273de3149631a9bd97490c6e

It seems this is the mailing list thread in which the fix was
posted (unfortunately, the attachment was dropped):
https://lists.zx2c4.com/pipermail/cgit/2015-August/002561.html

The release notes for v0.12 mention the fix, but there seems to be no
CVE for it: https://lists.zx2c4.com/pipermail/cgit/2016-January/002817.html

This allows for an XSS attack by anyone with write access: If you can
push to a git repository for which the "txt2html" converter is activate,
you can create a README or README.txt and insert arbitrary HTML.

Please note that the recommended "about-formatting.sh" filter will also
allow unfiltered HTML files, Markdown or ReST documents, so that's
arguably by design.  But it's definitely a surprise for people like
myself who would expect all files to be filtered for safe HTML like
GitHub or Bitbucket do.  And of course, in cases where an administrator
tries to add *restricted* README support by allowing only plaintext
files through the txt2html filter, this would definitely be undesired.

Finally, the about-formatting.sh may be shipped by default, but the
default value of the "about-filter" is empty, and it seems that the
installation script does *not* supply a default configuration file
which could override that, so it has to be explicitly enabled by
the user (or the distro's package).

Anyway, all in all, I think this is probably worth a CVE because it's
so non-obvious.

Cheers,
Peter Bex

--TeJTyD9hb8KJN2Jy
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.12 (GNU/Linux)

iQEcBAEBAgAGBQJW2xovAAoJEBEdufnLRYmw+tIH/j2awZZZKddPBFc1BBoDQ60Q
x5ZCMVbzZQc9duh8MHesTCuNc5sTbOcxUb3iVnEslmoJFQlCdm4HWbDhxHPIzy9w
y48MM0bEbcwlqhll9AgxYvNqDzMnHCo6oSLtmY2YZN2S7N1vdrI6/yleInvrkolk
CJqnOWM3hryhR8GLAqXiWxKYE91acBN49Gc6IuxiPl+Hf6nGZz3le761vSyFOZM6
9wgfWoULn6DQf1IM2z707FzY1Cu2lV7DIxgti/LQyVsDEoOZQo+LJXeaXVc0JyqM
9Kw60GMSZtOgOdZHIbtg8FLWoTI/2Mgpzeoa3/RKddPGxcnOiul63Gr8VEx+3Dc=
=oGwa
-----END PGP SIGNATURE-----

--TeJTyD9hb8KJN2Jy--
