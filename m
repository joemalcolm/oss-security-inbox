Received: (qmail 11742 invoked by uid 550); 25 Nov 2024 16:25:25 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 32499 invoked from network); 25 Nov 2024 05:50:53 -0000
Message-ID: <b411aa8f-77dc-4542-89b6-9f2cb0f5b031@gentoo.org>
Date: Mon, 25 Nov 2024 00:50:37 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: oss-security@lists.openwall.com
References: <ykmy97joESH91bCHsZwXrM1OS3YcckmX8UcuxUQ6ogsxZjKI9lox0cTS-HuVaVUgn7fcmBdjRV4kdvZU3X5J6j8Ro1OJKzl1DHnka9f6g-M=@hexsys.org>
 <20240520120909.GA8629@openwall.com>
 <CAAiePB65qp8UeYHGZsH3g+mbCe76jCS=MJ5EeM4f=F2x-FfyDw@mail.gmail.com>
Content-Language: en-US
From: Eli Schwartz <eschwartz@gentoo.org>
Autocrypt: addr=eschwartz@gentoo.org; keydata=
 xjMEZmeRNBYJKwYBBAHaRw8BAQdAYNZ7pUDWhx1i2f3p6L2ZLu4FcY18UoeGC04Gq/khqwfN
 I0VsaSBTY2h3YXJ0eiA8ZXNjaHdhcnR6QGdlbnRvby5vcmc+wpYEExYKAD4WIQTvUdMIsc4j
 CIi+DYTqQj6ToWND8QUCZoRL+gIbAwUJBKKGAAULCQgHAwUVCgkICwUWAgMBAAIeBQIXgAAK
 CRDqQj6ToWND8aB5AP9r4kB691nNtNwKkdRiOdl7/k6WYzokvHvDamXxRJ0I+gEAjZqR5V8y
 mfR3fy2Z+r2Joeqdt3CIv5IwPs64spBvigLOOARmZ5E0EgorBgEEAZdVAQUBAQdATT46Z06b
 1X9xjXFCYFxmq/Tj3tSEKZInDWTpoHQp4l8DAQgHwn4EGBYKACYWIQTvUdMIsc4jCIi+DYTq
 Qj6ToWND8QUCZmeRNAIbDAUJBKKGAAAKCRDqQj6ToWND8a2RAP40KPfbfoiZAJW5boFmFJ3G
 TUBDJRh9CWHyaPqq2PN+0wD/R07oLzfnJUN209mzi9TuTuHjeZybysyqXSw4MAxkMAY=
In-Reply-To: <CAAiePB65qp8UeYHGZsH3g+mbCe76jCS=MJ5EeM4f=F2x-FfyDw@mail.gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------08dwBVCaO86ke1lW2XlzfNYT"
Subject: Re: [oss-security] Article: State of Sandboxing in Linux

--------------08dwBVCaO86ke1lW2XlzfNYT
Content-Type: multipart/mixed; boundary="------------65qB9lQN0RBu0W4f03ZrwoF0";
 protected-headers="v1"
From: Eli Schwartz <eschwartz@gentoo.org>
To: oss-security@lists.openwall.com
Message-ID: <b411aa8f-77dc-4542-89b6-9f2cb0f5b031@gentoo.org>
Subject: Re: [oss-security] Article: State of Sandboxing in Linux
References: <ykmy97joESH91bCHsZwXrM1OS3YcckmX8UcuxUQ6ogsxZjKI9lox0cTS-HuVaVUgn7fcmBdjRV4kdvZU3X5J6j8Ro1OJKzl1DHnka9f6g-M=@hexsys.org>
 <20240520120909.GA8629@openwall.com>
 <CAAiePB65qp8UeYHGZsH3g+mbCe76jCS=MJ5EeM4f=F2x-FfyDw@mail.gmail.com>
In-Reply-To: <CAAiePB65qp8UeYHGZsH3g+mbCe76jCS=MJ5EeM4f=F2x-FfyDw@mail.gmail.com>

