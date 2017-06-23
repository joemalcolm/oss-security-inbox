X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["5102" "Friday" "23" "June" "2017" "12:24:47" "-0400" "Leo Famulari" "leo@famulari.name" "<20170623162447.GA12500@jasmine.lan>" "138" "Re: [oss-security] CVE-2017-9772: OCaml release 4.04.2" nil nil nil "6" "2017062316:24:47" "[oss-security] CVE-2017-9772: OCaml release 4.04.2" (number mark "U       leo@famulari Jun 23  138/5102  " thread-indent "\"Re: [oss-security] CVE-2017-9772: OCaml release 4.04.2\"\n") "<6D989FE0-69C8-4AE0-B897-B440B8F92C69@recoil.org>" ("<21771A83-D685-4776-9CE7-883775F05977@inria.fr>" "<6D989FE0-69C8-4AE0-B897-B440B8F92C69@recoil.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 23608 invoked by uid 550); 23 Jun 2017 21:51:10 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9666 invoked from network); 23 Jun 2017 16:25:03 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=famulari.name;
	 h=cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to:x-me-sender:x-me-sender:x-sasl-enc
	:x-sasl-enc; s=mesmtp; bh=r1QvOdkTaD+L2QGvOESlQJZDdJIgJbqqmGGIyl
	ovhHI=; b=comffRA9vdnJLUyu7j4l8ehPhbeEyvEmah2IeDN+S2O8rRDcL36PXz
	kEd+KXHu5JwCGRTkPg2n+2rsgOB+SDYtYyC4nLCQsD0oTnqDMhJkPx7lZWNm6ORo
	Md0ZSau1gGrQ5vVM+YPNt32G53W32raRvFtV1pcofRNeb+T9L8ZGY=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-me-sender
	:x-me-sender:x-sasl-enc:x-sasl-enc; s=fm1; bh=r1QvOdkTaD+L2QGvOE
	SlQJZDdJIgJbqqmGGIylovhHI=; b=E0D1t/vCFo9CfkcWVWhRHl1CnpY3HFf+UV
	EkO/hDsqj6vIH6klYmxmiQu6+kj3AVlAsAVruwsVZ80xMMOQ/zrpI0x9/nFnBXUh
	lzfzr+bbKzAOhBajLtXNS8U52EM/Lb8lUAS3ou5eWdYWeQLjcs6iTqzH1WXrLZiA
	mh8VEK1CcJCdmatnYoscuE3CnIG+MvCdFF8d3EFcl5Lef4ZibQqTOXada0eYt60+
	GoI3grxo/kVrGpuSYqsyTzcTrmIeeMDt5DvkHfdG08BqUMYO3JVo+Eqfc5CVsoAZ
	/5Brd2a9XDD5WKnZCeZOMb8S6mNf3l6BfEOEiAsTGPyUNyRiEOnw==
X-ME-Sender: <xms:0kBNWcG05M92P15voHlH_pTnEus0RYz7A3ANnaqiqABK0buhMRry4Q>
X-Sasl-enc: Ppw7+Ue98yF53n5eKiAYOCs86fU8afV2tPs1FVI0/XFN 1498235090
Date: Fri, 23 Jun 2017 12:24:47 -0400
From: Leo Famulari <leo@famulari.name>
To: oss-security@lists.openwall.com
Cc: Damien Doligez <damien.doligez@inria.fr>,
	Anil Madhavapeddy <anil@recoil.org>
Message-ID: <20170623162447.GA12500@jasmine.lan>
References: <21771A83-D685-4776-9CE7-883775F05977@inria.fr>
 <6D989FE0-69C8-4AE0-B897-B440B8F92C69@recoil.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="IJpNTDwzlM2Ie8A6"
Content-Disposition: inline
In-Reply-To: <6D989FE0-69C8-4AE0-B897-B440B8F92C69@recoil.org>
User-Agent: Mutt/1.8.3 (2017-05-23)
Subject: Re: [oss-security] CVE-2017-9772: OCaml release 4.04.2

--IJpNTDwzlM2Ie8A6
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Anil,

Can you tell us where to get OCaml 4.04.2? It's not available here:

https://ocaml.org/releases/

On Fri, Jun 23, 2017 at 04:28:28PM +0100, Anil Madhavapeddy wrote:
> Anyone packaging OCaml 4.04.0 or OCaml 4.04.1 and installing setuid binar=
ies
> with it should be aware of this CVE, and upgrade their distribution packa=
ging
> accordingly.  Please get in touch with me if you are having any issues wi=
th
> upgrading to the latest OCaml 4.04.2.
>=20
> Anil
>=20
> > Begin forwarded message:
> >=20
> > From: Damien Doligez <Damien.Doligez@inria.fr>
> > Subject: [Caml-list] OCaml release 4.04.2
> > Date: 23 June 2017 at 16:18:44 BST
> > To: caml announce <caml-announce@inria.fr>, caml users <caml-list@inria=
.fr>
> > Reply-To: Damien Doligez <Damien.Doligez@inria.fr>
> >=20
> >=20
> > Dear OCaml users,
> >=20
> > We have the pleasure of celebrating the birthday of Alan Turing by
> > announcing the release of OCaml version 4.04.2.
> >=20
> > This minor release fixes the security issue described in
> > CVE-2017-9772 (included below).
> >=20
> > All users should eventually upgrade to 4.04.2 from 4.04.0 and 4.04.1.
> > Any user who produces setuid programs with OCaml should read the CVE
> > and upgrade immediately.
> >=20
> > It is available as an OPAM switch, or as a source download here:
> >  https://caml.inria.fr/pub/distrib/ocaml-4.04/
> >  https://github.com/ocaml/ocaml/archive/4.04.2.tar.gz
> >=20
> > Happy hacking,
> >=20
> > -- Damien Doligez for the OCaml team.
> >=20
> >=20
> > OCaml 4.04.2 (23 Jun 2017):
> > ---------------------------
> >=20
> > ### Security fix:
> >=20
> > - PR#7557: Local privilege escalation issue with ocaml binaries.
> >  (Damien Doligez, report by Eric Milliken, review by Xavier Leroy)
> >=20
> > --------------------------------------------------------------------
> >=20
> > CVE-2017-9772: Privilege escalation in OCaml runtime for SUID executabl=
es
> >=20
> > The environment variables CAML_CPLUGINS, CAML_NATIVE_CPLUGINS, and
> > CAML_BYTE_CPLUGINS can be used to auto-load code into any ocamlopt-comp=
iled
> > executable or any ocamlc-compiled executable in =E2=80=98custom runtime=
 mode=E2=80=99.
> > This can lead to privilege escalation if the executable is marked setui=
d.
> >=20
> > Vulnerable versions: OCaml 4.04.0 and 4.04.1
> >=20
> > Workarounds:
> >   - Upgrade to OCaml 4.04.2 or higher.
> > or - Compile the OCaml distribution with the "-no-cplugins" configure o=
ption.
> > or - OPAM users can "opam update && opam switch recompile 4.04.1", as
> >     the repository has had backported patches applied.
> >=20
> > Impact: This only affects binaries that have been installed on Unix-like
> > operating systems (including Linux and macOS) with the setuid bit set.
> > However, in that situation, any user who execute the program gains all
> > the privileges of the owner of the executable (meaning that root-owned
> > setuid executables provide root access).
> >=20
> > Fix: OCaml 4.04.2 mitigates this by modifying Sys.getenv and Unix.getenv
> > to raise an exception if the process has ever had elevated privileges.
> > The OCaml runtime has also been modified to use this function for
> > retrieving all of the runtime environment variables which could potenti=
ally
> > cause files to be accessed or modified.  The older behaviour is availab=
le
> > in Sys.unsafe_getenv for applications that require strict compatibility.
> >=20
> > Credits: This was originally reported by Eric Milliken on the OCaml Man=
tis
> > bug tracker. https://caml.inria.fr/mantis/view.php?id=3D7557
> >=20
> > References: see CVE-2017-9779 for a lesser vulnerability in older versi=
ons.
> >=20
> > CVSS v2 Vector:
> > AV:L/AC:L/Au:S/C:C/I:C/A:N/E:F/RL:OF/RC:C/CDP:H/TD:L/CR:H/IR:H/AR:L
> > CWE ID: 114
> >=20
> >=20
> > --=20
> > Caml-list mailing list.  Subscription management and archives:
> > https://sympa.inria.fr/sympa/arc/caml-list
> > Beginner's list: http://groups.yahoo.com/group/ocaml_beginners
> > Bug reports: http://caml.inria.fr/bin/caml-bugs
>=20

--IJpNTDwzlM2Ie8A6
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEsFFZSPHn08G5gDigJkb6MLrKfwgFAllNQMsACgkQJkb6MLrK
fwgy6BAAkSg1tbfNuZBQxGJj7Z8EbyP37rH8nMvFZMg/5GMwioHHeNe5ozp0ZLjN
ZIWc1JRqoeeAWMRciQw65JabTcZA3gEeCaI6qUH5ir6A5PHSauo7UQWRZlcdCvxy
yXXvgd/y5opp9Agog5nggEhBmg3L2hORSWzXEPxvl6aP+1+F8dd056mby8q5c5vl
IBCzU9jHpQhq6U4fbi0IILsLO9MnRIQKKlKtoqLK8OBaLcY+mhOvMrZ4PZJr3M5G
rNlPHmWPwPSbrG08likJEAs5aA0FV0yVrvM8CTjw+sNQ4L8Mqcm96BBNjEHIT9Dw
HNixZpuGZy1w31iWGE8zVNK+6cmg9TzClfdLARFlsc3CBUc6sTDD2T+QFnIgpcJx
hWrCELZhIOq5U1yMTtxsJV0OjGNBQO1+gmGpqfkdjKJb3HczlY5ENY53nKQmgM8Z
k48QV7PMDyzoG3TViHma+YJlYTlW795hkDYyLFWEsz1q1pdVqpXyPuPURvFIBJDn
en+1BoKbqhRJc6BxK3BYgSiRDtyddwyGIG41zRjJdrgFnbJbsEzZnp3MiKSRVEcP
5wPLYL0D9/bN9oBtLgcHd/AGV0W4vcK79HYyBDPeMW1c82JuztYnE+TDWZOtQijF
L1GtwvRUXT1Cz0PFnAc9D5ePAvt7nttfGg/G2/EgnOougqbCYAc=
=mT1U
-----END PGP SIGNATURE-----

--IJpNTDwzlM2Ie8A6--
