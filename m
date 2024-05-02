Received: (qmail 23950 invoked by uid 550); 2 May 2024 21:36:19 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 20019 invoked from network); 2 May 2024 21:35:20 -0000
From: Sam James <sam@gentoo.org>
To: Solar Designer <solar@openwall.com>
Cc: oss-security@lists.openwall.com
In-Reply-To: <20240403205835.GA12974@openwall.com> (Solar Designer's message
	of "Wed, 3 Apr 2024 22:58:35 +0200")
Organization: Gentoo
References: <20240329155126.kjjfduxw2yrlxgzm@awork3.anarazel.de>
	<ZgcOVnk5hCVkDUt/@ycc.fr> <uu9f4s$oga$2@ciao.gmane.io>
	<20240331213023.GA22787@openwall.com>
	<cd985494-7e02-ab46-785d-78ba6eabae4d@gmail.com>
	<20240403205835.GA12974@openwall.com>
User-Agent: mu4e 1.12.4; emacs 30.0.50
Date: Thu, 02 May 2024 22:35:02 +0100
Message-ID: <87o79nlwxl.fsf@gentoo.org>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="=-=-=";
	micalg=pgp-sha512; protocol="application/pgp-signature"
Subject: Re: [oss-security] escaping terminal control characters (was Re:
 backdoor in upstream xz/liblzma leading to ssh server compromise)

--=-=-=
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable

Solar Designer <solar@openwall.com> writes:

> On Wed, Apr 03, 2024 at 11:03:17AM +1100, Matthew Fernandez wrote:
>> On 4/1/24 08:30, Solar Designer wrote:
>> >On Sat, Mar 30, 2024 at 04:37:48PM -0000, Tavis Ormandy wrote:
>> >>It was also pointed out they submitted an odd PR to libarchive:
>> >>
>> >>https://github.com/libarchive/libarchive/pull/1609
>> >>
>> >>In summary, they replaced calls to safe_fprintf() with fprintf() --
>> >>meaning control characters are no longer filtered from errors. That
>> >>seems pretty minor, but now that we know they were in the business of
>> >>obfuscating the presence of backdoors -- seems a bit suspicious.
>> >>
>> >>Regardless, that change has now been reverted:
>> >>
>> >>https://github.com/libarchive/libarchive/pull/2101
>> >
>> >This does look minor indeed - not usable for large-scale attacks, and
>> >libarchive is quite unique in that it even bothered to filter control
>> >characters, whereas most command-line tools outputting filenames don't
>> >bother.  My guess is it could have been an early experiment to see
>> >whether the project would accept PRs degrading security.
>> >
>> >That said, here's an excellent write-up by David Leadbeater on specific
>> >ways that specific terminal emulators may be usefully attacked with
>> >control sequences:
>> >
>> >https://dgl.cx/2023/09/ansi-terminal-security#vulnerabilities-using-kno=
wn-replies
>>=20
>> Is the currently accepted wisdom that any application printing to=20
>> stdout/stderr should take steps to avoid control characters in the=20
>> output?
>
> First, let's limit this to cases where the control characters come from
> potentially untrusted input to the program.  Obviously, many programs
> generate terminal escapes on their own (usually via a library), for
> their intended functionality (colorized listings, TUIs, etc.)  Some
> programs pass potential control characters from their trusted input.
>
> Second, I think no, there isn't currently an established opinion on
> whether programs should perform such filtering of untrusted input.

Lasse has put up an initial implementation for xz:
https://github.com/tukaani-project/xz/pull/118.

Comments are welcome. It was a TODO from a long time ago ;)

We're not sure how much is overkill (or underkill) for this, especially
given it gets harder when Unicode is involved.

> [...]

thanks,
sam

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iOUEARYKAI0WIQQlpruI3Zt2TGtVQcJzhAn1IN+RkAUCZjQHBl8UgAAAAAAuAChp
c3N1ZXItZnByQG5vdGF0aW9ucy5vcGVucGdwLmZpZnRoaG9yc2VtYW4ubmV0MjVB
NkJCODhERDlCNzY0QzZCNTU0MUMyNzM4NDA5RjUyMERGOTE5MA8cc2FtQGdlbnRv
by5vcmcACgkQc4QJ9SDfkZCa7AEAsSKiopElCyfDYKHncB3DIJg4KWgJzCqZGOwP
RqqdZ1IBAJg6o9fKNSHXQP5P7HC6pK2vhzuD1ujHsbJ2fzPtBAME
=gKxB
-----END PGP SIGNATURE-----
--=-=-=--
