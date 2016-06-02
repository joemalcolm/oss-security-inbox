X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2061" "Thursday" "2" "June" "2016" "18:02:40" "+0000" "Holger Levsen" "holger@layer-acht.org" "<20160602180240.GA23506@layer-acht.org>" "56" "[oss-security] Re: CVE request: mat doesn't remove metadata in embedded images in PDFs" nil nil nil "6" "2016060218:02:40" "[oss-security] Re: CVE request: mat doesn't remove metadata in embedded images in PDFs" (number mark "U       holger@layer Jun  2   56/2061  " thread-indent "\"[oss-security] Re: CVE request: mat doesn't remove metadata in embedded images in PDFs\"\n") "<20160602162134.8A5D56C0659@smtpvmsrv1.mitre.org>" ("<20160602103328.GA6618@layer-acht.org>" "<20160602162134.8A5D56C0659@smtpvmsrv1.mitre.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 19794 invoked by uid 550); 2 Jun 2016 18:03:05 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 19776 invoked from network); 2 Jun 2016 18:03:04 -0000
X-Virus-Scanned: Debian amavisd-new at alpha.holgerlevsen.de
Date: Thu, 2 Jun 2016 18:02:40 +0000
From: Holger Levsen <holger@layer-acht.org>
To: cve-assign@mitre.org
Cc: oss-security@lists.openwall.com
Message-ID: <20160602180240.GA23506@layer-acht.org>
References: <20160602103328.GA6618@layer-acht.org>
 <20160602162134.8A5D56C0659@smtpvmsrv1.mitre.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="VbJkn9YxBvnuCH5J"
Content-Disposition: inline
In-Reply-To: <20160602162134.8A5D56C0659@smtpvmsrv1.mitre.org>
Subject: [oss-security] Re: CVE request: mat doesn't remove metadata in embedded images in
 PDFs

--VbJkn9YxBvnuCH5J
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Jun 02, 2016 at 12:21:34PM -0400, cve-assign@mitre.org wrote:
> We think you mean that a CVE ID can exist with the rationale of:
>=20
>   - as of version 0.7, there will be a required security update in
>     which the embedded-in-a-PDF security problem is resolved
>=20
>   - the CVE ID is needed to tag that required security update
>=20
>   - as of version 0.7, the https://mat.boum.org/ text may be changed
>     from "images embedded inside PDF may not be cleaned" to something
>     like "images embedded inside complex documents may not be cleaned,
>     but users can rely on cleaning in the specific case of PDF
>     documents"
>=20
> Does that match your intention for the CVE ID?

yes.

Though I disagree with the 3rd paragraph a bit, I don't think it's that
hard to recursivly process files, eg both
https://tracker.debian.org/pkg/strip-nondeterminism (in perl) and
https://tracker.debian.org/pkg/diffoscope (in python) do that.


--=20
cheers,
	Holger

--VbJkn9YxBvnuCH5J
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIVAwUBV1B0wAkauFYGmqocAQo/RRAAhVZsfWzK21p8XXDH2OHBN4eSJ4poAL/q
wZe6HRvQ+M3N4/S9riomZJMIaUqpNN0XwLttZOgXja/Gx3zAKDR4/+qepKE/NNrL
rPTY6G1Ookrmoy44wQ+DKICP/Z/QUE6Q2Hg80iyBtx/fM8wZlXqmZMjgIG/8JwMS
wTo1v1SQroXZ9/n5wCn2IbbfNvI8FcV9pg9ML74z79YD79KZRs0gyFsPB69G8nAX
Bbgk5br9kW8zn5/7+CRKMKhrJE1DzI9VMTLxLEeck1PUNavAPFdqpdA79Hx1ZTEd
i4fXxRVnQ8GJAyPM/fWZn57cf1RNUFal18u4F0ThiNJg6xENseQfwGcEmluZx9vC
vbxhVzPK7PAWn/ilA7isYvbWqkmr5USKr3uyCnSP1djCOxwvhwd+eoYRLep8HclR
iFoxZsmJJHvOcz4Upj+LaQr1+G/rMv9XL3L3X/thLdetAm5TsfaYERlyHkIgrz+U
w5OgmS5beZdUwmg07Qj2PI8YzqKXvVC+vuZxahCZaMHJPWQ+KDIxTmnjXc8b51a4
TRk3nH2hidyC2hqK858cmNjjdp5DEJyhNrovgQpZnkhex0TG3Vf3rWC6o9C6MEUi
W2kezHtC5Pu6As8kKDvya4pfKUmiROrNsB5y3i/b0Ftt62lZF7N3oWZKiNWSAya9
UalxAatnyqw=
=pM+I
-----END PGP SIGNATURE-----

--VbJkn9YxBvnuCH5J--