--------------65qB9lQN0RBu0W4f03ZrwoF0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 11/24/24 7:12 PM, Evan Carroll wrote:
> A lot of words on that one,
>=20
> Not sure if you're the author of the paper. But off the get go, I'm
> extremely confused. I wanted to give my critique on the paper instead of
> the technology. My experience with "user-space sandboxing" is kernel
> user-namespaces. My interface to them is podman. It's not clear what this
> "sandbox" offers that podman's rootless mode does not. I believe I'm in t=
he
> majority with experience in containerization. But you're grounding this
> paper in "two prime examples of sandbox: Gentoo's sandbox and Exherbo's
> sydbox" -- things most people have probably never used. This for me raises
> the question: when would I want "Gentoo's sandbox and Exherbo's sydbox"
> over kernel user-namespaces and podman?
>=20
> I don't see that answer immediately and so my desire to continue reading
> drops significantly. This is only constructive criticism, maybe I'm not
> your desired audience but the title was interesting enough for me to jump
> in.


You might want "sydbox", though I wouldn't know.

I can definitely tell you that you do not want Gentoo's sandbox, which
isn't a security technology at all. It's an LD_PRELOAD mechanism, and
thus easily defeated by malicious software, which assumes that it is
being used as a "sandbox" for innocent software that is perhaps badly
written to run inside, and interjects code on regular file accesses to
check whether the software was "expected" to attempt to read or write in
that location.

On a mismatch, it errors out verbosely and tells you that the relevant
software was badly written and tried to, say, install the software to
/usr/bin upon running `make DESTDIR=3D$PWD/rootimage/ install`, which is
obviously wrong because the software has a bad Makefile that doesn't
respect $DESTDIR.

Of course, it can also tell you about more interesting sandbox
violations, such as "attempted to download source code from
https://crates.io and save it to /home/eschwartz/.cargo" which is
another thing that well-meaning software might do but really shouldn't be.

You wouldn't imagine in a million years using this as a security
boundary. But you might use it to help catch common mistakes when
building software.

It dates back to 2002, when it was forked from the same codebase that
was also incorporated into Debian's "checkinstall" package.

...

My understanding is that sydbox is intended to be more of a competitor
to bubblewrap, and happens to include profiles which exherbo uses to
make it do similar tasks to Gentoo's sandbox, but that sydbox itself is
much more powerful and flexible than sandbox.

...

By the way, you mention "when would I want [...] over kernel
user-namespaces", which I think is a complete and utter misunderstanding
of the problem domain.

sydbox documents that one of the technologies it uses in its source code
is user namespaces. Generally, "user namespaces" isn't a program you
use, it's a technique you can make use of in the source code of another
program entirely... such as sydbox or at a high level, podman.


=46rom looking through the sydbox homepage, and very quickly checking for
keywords such as "podman", I got pointed to this link:

https://man.exherbolinux.org/syd-oci.1.html

It suggests that the relevance of this software to podman is that you
can use "sydbox" as an OCI runtime for podman, to replace "crun" or
"runc", via:

podman run --runtime=3Dsyd-oci


Take that as you will. Since you're a podman user, but you don't say
anything about whether you are a crun user or a runc user, I take it you
don't care how you get your namespaces and would be perfectly fine using
sydbox too, but won't be changing anything unless podman's own default
changes?


--=20
Eli Schwartz

--------------65qB9lQN0RBu0W4f03ZrwoF0--

--------------08dwBVCaO86ke1lW2XlzfNYT
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature.asc"

-----BEGIN PGP SIGNATURE-----

wnsEABYIACMWIQTnFNnmK0TPZHnXm3qEp9ErcA0vVwUCZ0QQLQUDAAAAAAAKCRCEp9ErcA0vV6Fw
AP47LSS+i3ktxUMcW67EEosuUdVGtIfiBJ9xfUQNqqGRGQEA+E1m/XyB0cKKC2tpEVwwAm7owPNF
LS68cHdmDkPSxQE=
=jxjG
-----END PGP SIGNATURE-----

--------------08dwBVCaO86ke1lW2XlzfNYT--
