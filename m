X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2295" "Wednesday" "20" "April" "2016" "16:03:08" "+0100" "Dominic Cleal" "dominic@cleal.org" "<57179A2C.5030007@cleal.org>" "70" "[oss-security] CVE-2016-3693: Foreman application information leakage through templates" nil nil nil "4" "2016042015:03:08" "[oss-security] CVE-2016-3693: Foreman application information leakage through templates" (number mark "U       dominic@clea Apr 20   70/2295  " thread-indent "\"[oss-security] CVE-2016-3693: Foreman application information leakage through templates\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 25795 invoked by uid 550); 20 Apr 2016 15:03:31 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 25773 invoked from network); 20 Apr 2016 15:03:31 -0000
To: oss-security@lists.openwall.com
Cc: foreman-security@googlegroups.com
From: Dominic Cleal <dominic@cleal.org>
Message-ID: <57179A2C.5030007@cleal.org>
Date: Wed, 20 Apr 2016 16:03:08 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Thunderbird/38.2.0
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
 protocol="application/pgp-signature";
 boundary="BTEmxBC9fW7uNSbVuSNQEdDxBUtFjHPpg"
Subject: [oss-security] CVE-2016-3693: Foreman application information leakage through
 templates

--BTEmxBC9fW7uNSbVuSNQEdDxBUtFjHPpg
Content-Type: multipart/mixed; boundary="WJMd5D2dRAUreWcgBh6g1Dv2eWd2aLGIV"
From: Dominic Cleal <dominic@cleal.org>
To: oss-security@lists.openwall.com
Cc: foreman-security@googlegroups.com
Message-ID: <57179A2C.5030007@cleal.org>
Subject: CVE-2016-3693: Foreman application information leakage through
 templates

--WJMd5D2dRAUreWcgBh6g1Dv2eWd2aLGIV
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

CVE-2016-3693: Foreman application information leakage through template
rendering

A provisioning template containing `inspect` will expose sensitive
information about the Rails controller and application when rendered
when using Safemode rendering (the default setting). This includes the
application secret token, possibly permitting a privilege escalation
when the app is using signed cookies.

Thanks to Ivan Necas for reporting the issue.

As a precaution, the security token may be regenerated with:

  chown foreman /usr/share/foreman/config/initializers/local_secret_token.rb
  foreman-rake security:generate_token
  chown root /usr/share/foreman/config/initializers/local_secret_token.rb

Mitigation: remove edit_provisioning_templates from untrusted users.

Affects all known Foreman versions
Fix released in Foreman 1.11.1 and safemode 1.2.4

Patches:
1. The safemode gem (https://rubygems.org/gems/safemode) was patched to
disallow the inspect instance method:
https://github.com/svenfuchs/safemode/commit/0f764a1720a3a68fd2842e21377c8b=
fad6d7126f
2. Foreman was patched to use this in
https://github.com/theforeman/foreman/commit/82f9b93c54f72c5814df6bab7fad05=
7eab65b2f2

More information:
http://theforeman.org/security.html#2016-3693
http://projects.theforeman.org/issues/14635
http://theforeman.org/

--=20
Dominic Cleal
dominic@cleal.org


--WJMd5D2dRAUreWcgBh6g1Dv2eWd2aLGIV--

--BTEmxBC9fW7uNSbVuSNQEdDxBUtFjHPpg
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iEYEARECAAYFAlcXmiwACgkQfH0ybywrcsy0sACgkFu/GTqcuiEmg5iN/WTH3O3l
/kAAoM1rO7fYZzgicTIU6ImfNzKdZvAT
=MN5F
-----END PGP SIGNATURE-----

--BTEmxBC9fW7uNSbVuSNQEdDxBUtFjHPpg--
