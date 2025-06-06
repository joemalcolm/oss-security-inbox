Received: (qmail 3762 invoked by uid 550); 6 Jun 2025 03:35:54 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 28464 invoked from network); 6 Jun 2025 03:25:03 -0000
Message-ID: <f85fe431-9400-4262-a5d0-71697abd9e31@gentoo.org>
Date: Thu, 5 Jun 2025 23:24:51 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: oss-security@lists.openwall.com
References: <20250603025919.GA11183@openwall.com>
 <705c9747-27f1-4988-98bb-568db4e7cd74@gmail.com>
 <20250606022448.GA718@openwall.com>
Content-Language: en-US
From: Eli Schwartz <eschwartz@gentoo.org>
Autocrypt: addr=eschwartz@gentoo.org; keydata=
 xjMEZmeRNBYJKwYBBAHaRw8BAQdAYNZ7pUDWhx1i2f3p6L2ZLu4FcY18UoeGC04Gq/khqwfN
 I0VsaSBTY2h3YXJ0eiA8ZXNjaHdhcnR6QGdlbnRvby5vcmc+wpYEExYKAD4WIQTvUdMIsc4j
 CIi+DYTqQj6ToWND8QUCZoRL+gIbAwUJBKKGAAULCQgHAwUVCgkICwUWAgMBAAIeBQIXgAAK
 CRDqQj6ToWND8aB5AP9r4kB691nNtNwKkdRiOdl7/k6WYzokvHvDamXxRJ0I+gEAjZqR5V8y
 mfR3fy2Z+r2Joeqdt3CIv5IwPs64spBvigLOOARmZ5E0EgorBgEEAZdVAQUBAQdATT46Z06b
 1X9xjXFCYFxmq/Tj3tSEKZInDWTpoHQp4l8DAQgHwn4EGBYKACYWIQTvUdMIsc4jCIi+DYTq
 Qj6ToWND8QUCZmeRNAIbDAUJBKKGAAAKCRDqQj6ToWND8a2RAP40KPfbfoiZAJW5boFmFJ3G
 TUBDJRh9CWHyaPqq2PN+0wD/R07oLzfnJUN209mzi9TuTuHjeZybysyqXSw4MAxkMAY=
In-Reply-To: <20250606022448.GA718@openwall.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------hWRycEkMslRkLM0Mcbf1lzeX"
Subject: Re: [oss-security] Re: Linux kernel: HFS+ filesystem implementation
 issues, exposure in distros

--------------hWRycEkMslRkLM0Mcbf1lzeX
Content-Type: multipart/mixed; boundary="------------8f2RruY3evCR83pG47PJa03c";
 protected-headers="v1"
From: Eli Schwartz <eschwartz@gentoo.org>
To: oss-security@lists.openwall.com
Message-ID: <f85fe431-9400-4262-a5d0-71697abd9e31@gentoo.org>
Subject: Re: [oss-security] Re: Linux kernel: HFS+ filesystem implementation
 issues, exposure in distros
References: <20250603025919.GA11183@openwall.com>
 <705c9747-27f1-4988-98bb-568db4e7cd74@gmail.com>
 <20250606022448.GA718@openwall.com>
In-Reply-To: <20250606022448.GA718@openwall.com>

--------------8f2RruY3evCR83pG47PJa03c
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 6/5/25 10:24 PM, Solar Designer wrote:
> On Tue, Jun 03, 2025 at 12:38:11PM +0200, Attila Szasz wrote:
>> 3) The mismatch in CVE criteria between upstream and downstream distros =
is
>> a real issue. During the handling of my case, a certain CNA rule was
>> repeatedly cited=E2=80=94without being specified=E2=80=94which led to CV=
E-2025-0927,
>> initially allocated for Canonical Ubuntu Linux, being reassigned under
>> kernel.org=E2=80=99s CNA. I understand that MITRE's rules around CNA ter=
ritories=20
>> and
>> ownership were originally designed to distribute workload and filter out
>> noise, but they should be revisited as they can be ambiguous and=20
>> misinterpreted.
>> Especially in cases where one CNA=E2=80=99s product embeds another=E2=80=
=99s. According=20
>> to my
>> experience, this creates more confusion than clarity.


Presumably the kernel.org stance is that MITRE's territory rules are
working as intended as it allowed them to filter out your "noise", per
their analysis.


> Yes, this appears problematic.  I think a distro got to be able to
> assign a CVE against their whole product or a component they have
> without this implying upstream is also affected or agrees the issue is a
> vulnerability, as long as they make it very clear that the CVE is for
> their specific usage of the component.  As you wrote in:
>=20
> https://lore.kernel.org/lkml/6191c255-84cc-4721-91d1-1884472989f7@gmail.c=
om/
> [...]
> Wow.
>=20
> To be fair, a kernel bug does not imply a kernel vulnerability, which I
> assume is the point the kernel CNA is making by rejecting the CVE.
>=20
> But them precluding Ubuntu from acknowledging their distro vulnerability
> by having a CVE against Ubuntu feels inappropriate anyhow.
>=20
> Where you write "obfuscate", I wrote "make it very clear that the CVE is
> for their specific usage of the component".  Maybe that's the way to go.


If it is genuinely not a kernel vulnerability, but only a Ubuntu one for
using the kernel outside of its supported operating parameters, then
"make it very clear" does indeed sound correct.

If Ubuntu (or others) believe the kernel.org CNA is incorrect and a)
abusing their authority / b) simply lacking good judgement on security
matters, for something that is a legit kernel vulnerability, isn't that
what the appeals arbitration process is for? Raise the dispute with the
appropriate root, and have them overturn the kernel.org decision.

It is, anyways, inappropriate "cowboy justice" for a CNA to violate its
scope and assign a CVE number they aren't authorized for, just because
they disagree with the other CNA's decision. If Ubuntu (knowingly) isn't
going through the correct process then for that reason alone Ubuntu is
the bad actor here and should be penalized.


--=20
Eli Schwartz

--------------8f2RruY3evCR83pG47PJa03c--

--------------hWRycEkMslRkLM0Mcbf1lzeX
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature.asc"

-----BEGIN PGP SIGNATURE-----

wnsEABYIACMWIQTnFNnmK0TPZHnXm3qEp9ErcA0vVwUCaEJfgwUDAAAAAAAKCRCEp9ErcA0vV80b
AQCkv9MwzxQiXkyPxHyF6pKbx+77hEYyl4CqpkI4Rx66bgEAiDhsOWcQQiQGp9UG2YjAFQUbWFl/
b3dWFVq6uyGk5gA=
=mvW+
-----END PGP SIGNATURE-----

--------------hWRycEkMslRkLM0Mcbf1lzeX--
