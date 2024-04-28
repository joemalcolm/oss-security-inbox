Received: (qmail 11940 invoked by uid 550); 28 Apr 2024 15:53:21 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9341 invoked from network); 28 Apr 2024 15:34:16 -0000
From: Sam James <sam@gentoo.org>
To: oss-security@lists.openwall.com
Organization: Gentoo
User-Agent: mu4e 1.12.4; emacs 30.0.50
Date: Sun, 28 Apr 2024 16:34:01 +0100
Message-ID: <871q6p8psm.fsf@gentoo.org>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="=-=-=";
	micalg=pgp-sha512; protocol="application/pgp-signature"
Subject: [oss-security] Suspicious hook-loading mechanism in hyprland

--=-=-=
Content-Type: text/plain

Hi!

Someone passed along https://blog.vaxry.net/articles/2024-own-malloc to
me, and I noticed some curious bits.

hyprland seems to have committed an interesting homebrew malloc
implementation (which is fine in theory), but the reasons for it
existing & how it works are not so fine.

Fisrt, it relies on writing an object file at a predictable
path in /tmp and reading it back later.

It was needed to facilitate a trampoline which looks.. unsound. The
whole hook system looks terrifying.

Initial reading:
* https://github.com/hyprwm/Hyprland/blob/965a2e5b213eee595808bc7bff28e7df59442720/src/plugins/HookSystem.cpp#L138
* https://github.com/hyprwm/Hyprland/blob/965a2e5b213eee595808bc7bff28e7df59442720/src/plugins/HookSystem.cpp#L188

There are some primitives that may be useful even once the hook setup is
done too.

I have charitably termed the mechanism "not robust". I haven't reported
it upstream because of their hostility on other matters. I don't feel
too guilty about not having reported it given it fell out so immediately
upon inspection.

I don't plan on spending more time on this, sorry, but I felt like I had
to share it.

thanks,
sam

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iOUEARYKAI0WIQQlpruI3Zt2TGtVQcJzhAn1IN+RkAUCZi5sal8UgAAAAAAuAChp
c3N1ZXItZnByQG5vdGF0aW9ucy5vcGVucGdwLmZpZnRoaG9yc2VtYW4ubmV0MjVB
NkJCODhERDlCNzY0QzZCNTU0MUMyNzM4NDA5RjUyMERGOTE5MA8cc2FtQGdlbnRv
by5vcmcACgkQc4QJ9SDfkZAW1wD/WROydRE5TbGTvgVBhchPkswHt6NkcjrkWGUD
dcggsaAA/RNRC0dJwD40EU1mv1PTm3rztzUFB+QENczpCWFcNWIA
=q9+v
-----END PGP SIGNATURE-----
--=-=-=--
