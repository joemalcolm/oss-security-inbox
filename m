X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4648" "Friday" "23" "June" "2017" "17:33:39" "+0100" "Anil Madhavapeddy" "anil@recoil.org" "<E3819982-B8D2-42EF-9345-5E8221023B85@recoil.org>" "135" "Re: [oss-security] CVE-2017-9772: OCaml release 4.04.2" nil nil nil "6" "2017062316:33:39" "[oss-security] CVE-2017-9772: OCaml release 4.04.2" (number mark "U       anil@recoil. Jun 23  135/4648  " thread-indent "\"Re: [oss-security] CVE-2017-9772: OCaml release 4.04.2\"\n") "<20170623162447.GA12500@jasmine.lan>" ("<21771A83-D685-4776-9CE7-883775F05977@inria.fr>" "<6D989FE0-69C8-4AE0-B897-B440B8F92C69@recoil.org>" "<20170623162447.GA12500@jasmine.lan>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 18350 invoked by uid 550); 23 Jun 2017 16:34:47 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17778 invoked from network); 23 Jun 2017 16:33:51 -0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=recoil.org; h=from
	:message-id:content-type:mime-version:subject:date:in-reply-to
	:cc:to:references; s=selector1; bh=Q7w0z76e6TZXMBYfXgO9R1IpWAc=; b=
	SMpXM6AqZa9tz3xePS2hMCycb0Iknwk4ADy6bl9JzmBE6lK4DThOVDMFjyOXwn5a
	fu8MimFovcK1EeYwzN+MRtCbDWpIpAePF8VUgsvIt97qgdiyOsg4Mr/kVDXwvGVp
	3ADg9pIb2IxmLdCR9ZLHPdYmojjLkhOn9n8SGC2BgDE=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=recoil.org; h=from
	:message-id:content-type:mime-version:subject:date:in-reply-to
	:cc:to:references; q=dns; s=selector1; b=oE7VqVpq6OP+pflh86XV7Qe
	+IS3IbdwTP+luHC3GIlRCUE8ya4r4xPXlU60qzduoljr1YcgsWAstuplhEyxTCeu
	FznXsY+8J2H5TpL5+izf9tp3/6yPVVx+MITZE9FXd8JJY1MaR/ldDsYf/EVltvC1
	RwHfO9k/W9g0j+3wC9RQ=
From: Anil Madhavapeddy <anil@recoil.org>
Message-Id: <E3819982-B8D2-42EF-9345-5E8221023B85@recoil.org>
Content-Type: multipart/alternative;
 boundary="Apple-Mail=_793F800D-889D-49D3-A428-8077F93BA238"
Mime-Version: 1.0 (Mac OS X Mail 10.3 \(3273\))
Date: Fri, 23 Jun 2017 17:33:39 +0100
In-Reply-To: <20170623162447.GA12500@jasmine.lan>
Cc: oss-security@lists.openwall.com,
 Damien Doligez <damien.doligez@inria.fr>
To: Leo Famulari <leo@famulari.name>
References: <21771A83-D685-4776-9CE7-883775F05977@inria.fr>
 <6D989FE0-69C8-4AE0-B897-B440B8F92C69@recoil.org>
 <20170623162447.GA12500@jasmine.lan>
X-Mailer: Apple Mail (2.3273)
Subject: Re: [oss-security] CVE-2017-9772: OCaml release 4.04.2

--Apple-Mail=_793F800D-889D-49D3-A428-8077F93BA238
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8

Hi Leo,

The ocaml.org <http://ocaml.org/> site is just being rebuilt in CI so it wi=
ll be a few minutes
before the release is on the live site.  In the meanwhile, all the distribu=
tion
tarballs are available at:

https://caml.inria.fr/pub/distrib/ocaml-4.04/ <https://caml.inria.fr/pub/di=
strib/ocaml-4.04/>

regards,
Anil

> On 23 Jun 2017, at 17:24, Leo Famulari <leo@famulari.name> wrote:
>=20
> Hi Anil,
>=20
> Can you tell us where to get OCaml 4.04.2? It's not available here:
>=20
> https://ocaml.org/releases/
>=20
> On Fri, Jun 23, 2017 at 04:28:28PM +0100, Anil Madhavapeddy wrote:
>> Anyone packaging OCaml 4.04.0 or OCaml 4.04.1 and installing setuid bina=
ries
>> with it should be aware of this CVE, and upgrade their distribution pack=
aging
>> accordingly.  Please get in touch with me if you are having any issues w=
ith
>> upgrading to the latest OCaml 4.04.2.
>>=20
>> Anil
>>=20
>>> Begin forwarded message:
>>>=20
>>> From: Damien Doligez <Damien.Doligez@inria.fr>
>>> Subject: [Caml-list] OCaml release 4.04.2
>>> Date: 23 June 2017 at 16:18:44 BST
>>> To: caml announce <caml-announce@inria.fr>, caml users <caml-list@inria=
.fr>
>>> Reply-To: Damien Doligez <Damien.Doligez@inria.fr>
>>>=20
>>>=20
>>> Dear OCaml users,
>>>=20
>>> We have the pleasure of celebrating the birthday of Alan Turing by
>>> announcing the release of OCaml version 4.04.2.
>>>=20
>>> This minor release fixes the security issue described in
>>> CVE-2017-9772 (included below).
>>>=20
>>> All users should eventually upgrade to 4.04.2 from 4.04.0 and 4.04.1.
>>> Any user who produces setuid programs with OCaml should read the CVE
>>> and upgrade immediately.
>>>=20
>>> It is available as an OPAM switch, or as a source download here:
>>> https://caml.inria.fr/pub/distrib/ocaml-4.04/
>>> https://github.com/ocaml/ocaml/archive/4.04.2.tar.gz
>>>=20
>>> Happy hacking,
>>>=20
>>> -- Damien Doligez for the OCaml team.
>>>=20
>>>=20
>>> OCaml 4.04.2 (23 Jun 2017):
>>> ---------------------------
>>>=20
>>> ### Security fix:
>>>=20
>>> - PR#7557: Local privilege escalation issue with ocaml binaries.
>>> (Damien Doligez, report by Eric Milliken, review by Xavier Leroy)
>>>=20
>>> --------------------------------------------------------------------
>>>=20
>>> CVE-2017-9772: Privilege escalation in OCaml runtime for SUID executabl=
es
>>>=20
>>> The environment variables CAML_CPLUGINS, CAML_NATIVE_CPLUGINS, and
>>> CAML_BYTE_CPLUGINS can be used to auto-load code into any ocamlopt-comp=
iled
>>> executable or any ocamlc-compiled executable in =E2=80=98custom runtime=
 mode=E2=80=99.
>>> This can lead to privilege escalation if the executable is marked setui=
d.
>>>=20
>>> Vulnerable versions: OCaml 4.04.0 and 4.04.1
>>>=20
>>> Workarounds:
>>>  - Upgrade to OCaml 4.04.2 or higher.
>>> or - Compile the OCaml distribution with the "-no-cplugins" configure o=
ption.
>>> or - OPAM users can "opam update && opam switch recompile 4.04.1", as
>>>    the repository has had backported patches applied.
>>>=20
>>> Impact: This only affects binaries that have been installed on Unix-like
>>> operating systems (including Linux and macOS) with the setuid bit set.
>>> However, in that situation, any user who execute the program gains all
>>> the privileges of the owner of the executable (meaning that root-owned
>>> setuid executables provide root access).
>>>=20
>>> Fix: OCaml 4.04.2 mitigates this by modifying Sys.getenv and Unix.getenv
>>> to raise an exception if the process has ever had elevated privileges.
>>> The OCaml runtime has also been modified to use this function for
>>> retrieving all of the runtime environment variables which could potenti=
ally
>>> cause files to be accessed or modified.  The older behaviour is availab=
le
>>> in Sys.unsafe_getenv for applications that require strict compatibility.
>>>=20
>>> Credits: This was originally reported by Eric Milliken on the OCaml Man=
tis
>>> bug tracker. https://caml.inria.fr/mantis/view.php?id=3D7557
>>>=20
>>> References: see CVE-2017-9779 for a lesser vulnerability in older versi=
ons.
>>>=20
>>> CVSS v2 Vector:
>>> AV:L/AC:L/Au:S/C:C/I:C/A:N/E:F/RL:OF/RC:C/CDP:H/TD:L/CR:H/IR:H/AR:L
>>> CWE ID: 114
>>>=20
>>>=20
>>> --=20
>>> Caml-list mailing list.  Subscription management and archives:
>>> https://sympa.inria.fr/sympa/arc/caml-list
>>> Beginner's list: http://groups.yahoo.com/group/ocaml_beginners
>>> Bug reports: http://caml.inria.fr/bin/caml-bugs
>>=20


--Apple-Mail=_793F800D-889D-49D3-A428-8077F93BA238--
