X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1430" "Tuesday" "25" "October" "2016" "09:29:02" "+0200" "Yves-Alexis Perez" "corsac@debian.org" "<1477380542.4640.11.camel@debian.org>" "42" "Re: [oss-security] CVE-2016-7545 -- SELinux sandbox escape" nil nil nil "10" "2016102507:29:02" "[oss-security] CVE-2016-7545 -- SELinux sandbox escape" (number mark "U       corsac@debia Oct 25   42/1430  " thread-indent "\"Re: [oss-security] CVE-2016-7545 -- SELinux sandbox escape\"\n") "<20160925134911.18991732ntfvg5a8@webmail.alunos.dcc.fc.up.pt>" ("<20160925134911.18991732ntfvg5a8@webmail.alunos.dcc.fc.up.pt>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9391 invoked by uid 550); 25 Oct 2016 07:29:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9373 invoked from network); 25 Oct 2016 07:29:17 -0000
Message-ID: <1477380542.4640.11.camel@debian.org>
From: Yves-Alexis Perez <corsac@debian.org>
To: oss-security@lists.openwall.com, up201407890@alunos.dcc.fc.up.pt,
 netblue30 <netblue30@yahoo.com>
Cc: team@security.debian.org
Date: Tue, 25 Oct 2016 09:29:02 +0200
In-Reply-To: <20160925134911.18991732ntfvg5a8@webmail.alunos.dcc.fc.up.pt>
References: <20160925134911.18991732ntfvg5a8@webmail.alunos.dcc.fc.up.pt>
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-T3yn9+9qaIbnkxMT0tCG"
X-Mailer: Evolution 3.22.1-1 
Mime-Version: 1.0
Subject: Re: [oss-security] CVE-2016-7545 -- SELinux sandbox escape

--=-T3yn9+9qaIbnkxMT0tCG
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sun, 2016-09-25 at 13:49 +0200, up201407890@alunos.dcc.fc.up.pt wrote:
> When executing a program via the SELinux sandbox, the nonpriv session
> can escape to the parent session by using the TIOCSTI ioctl to push
> characters into the terminal's input buffer, allowing an attacker to
> escape the sandbox.

Hi,

it seems that firejail was affected by the same vulnerability, which was fi=
xed
in 0.9.44 with https://github.com/netblue30/firejail/commit/46dc2b34f1fbbc4=
597
b4ff9f6a3cb28b2d500d1b

The commit log reuses the CVE-2016-7545 number, but I guess a new one should
be assigned since they don't share the same codebase?

Regards,
--=20
Yves-Alexis Perez - Debian Security


--=-T3yn9+9qaIbnkxMT0tCG
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----

iQEcBAABCAAGBQJYDwm+AAoJEG3bU/KmdcClAlwH/1+Hkkedxo+SngQ1AWV3sC+e
+dqixIYm8cj8UvcS7Xdt62S4FPXHiQbqZrLaBmek97n8f2Qpy8QOnL53IVYtt0Br
qo5EUhCWBGlJAaPYrm05kKeQPLHjl7FXyPwRjewb0/tBCnJ9uEKFzw86yxnoHsGX
mgS//52g/BUe4JCtu4UaLwQZwe3gBAkiV5COxjsP3+63h1gZDQjsrzxxRnNiPHiF
icTf/VyEOndHKu49zy+AGNTEZbiULVn5nYYa1ZpYNbMWGB7rQJRPaH+Gyu07aOzf
+yCJAWUsLXT1WsSkDfvqg1PNgJTg2bhi5uyYSfSwWAIzsVgNhoNKVTcK48CbTOQ=
=EJA0
-----END PGP SIGNATURE-----

--=-T3yn9+9qaIbnkxMT0tCG--
