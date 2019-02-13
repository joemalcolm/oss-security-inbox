X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1738" "Wednesday" "13" "February" "2019" "20:09:34" "+1100" "Aleksa Sarai" "asarai@suse.de" "<20190213090934.mnnitmk4onepvenu@mikami>" "45" "Re: [oss-security] CVE-2019-5736: runc container breakout (all versions)" "^Cc:" nil nil "2" "2019021309:09:34" "[oss-security] CVE-2019-5736: runc container breakout (all versions)" (number mark "        asarai@suse. Feb 13   45/1738  " thread-indent "\"Re: [oss-security] CVE-2019-5736: runc container breakout (all versions)\"\n") "<CAOp4FwQjDa6+c7HsF94At4Azj4aeyEouOO_AW8jk2iZ4hjwrOA@mail.gmail.com>" ("<20190211130520.xwi6vpay3sc56pza@yavin>" "<20190212163606.GA4443@openwall.com>" "<20190213090320.lce4bdign5rzqjzm@mikami>" "<CAOp4FwQjDa6+c7HsF94At4Azj4aeyEouOO_AW8jk2iZ4hjwrOA@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 17606 invoked by uid 550); 13 Feb 2019 09:09:54 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 17584 invoked from network); 13 Feb 2019 09:09:54 -0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Message-ID: <20190213090934.mnnitmk4onepvenu@mikami>
References: <20190211130520.xwi6vpay3sc56pza@yavin>
 <20190212163606.GA4443@openwall.com>
 <20190213090320.lce4bdign5rzqjzm@mikami>
 <CAOp4FwQjDa6+c7HsF94At4Azj4aeyEouOO_AW8jk2iZ4hjwrOA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="cgaxxiwnctmc3frk"
Content-Disposition: inline
In-Reply-To: <CAOp4FwQjDa6+c7HsF94At4Azj4aeyEouOO_AW8jk2iZ4hjwrOA@mail.gmail.com>
User-Agent: NeoMutt/20180716
Cc: oss-security@lists.openwall.com, Solar Designer <solar@openwall.com>,
	Aleksa Sarai <cyphar@cyphar.com>, dev@opencontainers.org,
	Christian Brauner <christian.brauner@ubuntu.com>
Date: Wed, 13 Feb 2019 20:09:34 +1100
From: Aleksa Sarai <asarai@suse.de>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE-2019-5736: runc container breakout (all
 versions)
To: Loganaden Velvindron <loganaden@gmail.com>

--cgaxxiwnctmc3frk
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On 2019-02-13, Loganaden Velvindron <loganaden@gmail.com> wrote:
> I think that someone already posted a PoC on github, AFAIK.

Yes, there is a PoC that someone outside of the embargo posted on
GitHub (it is quite different to the one we have but it is using a
related issue which our patch also fixed). At this point I might as well
post the actual exploit code (given that the original vulnerability
authors have published a blog post that basically outlines the
exploit[1]).

[1]: https://blog.dragonsector.pl/2019/02/cve-2019-5736-escape-from-docker-=
and.html

--=20
Aleksa Sarai
Senior Software Engineer (Containers)
SUSE Linux GmbH
<https://www.cyphar.com/>

--cgaxxiwnctmc3frk
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEXzbGxhtUYBJKdfWmnhiqJn3bjbQFAlxj3s4ACgkQnhiqJn3b
jbRHaA//XW2Ll9T1gDf2jZX7Mj0YG+BOtoq/SD0qJGzok0a8J9LcbHn0FUF+4SKA
HfyPCYSjJhULGgFHR8K4tUfg2VxTvTrxDhaUjdvnTjulDi7hcYc2kN9MrFGYeU7x
RMYtfzIH+7x9eI6XSLyU59potzyBAt+ePqNyqOvWNeR/PHmoBV6MNvM45JL5HBe+
aqApF0AhgoS/Lyg7T1uTMJ+aLhtIFqe8h6GH/mi7lvxKdkBlAMdh2ljSBc3OxSW5
6qsXxXT0VW2+628CUGaDkNwbjRpQiW0FMs6K0XLiOg8QuKvZWRK2bTWCkdR99yxU
Yr5on+O4tHkDQpWuBLcsBEpm//OCgGCd1Uth8V9tYnuKv5B860e0mamZr92kEa79
XPJt1pNj8A4Bpj6K7vnH7YIrlOhv+TEqEw42vh5tjU9hHJlC4rS2qOhbBZaioiX7
rt3FCagyParFTaCwkW0SSWb0cIGQpLqD3Y7U0Jjqp/pv5gQVZM9ctBtRxfeRtliq
PfxlkT/1axIlDTChrfvFeVZDp4IMb46yYAQw51+k8RV1R6yPDm6fsS65hI/BU0lu
hHDicKN5iDaK2R50JpkTxZELeroHHix0/D5TpC3Kcscw++T1RC9oaBEiyBKeUzZ/
H0kmM9wYXi0LNJjrdRu/Ko9ZGBfgGUJboKgtiKQCVc1DlEkhatk=
=Y1z9
-----END PGP SIGNATURE-----

--cgaxxiwnctmc3frk--
