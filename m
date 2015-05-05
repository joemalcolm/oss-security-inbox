X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2644" "Tuesday" "5" "May" "2015" "07:26:42" "+0000" "mancha" "mancha1@zoho.com" "<20150505072248.GA14223@zoho.com>" "68" "Re: [oss-security] PHP and some == wonkiness" nil nil nil "5" "2015050507:26:42" "[oss-security] PHP and some == wonkiness" (number mark "        mancha1@zoho May  5   68/2644  " thread-indent "\"Re: [oss-security] PHP and some == wonkiness\"\n") "<554868F6.1070305@redhat.com>" ("<55479C75.3070000@redhat.com>" "<CALwr1GnxttdqOssUd82R4P8wzEd-UhuWWVY3xpkqgt09UmgBuw@mail.gmail.com>" "<554868F6.1070305@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 6120 invoked by uid 550); 5 May 2015 07:27:06 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 6096 invoked from network); 5 May 2015 07:27:05 -0000
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; 
  s=zapps768; d=zoho.com; 
  h=date:from:to:cc:subject:message-id:references:mime-version:content-type:in-reply-to; 
  b=luANtcuOFPGqzfqpiHaV/QwSn5qZvYzcUSs2wXGkuRClBmRos7OrYCbchkpiI9zRkxtaeEdsOTFB
    YifMAyV77jiWxoDtLBuW0ktqZysll5bfFXJw1SA4oEBqWQDIdjTo  
Message-ID: <20150505072248.GA14223@zoho.com>
References: <55479C75.3070000@redhat.com>
 <CALwr1GnxttdqOssUd82R4P8wzEd-UhuWWVY3xpkqgt09UmgBuw@mail.gmail.com>
 <554868F6.1070305@redhat.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="8GpibOaaTibBMecb"
Content-Disposition: inline
In-Reply-To: <554868F6.1070305@redhat.com>
X-PGP-Key: http://hkps.pool.sks-keyservers.net/pks/lookup?op=vindex&search=0x25168eb24f0b22ac
X-PGP-FP: 56B7 100E F4D5 811C 8FEF  ADD1 2516 8EB2 4F0B 22AC
X-Zoho-Virus-Status: 1
Cc: fweimer@redhat.com
Date: Tue, 5 May 2015 07:26:42 +0000
From: mancha <mancha1@zoho.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] PHP and some == wonkiness
To: oss-security@lists.openwall.com

--8GpibOaaTibBMecb
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, May 05, 2015 at 08:53:42AM +0200, Florian Weimer wrote:
> On 05/04/2015 08:34 PM, P=C3=A1draic Brady wrote:
>=20
> > It all boils down to PHP loose typing/type juggling for =3D=3D and
> > strict type comparison for =3D=3D=3D. The first option will trigger a s=
et
> > of rules capable of converting strings into floats or integers,
> > based on whether both strings are representative of a float (i.e.
> > your example), or where one of the values being compared is already
> > an integer/float. Unfortunately, it is indeed a common weakness to
> > not use strict comparisons in security related code. For example,
> > Laravel had a recent issue in comparing CSRF tokens where passing in
> > a zero always passed the check from this mistake,
>=20
> Oh.
>=20
> But the current case apparently needs a string from a very specific
> set.  Do we know the digests which trigger this?  If it has to be "0e"
> followed by only digits on both sides, it is somewhat unlikely that
> you have a reference string with this property, especially if SHA-1 is
> used (around 6.84=C3=9710=C2=AF=C2=B9=C2=B9, if I'm not mistaken).
>=20
> -- Florian Weimer / Red Hat Product Security

This can happen more frequently than you think.

Taking sha1 as our reference hash and "=3D=3D" as our equivalence relation:

All [a-f][0-9a-f]{39} are in equivalence class A.

All 42[a-f][0-9a-f]{37} are in equivalence class B.

Note: those regexes aren't representative of the full equivalence
classes because prepending 0s doesn't alter the value (i.e.
0[a-f][0-9a-f]{38} is in equivalence class "A" as well..

Et cetera.

--mancha

--8GpibOaaTibBMecb
Content-Type: application/pgp-signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCgAGBQJVSHCyAAoJEB4VYy8JqhaDpY8QAIhkvqcCwi2SdJRABKulBZGq
eP2ufVEJhgbp9VrdPmz60giGwNcyAFwUBFMILA8dECagM+K2XUl4gPRrv3Tq3KG0
AIyH6OoapoTK+3ZQkV7gcUTmQobK+akmvfy/0IksG6S75RnU5HRNc9eHcBU1JV/Q
ScpJF3erZ7OA6b0/qOyoVta8yaiX5lC9byHl0J+Hl52s+GGnxaKtDqJpHMzng8EK
66eASdO5zq3bYXlgxGpTPOsP2oAKVCFUyUQFm+c8DSDTfzhPUreisrgMS5gVpPj3
5Zl4IKx6Ds/vD8njoJfF+wQWGjTuBaI5D2K5p+HVQj2OcLgQSfkY7HOD1pSQXCQV
J7yxwzdrahIypQ+qLX5aZXTfMg6uf+GY+C20T4ti2M4aCgFKkuPIuoxnE+QS7R0Z
LQJQEoV7nVlVts//bSKVcLl/GobHiHsJirMMPB5kTKF4OLTfgM29rXXUznpynfor
kznGjMWTaj+i9Ewsv/2qMoP7bXhnpUK68Lw3x/y2clGidcqWJBJG0pNqwLx2hsMk
jH21wNRfAgO3rc61bgc6z0zgIzwMGxjgXmImvtv4Vx/6Ikpl15MEgYfjqTzS8iuK
0TCWAzaDSNbqQCAfEO9+Ca5mpZa9soQsW7FbGSXOMhdEEJDuL5htnvZF8PmC/D6N
ovvtGsZVQbGWiUdF9l2R
=AmrY
-----END PGP SIGNATURE-----

--8GpibOaaTibBMecb--

