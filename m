X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3126" "Monday" "9" "May" "2016" "14:03:25" "-0500" "John Lightsey" "john@nixnuts.net" "<1462820605.18084.2.camel@nixnuts.net>" "80" "Re: [oss-security] GraphicsMagick Response To \"ImageTragick\"" "^Date:" nil nil "5" "2016050919:03:25" "[oss-security] GraphicsMagick Response To \"ImageTragick\"" (number mark "        john@nixnuts May  9   80/3126  " thread-indent "\"Re: [oss-security] GraphicsMagick Response To \"ImageTragick\"\"\n") "<20160509172045.GC9754@perpetual.pseudorandom.co.uk>" ("<alpine.GSO.2.20.1605090828220.23612@freddy.simplesystems.org>" "<20160509172045.GC9754@perpetual.pseudorandom.co.uk>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
X-Quarantine-ID: <VfhMCXQtEc42>
Received: (qmail 10104 invoked by uid 550); 9 May 2016 19:03:49 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 10086 invoked from network); 9 May 2016 19:03:47 -0000
Message-ID: <1462820605.18084.2.camel@nixnuts.net>
In-Reply-To: <20160509172045.GC9754@perpetual.pseudorandom.co.uk>
References: <alpine.GSO.2.20.1605090828220.23612@freddy.simplesystems.org>
	 <20160509172045.GC9754@perpetual.pseudorandom.co.uk>
Content-Type: multipart/signed; micalg="pgp-sha512";
	protocol="application/pgp-signature"; boundary="=-AXMLXiedXxNrJjit0icQ"
X-Mailer: Evolution 3.18.5.1-1 
Mime-Version: 1.0
X-Spam_score: -1.5
X-Spam_score_int: -14
X-Spam_bar: -
X-Spam_report: Spam detection software, running on the system "nixnuts.net",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Mon, 2016-05-09 at 18:20 +0100, Simon McVittie wrote: >
    On Mon, 09 May 2016 at 08:29:40 -0500, Bob Friesenhahn wrote: > > 1. CVE-2016-3714
    - Insufficient shell characters filtering > >Â > >Â Â Â Â GraphicsMagick
   is not susceptible to remote code execution except > >Â Â Â Â if gnuplot is
    installed (because gnuplot executes shell commands). > >Â Â Â Â Gnuplot-shell
    based shell exploits are possible without a gnuplot > >Â Â Â Â file being
    involved although gnuplot invokes the shell.Â Â To fix > >Â Â Â Â this, the
    "gplt" entry in the delegates.mgk file must be removed. > > I think this
   should perhaps have a separate CVE ID assigned: it's the > same impact (arbitrary
    code execution) and was discovered at around > the same time, but the mechanism
    is not similar to the > missing/insufficient quoting/escaping for ImageMagick's
    %M placeholder, > which was the root cause of (the original incarnation of)
    CVE-2016-3714. > > In GraphicsMagick this was the "GPLT" format, removed
   in hg commit > "Gnuplot files are inherently insecure. Remove delegates support
    for > reading them." > https://sourceforge.net/p/graphicsmagick/code/ci/45998a25992d1142df201d8cf024b
    > 6c948b40748/ > > In ImageMagick this was the "PLT" format, removed in this
    git commit with > the misleading commit message "Update to the latest autoconf/automake":
    > https://github.com/ImageMagick/ImageMagick/commit/e87116ab2bd070c47943d4118a18
    > c8f3a47461e2 > > MITRE, do you consider this to be: > > * part of CVE-2016-3714,
    > * a single separate vulnerability to which both GraphicsMagick and ImageMagick
    > Â were vulnerable, or > * two separate vulnerabilities, one in each package?
    > [...] 
 Content analysis details:   (-1.5 points, 3.0 required)
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -1.0 ALL_TRUSTED            Passed through trusted hosts only via SMTP
 -0.5 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
  0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was blocked.
                             See
                             http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
                              for more information.
                             [URIs: github.com]
Date: Mon, 09 May 2016 14:03:25 -0500
From: John Lightsey <john@nixnuts.net>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] GraphicsMagick Response To "ImageTragick"
To: oss-security@lists.openwall.com

