Received: (qmail 11947 invoked by uid 550); 8 Oct 2024 13:34:56 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 15658 invoked from network); 8 Oct 2024 06:10:06 -0000
DKIM-Signature: v=1; a=ed25519-sha256; q=dns/txt; c=relaxed/relaxed;
	d=josefsson.org; s=ed2303; h=Content-Type:MIME-Version:Message-ID:In-Reply-To
	:Date:References:Subject:Cc:To:From:Sender:Reply-To:Content-Transfer-Encoding
	:Content-ID:Content-Description;
	bh=oGvLYfC9KdsDIJrVXasRel4XIcqrLmpUl9cXFRLAXeo=; t=1728367802; x=1729577402; 
	b=oBOupMAzBBJFaMm+s1zUQvHw9b94hNrKM/GCfupgVBeQxArD7cI8jMxL1whH4ml0FN4WNxbtdOC
	tom5YX+DHAw==;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=josefsson.org; s=rsa2303; h=Content-Type:MIME-Version:Message-ID:
	In-Reply-To:Date:References:Subject:Cc:To:From:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=oGvLYfC9KdsDIJrVXasRel4XIcqrLmpUl9cXFRLAXeo=; t=1728367802; x=1729577402; 
	b=PsVbjRusGpidSkRz7516AZ8ck7D77oOJeXYuQkW2ggyeq1AFD6dBxtZ7lKsDm/zjYJ00QpqHE9e
	TU0xO6y92OcA7ZqZ6EAYFH3Lfuet2G74kWMWfpMbU5eloHgDnUeRO/Tpm5v4a90MLzmD/9OcntQMv
	EIsR+dBnFM63xvgKPbetOAGmObF0Vr5a66z/lh6MK60ZsPtK6HLezWdagexSAvI20ecygnDx73prx
	m0x2X4/0LhGkSqWT3ni8m0NJY0uwu3FGrXSan1MXXxy6HP+U6lcmjBSQSkvn7gQoDx2i5DTMhLLRY
	13EkGE/ejKEJ34a5UwPc450N7USjeG7AKEKzUAGQ/IaZTs+3ANx54Phu5LIWceO/XSgrg8zSP1DtP
	pmlfL72fjRkOEGE/8swbN/B9SgOyyiUo20Awtlvjt/DjXZVWOK1GTObBMkit4vkQf6Rcqjr2k;
From: Simon Josefsson <simon@josefsson.org>
To: Solar Designer <solar@openwall.com>
Cc: oss-security@lists.openwall.com
References: <Zv-9gAGM_X7QQShJ@suse.com> <878qv251x7.fsf@kaka.sjd.se>
	<20241008025402.GA2904@openwall.com>
OpenPGP: id=B1D2BD1375BECB784CF4F8C4D73CF638C53C06BE;
 url=https://josefsson.org/key-20190320.txt
X-Hashcash: 1:23:241008:oss-security@lists.openwall.com::rEX2Z2qw29g9ZVs7:+4y
X-Hashcash: 1:23:241008:solar@openwall.com::sausnt8R5+QJUpya:2E4b
Date: Tue, 08 Oct 2024 08:10:17 +0200
In-Reply-To: <20241008025402.GA2904@openwall.com> (Solar Designer's message of
	"Tue, 8 Oct 2024 04:54:02 +0200")
Message-ID: <878quzt99y.fsf@kaka.sjd.se>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/27.1 (gnu/linux)
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="=-=-=";
	micalg=pgp-sha256; protocol="application/pgp-signature"
Subject: [oss-security] Re: CVE-2024-47191: Local root exploit in the PAM module pam_oath.so

--=-=-=
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable

Solar Designer <solar@openwall.com> writes:

> This link requires authentication.  I guess you meant to post:
>
> https://gitlab.com/oath-toolkit/oath-toolkit/-/commit/95ef255e6a401949ce3=
f67609bf8aac2029db418

Fixed, thank you!  The writeup is available here:

https://www.nongnu.org/oath-toolkit/CVE-2024-47191.html

