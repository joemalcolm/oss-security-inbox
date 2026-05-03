Received: (qmail 1493 invoked by uid 550); 4 May 2026 01:06:51 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 25694 invoked from network); 3 May 2026 21:36:13 -0000
From: Sam James <sam@gentoo.org>
To: oss-security@lists.openwall.com
Cc: Taeyang Lee <0wn@theori.io>, Brad Spengler <spender@grsecurity.net>
In-Reply-To: <87v7d4b7a3.fsf@gentoo.org>
Organization: Gentoo
References: <afJorKIje4O6dXbH@netmeister.org> <87v7d4b7a3.fsf@gentoo.org>
User-Agent: mu4e 1.14.1; emacs 31.0.50
Date: Sun, 03 May 2026 22:36:00 +0100
Message-ID: <87jytkb2gv.fsf@gentoo.org>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="=-=-=";
	micalg=pgp-sha512; protocol="application/pgp-signature"
Subject: Re: [oss-security] Precise disclosure contents for copyfail (Re:
 [oss-security] CVE-2026-31431: CopyFail: linux local privilege scalation)

--=-=-=
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Sam James <sam@gentoo.org> writes:

> Jan Schaumann <jschauma@netmeister.org> writes:
>
>> Hi,
>>
>> This is currently making the rounds and looks pretty
>> severe:
>>
>> https://copy.fail/
>>
>> A local privilege escalation vulnerability with a
>> working PoC python script exploiting a logic flaw in
>> the kernel crypto API (AF_ALG) affecting most Linux
>> distributions.
>>
>> More detailed write-up:
>> https://xint.io/blog/copy-fail-linux-distributions
>>
>> [...]
>
> Are we aware of what precisely xint disclosed to the kernel security
> team?
>
> My assumption based on the tool output in the write-up is that enough
> was disclosed to know this was at least an easily-exploitable LPE (*).

It's been pointed out to me that Brad Spengler has commented on X [0],
linking to Brian Pak of xint saying [1]:

> We also provided a fully working exploit to the kernel security team
> when we reported. We=E2=80=99ve since learned that such details don=E2=80=
=99t
> automatically get forwarded downstream and that Linux kernel commit
> messages are typically kept minimal. That=E2=80=99s simply how the proces=
s works.

So yes, the kernel team were very much aware of the impact from the
offset.

I hadn't seen Brian's thread until now, it is interesting reading [2].

Thanks to Brad and the person who sent me the link to the tweet.

>
> (*) Because part of their promotion here is for the tool's ability to
> get the analysis right, so it implies that they didn't figure it out
> later, and that the tool did "most of the work". Whether or not that's
> actually the case, I of course don't know.
>
> thanks,
> sam

[0] https://xcancel.com/spendergrsec/status/2051045704487829878
[1] https://xcancel.com/brian_pak/status/2050255271184994538
[2] https://xcancel.com/brian_pak/status/2050255258098766101#m

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEBBAEWCgCpFiEEJaa7iN2bdkxrVUHCc4QJ9SDfkZAFAmn3v8AbFIAAAAAABAAO
bWFudTIsMi41KzEuMTIsMiwyXxSAAAAAAC4AKGlzc3Vlci1mcHJAbm90YXRpb25z
Lm9wZW5wZ3AuZmlmdGhob3JzZW1hbi5uZXQyNUE2QkI4OEREOUI3NjRDNkI1NTQx
QzI3Mzg0MDlGNTIwREY5MTkwDxxzYW1AZ2VudG9vLm9yZwAKCRBzhAn1IN+RkDQx
AQC3zq0HJ6+LU3jbbrmp9b0z42D8K1iQH+iz0le+OyrVigEAiWzuDOgEyj/GY9Ga
MCPiOCqXfSBDJbm/qaBarRvxqwc=
=Z7yu
-----END PGP SIGNATURE-----
--=-=-=--
