Received: (qmail 3564 invoked by uid 550); 3 Apr 2025 16:29:28 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 32262 invoked from network); 3 Apr 2025 15:18:43 -0000
From: Sam James <sam@gentoo.org>
To: oss-security@lists.openwall.com
Cc: Lasse Collin <lasse.collin@tukaani.org>,  Sebastian Andrzej Siewior
 <sebastian@breakpoint.cc>
In-Reply-To: <871pu9gu5r.fsf@gentoo.org>
Organization: Gentoo
References: <87bjthw108.fsf@gentoo.org> <871pu9gu5r.fsf@gentoo.org>
User-Agent: mu4e 1.12.9; emacs 31.0.50
Date: Thu, 03 Apr 2025 16:18:28 +0100
Message-ID: <87sempff3v.fsf@gentoo.org>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="=-=-=";
	micalg=pgp-sha512; protocol="application/pgp-signature"
Subject: [oss-security] Re: XZ Utils: Threaded decoder frees memory too early (CVE-2025-31115)

--=-=-=
Content-Type: text/plain

Sam James <sam@gentoo.org> writes:

> # Impact
>
> The threaded .xz decoder in liblzma has a bug that can at least result
> in a crash (denial of service).  The effects include heap use after free
> and writing to an address based on the null pointer plus an offset.
>
> This affects XZ Utils versions from 5.3.3alpha to 5.8.0. Applications
> and libraries that use the lzma_stream_decoder_mt function are affected.

Our belief is that it's highly impractical to exploit on 64-bit systems
where xz was built with PIE (=> ASLR), but that on 32-bit systems,
especially without PIE, it may be doable.

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iOUEARYKAI0WIQQlpruI3Zt2TGtVQcJzhAn1IN+RkAUCZ+6mxV8UgAAAAAAuAChp
c3N1ZXItZnByQG5vdGF0aW9ucy5vcGVucGdwLmZpZnRoaG9yc2VtYW4ubmV0MjVB
NkJCODhERDlCNzY0QzZCNTU0MUMyNzM4NDA5RjUyMERGOTE5MA8cc2FtQGdlbnRv
by5vcmcACgkQc4QJ9SDfkZCzPQEAzpzK1sPr7rY9j9M8b/RrprNU7nKmc5Os5NYb
EImoPpUBALN6BvU2q3doVoCdcamefr+dvJOrmO8l4eaa6mAoJbgG
=jWyA
-----END PGP SIGNATURE-----
--=-=-=--