--=-AXMLXiedXxNrJjit0icQ
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, 2016-05-09 at 18:20 +0100, Simon McVittie wrote:
> On Mon, 09 May 2016 at 08:29:40 -0500, Bob Friesenhahn wrote:
> > 1. CVE-2016-3714 - Insufficient shell characters filtering
> >=C2=A0
> >=C2=A0=C2=A0=C2=A0=C2=A0GraphicsMagick is not susceptible to remote code=
 execution except
> >=C2=A0=C2=A0=C2=A0=C2=A0if gnuplot is installed (because gnuplot execute=
s shell commands).
> >=C2=A0=C2=A0=C2=A0=C2=A0Gnuplot-shell based shell exploits are possible =
without a gnuplot
> >=C2=A0=C2=A0=C2=A0=C2=A0file being involved although gnuplot invokes the=
 shell.=C2=A0=C2=A0To fix
> >=C2=A0=C2=A0=C2=A0=C2=A0this, the "gplt" entry in the delegates.mgk file=
 must be removed.
>=20
> I think this should perhaps have a separate CVE ID assigned: it's the
> same impact (arbitrary code execution) and was discovered at around
> the same time, but the mechanism is not similar to the
> missing/insufficient quoting/escaping for ImageMagick's %M placeholder,
> which was the root cause of (the original incarnation of) CVE-2016-3714.
>=20
> In GraphicsMagick this was the "GPLT" format, removed in hg commit
> "Gnuplot files are inherently insecure. Remove delegates support for
> reading them."
> https://sourceforge.net/p/graphicsmagick/code/ci/45998a25992d1142df201d8c=
f024b
> 6c948b40748/
>=20
> In ImageMagick this was the "PLT" format, removed in this git commit with
> the misleading commit message "Update to the latest autoconf/automake":
> https://github.com/ImageMagick/ImageMagick/commit/e87116ab2bd070c47943d41=
18a18
> c8f3a47461e2
>=20
> MITRE, do you consider this to be:
>=20
> * part of CVE-2016-3714,
> * a single separate vulnerability to which both GraphicsMagick and ImageM=
agick
> =C2=A0 were vulnerable, or
> * two separate vulnerabilities, one in each package?
>=20


The "man" attack vector needs the same determination.

It is similar to=C2=A0CVE-2016-3717 in impact, but uses a different codepat=
h. The
existing fixes for CVE-2016-3717 do not address it.


--=-AXMLXiedXxNrJjit0icQ
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAABCgAGBQJXMN79AAoJEORPgBbTYw+J8hgQAJ62aRsuYxAKXDaoU+9NefaC
Upc5vxJ2AJ/ztJlbF0AYzo2P2+f7u9xWvggGFxwV1pCh4fMdJV6EKbgU+ucmXJSq
179MNEU8ytkYIXSmew1rKFPIcIEEPMvjb57e4wAuy2+UteN5eeNvli83eAvUwbVb
47ZWPlvgD/R2hl71ypWjgJwL3lJRk64RFjRqy6z8nTcSy0N1MXdGClZciGnel7gE
8cj7md4dDWm+CGoRWOq5aCnDd9p29FtlLaA4p/jLgrx1IfJSiqoz/2c4Gpp1mIrT
c8sO0nuN644yRA6lnVNUC/l+kgqdlpKlOdWEPCHJgb+sOy5QY/J1vbkXYxqaf8ce
kOqm6xr5BQDl+oOhijs6SDPZF1SJCrpCCXgPno7Qf2MDQkBI9cj/VeSpsBZewMxu
fO/aHV0cai7pK3A0YRc75hcTBzy7F0HQhelD5yomOhbliPB7jWMV/NmIXYKToffG
zyQRsmpeogJS9qnjKYWAIs+4ckDvlKqyQrpJC4Ifj/5AMdjOdHKDqdX6M/uo/sTT
bXQfPsjQlzk0G5okNQGNdEb14iVGOvAOEQelu8XKJcyPIuhZtAJWIHbsa+L/LVK5
xw6DU+3gdt0fH/QjbLWhn9P/8MdMqLjztrX01KBYFoFylNJpGh/OHfatrRBPNQcS
mKijeHO62tntnJ5rZbS/
=38Jg
-----END PGP SIGNATURE-----

--=-AXMLXiedXxNrJjit0icQ--

