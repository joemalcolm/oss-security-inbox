Received: (qmail 3929 invoked by uid 550); 26 Apr 2024 21:19:33 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30074 invoked from network); 26 Apr 2024 21:17:52 -0000
From: Sam James <sam@gentoo.org>
To: Simon McVittie <smcv@debian.org>
Cc: oss-security@lists.openwall.com
In-Reply-To: <ZiwVmhV2muRhsAfy@remnant.pseudorandom.co.uk> (Simon McVittie's
	message of "Fri, 26 Apr 2024 21:59:06 +0100")
Organization: Gentoo
References: <20240426135217.a103ce0c-a775-4a49-ae2c-94dfd64f6695@korelogic.com>
	<ZiwVmhV2muRhsAfy@remnant.pseudorandom.co.uk>
User-Agent: mu4e 1.12.4; emacs 30.0.50
Date: Fri, 26 Apr 2024 22:17:36 +0100
Message-ID: <87le4zhlhr.fsf@gentoo.org>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="=-=-=";
	micalg=pgp-sha512; protocol="application/pgp-signature"
Subject: Re: [oss-security] Update on the distro-backdoor-scanner effort

--=-=-=
Content-Type: text/plain

Simon McVittie <smcv@debian.org> writes:

> On Fri, 26 Apr 2024 at 14:06:16 -0600, Hank Leininger wrote:
>>   - Turns out serial numbers are made up and the points don't matter.
>>     But still, this author appears to have _thought_ they were
>>     important.
>
> The serial number of a m4 file matters if the attacker wants their back
> door to remain in place when a distro runs autoreconf -fi or similar
> (as many Autoconf-built Debian packages do, for example); or, less
> maliciously, if the author of a legitimate set of Autoconf macros wants
> their bug fixes to remain in place when an older distro does the same.
>
> The purpose of the serial number is so that autoreconf can upgrade bundled
> macros in the `make dist` tarball to the distro version if it happens
> to be newer (for example if I prepared a Flatpak release on Debian 12
> but you are building it on Arch), without downgrading to an older distro
> version that might be lacking newer features or bug fixes (for example
> when someone else builds that same Flatpak release on Debian 11).

But it doesn't work that way! See the bottom of
https://www.gnu.org/software/automake/manual/html_node/Serials.html.

"Finally, note that the --force option of aclocal has absolutely no
effect on the files installed by --install. For instance, if you
have modified your local macros, do not expect --install --force to
replace the local macros by their system-wide versions."

(I was very surprised to learn this when doing this work, it was
pointed out to me by Guillem Jover.)

>
> If a developer of Autoconf macros is following its documentation, the
> serial number should go up whenever the code changes. The observant
> will of course notice that this doesn't account for the possibility of
> non-linear development (macros being modified in a non-canonical location,
> forked, edited collaboratively, or otherwise not having a monotonically
> increasing version number) which I think is a reflection of what was
> and wasn't considered to be normal when it was designed - it's very much
> from the "cathedral" era.
>
> (Many projects don't follow the documentation and do make changes without
> incrementing the serial number, which is a bug.)
>
> Beyond that single purpose, yes, the serial number is made up and doesn't
> matter.
>
>     smcv

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iOUEARYKAI0WIQQlpruI3Zt2TGtVQcJzhAn1IN+RkAUCZiwZ8V8UgAAAAAAuAChp
c3N1ZXItZnByQG5vdGF0aW9ucy5vcGVucGdwLmZpZnRoaG9yc2VtYW4ubmV0MjVB
NkJCODhERDlCNzY0QzZCNTU0MUMyNzM4NDA5RjUyMERGOTE5MA8cc2FtQGdlbnRv
by5vcmcACgkQc4QJ9SDfkZCa4wD+I5tQ/auDaXw3J1sVIMw/f6fy0gBkOLNg0sl2
7grDlY0A/joAOABSD/aFY2F5QfcAU3Q/dSpnTCfK4KcWNpbrsPMI
=ZZ2m
-----END PGP SIGNATURE-----
--=-=-=--
