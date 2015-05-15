X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1923" "Friday" "15" "May" "2015" "15:44:53" "+0200" "Alessandro Ghedini" "alessandro@ghedini.me" "<20150515134453.GA14212@kronk.local>" "56" "Re: [oss-security] CVE Request: zeromq downgrade attack" nil nil nil "5" "2015051513:44:53" "[oss-security] CVE Request: zeromq downgrade attack" (number mark "        alessandro@g May 15   56/1923  " thread-indent "\"Re: [oss-security] CVE Request: zeromq downgrade attack\"\n") "<20150507144908.GA1677@kronk.local>" ("<20150507144908.GA1677@kronk.local>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 15412 invoked by uid 550); 15 May 2015 13:45:06 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 15391 invoked from network); 15 May 2015 13:45:06 -0000
Message-ID: <20150515134453.GA14212@kronk.local>
Mail-Followup-To: oss-security@lists.openwall.com, cve-assign@mitre.org,
	zeromq-dev@lists.zeromq.org
References: <20150507144908.GA1677@kronk.local>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="bg08WKrSYDhXBjb5"
Content-Disposition: inline
In-Reply-To: <20150507144908.GA1677@kronk.local>
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: zeromq-dev@lists.zeromq.org
Date: Fri, 15 May 2015 15:44:53 +0200
From: Alessandro Ghedini <alessandro@ghedini.me>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE Request: zeromq downgrade attack
To: oss-security@lists.openwall.com, cve-assign@mitre.org

--bg08WKrSYDhXBjb5
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, May 07, 2015 at 04:49:08PM +0200, Alessandro Ghedini wrote:
> [ CCing upstream mailing list ]
>=20
> Hello,
>=20
> From https://github.com/zeromq/libzmq/issues/1273 :
>=20
> > It is easy to bypass the security mechanism in 4.1.0 and 4.0.5 by sendi=
ng a
> > ZMTP v2 or earlier header. The library accepts such connections without
> > applying its security mechanism.
> >=20
> > Solution: if security is defined on a socket, reject all V2 and earlier
> > connections, unconditionally.
>=20
> A patch for the zeromq 4.0.x stable series is available at
> https://github.com/zeromq/zeromq4-x/commit/b6e3e0f601e2c1ec1f3aac880ed6a3=
fe63043e51
>=20
> AFAICT no CVE has been assigned (or requested) for this, and the issue has
> been public since December of last year.
>=20
> Could a CVE be assigned please?

Ping?

Cheers

--bg08WKrSYDhXBjb5
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCgAGBQJVVfhVAAoJEK+lG9bN5XPLMBIQAI2zqsX4Q7sRHDbHsN3Q6FAJ
sX7GaZEeQEadvYtavpMwaHxoW9Ph/T6TIqFBIyyMvnaEqWJC3hukIOwTDe7R5PZ/
6Z9fGRqbnmsA64+JlzrBeNkfoLtBTsmbR5N5n18/rvvxCirrIYa67DIwVxi8Pkv7
HtE5K1FuApqwdCJsYU2Dxi8nQ88oCZ7YarrdBUBhbesxhaGDHdsW/4QCS636pAUR
U3lBygxR/XKD6jB14xAW+wYwxMVzfdzCv6vQTUmg5Lmre6bwjxOQUKBVvbiCOSjw
BReLmv+n7VraLinzzhNlg8JkssfDcsoj1+Ybsw2RqFw82U2HFjPi/nnApoM+ZEQf
sjmffZvnaA+Sf5eP8poEdbpuxNWL/KV9pq94+9v2PJhyc8C7BEzQhtAB/XMQbFke
I1lydmbwvuse5X1ek6BsuoWFbPXufwuVaPxOnFJN9po/tYzBKTx7ixuO4CDeAlRc
jLSM80KS4IEsz8fLxiwX1C56Sd95RKr3Ckk8DEQN5qST9yzgygq5K057nNSsASqW
ngyNpIDPaEBuz/vCfRskhbmR10kKcUg/f625SHkVt1EQjVpalHeQqcrnm66LRpEM
XWzh0zdRsbRlojdID1U9VKi+SmK58oltbEnqKi99im2lCBJYlwgKxFFli8EMae+k
OL0KSwrTnmPFkZ0VnxxL
=AICp
-----END PGP SIGNATURE-----

--bg08WKrSYDhXBjb5--
