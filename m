Received: (qmail 21740 invoked by uid 550); 29 Jul 2024 07:02:52 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 21704 invoked from network); 29 Jul 2024 07:02:52 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=debian.org;
	s=smtpauto.stravinsky; h=X-Debian-User:MIME-Version:Content-Type:
	Content-Transfer-Encoding:References:In-Reply-To:Date:To:From:Subject:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description;
	bh=UcqgogBMKGJgZBC7au7Ug1FeA44XYwTmb6MtZHo6Jy8=; b=PwghRZCipsOHrdTE2C3snKJJBY
	W/CyMhSwXgQEnh/bAZsnU2x3nlcAt70OtzqxeQBAv+I84xYaYMuAPNnTcXfZsdOcLmWRZN19Xe8XQ
	n8zbnAUrrESj7Ll0XY4DWrjzwxaJw6z03jdLkFX2eBggZijP1HIEJkmROcNv+aAYtr+rOVBA/5FiM
	MoOUYaFirP9NjNic+jsMAUeDRk5iTBDa9ChLfi26DgI76K+guwPfMQ6vo9hL0YxxNU8F6JA+tPV8i
	5xc5WbbdG+z3SIYzyUjbqYYgycAieYZDfQ952HiXVfCXrber76XwL6ApEB8DCiv+rfew311Z+cXZ1
	QH+3qsYg==;
Message-ID: <5e5fcc5b94cbcd6eb83fcfd3e73f0f08c0cba7e2.camel@debian.org>
From: Yves-Alexis Perez <corsac@debian.org>
To: oss-security@lists.openwall.com
Date: Mon, 29 Jul 2024 09:02:33 +0200
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
> =C2=A0 - Modern x86 systems with the CVE-2024-26621 patch will NOT ranzom=
ize=20
> the load address of large libraries.=C2=A0 (i.e. is still vulnerable to=20
> "ASLRn't" despite the patch)

So it turns out this was because the patch addressing CVE-2024-26621
(4ef9ad19e17676b9ef071309bc62020e2373705d) did so using CONFIG_32BIT which =
is
(perhaps surprisingly) *not* defined on IA-32.

d9592025000b3cf26c742f3505da7b83aedc26d5 was recently merged to Linus tree
switching to !IS_ENABLED(CONFIG_64BIT) which should work on all architectur=
es.
So ASLRn't *should* be fixed on IA-32 kernels with 6.11.

Regards,
- --=20
Yves-Alexis
-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEE8vi34Qgfo83x35gF3rYcyPpXRFsFAmanPokACgkQ3rYcyPpX
RFvvbgf9FxMoxKSPfurTVA4wavVh2wQ397KBfPEz1QtKwHqrmZR4TfEJOlzsC2BM
h/6Vk+uJK70ByaKvR1j8fdYMUKniIM5GAAfNdpbPpsTgMLHGjHrj/89zG2R2YxIN
GwuY00rOyUXRF8hpfMCACnGatRJQqTcnr+Bdb6abYkxxTQLTu9vK/gj+A/eJOw2y
ayj/SOd4hnSl7725A8rTiiW53mdE3jDhxLNHnTU8Ucdwd2SFNk81bu3j0EWkcw6V
J5DFcGGhiIPIWb6e2ff3ucOLBFwXkuhxJqoocwaQEdwtBqq5Ui7MWHfM1fpdHgNH
k+JbdP0eXtrUgbSjLiQfzYwMPTeLVw=3D=3D
=3DzO5O
-----END PGP SIGNATURE-----
