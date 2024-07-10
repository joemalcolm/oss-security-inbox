Received: (qmail 3300 invoked by uid 550); 10 Jul 2024 20:54:36 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3282 invoked from network); 10 Jul 2024 20:54:36 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=debian.org;
	s=smtpauto.stravinsky; h=X-Debian-User:MIME-Version:Content-Type:
	Content-Transfer-Encoding:References:In-Reply-To:Date:To:From:Subject:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description;
	bh=jBYwf3v+k2GsNp2wVym1BNSUdfrLv0LnM4itgiyiLos=; b=nWEh+aKnnOs2x+UO5RJAf3QsT3
	Yj4TS7mYc7/XtaOLShmwwfcwFCcr8iHcyB0noOUtThfNk8YB3hUjOSdt/GdqcoNK0ce7JuakhRvQe
	2rSemdhK9mOQ3zuUvPZInQVfkisyUbstV6WinEoY/t2ouDzXwOj0fPwalxG5Z6+SO7HDSbPcFjacC
	nGhH0PEVjzzKWw6i4B1ACZD7qpOGzbs3ESe48G9yBMPmjFR/xPOrxqqj3vHXkLim5gehSTILIo3Kz
	d3p2t9qvospq3cRWloi0uPPnOJoPqQpGe9V+6XFzXhGBA3qOinmkrbGoaAKOv5d+EP7Wi76FOvSZV
	rCWQejdA==;
Message-ID: <6771f9536d49185fc8f1ea9905c13cf4dd8776d2.camel@debian.org>
From: Yves-Alexis Perez <corsac@debian.org>
To: oss-security@lists.openwall.com
Date: Wed, 10 Jul 2024 22:54:19 +0200
In-Reply-To: <30400489-6c59-4133-a3ce-fa0c16b63c02@analygence.com>
References: <30400489-6c59-4133-a3ce-fa0c16b63c02@analygence.com>
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.52.3-1 
MIME-Version: 1.0
X-Debian-User: corsac
Subject: Re: [oss-security] ASLRn't is still alive and well on x86 kernels,
 despite CVE-2024-26621 patch

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

On Mon, 2024-07-08 at 12:37 -0400, Will Dormann wrote:
> =C2=A0As reported in the Debian bug, running the program repeatedly with =
a=20
> 2MB file will report the same address every time on a vulnerable system,=
=20
> and will be randomized on a system that is behaving as expected.
>=20
> In testing some platforms that I had readily available, I've concluded:
> =C2=A0 - Modern (e.g. 6.x kernel) x86 platforms load a large-enough libc =
at=20
> the same address every time. (i.e. no practical ASLR -- "ASLRn't")
> =C2=A0 -=C2=A0 Modern (e.g. 6.x kernel and large-enough libc) x86_64 plat=
forms=20
> running 32-bit code will load a large-enough library at the same address=
=20
> every time.
> =C2=A0 - Modern x86_64 systems with the CVE-2024-26621 patch will randomi=
ze=20
> the load address of large libraries loaded by 32-bit apps.
> =C2=A0 - Modern x86 systems with the CVE-2024-26621 patch will NOT ranzom=
ize=20
> the load address of large libraries.=C2=A0 (i.e. is still vulnerable to=20
> "ASLRn't" despite the patch)

Hey,

I'm testing on my Debian sid laptop with Linux kernel 6.9.7-1. This is amd64
but running test-mmap built with -m32, and I get:

for i in {0..10}; do ./test-mmap < zeros; done
mmap(NULL, 2097152, PROT_READ, MAP_PRIVATE|MAP_DENYWRITE, 0, 0) =3D 0xf7df3=
000
mmap(NULL, 2097152, PROT_READ, MAP_PRIVATE|MAP_DENYWRITE, 0, 0) =3D 0xf7d98=
000
mmap(NULL, 2097152, PROT_READ, MAP_PRIVATE|MAP_DENYWRITE, 0, 0) =3D 0xf7d6f=
000
mmap(NULL, 2097152, PROT_READ, MAP_PRIVATE|MAP_DENYWRITE, 0, 0) =3D 0xf7de7=
000
mmap(NULL, 2097152, PROT_READ, MAP_PRIVATE|MAP_DENYWRITE, 0, 0) =3D 0xf7df6=
000
mmap(NULL, 2097152, PROT_READ, MAP_PRIVATE|MAP_DENYWRITE, 0, 0) =3D 0xf7cfd=
000
mmap(NULL, 2097152, PROT_READ, MAP_PRIVATE|MAP_DENYWRITE, 0, 0) =3D 0xf7d25=
000
mmap(NULL, 2097152, PROT_READ, MAP_PRIVATE|MAP_DENYWRITE, 0, 0) =3D 0xf7d48=
000
mmap(NULL, 2097152, PROT_READ, MAP_PRIVATE|MAP_DENYWRITE, 0, 0) =3D 0xf7dad=
000
mmap(NULL, 2097152, PROT_READ, MAP_PRIVATE|MAP_DENYWRITE, 0, 0) =3D 0xf7d7b=
000
mmap(NULL, 2097152, PROT_READ, MAP_PRIVATE|MAP_DENYWRITE, 0, 0) =3D 0xf7df4=
000

So it *looks* to me like it's =E2=80=9Cproperly=E2=80=9D randomized (for a =
32b process). I
don't have a 32b install handy so I can't test but I'd assume the -m32 to
exhibit the same behavior? This is with vm.mmap_rnd_compat_bits=3D8.

Or am I doing something wrong?
- --=20
Yves-Alexis
-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEE8vi34Qgfo83x35gF3rYcyPpXRFsFAmaO9PsACgkQ3rYcyPpX
RFtwbAf/esGTSILYL1Seffq43QtauizeyRAth/3U2o39SbC/KD5Bpx2wwT3+3WX5
ag96yhhBWpf6ef3JgSlblYqCZeFLRFyVYbpLQm4GpfVHDOzvJI1qaF6wPlxyXetn
CFy/mQq/CWVNNQ9BH4FvU0SRwaKa7ijszvkDk/RsqS/8e5nR5ufGDyH0LlZU8HJ4
LTLQLLHUA1Xt9xXhBuuNm7iMh0HmesQKOQcPQM0/e6ea7I3enLJNm14gv3eYWUIO
RnG+TqwpbGW1E4NlcxZ7qo7sXabmn6tKTg5gQh5X9ADDgW0rvpeKEtYda1rO8M79
/od7a49ITS3XR7tjNswxNBdqelt8Tg=3D=3D
=3D8zdL
-----END PGP SIGNATURE-----
