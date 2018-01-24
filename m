X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2138" "Tuesday" "23" "January" "2018" "22:02:15" "-0500" "Mike O'Connor" "mjo@dojo.mi.org" "<20180124030215.ugiofq23lmyurwsa@dojo.mi.org>" "56" "Re: [oss-security] How to deal with reporters who don't want their bugs fixed?" "^Date:" nil nil "1" "2018012403:02:15" "[oss-security] How to deal with reporters who don't want their bugs fixed?" (number mark "        mjo@dojo.mi. Jan 23   56/2138  " thread-indent "\"Re: [oss-security] How to deal with reporters who don't want their bugs fixed?\"\n") "<07f40446-1917-893c-2a87-b0d7990579b2@redhat.com>" ("<07f40446-1917-893c-2a87-b0d7990579b2@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 20333 invoked by uid 550); 24 Jan 2018 03:25:56 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 18088 invoked from network); 24 Jan 2018 03:20:33 -0000
X-PGP-Key-Fingerprint: 8F 85 89 E1 A2 FC EB D2  27 49 56 1E CC DF C9 C1
X-Organization: noitazinagrO-X
X-AS#: 26096
Message-ID: <20180124030215.ugiofq23lmyurwsa@dojo.mi.org>
References: <07f40446-1917-893c-2a87-b0d7990579b2@redhat.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="r5dsbutuymbps6dl"
Content-Disposition: inline
In-Reply-To: <07f40446-1917-893c-2a87-b0d7990579b2@redhat.com>
X-Greylist: Sender passed SPF test, not delayed by milter-greylist-4.5.11 (angus.mystery.com [127.0.0.1]); Tue, 23 Jan 2018 22:20:20 -0500 (EST)
Date: Tue, 23 Jan 2018 22:02:15 -0500
From: "Mike O'Connor" <mjo@dojo.mi.org>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] How to deal with reporters who don't want their
 bugs fixed?
To: oss-security@lists.openwall.com

--r5dsbutuymbps6dl
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

:Subject says it all: What do you do if you receive a vulnerability report,
:and the reporter requests an embargo at some time in the future because
:that's when their paper/conference presentation/patent submission is
:scheduled?
:
:The obvious approach is to find a prior public report of essentially the s=
ame
:bug and fix that (which will work surprisingly often), but let's assume th=
at
:this isn't the case.

Well, does the embargo add value for the consumers of the product?
That had historically been my guideline, when I've had to make that
call.  Will it improve the fix, documentation, delivery mechanisms,
etc.  Sometimes, the answer is "yes".  Other times, not so much or
it's fairly indeterminate.  You don't always know all the facts, or
all the players, you're left with educated guessing.=20=20

Sometimes, you can persuade researchers to a vendor-friendly point of
view on disclosure by simply asking them if they think this is in the
best interests of the users.  Other times, you work with someone who
cares more about adding a CVE and|or bounty to their resume, or they
are disingenuous or simply incapable of keeping secrets.

If there's evidence of open exploitation, all bets should be off and
that should be stated up front.  At that point, of course, it ceases
adding value.  An agreed disclosure date does not generally amount to
an NDA or the like.

-Mike

--=20
 Michael J. O'Connor                                          mjo@dojo.mi.o=
rg
 =3D--=3D=3D--=3D=3D--=3D=3D--=3D=3D--=3D=3D--=3D=3D--=3D=3D--=3D=3D--=3D=
=3D--=3D=3D--=3D=3D--=3D=3D--=3D=3D--=3D=3D--=3D=3D--=3D=3D--=3D=3D--=3D=3D=
--=3D
"The defendant pleaded exterminating circumstances."       -Anguished Engli=
sh

--r5dsbutuymbps6dl
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQBVAwUBWmf3N5Eu6kwgW799AQIJegIAkz8nzufQE7SY9DHnQLjAlDiNofmvGUah
pC2vhV+LnJaR/C++/Gc0JszwzEwTdsEycmXkKyMNcYGnAdq5FeZM0g==
=onaS
-----END PGP SIGNATURE-----

--r5dsbutuymbps6dl--