> I note a few things:
>
> 1. Neither the SUSE nor the upstream patches change the supplementary
> groups.  SUSE patches fork() and then in the child setgid() and
> setuid().  Upstream doesn't fork(), but switches with setegid() and
> seteuid(), and then back.  If the intent is solely to avoid the need for
> fchown(), then that's sufficient.  Hopefully, along with SUSE's openat()
> and flags magic or with upstream's fopen(, "x"), nothing more is needed.
> However, if the intent is to avoid even trying to access files in user's
> directory with potentially excessive privileges, then supplementary
> groups should also be switched or dropped.
>
> I'm sorry I didn't get around to bringing this maybe-issue up in the
> pre-disclosure thread on the distros list (which Johannes Segitz from
> SUSE kindly started on September 27).  I feel it was not essential to
> discuss/address pre-disclosure, and is fine to discuss in public now.

Thanks for review and mentioning this!  I added some comments:

https://gitlab.com/oath-toolkit/oath-toolkit/-/issues/47

I noticed that that there are Linux-PAM helpers to drop privileges:

https://github.com/linux-pam/linux-pam/blob/master/libpam/pam_modutil_priv.=
c#L52

I have found another implementation of this in yubico-pam:

https://github.com/Yubico/yubico-pam/blob/master/drop_privs.c

> 2. Switching task credentials from library code is tricky, given that
> the program could have threads that don't expect this.  set*id() and
> setgroups() libc calls would typically affect all threads.  On Linux,
> it's possible to affect the current thread only, which e.g. we do in
> tcb[1] by using setfs*id() and direct setgroups() syscall (the latter
> only in our recent git code at this time, previously we used the libc
> function).  I assume Simon is aware of the Linux specific way, but
> deliberately chose not to do this in upstream oath-toolkit for
> portability to non-Linux.
>
> [1] https://www.openwall.com/tcb/ and https://github.com/openwall/tcb

Thanks for the pointer!  Yes, even the mild use of POSIX APIs in liboath
usersfile.c causes portability problems today, so I would like to avoid
adding more and ideally even remove the current usersfile stuff since it
doesn't belong in the core HOTP/TOTP library.

The thread concern is worrying though, but I'm hoping usage of this API
is not that widespread in any threaded applications.

> 4. As Simon also noted:
>
>> SUSE's alternative patch and advisory can be found via:
>>=20
>> https://security.opensuse.org/2024/10/04/oath-toolkit-vulnerability.html
>>=20
>> It rely on Linux kernel specific features and uses fork() which was
>> determined to be contrary to the liboath design, which aims to be
>> portable to macOS and *BSD and beyond.
>
> I agree fork() from library code is tricky, but not so much because of
> portability concerns.

Making fork() work on Windows from within a library is not that fun.

> Again, the program using the library may not expect it to ever have an
> extra child process.  Sure the library should use waitpid() on this
> specific process, yet the program could receive unexpected SIGCHLD.
> The combination of the program's threads and our fork() could also
> have unexpected consequences.
>
> In tcb, we chose to make usage of fork() a PAM module option, so that by
> enabling it the distro or sysadmin acknowledges that it's acceptable in
> the specific PAM configuration.  Our usage of fork() is for a different
> reason, though: "Using this option one can be sure that after a call to
> pam_end(3) there is no sensitive data left in the process' address
> space."  I wonder if this property would also be relevant in
> oath-toolkit patches if more processing is moved to the child process,
> or if this would be excessive under the relevant threat models.

Nice catch, I've opened an issue about this aspect:

https://gitlab.com/oath-toolkit/oath-toolkit/-/issues/48

Btw, do you have any thoughts on WHICH user to drop privileges to?  The
SUSE patch drops privs to the credential file owner.  My patch drops
privs to the PAM user that is being authenticated.  I think there are
reasonable arguments for both choices, and for all reasonable
configurations that I'm aware of, I don't think the choice matters.

/Simon

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iIoEARYIADIWIQSjzJyHC50xCrrUzy9RcisI/kdFogUCZwTMyRQcc2ltb25Aam9z
ZWZzc29uLm9yZwAKCRBRcisI/kdFosd7APwNv8Jo8igseAIDSpDcWC4z9kdFHuot
WslTpoFCLthmzgD/ahnvMC2B0qkOrckGC7HINp3uzemxSKjiT4wdPqae6AA=
=WRKk
-----END PGP SIGNATURE-----
--=-=-=--
