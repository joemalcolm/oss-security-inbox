X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1719" "Wednesday" "13" "February" "2019" "20:56:48" "+1100" "Aleksa Sarai" "cyphar@cyphar.com" "<20190213095648.ibfskgddfa4zgdlo@yavin>" "43" "Re: [oss-security] CVE-2019-5736: runc container breakout exploit code" "^Cc:" nil nil "2" "2019021309:56:48" "[oss-security] CVE-2019-5736: runc container breakout exploit code" (number mark "        cyphar@cypha Feb 13   43/1719  " thread-indent "\"Re: [oss-security] CVE-2019-5736: runc container breakout exploit code\"\n") "<CABOq=i3PAbRT5GpJZiAHb-BDpQkx0n0k=M8JeupjNKUK+Wi78A@mail.gmail.com>" ("<20190213093151.znxnjuqtwbdlwnom@yavin>" "<CABOq=i3PAbRT5GpJZiAHb-BDpQkx0n0k=M8JeupjNKUK+Wi78A@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 3986 invoked by uid 550); 13 Feb 2019 09:57:12 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 3960 invoked from network); 13 Feb 2019 09:57:12 -0000
X-Virus-Scanned: amavisd-new at heinlein-support.de
Message-ID: <20190213095648.ibfskgddfa4zgdlo@yavin>
References: <20190213093151.znxnjuqtwbdlwnom@yavin>
 <CABOq=i3PAbRT5GpJZiAHb-BDpQkx0n0k=M8JeupjNKUK+Wi78A@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="v6kiu6eh3bxmnq7x"
Content-Disposition: inline
In-Reply-To: <CABOq=i3PAbRT5GpJZiAHb-BDpQkx0n0k=M8JeupjNKUK+Wi78A@mail.gmail.com>
Cc: oss-security@lists.openwall.com
Date: Wed, 13 Feb 2019 20:56:48 +1100
From: Aleksa Sarai <cyphar@cyphar.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE-2019-5736: runc container breakout exploit
 code
To: EJ Campbell <ejc3@verizonmedia.com>

--v6kiu6eh3bxmnq7x
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On 2019-02-13, EJ Campbell <ejc3@verizonmedia.com> wrote:
> While fixing docker / runc is clearly the right fix, would using chattr -i
> on runc be a quick mitigation for the issue? I believe that will prevent
> the file from being overwritten by the exploit and Etienne Stalmans
> verified that it helped:
>  https://twitter.com/_staaldraad/status/1095354945073754112

The privileged user in the container could just un-set the immutable
bit using "/proc/self/fd/..." and then open it for writing. A read-only
filesystem would work much better.

--=20
Aleksa Sarai
Senior Software Engineer (Containers)
SUSE Linux GmbH
<https://www.cyphar.com/>

--v6kiu6eh3bxmnq7x
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEb6Gz4/mhjNy+aiz1Snvnv3Dem58FAlxj6eAACgkQSnvnv3De
m598zRAAv9x7us4vLmspiQZYrJ76HahuBjcxVcxJkAfgRxlpF/c3SOJbYcRoVp1j
ypOZi96tKkKB4vxjQxygiLJ1g/+oV9R0OIWujjZE3grVgzqxbTeZxRqRyl3soxAw
Ngyi6sXJpUKjNTsRt26fl/C3Qkq/+A+zDbwiqJ83nz3+S2QwIz0GCEflm+q/LWUp
XPIlE9LUZAL7SYXsw+w13JFUF7VY7CbeCZQAlj17f66xgVj/md9ZvbBHjvEeNY+N
/hjZmp/cpYJBZZI4aEh61CtGoffqcTloN7zhCklePcs4ceqjEhyiVk5bm8VqUTeM
G/M1+KUcDN90cxSmXwpiXRLWLpr5O21p7sK2CtmH9/k2+uZM3sNqeWgNJ2hSVKyO
SA/L49i4j5EowNRTiFqvdA/nuARi4CdobIOrC8qgwlcuSrwW8bp7/g1FTq7uGvKC
xM5cLbNOxUUR40BlQrWNw7b9zN19oHvhQl7rpVBAL6PyaR72WnMUkiBjkMPXWE1A
4BSF1RHqSAsdT/8j+OzDEjkafSgM8cyzRpM34ll56Wu3J+3MtQ1G1yOQV/NefI26
giP7xw29Jmj6vHAFVGtBN9Xhe4V0Ca3YeGrK2AOqpoUCKnMFFw7hnkIyuDnicaeq
+iRhSf91bZXehS8+bxFXMllIytXltKmJnOmT1W3qYG7+JPdRhYI=
=cL4j
-----END PGP SIGNATURE-----

--v6kiu6eh3bxmnq7x--
