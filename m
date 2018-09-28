X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2023" "Thursday" "27" "September" "2018" "22:39:17" "-0400" "Randy Barlow" "randy@electronsweatshop.com" "<c1946aa14addd525e5eb3f392eed26f119ad117a.camel@electronsweatshop.com>" "53" "Re: [oss-security] Using quilt on untrusted RPM spec files" "^Date:" nil nil "9" "2018092802:39:17" "[oss-security] Using quilt on untrusted RPM spec files" (number mark "        randy@electr Sep 27   53/2023  " thread-indent "\"Re: [oss-security] Using quilt on untrusted RPM spec files\"\n") "<20180927155934.GB8696@f195.suse.de>" ("<20180927155934.GB8696@f195.suse.de>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 31874 invoked by uid 550); 28 Sep 2018 07:08:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 30611 invoked from network); 28 Sep 2018 02:39:41 -0000
Message-ID: <c1946aa14addd525e5eb3f392eed26f119ad117a.camel@electronsweatshop.com>
In-Reply-To: <20180927155934.GB8696@f195.suse.de>
References: <20180927155934.GB8696@f195.suse.de>
Organization: electronsweatshop.com
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-+f979vcRShTe68RDmhvG"
X-Mailer: Evolution 3.28.5 (3.28.5-1.fc28) 
Mime-Version: 1.0
X-CMAE-Envelope: MS4wfKQg8rTbyJQOvfc6PVU2UxP0b65bkN1zSFECV/zkvRB9f4JTCPPFZv2wuGrkZE4LO9idpQkG/gFEM9yFd58fXoX0T+iTrdJcmPq4DdTKJq/KClehrsP+
 6iUSIfCcHJl6QFBRQWA2pyKKkFRiAmOra6RYQKX5T2/Us/tduy59GZrR2G2un8SQIINSkdpt7YVcTAbC2qVyasZ8zEjb3B6l3N8=
Date: Thu, 27 Sep 2018 22:39:17 -0400
From: Randy Barlow <randy@electronsweatshop.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Using quilt on untrusted RPM spec files
To: oss-security@lists.openwall.com

--=-+f979vcRShTe68RDmhvG
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, 2018-09-27 at 17:59 +0200, Matthias Gerstner wrote:
> Now we would be interested in discussing this topic with the
> community. Do<br>
> other distributions have similar workflows and therefore similar
> attack<br>
> surface as we do? What would be viable countermeasures?

Hey Matthias!

In Fedora we have similar challenges. We've got a tool called fedora-
review[0] that is maybe kinda similar to quilt. It uses mock[1] to
build the source RPM (and mock does this in a chroot to help with the
problems you described) and then it does some basic quality checks on
the RPM afterwards.

I'm not sure how generic mock is, but maybe it would be helpful to you.
Its wiki page describes it as being used by Mageia, so it might be
extensible for SUSE as well.

Happy coding!


[0] https://pagure.io/FedoraReview
[1] https://github.com/rpm-software-management/mock

--=-+f979vcRShTe68RDmhvG
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEtaW+t5vwm7qNSBIDeETMuDvdJGIFAlutlFUACgkQeETMuDvd
JGJsoRAAnAtRbAlUt8/ESKqCTN9U6jVO7FQBLM5PtlAxr5e3gQ2mnfDzrcaNnmTv
NZghz3SPvhhVXIk+vFJBxlm0dsIqhxF8t6N2UCP3U3k+Yjek7N5jSdoTuo9tst0p
z/ogy8Ok01xXDn1V6WysPpOK5ExK5ECJkv8CWx4/7mcmp4/3xZ5zsPPT0B+f9u/n
IjSoScp59AtuLSskZKzG5QOHM4hE/yRJL4dhd8fw1FbCzJqqCW6NhJW74nGuA/tS
H8RtDAoRhO8sfd+TRvWi2zn3WoUBilbtR9OONL/Bc+eP9P3c9SEJfm3xCZgFEfPv
Zo1PgNehh5AoTe13DYxCJH7SgxMZOqt5V6KHAJkAK3j0C6nt1bhkoz/KthcleU/Z
oNmwDl/BblgTMTTjNWQ/fWFXiv3YblueD//D2MMqn8sY+VhXlAshNGpWW08KemMB
pQH1eYp8QHmgYmr8+a7nD5PZZN1BTZYTg0Vz64F6WjrUAs3fBDxGLUTqdQG87c18
osqvi2zX7nAE9eZI6GYDV6nAU2IUB5sTCFKUuwST3waRX1gUES8RVgwg8MyYWK4Y
bSTalyjaXTklJoydJVCcr8Pl1NLk+rL9PgpVYUXSHjNjQTzeUNYwyxN604HxnQGV
JRm03BKxjXPPeQM6EYTJ4k1vfKZldWU3HgfYuMRXh/YsVx3usqs=
=AqzV
-----END PGP SIGNATURE-----

--=-+f979vcRShTe68RDmhvG--

