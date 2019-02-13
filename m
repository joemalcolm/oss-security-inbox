X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["7819" "Wednesday" "13" "February" "2019" "20:31:51" "+1100" "Aleksa Sarai" "cyphar@cyphar.com" "<20190213093151.znxnjuqtwbdlwnom@yavin>" "156" "[oss-security] CVE-2019-5736: runc container breakout exploit code" "^Date:" nil nil "2" "2019021309:31:51" "[oss-security] CVE-2019-5736: runc container breakout exploit code" (number mark "        cyphar@cypha Feb 13  156/7819  " thread-indent "\"[oss-security] CVE-2019-5736: runc container breakout exploit code\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 28212 invoked by uid 550); 13 Feb 2019 09:32:10 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 28188 invoked from network); 13 Feb 2019 09:32:09 -0000
X-Virus-Scanned: amavisd-new at heinlein-support.de
Message-ID: <20190213093151.znxnjuqtwbdlwnom@yavin>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="m5uxedbejb3lw7mx"
Content-Disposition: inline
Date: Wed, 13 Feb 2019 20:31:51 +1100
From: Aleksa Sarai <cyphar@cyphar.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE-2019-5736: runc container breakout exploit code
To: oss-security@lists.openwall.com

--m5uxedbejb3lw7mx
Content-Type: multipart/mixed; boundary="qpea7sltvqhhtddl"
Content-Disposition: inline


--qpea7sltvqhhtddl
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Someone outside of the embargo has posted a PoC of the exploit for
CVE-2019-5736 (which is related though not using the same vector)[1].
Since the original researchers have posted a blog post explaining the
exploit in some detail[2], I've decided to post the exploit code early
-- since the cat is out of the bag anyway.

CVE-2019-5736.tar.xz has the exploit code and an explanation of how to
use it. Our exploit code uses shared libraries, but you can create a
similar exploit by doing something like (thanks to Darren Shepherd from
Rancher Labs for pointing this out):

1. Run a script with a #!-line of "#!/proc/self/exe events" which will
   run "runc events" (which blocks for long enough).
2. A malicious process then opens /proc/$pid/exe (this is now allowed
   because the non-dumpable bit was cleared on execve).
3. Kill "runc events" and then re-open the exe fd read-write using the
   "/proc/self/fd/..." trick.

This is basically what [1] does -- but it does come with the downside
that you can't craft a malicious image that does this, you need to have
a separate program already running in the container and then attack
"docker exec".

As discussed in the previous mail, this exploit code also impacts LXC
(and several other runtimes have contacted me to say that they are also
vulnerable -- I would suggest that runtimes should ask to join
<security-announce@opencontainers.org>).

[1]: https://github.com/feexd/pocs/blob/master/CVE-2019-5736/exploit.c
[2]: https://blog.dragonsector.pl/2019/02/cve-2019-5736-escape-from-docker-=
and.html

--=20
Aleksa Sarai
Senior Software Engineer (Containers)
SUSE Linux GmbH
<https://www.cyphar.com/>

--qpea7sltvqhhtddl
Content-Type: application/x-xz
Content-Disposition: attachment; filename="CVE-2019-5736.tar.xz"
Content-Transfer-Encoding: base64

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

--qpea7sltvqhhtddl--

--m5uxedbejb3lw7mx
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEb6Gz4/mhjNy+aiz1Snvnv3Dem58FAlxj5AcACgkQSnvnv3De
m59mXxAAqQQNI+fJgLRgrJxI69Ik8MuQUWWYXQ8XFE1+OFVbc2TPT81jnTlbAHEF
qArw0/OQIyBpdgFtPzLigkd1mlxlHMgHB5b/nCtd20qlRDhWOu41wX/2KwwANQ4M
sxYndxFO6zxJskUc04AUwerzBOoMKkIPHBvoT0n8x5M/q3cOrLAan1JKANcdwkNN
3t9IxP1Oo6FNrkJxGgfmd/ZpW4bRY7Dt6pm5DQ1UknFxpOsZQGqATx37K8R4PPCX
dZCJ7kP22IMZMKsRAbiqSOKBIY1SD+CBV0Wp+ZO5ro7xT65XoDhQnqmmA71cpWfi
JDi5MZl2mbU9ocUxlPx3PSJ6/1vaCsYGalF5ljSzpCQMFMLEVPY/UFayVrkcxgqv
gBpHzg1HPRZ7/VpNb6u3ZxEUAZvT9FkBK/jn22De+nQtc5p6C2oL9DsAt6m2wh5n
pEyKROquRH7Y7FrRkc4L2RnU3+35Q5fPuy2BbAfxWExXo+oNdTpjs0lwoKoRxQ7+
KGZtY1b6lGjTNn+R6U7GTn/uu1HzApxXT8UeoJSMq0uNBlIugAMfyjWlkLkCP/Ej
aZgq6ynmLTyd3EGGQmRyuVqSiEaIdgLVafHP67NjLu9WxT4pNggBaZzl17raYwBd
ROkAw9r4TDi4Z1TABQI1lGn9jvXbK5rLewgwxSXZmAuj9JFEtpU=
=mHDo
-----END PGP SIGNATURE-----

--m5uxedbejb3lw7mx--
