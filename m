X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2369" "Wednesday" "2" "November" "2016" "15:37:58" "+1030" "Doran Moppert" "dmoppert@redhat.com" "<20161102050757.GG14890@sin.redhat.com>" "73" "[oss-security] CVE request:  XXE in perl Image::Info and XML::Twig" nil nil nil "11" "2016110205:07:58" "[oss-security] CVE request: XXE in perl Image::Info and XML::Twig" (number mark "U       dmoppert@red Nov  2   73/2369  " thread-indent "\"[oss-security] CVE request:  XXE in perl Image::Info and XML::Twig\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3208 invoked by uid 550); 2 Nov 2016 05:08:16 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3184 invoked from network); 2 Nov 2016 05:08:15 -0000
Date: Wed, 2 Nov 2016 15:37:58 +1030
From: Doran Moppert <dmoppert@redhat.com>
To: oss-security <oss-security@lists.openwall.com>
Message-ID: <20161102050757.GG14890@sin.redhat.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="H1spWtNR+x+ondvy"
Content-Disposition: inline
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.27]); Wed, 02 Nov 2016 05:08:03 +0000 (UTC)
Subject: [oss-security] CVE request:  XXE in perl Image::Info and XML::Twig

--H1spWtNR+x+ondvy
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Starting with this bug in XML::LibXML:

> XML-LibXML: External entities are parsed by default

https://rt.cpan.org/Public/Bug/Display.html?id=3D118032
https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=3D838097
https://bugzilla.redhat.com/show_bug.cgi?id=3D1377996

.. which is an insecure default setting, probably not worthy of a CVE in
itself.


I did a brief audit of other CPAN modules in Fedora that may suffer from
XXE, which uncovered these two:

> XML-Twig: expand_external_ents fails to work as documented

https://rt.cpan.org/Public/Bug/Display.html?id=3D118097
https://bugzilla.redhat.com/show_bug.cgi?id=3D1379553

This option (which defaults to 0) is supposed to control XXE parsing
documents with XML::Twig, but it has no effect and XXE always takes
place.

No fix is available yet, and my perl isn't up to proposing a sensible
patch.

XML::Twig 1.49 does feature an undocumented option 'NoXxe' which can be
used to prevent entity expansion, but that option isn't present in 1.50
(current development branch) or in earlier versions (up to 1.44) I have
checked.


> Image-Info: XXE in SVG files

https://rt.cpan.org/Public/Bug/Display.html?id=3D118099
https://bugzilla.redhat.com/show_bug.cgi?id=3D1379556

This was promptly fixed in 1.38_50 / 1.39.


Thanks,
--=20
Doran Moppert
Red Hat Product Security

--H1spWtNR+x+ondvy
Content-Type: application/pgp-signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.22 (GNU/Linux)

iQIcBAEBCgAGBQJYGXStAAoJEGohqWcZR7qpEREP/3eZmIFy+zC0HJeKmeVSjrYB
Y/tdIqRWyjHoPLPesW/BVmRw7sLe0iXM1t3gaIzNx8Cw0oAeokgAj1GCUlmL4I9W
ZzhlPy5M8ub3gwk0/VcWs/HvZPe3PWrCpTSMZ3WREZAlsFjc9aivCRtELXQjRG1t
gLqWHKS2pMl2kdCn6UA00jDkqf6wIiQs1kVKTJSKoZycaBFFCVVA6Fv1vDQrYwCN
UuqaG5qEsqXD+He4yUQGhNbtOWrDngs506Dqxt36NWLieS6CYvoO6B2P5uwALMz+
97HkdMjyBdQ4pF1z+m22jYl1Iz6yha/bE71taECW7nJp071SWrho5Vyt2mziRUSa
PjHE6PRCP0AdFVqG01NAAWdKCs04RsoHMxoLd+AMoJiZd6oQ3CHEbxhog1I4lrM3
G4dYp0ePFbrsUhX38Re6b3XkrDjEmjaSeqWWpqiOp8SKkq+SuHK5oXG27DVcioYU
BMuvbyL5KPjJ2f/VNrzcB9SBnNs0UVZ4sq1fDCC56zKDDm+qwOj+fW0I+TIw6Uud
zEqraA0yECeexad/eZni9ZxiuGVaQgMFtAFSLijlbldANdoZRG3msIA8RPiq185r
QpZnfVYvsC6EWTMgf0fUK05qF2uw+SUtpwPjpcRh4k/EmyQFAa4ZvW7sJ0gW5OMr
+HG4B07eUMWC6/uiCHo6
=1aKy
-----END PGP SIGNATURE-----

--H1spWtNR+x+ondvy--
