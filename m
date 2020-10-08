X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2025" "Thursday" "8" "October" "2020" "21:02:13" "+0000" "Seth Arnold" "seth.arnold@canonical.com" "<20201008210213.GB2102371@millbarge>" "55" "Re: [oss-security] Debian FEATURE: /home/loser is with permissions 755, default umask 0022" nil nil nil "10" "2020100821:02:13" "[oss-security] Debian FEATURE: /home/loser is with permissions 755, default umask 0022" (number mark "U       seth.arnold@ Oct  8   55/2025  " thread-indent "\"Re: [oss-security] Debian FEATURE: /home/loser is with permissions 755, default umask 0022\"\n") "<alpine.GSO.2.20.2010080824330.3742@scrappy.simplesystems.org>" ("<CAGUWgD_U_oDLPbhAGa=tAaUf3OFM9Ac9j19nwyY-tf7KkQipag@mail.gmail.com>" "<alpine.GSO.2.20.2010071604290.15793@scrappy.simplesystems.org>" "<20201008003001.GE378617@millbarge>" "<alpine.GSO.2.20.2010080824330.3742@scrappy.simplesystems.org>") nil nil nil nil nil nil nil "Re: [oss-security] Debian FEATURE: /home/loser is with permissions 755, default umask 0022" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1775 invoked by uid 550); 8 Oct 2020 21:02:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1757 invoked from network); 8 Oct 2020 21:02:29 -0000
Date: Thu, 8 Oct 2020 21:02:13 +0000
From: Seth Arnold <seth.arnold@canonical.com>
To: Bob Friesenhahn <bfriesen@simple.dallas.tx.us>
Cc: oss-security@lists.openwall.com
Message-ID: <20201008210213.GB2102371@millbarge>
Mail-Followup-To: Bob Friesenhahn <bfriesen@simple.dallas.tx.us>,
	oss-security@lists.openwall.com
References: <CAGUWgD_U_oDLPbhAGa=tAaUf3OFM9Ac9j19nwyY-tf7KkQipag@mail.gmail.com>
 <alpine.GSO.2.20.2010071604290.15793@scrappy.simplesystems.org>
 <20201008003001.GE378617@millbarge>
 <alpine.GSO.2.20.2010080824330.3742@scrappy.simplesystems.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="rQ2U398070+RC21q"
Content-Disposition: inline
In-Reply-To: <alpine.GSO.2.20.2010080824330.3742@scrappy.simplesystems.org>
Subject: Re: [oss-security] Debian FEATURE: /home/loser is with permissions
 755, default umask 0022

--rQ2U398070+RC21q
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Oct 08, 2020 at 08:29:39AM -0500, Bob Friesenhahn wrote:
> It seems that the issue we encountered is due to 'USERGROUPS_ENAB yes' in
> /etc/login.defs.  I am not sure if this is specific to Ubuntu. This setting
> changes the umask from the default:

Aha, thanks for indulging my curiosity and tracking this down. Ubuntu
doesn't carry any changes to this package compared to the Debian
package (any differences would be in a 'login' directory in
https://patches.ubuntu.com/l/ ).

"USERGROUPS_ENAB yes" may have been a Debian default setting since 1999 or
so; archaelogy on packages this old is a little difficult, but the tarball
on:

https://sources.debian.org/src/shadow/19990827-20/

has several login.defs* files:

$ ls -l etc/login.defs*
-rw-r--r-- 1 sarnold sarnold  5426 May  1  1997 etc/login.defs
-rw-r--r-- 1 sarnold sarnold  4272 Aug 27  1999 etc/login.defs.hurd
-rw-r--r-- 1 sarnold sarnold 10165 Aug 27  1999 etc/login.defs.linux
$ grep USERGROUPS etc/login.*
etc/login.defs.hurd:USERGROUPS_ENAB yes
etc/login.defs.linux:USERGROUPS_ENAB yes

By 2005 or so, the archaelogy gets easier:

https://sources.debian.org/src/shadow/1:4.0.18.1-7+etch1/etc/login.defs/
https://sources.debian.org/src/shadow/1:4.0.18.1-7+etch1/debian/changelog/

I believe "USERGROUPS_ENAB yes" has been a Debian default since 1998 or 1999.

Thanks

--rQ2U398070+RC21q
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEQVAQ8bojyMcg37H18yFyWZ2NLpcFAl9/flEACgkQ8yFyWZ2N
Lpcm/gf9HwQvMQUbBG6CXS8n79tr9UeUeZUkAfdej0KQwN474AkWxNfx0MYMTtkA
r+nokL75Q8sU18MRoiXIQ/BWMsT9d/fMaQai6vAsKwxN/bhKuBZ02GV6UhXYmZJL
klUDaEdmNuuw/tp7OIo2rcDnTSNoR/PTiBYdPXCdb0ZfuW6D44U26A57+PwTzXFD
wjT1uCetaRLKjEcxcHg76NySMeCnTdkPb8UALk2g6J5ewqqMkRiIlq/gkNZR4VxG
5ga0bU9xSHUdApaBuytKlxsOGweyvTTxxmAToSMfQU7rj9SRialDzd95wEblgj33
FRlapsmJJYvqlk7/V+NYXwqMH1wcqQ==
=0qJ9
-----END PGP SIGNATURE-----

--rQ2U398070+RC21q--
