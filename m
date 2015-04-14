X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2534" "Tuesday" "14" "April" "2015" "10:25:19" "-0600" "Kurt Seifried" "kseifried@redhat.com" "<552D3F6F.1050502@redhat.com>" "59" "Re: [oss-security] Re: Problems in automatic crash analysis frameworks" nil nil nil "4" "2015041416:25:19" "[oss-security] Re: Problems in automatic crash analysis frameworks" (number mark "        kseifried@re Apr 14   59/2534  " thread-indent "\"Re: [oss-security] Re: Problems in automatic crash analysis frameworks\"\n") "<20150414155515.BFCAD6C0075@smtpvmsrv1.mitre.org>" ("<20150414155515.BFCAD6C0075@smtpvmsrv1.mitre.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 7624 invoked by uid 550); 14 Apr 2015 16:25:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 7604 invoked from network); 14 Apr 2015 16:25:33 -0000
Message-ID: <552D3F6F.1050502@redhat.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.6.0
MIME-Version: 1.0
References: <20150414155515.BFCAD6C0075@smtpvmsrv1.mitre.org>
In-Reply-To: <20150414155515.BFCAD6C0075@smtpvmsrv1.mitre.org>
Content-Type: multipart/signed; micalg=pgp-sha1;
 protocol="application/pgp-signature";
 boundary="MisdANo7dQr2ucnIc0kXFFToI7CFsKoKW"
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.22
CC: cve-assign@mitre.org
Date: Tue, 14 Apr 2015 10:25:19 -0600
From: Kurt Seifried <kseifried@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: Problems in automatic crash analysis frameworks
To: oss-security@lists.openwall.com

--MisdANo7dQr2ucnIc0kXFFToI7CFsKoKW
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

On 04/14/2015 09:55 AM, cve-assign@mitre.org wrote:
> This is mostly a question for the persons who assigned CVE-2015-1318
> and CVE-2015-1862. Should these CVE assignments be interpreted to
> mean:
>=20
>   CVE-2015-1318 - in Apport, an unprivileged user can use a
>                   namespace-based attack because there is an execve by
>                   root after a chroot into a user-specified directory
>=20
>   CVE-2015-1862 - in ABRT, an unprivileged user can use a
>                   namespace-based attack because there is an execve by
>                   root after a chroot into a user-specified directory
>=20
> with "Furthermore, Abrt suffers from numerous race conditions and
> symlink problems" not yet mapped to any CVE IDs? (CVE-2012-5660 is a

Because I asked Taviso to report them publicly, rather than play
whack-a-mole and do it slowly on distros, I'd rather do this out in the
open and all at once =3D).

> similar but older issue.) These additional ABRT issues would seem to
> be, for example, independently relevant on a system where the kernel
> was built without namespaces support. However, the raceabrt.c
> attachment says "This is a race condition exploit for CVE-2015-1862."


--=20
Kurt Seifried -- Red Hat -- Product Security -- Cloud
PGP A90B F995 7350 148F 66BF 7554 160D 4553 5E26 7993


--MisdANo7dQr2ucnIc0kXFFToI7CFsKoKW
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.22 (GNU/Linux)

iQIcBAEBAgAGBQJVLT9wAAoJEBYNRVNeJnmTSDoP/RFHACB1JYLD/gJapEpPBQEn
jTIoC+yQE7uz9kkKw6oKWGTHrf0XH872ed8jJawX/l7niRzf+uO+ZTexgqxVmuMZ
eLrGKLZHSMdDyhjOd8igtf1bhGrY7hB2GaarE0bIdM5H05BidQWqaG1rAX8srnqr
ijaqeFCWfRDKYeqbi2iDNKZQSqvpVlLBJYPG2MyWUn/q4QvLrr6nZvRGWRCVYhdQ
TUD2Ffyb+f2R0QwIVV9SPH5j+BIW+7MOaLeoR5Iu1Vw9jERhr+DKGyuTtdcXYguH
8AqypXlEWqMkrvdGkfQHDaxY+8vHLj5g3TU3kwUpUVxQ4l+hOQ7tuCeAfXkNozbe
cVk1fN92TWZdI5T5vMb+ruOPPnEYki5IlaEztti3WW0ighLBlzca5rHdmHnGthVK
QhSxj+in5Dppaii0nCGuR72egrldL3dOqLuH7YYI2f7LEM9CtRvj6QeyiSi5fyMO
NG/epUNBT3gzbgAZ8eiCJujqNYtc9Bl1WK45rCzbC+T7/5651VhuNG3z5zr8oWWQ
cG58oTnXyvbP2hKUA1YBdW2k3+MYOkZKkMiVpg1VkqPhWvoNtQc+2RGJxuYyTTXN
PN3fC4iWbJfvdPLJmF1MZGz9Y8i29KLlrCVd5wY2sVVa7wKpeNlD0h/CSLK7Cqne
ie9XBN5oa4LG6ShaTsHz
=8yEc
-----END PGP SIGNATURE-----

--MisdANo7dQr2ucnIc0kXFFToI7CFsKoKW--
