X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3370" "Sunday" "29" "March" "2015" "14:05:04" "+0200" "Hanno =?UTF-8?B?QsO2Y2s=?=" "hanno@hboeck.de" "<20150329140504.7d64d404@pc1.fritz.box>" "104" "[oss-security] Fw: GNU Libtasn1 4.4 released ( fixes stack overflow in asn1_der_decoding)" nil nil nil "3" "2015032912:05:04" "[oss-security] Fw: GNU Libtasn1 4.4 released ( fixes stack overflow in asn1_der_decoding)" (number mark "        hanno@hboeck Mar 29  104/3370  " thread-indent "\"[oss-security] Fw: GNU Libtasn1 4.4 released ( fixes stack overflow in asn1_der_decoding)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 27663 invoked by uid 550); 29 Mar 2015 12:05:13 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 26569 invoked from network); 29 Mar 2015 12:05:06 -0000
Message-ID: <20150329140504.7d64d404@pc1.fritz.box>
X-Mailer: Claws Mail 3.11.1 (GTK+ 2.24.27; x86_64-pc-linux-gnu)
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512; protocol="application/pgp-signature"; boundary="=_zucker.schokokeks.org-22267-1427630694-0001-2"
Cc: cve-assign@mitre.org
Date: Sun, 29 Mar 2015 14:05:04 +0200
From: Hanno =?UTF-8?B?QsO2Y2s=?= <hanno@hboeck.de>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Fw: GNU Libtasn1 4.4 released ( fixes stack overflow in
 asn1_der_decoding)
To: oss-security@lists.openwall.com

--=_zucker.schokokeks.org-22267-1427630694-0001-2
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Can I get a CVE for this?

This is the git commit
http://git.savannah.gnu.org/gitweb/?p=3Dlibtasn1.git;a=3Dcommit;h=3D4d4f992=
826a4962790ecd0cce6fbba4a415ce149



Begin forwarded message:

Date: Sun, 29 Mar 2015 12:04:05 +0200
From: Nikos Mavrogiannopoulos <nmav@gnutls.org>
To: help-libtasn1@gnu.org
Subject: GNU Libtasn1 4.4 released


GNU Libtasn1 is a standalone library written in C for manipulating ASN.1
objects including DER/BER encoding/decoding.  GNU Libtasn1 is used by
GnuTLS to handle X.509 structures and by GNU Shishi to handle Kerberos
V5 structures.

* Noteworthy changes in release 4.4 (released 2015-03-29) [stable]
- Corrected a two-byte stack overflow in asn1_der_decoding. Reported
  by Hanno B=C3=B6ck.


Homepage:
  https://www.gnu.org/software/libtasn1/

Here are the compressed sources:
  ftp://ftp.gnu.org/gnu/libtasn1/libtasn1-4.4.tar.gz
  http://ftp.gnu.org/gnu/libtasn1/libtasn1-4.4.tar.gz

Here are GPG detached signatures:
  ftp://ftp.gnu.org/gnu/libtasn1/libtasn1-4.4.tar.gz.sig
  http://ftp.gnu.org/gnu/libtasn1/libtasn1-4.4.tar.gz.sig

If you need help to use Libtasn1, or want to help others, you are
invited to join the help-libtasn1 mailing list, see:
  https://lists.gnu.org/mailman/listinfo/help-libtasn1

All manuals are available from:
  https://www.gnu.org/software/libtasn1/manual/

Direct links to the manual:
  HTML: https://www.gnu.org/software/libtasn1/manual/libtasn1.html
  PDF: https://www.gnu.org/software/libtasn1/manual/libtasn1.pdf

Direct links to the API Reference manual:
  HTML: https://www.gnu.org/software/libtasn1/reference/
  PDF: https://www.gnu.org/software/libtasn1/reference/libtasn1.pdf

The software is cryptographically signed by the author using an
OpenPGP key identified by the following information:

pub   3104R/96865171 2008-05-04 [expires: 2028-04-29]
uid                  Nikos Mavrogiannopoulos <nmav <at> gnutls.org>
uid                  Nikos Mavrogiannopoulos <n.mavrogiannopoulos <at>
gmail.com>
sub   2048R/9013B842 2008-05-04 [expires: 2018-05-02]
sub   2048R/1404A91D 2008-05-04 [expires: 2018-05-02]

regards,
Nikos





--=20
Hanno B=C3=B6ck
http://hboeck.de/

mail/jabber: hanno@hboeck.de
GPG: BBB51E42

--=_zucker.schokokeks.org-22267-1427630694-0001-2
Content-Type: application/pgp-signature
Content-Transfer-Encoding: 7bit
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCgAGBQJVF+pwAAoJEKWIAHK7tR5CJE4P/RBahib7cKtn37+NrR22A6TD
dn0VutYYd8SCqDL72ezhPXQ3v6ZQUxZyr7oscEln152LTG5xyfx9VZrBfosuT66Q
8Rwsv5XGHbBo08uSUPcQAckUaUKfn5CmAlYBLfQG+iifrLU3qC9PLXRGdYq7Rndm
xzU+GtoLamTFUM5HED2BZG9KXDbgpFSnkiiYJTyQVrT2nS1QHLWf1nDn+9uDtZew
ywTfyX8whrAkKE8KSpoPXp0/eN0BOkvudNoV78yO+7wOKsXmTLHidx8gye4HHcox
xBhmaU2efJFg9vzhdPRNrl0S7j8kjNBJTKrz3IKGPY5UV4gfWT6D5m5UXd7VBubC
Vqn9tJGze8KRjNmKvQHMeTBgcv8ymWJnXgyysk/K2hiiBle3elr7087m/HEFoSyN
GkmjZpt+mzEvmXG8I3xjr5JQ2h2K6BAxb/teUS0A+9RPq0O15ToF73y4IFMKiT2F
Bwyk3pfDI/OXpe4m47+Iyja0imWXJ9PKotlPVdM5vXF/mkXI6gSD479hm8KCOlG8
2LjwuZR2HQ/eHl2DZ1TdkfffhS93AwjZ0dh96PSm6vZy5Xhulapkso1eHYt7tvzN
4FhqmvohRU95s5QUWY23S91GhoDYIvvx1xLo5KNDserQQrRWj7tnGdJlw1k40HpQ
xgg9sSqo41choD7Yc4Di
=iNgx
-----END PGP SIGNATURE-----

--=_zucker.schokokeks.org-22267-1427630694-0001-2--
