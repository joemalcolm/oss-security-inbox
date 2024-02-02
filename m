Received: (qmail 24394 invoked by uid 550); 2 Feb 2024 11:25:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24348 invoked from network); 2 Feb 2024 11:25:34 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cyphar.com; s=MBO0001;
	t=1706873272;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=DFtWgvbe9YUJJzsB/fnlv0tCMIvDVIWKz1EExV+EM4U=;
	b=eoAaOOZ61mEURWLMnP18dek0xk32mb+/uIsUS7VwIWh982wFHV/kBu7qdAIl5W3Z0aS0Do
	Yipmdxbp+6KHd2tS4DUNC7ATbOaobqnl5jqInuwybivD5zVN5OrIoeAgLPiMVK7CoEJTmT
	LpK1pctEf6zjQIP7bhIOLri6Clx2ZH5z1adkF2bED4xue3b74UzIoPdJXIyEuCcKRGHrJR
	Eu9v8DV2s5ehbmnjfc7IXV4qaSYk+QFpECIOMu1blp4xUebFfB1a7OBGbdL95IDi07+CVZ
	EjVcXyDPvSR00j4XISa9Z5DVPaa302bObPXBg/8cWfxm7AWown2YQmXFd/0wKA==
Date: Fri, 2 Feb 2024 22:27:36 +1100
From: Aleksa Sarai <cyphar@cyphar.com>
To: Solar Designer <solar@openwall.com>
Cc: oss-security@lists.openwall.com, dev@opencontainers.org
Message-ID: <20240202.105927-fickle.ease.flashy.width-zrc3s3ca5573@cyphar.com>
References: <20240131.201014-manual.rungs.vicious.preface-640Q4W5TLTW7@cyphar.com>
 <20240201004952.GA670@openwall.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="q7nfam5tyokotd7j"
Content-Disposition: inline
In-Reply-To: <20240201004952.GA670@openwall.com>
Subject: Re: Re: [oss-security] runc: CVE-2024-21626: high severity container
 breakout attack

--q7nfam5tyokotd7j
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On 2024-02-01, Solar Designer <solar@openwall.com> wrote:
> Hello Aleksa,
>=20
> Thank you and others you credit for doing much more than fixing the
> immediate issue, and for disclosing this in so much detail.
>=20
> On Thu, Feb 01, 2024 at 07:33:01AM +1100, Aleksa Sarai wrote:
> > This is a notification to vendors that use runc about a high-severity
> > vulnerability (CVE-2024-21626) with several exploit methods which allow
> > for full container breakouts due to an internal file descriptor leak.
>=20
> > The core issue is a file descriptor leak, and while we do O_CLOEXEC all
> > file descriptors before executing the container code, the file
> > descriptor is open when doing setcwd(2) which means that the reference
> > can be kept alive into the container by configuring the working
> > directory to be a path resolved through the file descriptor (and the
> > non-dumpable bit is unset after execve(2) meaning that there are
> > multiple ways to attack this other than bad configurations).
>=20
> What's setcwd(2)?  Perhaps you meant something else?

I meant chdir(2), sorry. I had getcwd(3) on my mind.

> > There is also an execve(2)-based attack that makes simple verification
> > unworkable and was particularly hairy to fix (the patch involves doing
> > //go:linkname to access Go runtime internals, because the only way to
> > defend against it entirely is to close all unneeded file descriptors --
> > for the same reason that #!-based tricks meant that CVE-2019-5736
> > required drastic measures).
>=20
> For reference, here are the threads you started on CVE-2019-5736 and its
> exploit back in 2019:
>=20
> https://www.openwall.com/lists/oss-security/2019/02/11/2
> https://www.openwall.com/lists/oss-security/2019/02/13/3
>=20
> In one of the messages:
>=20
> https://www.openwall.com/lists/oss-security/2019/02/13/1
>=20
> you mentioned having sent your "AT_THIS_ROOT patchset to LKML -- which
> allows userspace processes to block resolution of magic links."  What's
> the current status of this effort, and does/would it help against this
> new issue?

That eventually became openat2(2) which was merged in Linux 5.6.
Somewhat ironically, the switch to openat2(2) in runc was the cause of
one of the fd leaks that made this issue exploitable in runc! =F0=9F=98=85

However, I later discovered that execve-related attacks currently cannot
be defended against -- even with a safe file descriptor inside the
container from openat2(2) passed to exeveat(AT_EMPTY_PATH) you can still
escape because the binfmt loader can open files in a way you cannot
control (the ELF loader will load shared libs and binfmt_script will
happily open everything). It might be necessary to add resolution flagst
o execveat(2) as well as a result, but I haven't gotten around to
working on that yet.

There's also some more work to do with blocking certain tricks related
to magic-links used by exploits when breaking out of containers (such as
keeping a handle to /proc/self/exe and then re-opening it for writing
afterwards). I had a talk on this topic at the last LSF/MM/BPF summit[1]
-- I have since reworked the design to block operations in a far more
systematic manner but I'm still playing around with prototypes at the
moment.

[1]: https://www.youtube.com/watch?v=3DNjPjEcQzCMY

--=20
Aleksa Sarai
Senior Software Engineer (Containers)
SUSE Linux GmbH
<https://www.cyphar.com/>

--q7nfam5tyokotd7j
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQS2TklVsp+j1GPyqQYol/rSt+lEbwUCZbzRqAAKCRAol/rSt+lE
b5ljAP9BxaZgybJIO6s90RQbqO4wmelkGoNRiM/mHzSaatHP9gD/UAT9NsTUKGeu
wpj7MzYScXazzvNmwGqDFdiD+GSgqQc=
=XLoh
-----END PGP SIGNATURE-----

--q7nfam5tyokotd7j--
