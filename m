X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1102" "Wednesday" "5" "July" "2017" "23:14:51" "+0200" "Robert Scheck" "robert@fedoraproject.org" "<20170705211451.GA16241@hurricane.linuxnetz.de>" "38" "Re: [oss-security] systemd fails to parse user that should run service" "^Date:" nil nil "7" "2017070521:14:51" "[oss-security] systemd fails to parse user that should run service" (number mark "        robert@fedor Jul  5   38/1102  " thread-indent "\"Re: [oss-security] systemd fails to parse user that should run service\"\n") "<20170705170556.146ce33d@jabberwock.cb.piermont.com>" ("<VI1PR04MB310470DAAF5F79C8BA8AE789D6D10@VI1PR04MB3104.eurprd04.prod.outlook.com>" "<20170705085034.GA2638@pali>" "<CABMkiz7jqqJNjL==jrLXWPjJpDgx4r+_ZmnYFq5aJqBn9eAKCA@mail.gmail.com>" "<20170705170556.146ce33d@jabberwock.cb.piermont.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 21909 invoked by uid 550); 5 Jul 2017 21:26:43 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 11901 invoked from network); 5 Jul 2017 21:15:06 -0000
Message-ID: <20170705211451.GA16241@hurricane.linuxnetz.de>
References: <VI1PR04MB310470DAAF5F79C8BA8AE789D6D10@VI1PR04MB3104.eurprd04.prod.outlook.com>
 <20170705085034.GA2638@pali>
 <CABMkiz7jqqJNjL==jrLXWPjJpDgx4r+_ZmnYFq5aJqBn9eAKCA@mail.gmail.com>
 <20170705170556.146ce33d@jabberwock.cb.piermont.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="fdj2RfSjLxBAspz7"
Content-Disposition: inline
In-Reply-To: <20170705170556.146ce33d@jabberwock.cb.piermont.com>
X-GnuPG-Key: 0xCE3E1F56, available at http://pgp.uni-mainz.de/
User-Agent: Mutt/1.5.23 (2014-03-12)
X-Scanned-By: MIMEDefang 2.79 on 127.0.0.1
Date: Wed, 5 Jul 2017 23:14:51 +0200
From: Robert Scheck <robert@fedoraproject.org>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] systemd fails to parse user that should run
 service
To: oss-security@lists.openwall.com

--fdj2RfSjLxBAspz7
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, 05 Jul 2017, Perry E. Metzger wrote:
> On Wed, 5 Jul 2017 13:28:43 +0100 Ben Tasker <ben@bentasker.co.uk>
> wrote:
> > FWIW, I'd be inclined to agree that it needs a CVE so that
> > downstream distro's can at least refer to it, and decide how (and
> > if) they want to address it.
>=20
> +1
>=20
> I don't care much if the developers deny that this is a problem. It is
> a problem.

+1 for both, the CVE and that this is a problem. The service should not be
started with more (!) permissions simply if parsing username fails. As a
security sensitive guy I do not want to see a random software started with
root permissions, because the random username fails to be parsed by some
systemd code.


Regards,
  Robert

--fdj2RfSjLxBAspz7
Content-Type: application/pgp-signature

-----BEGIN PGP SIGNATURE-----

iEYEARECAAYFAlldVssACgkQUwMgnc4+H1bJuACdFK3Alfb3s33t0KG6uDuAzbdw
0uAAoKradq1iLZ2vf2hlNwyeEBi2ZyQq
=lT1h
-----END PGP SIGNATURE-----

--fdj2RfSjLxBAspz7--
