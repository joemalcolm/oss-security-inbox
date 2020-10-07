X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3021" "Wednesday" "7" "October" "2020" "19:18:56" "+0000" "Jeremy Stanley" "fungi@yuggoth.org" "<20201007191856.2v7cpinvpzsmzuiw@yuggoth.org>" "75" "Re: [oss-security] Debian FEATURE: /home/loser is with permissions 755, default umask 0022" "^Date:" nil nil "10" "2020100719:18:56" "[oss-security] Debian FEATURE: /home/loser is with permissions 755, default umask 0022" (number mark "        fungi@yuggot Oct  7   75/3021  " thread-indent "\"Re: [oss-security] Debian FEATURE: /home/loser is with permissions 755, default umask 0022\"\n") "<CAGUWgD_U_oDLPbhAGa=tAaUf3OFM9Ac9j19nwyY-tf7KkQipag@mail.gmail.com>" ("<CAGUWgD_U_oDLPbhAGa=tAaUf3OFM9Ac9j19nwyY-tf7KkQipag@mail.gmail.com>") nil nil nil nil nil nil nil "Re: [oss-security] Debian FEATURE: /home/loser is with permissions 755, default umask 0022" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 13784 invoked by uid 550); 7 Oct 2020 19:19:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 13766 invoked from network); 7 Oct 2020 19:19:11 -0000
Message-ID: <20201007191856.2v7cpinvpzsmzuiw@yuggoth.org>
References: <CAGUWgD_U_oDLPbhAGa=tAaUf3OFM9Ac9j19nwyY-tf7KkQipag@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="qqbadlhohscv77sj"
Content-Disposition: inline
In-Reply-To: <CAGUWgD_U_oDLPbhAGa=tAaUf3OFM9Ac9j19nwyY-tf7KkQipag@mail.gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:4802:7801:102:be76:4eff:fe20:63e0
X-SA-Exim-Rcpt-To: oss-security@lists.openwall.com
X-SA-Exim-Mail-From: fungi@yuggoth.org
X-SA-Exim-Scanned: No (on azathoth.yuggoth.org); SAEximRunCond expanded to false
Date: Wed, 7 Oct 2020 19:18:56 +0000
From: Jeremy Stanley <fungi@yuggoth.org>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Debian FEATURE: /home/loser is with permissions
 755, default umask 0022
To: oss-security@lists.openwall.com

--qqbadlhohscv77sj
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On 2020-10-07 21:00:35 +0300 (+0300), Georgi Guninski wrote:
> https://lists.debian.org/debian-security/2020/10/msg00000.html
>=20
> =3D=3D=3D
> /home/loser is with permissions 755, default umask 0022
>=20
> on multiuser machines this sucks much.
>=20
> on a multiuser debian mirror we found a lot of data,
> including the wordpress password of the admin.
> =3D=3D=3D

It's tradition that on multi-user systems, users would want to share
data with one another and also serve content from their home
directories in Web sites. Further, it's not at all uncommon for
sysadmins to not understand or consider the system defaults when
making deployment decisions and failing to secure sensitive files.

As a long-time Debian user myself, I agree that this default is
showing its age, and can represent a risk for operators who overlook
it.

> Then in the thread someone with @debian.org email explains
> to me it is a feature, not a bug.

Nowhere in that response do they call it a feature, and it's
disingenuous of you to imply that they did. It's a default, which is
almost always going to be a balance between two (or more) competing
needs. Also, I encourage you to take a guess at how many people
there are "with @debian.org email" (hint, it's not a small number).

A more informative response would probably have been to point you to
https://wiki.debian.org/Debate/umask which provides pointers to
where and how this would need to be solved in the long run.

> In a addition, they suggest to tell them the mirror, lol.

Yes, do you fault them for wanting to remove a likely compromised
server from the network of volunteer-run package mirrors?

> Are debian detached from reality?

Your brusque and insulting attitude (saying their choices suck,
calling them detached from reality, laughing at their explanations)
is likely to trigger glib responses and cause people to be less
inclined to pay attention to what you have to say.
--=20
Jeremy Stanley

--qqbadlhohscv77sj
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEl65Jb8At7J/DU7LnSPmWEUNJWCkFAl9+FJoACgkQSPmWEUNJ
WCnLVRAAgSayvdImwV62UU0JrDK1LRUfRhWsnrR+KyoZ7R9PjVsGMeWxqSi5dGed
Q0MlbjKqh8o6IhpjP9SItkUHzemBh622vvlMTS45oGjwuCO+fX4LbPjeTJMpyVXB
UCDy9vIVPlkyONiW9Lg8iHKi273ggfLrTMh43q7GE86gWXV/V4E6csBkytBX14IU
vtZja2EC/a7dwv9qbJRK1CmVs1T4M2T+CcPrl3JWhGLShW4bQqOkMaNW95ObCVfp
/Za4xwnh1SqxO9b/BoN0ALecuGBH9xOxeIdaOAzLb1SHRyNKtxz9jIyiGISYlH8D
c8rY1XdKVMh7lwtq1kCfNSCWLvsNs9rLqHNjkyuSon+n5JhZfkOZOaSbzYL2BM54
WlIOrDJE7wVrOSU66El82VlTdoTSr+3HLg7SXvRRcrtBCjliS6kCFQhzV1pAan09
uhTePlR4JZD+zyI2hKKhTRKa/CrXtYx0XY3NijU2Ys9TifD0/J1JwHGryDNgYA3A
uEEsVCkj/RCvD5USwfzamvRH3v199Gc3tbFNKyR5n7tJjdDXNk7kcIV7SO1bCXSM
Ta1z9EAMwNrJDoDuB4SewjKkUbDD62lFdBgtMshSWRTAoGMLMGk7SVf09Ff4AMNN
p/4CtMTLGodLDrv7w5lFlQPt0JFfocdXPKM+nZgJ+GUWfATEsgg=
=hath
-----END PGP SIGNATURE-----

--qqbadlhohscv77sj--
