X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2624" "Thursday" "10" "June" "2021" "14:38:14" "+0000" "John Helmert III" "jchelmert3@posteo.net" nil "70" "Re: [oss-security] CVE-2021-31618: Apache httpd: NULL pointer dereference on specially crafted HTTP/2 request" nil nil nil "6" nil nil (number mark "U       jchelmert3@p Jun 10   70/2624  " thread-indent "\"Re: [oss-security] CVE-2021-31618: Apache httpd: NULL pointer dereference on specially crafted HTTP/2 request\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] CVE-2021-31618: Apache httpd: NULL pointer dereference on specially crafted HTTP/2 request" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 32657 invoked by uid 550); 10 Jun 2021 14:45:51 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30239 invoked from network); 10 Jun 2021 14:38:27 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=posteo.net; s=2017;
	t=1623335896; bh=C9uNacqxPCeEkcFdtVQvrTwGeChDwl7XyYOSoqd+xes=;
	h=Date:From:To:Subject:From;
	b=DMN9d+n47nw4zzgXNkvdqFIjtzQutTEpTGXq5SIzNNmv9lJQDEi8QeGQyzEbeb2yy
	 1XSKKbVGbFxfkE60Ir3DYH8hO7pL8dxxhInM4T2sidYB+ctu5GfhcJ3B0hiUuyBaCY
	 3bQ2dApBnZK75TwYVONBIOL2V6hRFhz2ArMaKow0BKWpu9cMFDQjbuN9qs8wcGNK5V
	 18kpNnrhX5u0r57shL8HrpWuYVr1It8Rixc+itmMCq+zqzG/9FqIyWTXLJ9ExWcikS
	 fmb9UPdD5NLpYZqAeXMox/kyEF20UtIudPVXsr+vgOKrIdK3piZpEbTIUnjlBdTvzx
	 5G7vjV5wn+rPw==
Date: Thu, 10 Jun 2021 14:38:14 +0000
From: John Helmert III <jchelmert3@posteo.net>
To: oss-security@lists.openwall.com
Message-ID: <YMIj1mZsQrmj6PBA@sol.nexus.lan>
References: <1622544226.KAPKHQKN@httpd.apache.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="UxAnWlhKi9PPX3VR"
Content-Disposition: inline
In-Reply-To: <1622544226.KAPKHQKN@httpd.apache.org>
Subject: Re: [oss-security] CVE-2021-31618: Apache httpd: NULL pointer
 dereference on specially crafted HTTP/2 request

--UxAnWlhKi9PPX3VR
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Jun 09, 2021 at 11:11:00PM +0200, Christophe JAILLET wrote:
>=20
> CVE-2021-31618: NULL pointer dereference on specially crafted HTTP/2 requ=
est
>=20
> Severity: important
>=20
> Vendor: The Apache Software Foundation
>=20
> Versions Affected:
> 2.4.47
> httpd=20
> Description:
> Apache HTTP Server 2.4.47
> Apache HTTP Server protocol handler for the HTTP/2 protocol checks receiv=
ed request headers against the size limitations as configured for the serve=
r and used for the HTTP/1 protocol as well. On violation of these restricti=
ons and HTTP response is sent to the client with a status code indicating w=
hy the request was rejected.
>=20
> This rejection response was not fully initialised in the HTTP/2 protocol =
handler if the offending header was the very first one received or appeared=
 in a a footer. This led to a NULL pointer dereference on initialised memor=
y, crashing reliably the child process. Since such a triggering HTTP/2 requ=
est is easy to craft and submit, this can be exploited to DoS the server.
>=20
> This affected versions prior to 2.4.47

The announcement on the website indicates the affected versions for
CVE-2021-31618 are <2.4.48 and in the below table it indicates <=3D2.4.48
are affected. Both of these are different from the mail advisory, can
you clarify the affected versions, please?

> Mitigation:
> none
>=20
> Credit:
> Apache HTTP server would like to thank  LI ZHI XIN from NSFocus for repor=
ting this.
>=20
> References:
> https://httpd.apache.org/security/vulnerabilities_24.html
>=20

--UxAnWlhKi9PPX3VR
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEElFuPenBj6NvNLoABXP0dAeB+IzgFAmDCI9UACgkQXP0dAeB+
IzjweRAAk4mQEzaKVDJKYz0KvJbNbJYGzkhRwJW5WU/T4wVprBg/RdpAJw51xl5w
LDVnLxUxDS8IwejMPZJ9c1wQpuXtINHjdHJaf3ivUo2JTAqj2VIX6fLb1iQ36D5E
bJNjXJNrBDVUGXa43IpVWm4U6O4R7z2ESvk4zTn28WNKCb127tWoE4Rf8FxHdhuc
AXoft21XhzR/2BA8dtcX11RfNwOc39EbD45vGgIMk2nx4hSTvsgZr7GiBLQdtJWn
N8UdpfLNxq7L6foVCxR9UlkugDInu6on/ggoD/lfjn6d1PVSgRunC/5C+8WB9rwZ
qbObjQJ3HmiOaZl1bmaYyOtWxmIIGRsxXq/8JWRs4uKLaM9oHPPs88itPcnxGw12
EhSF+ILNUg5ua68owLDbrWX8hGlKckKED/YNWPgyIXgISxPhLG2PbdjnrJQ24vEs
5tgSdSfFn3zqHeVIAJg/xa04CGnhI66FJbmJ1aAIybXwNzIU7DQBorSkjUoXrRvH
2G/+i1dhiuDl2B7D8NkrOC12+XqStOVw4AThbvJH8yFcAnfyFv6nx8pf0FEIOg8e
iWn78ohckgnlYyOqSl8gNLPTu4sWy8Nig9WPjxWwBjjvocxr1iQMcht5zSEgrrjS
T5qRSTHJD10iz6Bt8XkDlzS4hHPkKIPFAvdf7cKqpyeIXrB5FXY=
=F6Az
-----END PGP SIGNATURE-----

--UxAnWlhKi9PPX3VR--
