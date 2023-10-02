Received: (qmail 20320 invoked by uid 550); 2 Oct 2023 12:03:28 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 20293 invoked from network); 2 Oct 2023 12:03:27 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=orlitzky.com; s=mail2;
	t=1696248195; bh=BarBKVgY133pa5AoNAZNoVZ303ydF9CdLuZhj1zx68w=;
	h=Subject:From:To:Date:In-Reply-To:References;
	b=lJulsGBWgolV6x5eyvFNHkczrr02yS1mzBhAcXWP9saH8Pe+OaFinTSnEy/f5F9ee
	 zZv2NjgHvG3A2oc3Gv/UYPXta7f7f5dtvADELhGUqCJ2lz4A9mYakja9BS38wUEfy7
	 F9p8cgaZtnPGnQ84n54Aig9IYvjUma6ScyvJC/dU=
Message-ID: <6cfbc14a0c3b3cca937468eb9e6d618ab88a8d55.camel@orlitzky.com>
From: Michael Orlitzky <michael@orlitzky.com>
To: oss-security@lists.openwall.com
Date: Mon, 02 Oct 2023 08:03:14 -0400
In-Reply-To: <ZRkAokgUEw9cD7yG@itl-email>
References: <bd99e07a-8d8c-4652-9089-7c0fc2e86409@oracle.com>
	 <ZRXlPoozp5n+cWv1@itl-email>
	 <22398fb96f04bf431b3ed0e4778e1cfcd64046ea.camel@orlitzky.com>
	 <7f60d2e7-59ca-13cd-9da1-473bd70dd5bb@juniper.net>
	 <3708d220187cfe4a2f03f53067edfd15f1cbf8b5.camel@orlitzky.com>
	 <ZRdyaYEi9YOZUXAg@codewreck.org> <ZRhUF9yHctTj5DhO@itl-email>
	 <36a25f2467809ee727239db10684e147e7440326.camel@orlitzky.com>
	 <ZRkAokgUEw9cD7yG@itl-email>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.48.4 
MIME-Version: 1.0
Subject: Re: [oss-security] Rust programs in distrbutions (Was:
 CVE-2023-5217: Heap buffer overflow in vp8 encoding in libvpx)

On Sun, 2023-10-01 at 01:16 -0400, Demi Marie Obenour wrote:
>=20
> Why would this not work for a more popular language like Rust?  I know
> that Gentoo is limited by the compute resources of a single machine, but
> cascading rebuilds should not be a problem for modern distributed build
> infrastructure, provided that the build clusters are sufficiently large.

The rebuilds aren't the problem, it's the labor required to bestow
version compatibility unto hundreds of packages whose authors have
never had to care about it.

If I'm trying to package Foo and if it depends on Bar, one common
problem is that Foo will use pessimistic version bounds like <=3DBar-1.0.
(Even if Bar-1.0 is ancient, that's no problem for users of the
bundling tool including upstream itself.) Now suppose Bar-1.1 is
released. If you're very lucky, then Foo will work unmodified with Bar-
1.1. Except you still have to patch out the <=3DBar-1.0 constraint,
because otherwise the build system / bundling tool will reject your
Bar-1.1.

Do you send that change upstream? When upstream changes their
constraints, do they release a new version? Do you package it? Were
there other breaking changes in Foo's git repo at the time and did they
incidentally get released along with your tiny constraint fix?
Remember, you're dealing with people who have never had to make a
distinction between bugfix and feature releases, because all consumers
(except you!) use the bundling tool. How long does all this take?=20

Anyway. More likely, Foo needs some help to work with Bar-1.1, because
its build system is asking for <=3DBar-1.0, and, as a result, upstream
doesn't notice when Bar makes new releases. So now you have to patch in
support for Bar-1.1, while remaining backwards-compatible with Bar-1.0,
because you have other packages that need Bar-1.0. There's another
patch. You send it upstream, and they tell you to kick rocks. Why
should they support both Bar-1.0 and 1.1? You're not using the
language-specific build/bundling tool? Sorry, that's an unsupported use
case. Hope you like being lectured about "best practices" by a high
school student.

Eventually a new release of Foo comes out that supports Bar-1.1.
Except, to package the new version of Foo, you have to repeat that
entire process, patching in backwards-compatibility for Bar-1.0,
because upstream didn't include it. You've now got two versions of Foo
in the tree, so push "patch everything else to support the new version
of Foo" onto your TODO stack. Ad infinitum.

This is all for one dependency of one package. The dependency tree for
pandoc has ~175 packages in it. How many of those get version bumps in
a day? For Haskell, thankfully, the answer is now low. Rust, on the
other hand, is popular.

It's a full-time job treading water.

Contrast this with C, where upstream projects support multiple versions
of OpenSSL, LibreSSL, BoringSSL, etc. all at the same time, because
there's no telling what might be installed on the user's system, and
without static linking or a bundling build tool, it all has to work
together. It's a little more work for the upstream project, but a lot
less for its users. That's how it should be though because the number
of (users * packages) explodes as you move downstream.



> Also, are the two programs GHC and Pandoc?

I was thinking pandoc and git-annex, but shellcheck is valid too
(thanks Erik).


