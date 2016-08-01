X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1701" "Monday" "1" "August" "2016" "12:24:21" "+0200" "Shiz" "hi@shiz.me" "<291B6ECE-2D59-435D-A986-4582022C9B21@shiz.me>" "46" "Re: [oss-security] cve request: systemd-machined: information exposure for docker containers" "^Date:" nil nil "8" "2016080110:24:21" "[oss-security] cve request: systemd-machined: information exposure for docker containers" (number mark "        hi@shiz.me   Aug  1   46/1701  " thread-indent "\"Re: [oss-security] cve request: systemd-machined: information exposure for docker containers\"\n") "<20160728144249.GB23522@perpetual.pseudorandom.co.uk>" ("<1304293369.8684866.1469539505676.JavaMail.zimbra@redhat.com>" "<20160726192413.2CD1A72E006@smtpvbsrv1.mitre.org>" "<20160727170537.GA3330@motoko>" "<398a8ff1-a2ea-9140-c695-c1969ffc58af@redhat.com>" "<20160727200021.GB3330@motoko>" "<B760F07C-908F-431A-8BCE-A3AE9E93E33F@nccgroup.trust>" "<CAEk6tEx0JRNX9q0k8JH2PNkGJO59WVVMhh4=3DkoQFMNkqY9LA@mail.gmail.com>" "<4b0070a9-e8c3-ac69-a410-2269d9d08b71@redhat.com>" "<20160728144249.GB23522@perpetual.pseudorandom.co.uk>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 32228 invoked by uid 550); 1 Aug 2016 14:39:21 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 8150 invoked from network); 1 Aug 2016 10:24:50 -0000
Content-Type: multipart/signed; boundary="Apple-Mail=_94C82A49-DDCD-456C-8DB3-6E579C2B95EC"; protocol="application/pgp-signature"; micalg=pgp-sha256
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
X-Pgp-Agent: GPGMail
In-Reply-To: <20160728144249.GB23522@perpetual.pseudorandom.co.uk>
Message-Id: <291B6ECE-2D59-435D-A986-4582022C9B21@shiz.me>
References: <1304293369.8684866.1469539505676.JavaMail.zimbra@redhat.com> <20160726192413.2CD1A72E006@smtpvbsrv1.mitre.org> <20160727170537.GA3330@motoko> <398a8ff1-a2ea-9140-c695-c1969ffc58af@redhat.com> <20160727200021.GB3330@motoko> <B760F07C-908F-431A-8BCE-A3AE9E93E33F@nccgroup.trust> <CAEk6tEx0JRNX9q0k8JH2PNkGJO59WVVMhh4=3DkoQFMNkqY9LA@mail.gmail.com> <4b0070a9-e8c3-ac69-a410-2269d9d08b71@redhat.com> <20160728144249.GB23522@perpetual.pseudorandom.co.uk>
X-Mailer: Apple Mail (2.3124)
Date: Mon, 1 Aug 2016 12:24:21 +0200
From: Shiz <hi@shiz.me>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] cve request: systemd-machined: information exposure for docker containers
To: oss-security@lists.openwall.com

--Apple-Mail=_94C82A49-DDCD-456C-8DB3-6E579C2B95EC
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii


> On 28 Jul 2016, at 16:42, Simon McVittie <smcv@debian.org> wrote:
>=20
> *Which* unprivileged user processes?
>=20
> If the unprivileged user processes are not in a container, they can get a
> significant amount of the same information by reading the host's /proc.

Except if a host is running with hidepid=3D{1,2}, which is not entirely unc=
ommon
especially in hardened systems. In that regard it /does/ qualify as infolea=
k.

- Shiz

--Apple-Mail=_94C82A49-DDCD-456C-8DB3-6E579C2B95EC
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----

iQIcBAEBCAAGBQJXnyNlAAoJEI8YjKeZk+kH2VUP/irSOoqD8hoGpUdLpuQ2Ab+p
2jtcVZJEBF9x3beeyLpbFAfmigC+RHPOWYd34ARGjcKSKnQMHac1Sjd8eFVwgC66
y9KarPCh5QGZvgzoexLwBWk+ZIhUbItyh4I3lmootDWpQgFas3Jdy+/gmHV1mfKX
b603kjRL0vW65P09MA64KOoZjxHiCImDrzFV4iRJjVJPDqLf7N5M0v/vljQA3Dry
42StfotxF0wZL5ubJjLLJvLc60t4IN0oEuQWXLrLKJ3iMCITdLYIiReBZSLO5xge
HTEZlXwBw4DYZKdo7EOWhlWGe7IPJZUsaPoMPhIXbl/pHJ2Z+1gHbhA/v6e8xcuT
WUQjLPNS4+/Ws2AumNkRCS4pE6uLAzPXOa0FKbuMEkkE2bnSvGhJmnQfCAxUtwDC
/Z1NXrP8YA6C6rbhztCXfa3cuqaFxFURXEOQWjU0r2JiFJSkNLH9jWDfu0Vlu96V
5uNKZV91VoiSaQoTJaQv5os5IWO7V1+9yeBP1dCD8orCbjWtFi8okRfx1fWKhAIB
BK3JU9lrVT4X9fkCYdS5tl994btmRroOsZLAIJs5ErG4qxpEsugxSq0PcYnIp9Qe
wVR7eSmrIMVD6VoLfSJ2lyVKLZyWc5W507SSYso6xCYN4h9f2echs8c6Fu7Yx6z1
RaEnhDn2O+nLW5fngmsV
=jE4F
-----END PGP SIGNATURE-----

--Apple-Mail=_94C82A49-DDCD-456C-8DB3-6E579C2B95EC--
