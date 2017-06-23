X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3848" "Friday" "23" "June" "2017" "16:28:28" "+0100" "Anil Madhavapeddy" "anil@recoil.org" "<6D989FE0-69C8-4AE0-B897-B440B8F92C69@recoil.org>" "105" "[oss-security] CVE-2017-9772: OCaml release 4.04.2" nil nil nil "6" "2017062315:28:28" "[oss-security] CVE-2017-9772: OCaml release 4.04.2" (number mark "U       anil@recoil. Jun 23  105/3848  " thread-indent "\"[oss-security] CVE-2017-9772: OCaml release 4.04.2\"\n") "<21771A83-D685-4776-9CE7-883775F05977@inria.fr>" ("<21771A83-D685-4776-9CE7-883775F05977@inria.fr>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 28642 invoked by uid 550); 23 Jun 2017 15:29:44 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28370 invoked from network); 23 Jun 2017 15:28:41 -0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=recoil.org; h=from
	:content-type:mime-version:subject:date:references:cc:to
	:message-id; s=selector1; bh=aynrreuFh5JwBF/zF0GTHHcObjc=; b=pWc
	9Sz65NzlcURMtAkGfplXVXCtK4lalAzp9wJXzi3Xzz48OO8lZbSpC6okZfpuC9b7
	69SFrNze9TazJ6lAd87UzFCJaVIQfHGAqlhNX7E9MHZOG9wejpjgUTGlEkbAJf1Q
	/mBy+mXN5DaCXFrsHY6sUtB1tpve5L9kN8eX0amY=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=recoil.org; h=from
	:content-type:mime-version:subject:date:references:cc:to
	:message-id; q=dns; s=selector1; b=NQymvmedZz7fXsx6B6Ag+HcBYquEX
	JysTZQPo9ePlxD1cUFyG1OzSEvjbjnLe92VFKrhIVjYfaHfOL/c9blHFDxHWxQMs
	UQG9S0dZ7AQC8fWtHWqmz3wP1lO9JSSwkuklHQvL19h3AoZ8IBEMCZ4EJdph8WPz
	O5N24AbjxJNxNM=
From: Anil Madhavapeddy <anil@recoil.org>
Content-Type: multipart/alternative;
 boundary="Apple-Mail=_F04AF7A1-33D4-4767-8365-EB332AA8839F"
Mime-Version: 1.0 (Mac OS X Mail 10.3 \(3273\))
Date: Fri, 23 Jun 2017 16:28:28 +0100
References: <21771A83-D685-4776-9CE7-883775F05977@inria.fr>
Cc: Damien Doligez <damien.doligez@inria.fr>
To: oss-security@lists.openwall.com
Message-Id: <6D989FE0-69C8-4AE0-B897-B440B8F92C69@recoil.org>
X-Mailer: Apple Mail (2.3273)
Subject: [oss-security] CVE-2017-9772: OCaml release 4.04.2

--Apple-Mail=_F04AF7A1-33D4-4767-8365-EB332AA8839F
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8

Anyone packaging OCaml 4.04.0 or OCaml 4.04.1 and installing setuid binaries
with it should be aware of this CVE, and upgrade their distribution packagi=
ng
accordingly.  Please get in touch with me if you are having any issues with
upgrading to the latest OCaml 4.04.2.

Anil

> Begin forwarded message:
>=20
> From: Damien Doligez <Damien.Doligez@inria.fr>
> Subject: [Caml-list] OCaml release 4.04.2
> Date: 23 June 2017 at 16:18:44 BST
> To: caml announce <caml-announce@inria.fr>, caml users <caml-list@inria.f=
r>
> Reply-To: Damien Doligez <Damien.Doligez@inria.fr>
>=20
>=20
> Dear OCaml users,
>=20
> We have the pleasure of celebrating the birthday of Alan Turing by
> announcing the release of OCaml version 4.04.2.
>=20
> This minor release fixes the security issue described in
> CVE-2017-9772 (included below).
>=20
> All users should eventually upgrade to 4.04.2 from 4.04.0 and 4.04.1.
> Any user who produces setuid programs with OCaml should read the CVE
> and upgrade immediately.
>=20
> It is available as an OPAM switch, or as a source download here:
>  https://caml.inria.fr/pub/distrib/ocaml-4.04/
>  https://github.com/ocaml/ocaml/archive/4.04.2.tar.gz
>=20
> Happy hacking,
>=20
> -- Damien Doligez for the OCaml team.
>=20
>=20
> OCaml 4.04.2 (23 Jun 2017):
> ---------------------------
>=20
> ### Security fix:
>=20
> - PR#7557: Local privilege escalation issue with ocaml binaries.
>  (Damien Doligez, report by Eric Milliken, review by Xavier Leroy)
>=20
> --------------------------------------------------------------------
>=20
> CVE-2017-9772: Privilege escalation in OCaml runtime for SUID executables
>=20
> The environment variables CAML_CPLUGINS, CAML_NATIVE_CPLUGINS, and
> CAML_BYTE_CPLUGINS can be used to auto-load code into any ocamlopt-compil=
ed
> executable or any ocamlc-compiled executable in =E2=80=98custom runtime m=
ode=E2=80=99.
> This can lead to privilege escalation if the executable is marked setuid.
>=20
> Vulnerable versions: OCaml 4.04.0 and 4.04.1
>=20
> Workarounds:
>   - Upgrade to OCaml 4.04.2 or higher.
> or - Compile the OCaml distribution with the "-no-cplugins" configure opt=
ion.
> or - OPAM users can "opam update && opam switch recompile 4.04.1", as
>     the repository has had backported patches applied.
>=20
> Impact: This only affects binaries that have been installed on Unix-like
> operating systems (including Linux and macOS) with the setuid bit set.
> However, in that situation, any user who execute the program gains all
> the privileges of the owner of the executable (meaning that root-owned
> setuid executables provide root access).
>=20
> Fix: OCaml 4.04.2 mitigates this by modifying Sys.getenv and Unix.getenv
> to raise an exception if the process has ever had elevated privileges.
> The OCaml runtime has also been modified to use this function for
> retrieving all of the runtime environment variables which could potential=
ly
> cause files to be accessed or modified.  The older behaviour is available
> in Sys.unsafe_getenv for applications that require strict compatibility.
>=20
> Credits: This was originally reported by Eric Milliken on the OCaml Mantis
> bug tracker. https://caml.inria.fr/mantis/view.php?id=3D7557
>=20
> References: see CVE-2017-9779 for a lesser vulnerability in older version=
s.
>=20
> CVSS v2 Vector:
> AV:L/AC:L/Au:S/C:C/I:C/A:N/E:F/RL:OF/RC:C/CDP:H/TD:L/CR:H/IR:H/AR:L
> CWE ID: 114
>=20
>=20
> --=20
> Caml-list mailing list.  Subscription management and archives:
> https://sympa.inria.fr/sympa/arc/caml-list
> Beginner's list: http://groups.yahoo.com/group/ocaml_beginners
> Bug reports: http://caml.inria.fr/bin/caml-bugs


--Apple-Mail=_F04AF7A1-33D4-4767-8365-EB332AA8839F--
