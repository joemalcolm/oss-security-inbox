X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2483" "Friday" "29" "July" "2016" "11:58:43" "-0400" "Hanno =?UTF-8?B?QsO2Y2s=?=" "hanno@hboeck.de" "<20160729115843.386c87dc@pc1>" "67" "Re: [oss-security] Re: Use after free in my_login() function of DBD::mysql (Perl module)" "^Cc:" nil nil "7" "2016072915:58:43" "[oss-security] Re: Use after free in my_login() function of DBD::mysql (Perl module)" (number mark "        hanno@hboeck Jul 29   67/2483  " thread-indent "\"Re: [oss-security] Re: Use after free in my_login() function of DBD::mysql (Perl module)\"\n") "<abec12ab-d311-cbe6-f256-5c9df0af2008@gmail.com>" ("<20160727013203.C008FABC4E2@smtpvmsrv1.mitre.org>" "<abec12ab-d311-cbe6-f256-5c9df0af2008@gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 7385 invoked by uid 550); 29 Jul 2016 15:58:59 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 7361 invoked from network); 29 Jul 2016 15:58:58 -0000
Message-ID: <20160729115843.386c87dc@pc1>
In-Reply-To: <abec12ab-d311-cbe6-f256-5c9df0af2008@gmail.com>
References: <20160727013203.C008FABC4E2@smtpvmsrv1.mitre.org>
	<abec12ab-d311-cbe6-f256-5c9df0af2008@gmail.com>
X-Mailer: Claws Mail 3.13.2 (GTK+ 2.24.30; x86_64-pc-linux-gnu)
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512; protocol="application/pgp-signature"; boundary="=_zucker.schokokeks.org-20510-1469807926-0001-2"
Cc: oss-security@lists.openwall.com
Date: Fri, 29 Jul 2016 11:58:43 -0400
From: Hanno =?UTF-8?B?QsO2Y2s=?= <hanno@hboeck.de>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: Use after free in my_login() function of
 DBD::mysql (Perl module)
To: lazytyped <lazytyped@gmail.com>

--=_zucker.schokokeks.org-20510-1469807926-0001-2
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Thu, 28 Jul 2016 06:31:20 -0700
lazytyped <lazytyped@gmail.com> wrote:

> Quick question:
>=20
> - I guess the affecting function call is the following:
>=20
>    do_error(dbh, mysql_errno(imp_dbh->pmysql),
>                   mysql_error(imp_dbh->pmysql)=20
> ,mysql_sqlstate(imp_dbh->pmysql));
>=20
> which one of those calls provides an exploitation path? They seem all=20
> reads off the free'd structure.
>=20
> I see in the bug report: " (I think use after free's can be serious
> and potentially lead to malfunction and security issues)" and would
> like to understand more about the rationale.

Hi,

I don't have a practical exploit scenario, thus my careful wording (the
best answer to "is this exploitable?" is often simply "I don't know").

It's a use after free, should be undeniable that it should be fixed.

But my highlevel understanding of what could happen in such a case: In a
multithreaded application using that module it may be possible that
another thread is allocating the free'd memory before do_error is
called and may fill the memory of the struct with attacker-controlled
content. Would require careful analysis of what do_error does exactly
whether that could lead to further bad things.

--=20
Hanno B=C3=B6ck
https://hboeck.de/

mail/jabber: hanno@hboeck.de
GPG: BBB51E42

--=_zucker.schokokeks.org-20510-1469807926-0001-2
Content-Type: application/pgp-signature
Content-Transfer-Encoding: 7bit
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCgAGBQJXm30zAAoJEKWIAHK7tR5CYb0P/22dNgQVctGqvnNpUYbRbaIF
tpDkE6MTd9/T7MFSR4dMVtLr8GVzacBVpDXtJ368PSITIS3zNdUEwVK0ipWn2IwS
kQTREwIKo9LFsvxsJk7qyvpA9RdiIM3rseJrm7DrKYsPZ5HLZdStubxRyCJ22qIG
gPO8Z+R1AyFTBoHu9zPfuEwIniRvx4jkemnkcMVZ+HBPdsF1Dwm2dHdStHSuXnbs
yFPhigK52bRwv/Dme06iidYJFifGU3g777tXa4PCMv5QW9jIVCOH1Hvwwt2Q/LMx
SnGrYjX2j0wONQdnXI+Zn89m1KIpBFQ2PuvR48zjZon+ScNShySU7cxAh3eUO3VJ
J9+f4CgCIkeRdNUY3BLV6AWbktXd8txRdjKgmqrFf5LMBGVzdwF0q5v/R7nRuOFV
H/p4OG55G/GK0vmA0mvYfpgiC93KcvP0IRe048v/wV8QwYFON71Nqh3QwW8v4T7m
L4BuISPN62wl35ISLU3Q/vy6q/VDPC+TOf+NAFw9hsEkScmQeYCnvEYvF7zm8b6C
Hvp/Dow0JYmcRN8cVjlGqifBlj3VmT7ze/4o+enfZRsqmI5fzLBArE7hClBxlhFM
Ifnc70qRZdvG2d9lgbo2EnOsppwrwBe9E9Uw0ds6tDoTepsm0/NPgX5aeilvXwpC
5SWm7f1XrWYtvllWV1hs
=QNOB
-----END PGP SIGNATURE-----

--=_zucker.schokokeks.org-20510-1469807926-0001-2--
