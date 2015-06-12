X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1651" "Friday" "12" "June" "2015" "14:24:46" "-0600" "Kurt Seifried" "kseifried@redhat.com" "<557B400E.1060706@redhat.com>" "45" "[oss-security] Fedora Atomic - downloads updates over HTTP (CVE-2015-3229)" nil nil nil "6" "2015061220:24:46" "[oss-security] Fedora Atomic - downloads updates over HTTP (CVE-2015-3229)" (number mark "        kseifried@re Jun 12   45/1651  " thread-indent "\"[oss-security] Fedora Atomic - downloads updates over HTTP (CVE-2015-3229)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 9564 invoked by uid 550); 12 Jun 2015 20:25:00 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 9539 invoked from network); 12 Jun 2015 20:25:00 -0000
Message-ID: <557B400E.1060706@redhat.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
 protocol="application/pgp-signature";
 boundary="ke71jnv3W7kUsgJ8N62evRwuEXq39VUjC"
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.24
Date: Fri, 12 Jun 2015 14:24:46 -0600
From: Kurt Seifried <kseifried@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Fedora Atomic - downloads updates over HTTP (CVE-2015-3229)
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>

--ke71jnv3W7kUsgJ8N62evRwuEXq39VUjC
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

So TL;DR: Uploads were downloaded over HTTP instead of HTTPS

Workaround for existing deployments: download the CHECKSUM via HTTPS and
confirm it, e.g.:

https://dl.fedoraproject.org/pub/fedora/linux/releases/22/Cloud_Atomic/x86_=
64/iso/Fedora-Cloud_Atomic-22-x86_64-CHECKSUM




--=20
Kurt Seifried -- Red Hat -- Product Security -- Cloud
PGP A90B F995 7350 148F 66BF 7554 160D 4553 5E26 7993
Red Hat Product Security contact: secalert@redhat.com


--ke71jnv3W7kUsgJ8N62evRwuEXq39VUjC
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.22 (GNU/Linux)

iQIcBAEBAgAGBQJVe0APAAoJEBYNRVNeJnmTAHQQAJO7wNb53M50M7SBJBjKWUWo
kZEB6AjdyyMHitmHAyCS6DC4eu1G36tiUlUyl/HtE4CVLJooXprwN4FhdUZw6oVV
C1v1buSJZ6FqDFEx1b9uL0wnluYUNYaPPXs2SfKcbzTwMcjQXYtbr1qrrIFNLb8E
PbZCkqNsjPclnEZbHInJVok510EUm/Mx3hV6/Gw/sqbPq+z89mFo9KqDxVDgJORz
w2A8J6DRPNmPY4Vgc8DjW8EJTnnXSny6S9ma7Wz4Yu3g74QsluI1H7hpHft8qYkc
AmYV82a3Eah2vLYJj8d3f4yIrokKVgj6P9nrePXcwMf0nm4Q/J9phTFhgiUXIkdX
EWOr3UARv3T/0lUdJR3ehX5b+qSpvMY5XMvDcLEHsYJE2beUt3xegxcytVZQGEP8
oRH1nA03Vh12ZfE9eV7kweguV9Dg98/n0XyWGNHozBYhCK7dtDsFVULKxjEcOGs2
p5+ZdtyCOnbHJd2eMo1W/60yQYHB4O7NroAnO622Reg1AhYUCR0+7Li9/J8gtqep
XdDtsROXT4eWZA8rwYlhjUugiTDc7/oFo+CesCTiXFj65yw6yuhwUlOl4zDi3mpI
G+DUcLEl1M2DmnrWw7UVVs+KZpu04TUYhwn7p7IPIJqNoRrZkXY8lMQvMEPIBfa+
hgX9tjcOdsV8cHgNGjvm
=RVUO
-----END PGP SIGNATURE-----

--ke71jnv3W7kUsgJ8N62evRwuEXq39VUjC--
