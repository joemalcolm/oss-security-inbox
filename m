X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2273" "Tuesday" "23" "February" "2016" "19:41:36" "+0300" "Dmitry V. Levin" "ldv@altlinux.org" "<20160223164136.GA24225@altlinux.org>" "57" "Re: [oss-security] Access to /dev/pts devices via pt_chown and user namespaces" "^Date:" nil nil "2" "2016022316:41:36" "[oss-security] Access to /dev/pts devices via pt_chown and user namespaces" (number mark "        ldv@altlinux Feb 23   57/2273  " thread-indent "\"Re: [oss-security] Access to /dev/pts devices via pt_chown and user namespaces\"\n") "<20160223161754.GA23263@openwall.com>" ("<8fc639ad-daef-1a6f-facf-140eb61aeee5@halfdog.net>" "<20160223161754.GA23263@openwall.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 3627 invoked by uid 550); 23 Feb 2016 16:41:48 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 3609 invoked from network); 23 Feb 2016 16:41:48 -0000
Message-ID: <20160223164136.GA24225@altlinux.org>
References: <8fc639ad-daef-1a6f-facf-140eb61aeee5@halfdog.net> <20160223161754.GA23263@openwall.com>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=x-unknown;
	protocol="application/pgp-signature"; boundary="sdtB3X0nJg68CQEu"
Content-Disposition: inline
In-Reply-To: <20160223161754.GA23263@openwall.com>
Date: Tue, 23 Feb 2016 19:41:36 +0300
From: "Dmitry V. Levin" <ldv@altlinux.org>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Access to /dev/pts devices via pt_chown and user namespaces
To: oss-security@lists.openwall.com

--sdtB3X0nJg68CQEu
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Feb 23, 2016 at 07:17:54PM +0300, Solar Designer wrote:
> On Tue, Feb 23, 2016 at 12:03:54PM +0000, halfdog wrote:
> > Sending content from [0] also to oss-security as requested last time:
>=20
> Thank you.  This public disclosure is very late, though.  I didn't
> realize you were still holding some of your findings on this.
>=20
> > With Ubuntu Wily and earlier, /usr/lib/pt_chown was used to change
> > ownership of slave pts devices in /dev/pts to the same uid holding the
> > master file descriptor for the slave.
>=20
> I think pt_chown is only needed for legacy BSD pty's, and no longer
> needed for Unix 98 pty's that Linux systems use these days.  Perhaps it
> should be dropped from upstream glibc by now.

Just for the record, pt_chown is not enabled by default in upstream glibc
starting with glibc-2.18, one has to specify --enable-pt_chown configure
option explicitly to build pt_chown.

glibc documentation clearly states that "the use of pt_chown introduces
additional security risks to the system and you should enable it only
if you understand and accept those risks":
https://www.gnu.org/software/libc/manual/html_node/Configuring-and-compilin=
g.html#index-grantpt-1


--=20
ldv

--sdtB3X0nJg68CQEu
Content-Type: application/pgp-signature
Content-Disposition: inline

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJWzIvAAAoJEAVFT+BVnCUIquAQAPBtrcDR5w2f8nqQPx+VnICe
8CMwjN5OntXnza/9oyhqqJ3+oHHiqjzHog+1dORad4z56fdo/d62kj1qXaSTLYWu
hIkJfF1tj7LDcEvtvVArvckd7y2ow5KZyqw5D16nURS08qiTgqoJ4rFe3siYbrED
NftbHeRrgpTlLC+zix3f1bf4czTWhKO3ugINvSZcOPA+tJ5MbiRnqL50QQTYTxqQ
GWGGqqRRxz8qWKNx5ffDEaqBGnk3whJ39EBXAvv8fSzJljiFHZbDphopiTOI3UJ4
PxesWFET9DCwKiLPxQI8H+8nyLw+rWFm3rCfpqK7WPHCszRIMfTIW1eGEfsxd7mP
riPxN4b5oQrKHp3k3wyzeujQwroFMKhFwwlEXrQFQwZ/7ZtwBvqTjDjIJlL2nHqd
HQz6hOPHCrzHAXMDJi5TG6Khp87HjHBOAxY8QPfKItGdBRPxj4d4T+dW/Na14Rs/
p3Y2MP6kIQcP8RtH2KjZUViFzE9j017MS6FMPgQHYVuO37F/FWvja72gsAPg4JZD
yzOV3E7vWipoRN8NUoBnx1N9L5Fg8Lsu5YPpD1wOcarpDv24KIoIvGkNUDXm9wCG
4/fAONC8FHBrP2o7/HL/sF1qNhj463eScJMgcTfjJxLYvvcAGRoWLFkPtvO6FEjc
/jRG3cwbPm8W4G551ehH
=9Kmb
-----END PGP SIGNATURE-----

--sdtB3X0nJg68CQEu--
