X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1779" "Friday" "11" "March" "2016" "17:56:34" "+0100" "Hanno =?UTF-8?B?QsO2Y2s=?=" "hanno@hboeck.de" "<20160311175634.19159812@pc1>" "50" "[oss-security] Re: ProFTPD before 1.3.5b/1.3.6rc2 uses 1024 bit Diffie Hellman parameters for TLS even if user sets manual parameters" "^Date:" nil nil "3" "2016031116:56:34" "[oss-security] Re: ProFTPD before 1.3.5b/1.3.6rc2 uses 1024 bit Diffie Hellman parameters for TLS even if user sets manual parameters" (number mark "        hanno@hboeck Mar 11   50/1779  " thread-indent "\"[oss-security] Re: ProFTPD before 1.3.5b/1.3.6rc2 uses 1024 bit Diffie Hellman parameters for TLS even if user sets manual parameters\"\n") "<20160311164948.43B626C0A8B@smtpvmsrv1.mitre.org>" ("<20160311110954.7e04e562@pc1>" "<20160311164948.43B626C0A8B@smtpvmsrv1.mitre.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 32490 invoked by uid 550); 11 Mar 2016 16:56:47 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 32433 invoked from network); 11 Mar 2016 16:56:42 -0000
Message-ID: <20160311175634.19159812@pc1>
In-Reply-To: <20160311164948.43B626C0A8B@smtpvmsrv1.mitre.org>
References: <20160311110954.7e04e562@pc1>
	<20160311164948.43B626C0A8B@smtpvmsrv1.mitre.org>
X-Mailer: Claws Mail 3.13.2 (GTK+ 2.24.29; x86_64-pc-linux-gnu)
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512; protocol="application/pgp-signature"; boundary="=_zucker.schokokeks.org-18627-1457715390-0001-2"
Date: Fri, 11 Mar 2016 17:56:34 +0100
From: Hanno =?UTF-8?B?QsO2Y2s=?= <hanno@hboeck.de>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: ProFTPD before 1.3.5b/1.3.6rc2 uses 1024 bit Diffie Hellman
 parameters for TLS even if user sets manual parameters
To: cve-assign@mitre.org, oss-security@lists.openwall.com

--=_zucker.schokokeks.org-18627-1457715390-0001-2
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Fri, 11 Mar 2016 11:49:48 -0500 (EST)
cve-assign@mitre.org wrote:

> > The release notes[1] are confusing, as they mention only problems
> > with keys smaller than 2048 bit, but I was also able to reproduce
> > this issue with 4096 bit keys.
> > [1] http://proftpd.org/docs/RELEASE_NOTES-1.3.5b=20=20
>=20
> We are not sure why this would be confusing.

Yes, I also noted now that this refers to an unrelated issue.

The DH issue was not mentioned in the release notes at first, now the
author has changed that.

--=20
Hanno B=C3=B6ck
https://hboeck.de/

mail/jabber: hanno@hboeck.de
GPG: BBB51E42

--=_zucker.schokokeks.org-18627-1457715390-0001-2
Content-Type: application/pgp-signature
Content-Transfer-Encoding: 7bit
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCgAGBQJW4vjCAAoJEKWIAHK7tR5CBOkQAJAQ0WmBv28cSbkRtHcN3ZNp
NUIi/YUhXmwDIyZg+nIrzZXbqdWlRutZBVXcP9m45vHvTGRd+KkqnNwyB51DNilA
07FbndGDI3kHJcoDqTYUq1Qg9dTyxLhUzCEE/2QvkqOIRK0waUf/KrEjmQshqna9
Gfh+txlRT1V2tu+ja5enZELoSw3wORiSA5Ng+unxznLhSaxBrY9OdeUlrtaHqWxc
JTw4juxMIYnyxbKTittRgR9DiFYy/IPwz0TkSwSkZYJl0y91qC5BX//3R4Q7s3BR
ssTkuN6AhX0FG+ZIhWJT/omaMQyMnuXgrofzU5CkfJw+dEjgIGEe5b68afCDLpNV
mTSFFu6qGp9RTeTh1WhCyU5KOxW6nDd+Ivrf13TV7qbQpNEU9ccggU3PJ9+fhIBZ
CVjQ7uIBiA1KWU/NL6eJrtVv5D+SUvGvdDQZqB5dJE9yf7zYbgzly4rE9Nr5NxNt
5qyUTJaRI35mQwe88sFQU2gGomP7lTHvkx6nvILiMCUv/7SHnEgADjVkh3S8ay6o
Weobjz4LTBGjWa3Eg3SOOv8hlCavfemYkS1QPbGOvu6SjWK9YO7Pz8VrgHMLQDjl
99MmuOa+kDkUf2FSfRByGywnHO8ZDIHvyz27iKixqfOqrceIG+ELiXwhPSOM4DWe
gZuCcHRbNPwo7o5Q86Sp
=Fr48
-----END PGP SIGNATURE-----

--=_zucker.schokokeks.org-18627-1457715390-0001-2--
