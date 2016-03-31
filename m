X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1757" "Thursday" "31" "March" "2016" "09:19:40" "+0100" "Dominic Cleal" "dominic@cleal.org" "<56FCDD9C.7090000@cleal.org>" "55" "[oss-security] CVE-2016-2100: Foreman private bookmarks can be viewed and edited" nil nil nil "3" "2016033108:19:40" "[oss-security] CVE-2016-2100: Foreman private bookmarks can be viewed and edited" (number mark "U       dominic@clea Mar 31   55/1757  " thread-indent "\"[oss-security] CVE-2016-2100: Foreman private bookmarks can be viewed and edited\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 12045 invoked by uid 550); 31 Mar 2016 08:19:56 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 12027 invoked from network); 31 Mar 2016 08:19:56 -0000
To: oss-security@lists.openwall.com
From: Dominic Cleal <dominic@cleal.org>
Cc: foreman-security@googlegroups.com
Message-ID: <56FCDD9C.7090000@cleal.org>
Date: Thu, 31 Mar 2016 09:19:40 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Thunderbird/38.2.0
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
 protocol="application/pgp-signature";
 boundary="l9Ajr0EcLJKQnsl9CqUm7ovK7GfPHjDhV"
Subject: [oss-security] CVE-2016-2100: Foreman private bookmarks can be viewed and edited

--l9Ajr0EcLJKQnsl9CqUm7ovK7GfPHjDhV
Content-Type: multipart/mixed; boundary="lnn27s7C753FKrSIGNic8MxkHVTVbudAl"
From: Dominic Cleal <dominic@cleal.org>
To: oss-security@lists.openwall.com
Cc: foreman-security@googlegroups.com
Message-ID: <56FCDD9C.7090000@cleal.org>
Subject: CVE-2016-2100: Foreman private bookmarks can be viewed and edited

--lnn27s7C753FKrSIGNic8MxkHVTVbudAl
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

CVE-2016-2100: Foreman allows read and write access to search bookmarks
set as 'private' to other users.

Bookmarks can be stored for quick access to frequent searches in the
Foreman web UI, which can be used to filter lists of hosts and other
objects.  These are either marked private or public, however the UI and
API for users to manage their bookmarks listed all bookmarks, including
private bookmarks of other users.  This allowed them to be viewed,
edited, or deleted.

Affects: Foreman 0.3 or higher
Fix released in Foreman 1.10.3 and Foreman 1.11.0-RC2

Patch:
https://github.com/theforeman/foreman/commit/a61344da14f73920b4bdc7ad8220e7=
a0ed998031

More information:
http://theforeman.org/security.html#2016-2100
http://projects.theforeman.org/issues/13828
http://theforeman.org/

--=20
Dominic Cleal
dominic@cleal.org


--lnn27s7C753FKrSIGNic8MxkHVTVbudAl--

--l9Ajr0EcLJKQnsl9CqUm7ovK7GfPHjDhV
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iEYEARECAAYFAlb83ZwACgkQfH0ybywrcsz2xwCgvoA9/4U97TCbcGMQA+kLRliR
lgYAniRXZ03QiqH6gnWQvSD0zk/3pTn+
=+wIa
-----END PGP SIGNATURE-----

--l9Ajr0EcLJKQnsl9CqUm7ovK7GfPHjDhV--
