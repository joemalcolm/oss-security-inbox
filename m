Received: (qmail 1292 invoked by uid 550); 5 May 2026 00:00:20 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 8112 invoked from network); 4 May 2026 23:45:00 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=riseup.net; s=squak;
	t=1777938291; bh=VRitl5AlYzYQeUFJ6uQRqUQSPphCA3yw2np7cEGP1NM=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=RetdNc5326mA4a5CbWyx4EFsmqy8EQvdyonj04alBSlPAg9JG9Rk6tB5JpEkED5i0
	 iUKIazr8XZX3Hs/0N8Ca490rnKpp2Rx1Wdpfy7+IK3vJNcyDOpIMdRtKizzVFun4h0
	 x0fdxTJW8vsLyB4T7BvbW6sjsM3yuGwzUhxCPD70=
X-Riseup-User-ID: 579611A71CECA403C2D0159C05141DE32D414F82932A50B5A5FB5B65E4039721
Date: Mon, 4 May 2026 19:44:47 -0400
From: Aaron Rainbolt <arraybolt3@riseup.net>
To: oss-security@lists.openwall.com
Cc: adrelanos@whonix.org, arraybolt3@gmail.com
Message-ID: <20260504194400.76c91ed7@riseup.net>
In-Reply-To: <20260407200906.14b9bcc0@riseup.net>
References: <20260407200906.14b9bcc0@riseup.net>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="Sig_/X5e0FtRIGrPgQIMOR01xBrL";
 protocol="application/pgp-signature"; micalg=pgp-sha512
Subject: [oss-security] Re: systemd-journald in systemd 259 does not escape characters in
 emerg messages that are wall'd to other user's terminals

--Sig_/X5e0FtRIGrPgQIMOR01xBrL
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

On Tue, 7 Apr 2026 20:09:06 -0400
Aaron Rainbolt <arraybolt3@riseup.net> wrote:

> Going over this semi-briefly:
>=20=20=20
> * systemd-journald is configured with the `ForwardToWall=3Dyes` and
>   `MaxWallLevel=3Demerg` settings by default in Ubuntu 26.04 pre-release
>   images and Arch Linux. (I think this is because these are enabled by
>   default in systemd upstream but haven't tried to verify this.) In my
>   testing, this will result in systemd-journald copying emerg-level
>   log messages to all logged-in TTYs and at least some root-owned PTYs
>   (if any exist).
> * Any user on the system can write an emerg-level log message using
>   `logger -p emerg 'msg...'`.
> * Potentially dangerous character sequences in log messages (like ANSI
>   escape sequences) are not sanitized by systemd-journald before it
>   prints those messages to other user's terminals.
> * Therefore, one can use systemd-journald to write malicious things to
>   other people's terminals, which can be used to exploit terminal
>   emulator vulnerabilities. There have been vulnerabilities in
>   terminal emulators like XTerm in the past that would allow this to
>   be used to execute arbitrary code as root if someone is unlucky
>   enough to have a PTY to a root shell open in a vulnerable terminal
>   when an attacker writes their malicious log message.

Someone (not sure who) did the kind service of getting a CVE assigned
for this: https://www.cve.org/CVERecord?id=3DCVE-2026-40228 To whoever
that was, thank you :)

--
Aaron

--Sig_/X5e0FtRIGrPgQIMOR01xBrL
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iHUEARYKAB0WIQS8QsiCjFi4DcDBX+Q5rdye4jrrCAUCafkvbwAKCRA5rdye4jrr
CDSVAQCMW6SZafl6VA2ulWUSKLZWMSQNQG43B2qr8AkkpbGYhQEAoHT033MsT7hi
xDMQqNFQ/UD27tloHe1MSCmUz9B2QwQ=
=L8lI
-----END PGP SIGNATURE-----

--Sig_/X5e0FtRIGrPgQIMOR01xBrL--
