Received: (qmail 24469 invoked by uid 550); 25 Jul 2022 22:27:47 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24437 invoked from network); 25 Jul 2022 22:27:45 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1658788053;
	bh=TEP62eV8f5zvIPmACO27gCuujxjqxe8jVGXPowuPpOg=;
	h=Date:From:To:Subject:Message-ID:References:MIME-Version:
	 Content-Type:In-Reply-To;
	b=Yo7Prw101xzRxjzqfReJCOq6aw8+HtVUUY6JsESDIosQ0b7AAEe+xBhrZCzoJByxW
	 h+M9M7l8CPybrWVX/gO2wlS59YFLRoNNlU5h9GqLlIpg5m1/zRgAE+MQbjPdeslGfg
	 H8/mgYVI5W0QOWgD0V6DAShDKFLUePuC6HcPW6rpziR1/yrB/KkYFD0XBkDDE8/Ctg
	 RTlV7O4BU5lT368UVToTwAKpvF07VWWcS/Z4gnQdNJZDXc3jZOPMrlAgqysh83Ge2i
	 EOuJJT7GTqn4AbIM8iQoc1f62ZMym8L7kOvYbJz7tlv0fV6XFTTY8rMlXGp7pok7tj
	 cp0o4/SEXItjA==
Date: Mon, 25 Jul 2022 22:27:31 +0000
From: Seth Arnold <seth.arnold@canonical.com>
To: oss-security@lists.openwall.com
Message-ID: <20220725222731.GB2583985@millbarge>
Mail-Followup-To: oss-security@lists.openwall.com
References: <20220719001848.GA1516019@millbarge>
 <EEF3C292-40F0-4EF5-A4D8-3731FA2FE428@chromium.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="CblX+4bnyfN0pR09"
Content-Disposition: inline
In-Reply-To: <EEF3C292-40F0-4EF5-A4D8-3731FA2FE428@chromium.org>
Subject: Re: [oss-security] snowflakedb security contacts

--CblX+4bnyfN0pR09
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sun, Jul 24, 2022 at 11:10:35AM -0700, Roxana Bradescu wrote:
> Just in case you didn=E2=80=99t, Snowflake uses HackerOne for their vuln =
mgmt
> program so issues get reported to HackerOne directly (and this
> information belongs in a Security.md file)

Hello Roxana, thank you, yes, I did hear from Snowflake, perhaps via the
efforts of list readers who helped make connections.

Snowflake has their HackerOne relationship published on:
https://www.snowflake.com/product/security-and-trust-center/
(which I swear I looked for, but was unable to find when looking for it
myself).

HackerOne feels a bit formal for me: not everyone reporting issues is out
for bug bounties and so on -- but having seen more than my fair share of
"all your source code is public" reports, I'm also sympathetic.

Thanks

--CblX+4bnyfN0pR09
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEQVAQ8bojyMcg37H18yFyWZ2NLpcFAmLfGM8ACgkQ8yFyWZ2N
LpcYZAgAjV9F78BH6rOIUHteR+TKufsLIujQ55mWSTXjxfItsMzn9f21Hfd4mwiE
jyLtvUJ0uvj4vyD74yIgQH5xL2gO9ZaWAQTVS0/2KLExWMi+ZyVEo4YLqczR7Jiv
WdVmyA/Q1M+W5CKXkeMP9MiQzLaKFKlcrgqzUnlOz0LLQ7WikVnpbE+CR0gqAuUy
Y9dZoqg3UtIS9cr6mbiyldnjp9ufLvIXWEUIzbSEAjdYNyyMB3LLdLZAznrUjOIG
q+AR285XjELf8aoETRfZZTvF7CuV4Un7fuI790zBGHnxFSXmR/DMn6Rvfh5aq/uW
epJLN39C5/s32vuGzWozvNAVRI5cgA==
=sp8V
-----END PGP SIGNATURE-----

--CblX+4bnyfN0pR09--
