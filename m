Received: (qmail 5162 invoked by uid 550); 10 Apr 2024 16:24:42 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28477 invoked from network); 10 Apr 2024 16:11:01 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=joeyh.name; s=mail;
	t=1712765451; bh=y5Vu34TmHYM/ZaD49LIzh/9T+00heDINPokRdF3JOBw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=O5ypqeN+6KZP/ZG0hv3mrLIih+OuuUYvMl9jmp7pHiqry/uxO/rzeTyq5yy7uPnMX
	 sxNr+WTEEkjoQ8ENRjoy5QCu5afw2vB/rsHdxYiuumc+4o+pTxqrKYIDohwecJL35a
	 uLYLxiZGGR1FXtabQa6N0SkGG4J5RTjwYwFCakTk=
X-Question: 42
Date: Wed, 10 Apr 2024 12:10:51 -0400
From: Joey Hess <id@joeyh.name>
To: Alejandro Colomar <alx@kernel.org>
Cc: oss-security@lists.openwall.com, Sam James <sam@gentoo.org>,
	Jonathan Nieder <jrnieder@gmail.com>,
	Andres Freund <andres@anarazel.de>,
	Lasse Collin <lasse.collin@tukaani.org>, xz@tukaani.org,
	secalert@redhat.com, team@security.debian.org
Message-ID: <Zha6C3RExPyp8iBd@kitenet.net>
References: <ZhYEpAFolwefRv7X@debian>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="zUF/evWfume9zCfk"
Content-Disposition: inline
In-Reply-To: <ZhYEpAFolwefRv7X@debian>
Subject: [oss-security] Re: Analysis on who is Jia Tan, and who he could work for, reading
 xz.git

--zUF/evWfume9zCfk
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Alejandro Colomar wrote:
> I suspect those +0200 and +0300 correspond to a few times that this guy
> would have traveled to his intelligence agency for some special work

That's a theory. But many of the commits with author Jia Tan in those
time zones have committer Lasse Collin, and show signs of being eg,
git-amed patch sets which may have also been rebased. In which case
it would make sense that these have Lasse Collin's usual timezone.

I analized that here: https://hachyderm.io/@joeyh/112193146103113070

--=20
see shy jo

--zUF/evWfume9zCfk
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEKKUAw1IH6rcvbA8l2xLbD/BfjzgFAmYWugkACgkQ2xLbD/Bf
jzghIg//e9mSfotdHV4kQ8mvbkeDNMC6cywT+K/cuBmsMxhWbN5QGby6ZWF2AXn8
AgR1blOx33s5rFv9i6NdBFzFO3C8lI5qqDtZH8RU4vHuuP8CQ5jHfinZgfUuSdGw
GglTxhteMkyYzutsLUs5WU7F+0YJbw9/na5VfwZbUFZjLVxQMyPXJNfMmwd+1K6s
vpCbdzuQp3QBNSnXnmdsF4BIOd2aAFmcMmk2YDbxKbKSlW5zzXvefmcijudqFsX+
G6CAvUN76pFVy/KEbGDwFGr9XjQVml58iNV9nDxUU/+4U4dESzfKJPj8kGzjq0kr
KKpWqesck9MIP0gau3X9G46Mh9On3xRQJ6XPJlrs+cu58SUFJqlRtpSLIh48Tyk9
7zNZvjd1jH0ybaV3ObMshnMJqxJARkL2L5brdKGpHGMcEJ/tp0/XqhcI2omyVa1o
KfLjLL1kkte2t+nJbmksTqMDS/9UNxToxGIIAx2AE24NnttTT9GZxvexNUatbSmM
nOdDIOVuEunI6kYRmPm1VosHZWriVKAEaYyZ5wyOHAyQt1yhUzQf8PfhvRg97hjh
bnBQLH5olLjo5PLfjtcQMWUZf4RVL7N3/0UCG0bM9dsAt1VbvTz0yiI1LGzUPHoa
dX+v3XLKEXiFNMClpi6H2i1bJ8t216j4xgaeLrB2qBXgYUpoFEA=
=CfPt
-----END PGP SIGNATURE-----

--zUF/evWfume9zCfk--
