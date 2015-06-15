X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1413" "Monday" "15" "June" "2015" "09:39:37" "+0200" "Peter Bex" "peter@more-magic.net" "<20150615073937.GV7243@more-magic.net>" "39" "[oss-security] CVE request for buffer overrun in CHICKEN Scheme's string-translate* procedure" nil nil nil "6" "2015061507:39:37" "[oss-security] CVE request for buffer overrun in CHICKEN Scheme's string-translate* procedure" (number mark "        peter@more-m Jun 15   39/1413  " thread-indent "\"[oss-security] CVE request for buffer overrun in CHICKEN Scheme's string-translate* procedure\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 20460 invoked by uid 550); 15 Jun 2015 07:40:12 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 20436 invoked from network); 15 Jun 2015 07:40:11 -0000
Message-ID: <20150615073937.GV7243@more-magic.net>
Mail-Followup-To: Open Source Security <oss-security@lists.openwall.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="l21Zc9uzwusa2dXo"
Content-Disposition: inline
X-PGP-Key: http://www.more-magic.net/peter-bex.asc
User-Agent: Mutt/1.5.21 (2010-09-15)
Date: Mon, 15 Jun 2015 09:39:37 +0200
From: Peter Bex <peter@more-magic.net>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE request for buffer overrun in CHICKEN Scheme's string-translate*
 procedure
To: Open Source Security <oss-security@lists.openwall.com>

--l21Zc9uzwusa2dXo
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hello,

I would like to request a CVE for a buffer overrun bug in CHICKEN Scheme's
string-translate* procedure, which is similar to CVE-2014-9651, but is a
separate issue.  The internals of this procedure would invoke memcmp() on
each index of the string being searched in, with a length of the source
string in the alist map argument, which caused it to read beyond the bounds
of the searched string.

This bug affects all released versions of CHICKEN prior to 4.10.0.  There
are no known workarounds at this time.

The original announcement can be found here, including a link to the patch:
http://lists.nongnu.org/archive/html/chicken-announce/2015-06/msg00010.html

Cheers,
Peter Bex

--l21Zc9uzwusa2dXo
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.12 (GNU/Linux)

iQEcBAEBAgAGBQJVfoE5AAoJEBEdufnLRYmwByIIAMl+Wvt1Q9pHAVVT/LY9GqyI
v2+GCvqJZj943k3cM8sYnkiegHrue0FOxNsbRkj3prxAcB9N894BJfgXvYUjW7PN
d5zPhuU0x2YHXqqPTcp5x/bGZDAbGa7Jzvsmnx51sl5it4CW2jXkM4aU3WdFB/gR
rWaJog7AAVZrFBzwsOp4qu2nEx8YHIUCRdD2NeB2bsWCd0a5wkFbSc2vhZLI5/r0
aLXPBfqX5jc8Yk5ySG6azSLxVm9v/C/vW2tL8iVlZgAb5jbCtHcWKLrnZvBoQg99
ZMHLTPRy62nUTXVzT9FJROwcCTxb01MGXquNbzsiUsk+B/tut5J8m+60oCmkp6o=
=2Xsw
-----END PGP SIGNATURE-----

--l21Zc9uzwusa2dXo--
