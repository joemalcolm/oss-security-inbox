X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2631" "Tuesday" "5" "May" "2015" "09:01:09" "+0000" "mancha" "mancha1@zoho.com" "<20150505090109.GC14223@zoho.com>" "74" "Re: [oss-security] PHP and some == wonkiness" nil nil nil "5" "2015050509:01:09" "[oss-security] PHP and some == wonkiness" (number mark "        mancha1@zoho May  5   74/2631  " thread-indent "\"Re: [oss-security] PHP and some == wonkiness\"\n") "<20150505082442.GB14223@zoho.com>" ("<55479C75.3070000@redhat.com>" "<CALwr1GnxttdqOssUd82R4P8wzEd-UhuWWVY3xpkqgt09UmgBuw@mail.gmail.com>" "<554868F6.1070305@redhat.com>" "<20150505072248.GA14223@zoho.com>" "<554874C0.509@redhat.com>" "<20150505082442.GB14223@zoho.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 1906 invoked by uid 550); 5 May 2015 09:01:38 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 1888 invoked from network); 5 May 2015 09:01:37 -0000
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; 
  s=zapps768; d=zoho.com; 
  h=date:from:to:cc:subject:message-id:references:mime-version:content-type:in-reply-to; 
  b=Qv7puqJ03P3BBjiHBrQmZ+4tPxP2WKLnEzv+Nh9igsD2wQ+Gu0UXBghzKtnm/cdqDxaxqDASwdSN
    B5zRyJL801iMQArGHjFz0qswJD5Bu39C884wu0E2mhSsaxHlO3JZ  
Message-ID: <20150505090109.GC14223@zoho.com>
References: <55479C75.3070000@redhat.com>
 <CALwr1GnxttdqOssUd82R4P8wzEd-UhuWWVY3xpkqgt09UmgBuw@mail.gmail.com>
 <554868F6.1070305@redhat.com>
 <20150505072248.GA14223@zoho.com>
 <554874C0.509@redhat.com>
 <20150505082442.GB14223@zoho.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="UoPmpPX/dBe4BELn"
Content-Disposition: inline
In-Reply-To: <20150505082442.GB14223@zoho.com>
X-PGP-Key: http://hkps.pool.sks-keyservers.net/pks/lookup?op=vindex&search=0x25168eb24f0b22ac
X-PGP-FP: 56B7 100E F4D5 811C 8FEF  ADD1 2516 8EB2 4F0B 22AC
X-Zoho-Virus-Status: 1
Cc: fweimer@redhat.com
Date: Tue, 5 May 2015 09:01:09 +0000
From: mancha <mancha1@zoho.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] PHP and some == wonkiness
To: oss-security@lists.openwall.com

--UoPmpPX/dBe4BELn
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, May 05, 2015 at 08:24:42AM +0000, mancha wrote:
> On Tue, May 05, 2015 at 09:44:00AM +0200, Florian Weimer wrote:
> > On 05/05/2015 09:26 AM, mancha wrote:
> >=20
> > > Taking sha1 as our reference hash and "=3D=3D" as our equivalence
> > > relation:
> > >=20
> > > All [a-f][0-9a-f]{39} are in equivalence class A.
> > >=20
> > > All 42[a-f][0-9a-f]{37} are in equivalence class B.
> > >=20
> > > Note: those regexes aren't representative of the full equivalence
> > > classes because prepending 0s doesn't alter the value (i.e.
> > > 0[a-f][0-9a-f]{38} is in equivalence class "A" as well..
> >=20
> > I cannot reproduce this.  Or you use =E2=80=9Cequivalence class=E2=80=
=9D in a
> > non-standard way.
> >=20
> > -- Florian Weimer / Red Hat Product Security
>=20
> I was using "equivalence class" in a standard way but mis-understood
> PHP's casting rules when comparing strings so never mind that comment.
>=20
> To raise the SNR back up, I agree with your assessment if we account
> for prepended 0s. So out of the 16^40 total hashes, I believe
> 10^38+10^37+...+10^1 of them will evaluate to float(0). A bit higher
> than your estimate (which only considered 10^38 of them). Same order
> of magnitude though.
>=20
> --mancha

That has a small off-by-one because 40 0s will be cast to float(0) when
compared to those.

Also, we have equivalence classes such as:

2e00000000000000000000000000000000000001
02e0000000000000000000000000000000000001
...
0000000000000000000000000000000000002e01
00000000000000000000000000000000000002e1
0000000000000000000000000000000000000020

--mancha

--UoPmpPX/dBe4BELn
Content-Type: application/pgp-signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCgAGBQJVSIbVAAoJEB4VYy8JqhaDoekP/jl+ZF73xlORJsdZltj28JMx
JnoN2fPKjtLgcx8E58VVW6RPf4IY5+/YwP7Aa5ZVOdkWItuHJf79YeRgvQTi5Dmk
QU5RPzDyMGL09LrMmxY0oz+R3Mqexe5X90cOKUY9ju/W7y0t11OKgHKBHceL2Vh7
LyT4E6iW4Un5znVNbjZ+cTUiBJWUxABLe/Gow5vdQOTTGZTaF2TsYLuTyqZBM0SY
8PmpaGRKZuZA0JlaqK5bTW+4kp14TnMAiZm5dnp1wN8mfgSX4aHmIJvv+hhDMCVx
ATqgsU6AAl7tlWCjhGT4QKCZE8xBh+GF/3cVoU3N2rpfANRZQGPuFep8EyuATeL8
D2GZrw9LL8T6v7/+VuFjpyMtmdh3pL9bUPdJQcckrVkEXuPDeEdKpQqTZsXJZqV5
maDFxkE3F2ODDYBxA3uzWrrXZRinaEQNHovUX4czrAAoEM1d9gL0BJiM+7WumkI2
nrYCKYNGujopobDMoeM1UG3Hy4uTeF3ZZDti0VWGGVebeUyfjYH4xYUULvAeXdmU
TuMb7waZYz0LyexZA+DFwF/YwVz75Gm27PjZBx384h6arQfSasQ65bmVeBLqeFa+
FmDZ/s0ODf55pNdh/F5ge5NxBbTDt1Q2+12YEeEhIKDd/wqRG+4u0hyuJnu1UWTT
kGT6+v5w/Z5ty13j6Dxu
=kfnh
-----END PGP SIGNATURE-----

--UoPmpPX/dBe4BELn--

