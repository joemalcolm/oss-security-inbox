Received: (qmail 7645 invoked by uid 550); 28 Apr 2024 13:43:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 16126 invoked from network); 28 Apr 2024 06:45:47 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=korelogic.com;
	s=mail; t=1714286737;
	bh=GSQ9qpf2c2wtxyXtHVwN9gfXPDEmYoXMs75oR+u5Op0=;
	h=Date:From:To:Subject:Reply-To;
	b=PH+PvYJAHIlZEMpANNP+j9X0Lm4p+6sBOu/4+8XuYzdHpZWNOewkf/qy2gZGytPy2
	 2O+N7yBiY+EIvgNRAQfvVHwjjaMux1zC347r5+sbk//7BgkQczwLHJRBcpqV9Hqsgo
	 zctXjdBYvox4yu/L8u6w+sEXJUgm5oXUlqQsVB5Q=
X-Virus-Status: Clean
X-Virus-Scanned: clamav-milter 0.103.8 at mail.korelogic.com
Date: Sun, 28 Apr 2024 00:45:34 -0600
From: Hank Leininger <hlein@korelogic.com>
To: oss-security@lists.openwall.com
Message-ID: <20240428003506.87cd6009-f57c-4c78-8503-1b917a8c558c@korelogic.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="iMe0p+wxIWwuyqgL"
Content-Disposition: inline
Subject: Re: [oss-security] Update on the distro-backdoor-scanner effort

--iMe0p+wxIWwuyqgL
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On 2024-04-28, Morten Linderud wrote:
> On Fri, Apr 26, 2024 at 02:06:16PM -0600, Hank Leininger wrote:
> >   - ~11k EndeavourOS/Arch packages

> Please just write Arch packages. There is no upstream collaboration
> from Endeavour on those 11k packages.

That's fair enough; I rather was attempting to indicate which distro
from a family we used, "~11k Arch packages (on EndeavourOS)", similar to
testing on Rocky as a representative of the RPM ecosystem, etc. We did
not analyze any AUR packages (yet? seems like we could, and if we could
we should).

These same corpuses will be used for continued m4 analysis; so far we've
only done the m4 spelunking on Gentoo.

That reminds me, we did not specify what release-trains we tested for
each; our goal was to pick one that had (or had had, and been rolled
back) a backdoored xz-utils version (5.6.0 / 5.6.1) if we could:

- Debian sid

- EndeavourOS 2024.01.25

- Gentoo as-of 2024-04-18

- Rocky 9.3

Thanks,

--=20

Hank Leininger <hlein@korelogic.com>
8428 ED14 5268 C727 0C48  F454 846F 0637 5FEB 1612

--iMe0p+wxIWwuyqgL
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEhCjtFFJoxycMSPRUhG8GN1/rFhIFAmYt8I4ACgkQhG8GN1/r
FhKY6w/9Hq8UE8gSjF2fJXogtPRfpcO8ieUMB4jRhfVXTff1ysGGvZX7xg5k0yi/
W4uWShNnpupncrRxb1mGUhK0bm7glwWj2i7LSdLSD0IGwyqVffOhV9x1Bqracb+W
Y53sgQbCRNC+Ghdc67TR12/Mua4pIQmE99ijkpvlupVcc3vaDu7tsCWitjWzUAJ+
zF0ooO0u6XXVf78xHyxdUsWObr8s5C/D7TT8DRMG3vHAtLXClErfhhi3GfOYTF+i
IQwvCD6ZmdDV37YNiiAZyt3vKDRGrcEPXa0TqPINRGQeLevi2W+ha9MfJu4voPy2
nG6epQpr2Hd/VSOCzeuPFZYYzBvD8eOeN5JV1PglGn8FObuqYz/UDv+I+qdCfpgx
qzBSd8hLRa7Zvz5TAzLc3VtiZMzvJx5WhXlZtp4O/xreRM1LPN2wIM9vCypFiq9/
0xlGAOyRtLLorxdaMxDZ7E43uV1oz5HxoeldJIVS8URuCRGOLgX8tmU0iEesbscA
hTJTaFfqp2GKcCaNJSjue7LXfk4aEwGRDJPu5o6Z9F8gfhhnIunfgV1Nq3dpC/gu
jkrmPGSj7rxQTsBx/ERMkNKtwbRzcOvDFTH13wI3dby0P9P15oS1RJYHzlsoqhvf
tTTN17tZ4px8kbsTlKZnOK0zzi7DuUSDEOSE2lM539VAeAbdZF4=
=bRye
-----END PGP SIGNATURE-----

--iMe0p+wxIWwuyqgL--
