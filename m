X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1800" "Monday" "1" "May" "2017" "19:25:00" "+0200" "Yves-Alexis Perez" "corsac@debian.org" "<1493659500.2460.28.camel@debian.org>" "56" "Re: [oss-security] terminal emulators' processing of escape sequences" "^Date:" nil nil "5" "2017050117:25:00" "[oss-security] terminal emulators' processing of escape sequences" (number mark "        corsac@debia May  1   56/1800  " thread-indent "\"Re: [oss-security] terminal emulators' processing of escape sequences\"\n") "<20170501164428.GA12322@openwall.com>" ("<20170501164428.GA12322@openwall.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 19532 invoked by uid 550); 1 May 2017 17:25:17 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 19511 invoked from network); 1 May 2017 17:25:16 -0000
Message-ID: <1493659500.2460.28.camel@debian.org>
In-Reply-To: <20170501164428.GA12322@openwall.com>
References: <20170501164428.GA12322@openwall.com>
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-Y+lXDX6fAwGIeLOCTSju"
X-Mailer: Evolution 3.22.6-1 
Mime-Version: 1.0
Date: Mon, 01 May 2017 19:25:00 +0200
From: Yves-Alexis Perez <corsac@debian.org>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] terminal emulators' processing of escape
 sequences
To: oss-security@lists.openwall.com

--=-Y+lXDX6fAwGIeLOCTSju
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, 2017-05-01 at 18:44 +0200, Solar Designer wrote:
> Yves-Alexis Perez of Debian pointed out that whether these crashes occur
> or not may be related to the version of vte.=C2=A0 I'll leave it up to hi=
m to
> post a follow-up on that.

Indeed, original tests by Solar Designer and Jason A. Donenfeld might have
targeted xfce4-terminal 0.6 which is written in GTK2 and use vte2 while more
recent versions (starting 0.8) use GTK3 and vte3.

I tried running the perl script with current Debian sid and:

xfce4-terminal 0.8.4-1
libvte-2.91-0:amd64 0.46.1-1
libgtk-3-0:amd64 3.22.12-1

I wasn't able to make the process crash (it seems stuck at some point but t=
he
window is somehow resized and I don't have access to the content so it' not
clear why).

Out of curiosity I also tried lxterminal (0.3.0-1) which is vte2 based, alo=
ng
with:

libvte9 1:0.28.2-5+b
libgtk2.0-0:amd64 2.24.31-2

and I wasn't able to crash the process either. This time the perl process
terminates successfully.

Regards,
--=20
Yves-Alexis=

--=-Y+lXDX6fAwGIeLOCTSju
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEEl0WwInMjgf6efq/1bdtT8qZ1wKUFAlkHb2wACgkQbdtT8qZ1
wKUxfggAg89XSONEjTtET9rSWcJEB4A+6Qyiz+smT8i0bYE8f23fK3uUfmIAp4aG
ZuEFh9I/S+DkVGKBuHUjfe+IzXpRGcB/rYR7q/eaPFf4b/luj+zi/Vc4k124E2vu
QDMtPewKdO75o6YsZSLeixQyDCDnbcx/3ylThfR9ClEvLpT8gCP1QxsqJAtS3TFI
HZY5mQbrh3/AzFASQs9rPEUKl7o0pC33Lx3P/cgOTko57wqjrTRJDoKbp/59Rv2/
q0THPYhQNzcP49MkE3gCzjH6nkR6PDK2hAN5xB3yM24NhgWwM2owWEIiSgTvrLvt
qzps8Ug7hyPEXUTG8ScMlIgPAHTbww==
=QO1X
-----END PGP SIGNATURE-----

--=-Y+lXDX6fAwGIeLOCTSju--
