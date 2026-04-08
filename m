Received: (qmail 9388 invoked by uid 550); 8 Apr 2026 15:48:01 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 32363 invoked from network); 8 Apr 2026 14:23:05 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=riseup.net; s=squak;
	t=1775658175; bh=xUbUOFFP1Vs9TBXjbPHGTpwLsP1iS9WcgK0RogZSg0U=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=AH+5Uqxn6xxmJQgWwlYq8c06LvO7KwoRfTLk7SSuAnW6gLJ0QDX4jbmf71+rX2zT6
	 HVwIqbgzzIAvfTdbCxFXjdSxaJsYTBcs2povYeAYMl+IxSPx26asDOrzLv1sPJSSgt
	 wvZ8QpKTaCgBvFnYQfmnuEJnPUtav92f71UtydEY=
X-Riseup-User-ID: 44F605A70AA8B8CE57D5B1A0352EE9FF376EFD3D08A00A8B2380824EC28A347E
Date: Wed, 8 Apr 2026 10:22:01 -0400
From: Aaron Rainbolt <arraybolt3@riseup.net>
To: oss-security@lists.openwall.com
Cc: adrelanos@whonix.org, arraybolt3@gmail.com
Message-ID: <20260408102148.0d45e3a2@riseup.net>
In-Reply-To: <20260407200906.14b9bcc0@riseup.net>
References: <20260407200906.14b9bcc0@riseup.net>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="Sig_/UM6VD4j6MW4=v+r8Jbv/yi6";
 protocol="application/pgp-signature"; micalg=pgp-sha512
Subject: [oss-security] Re: systemd-journald in systemd 259 does not escape characters in
 emerg messages that are wall'd to other user's terminals

--Sig_/UM6VD4j6MW4=v+r8Jbv/yi6
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

A minor correction:

> A more involved proof-of-concept that demonstrates how this can be
> used to escalate privileges is:
>=20
> 1. Compile a version of XTerm that is vulnerable to CVE-2022-45063.
>    (XTerm patch #369 worked for me last time I tried this.)
> 2. Open two instances of XTerm at once as a non-root user.
> 3. In one XTerm window, open a root shell by running `sudo -i`.

The root shell needs to be provided by ZSH, and ZSH needs to be put
into vi line editing mode, for this to work. See [1].

> 4. In the other XTerm window, as a non-root user, run
>    `pwned=3D$'\e]50;i$(cp /etc/shadow /home/user/shadow && chown
> user:user /home/user/shadow)\a\e]50;?\a\n'` (replacing 'user' with
> your non-root user's username where appropriate).
> 5. In the same non-root XTerm window, run
>    `logger -p 'emerg' "$pwned"`. You should now have a copy of the
>    system's shadow password file in your home directory, readable by
>    your non-root user.

[1] https://www.openwall.com/lists/oss-security/2022/11/10/1

--
Aaron

--Sig_/UM6VD4j6MW4=v+r8Jbv/yi6
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iHUEARYKAB0WIQS8QsiCjFi4DcDBX+Q5rdye4jrrCAUCadZkiQAKCRA5rdye4jrr
CAxaAP9BzNyyK6qLtVpZgIgFSW0kwIkTVvPiUWisTwOZhqTwQAEApVHTPESNYrV2
2h1876ynlYZ/gkQGZT3+op8Kiu/ouwI=
=Y1ni
-----END PGP SIGNATURE-----

--Sig_/UM6VD4j6MW4=v+r8Jbv/yi6--
