X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2362" "Thursday" "25" "April" "2019" "08:23:14" "-0500" "Jamie Strandboge" "jamie@canonical.com" "<20190425132314.GD13360@iolanthe>" "66" "[oss-security] Re: CVE Request: golang-seccomp incorrectly handles multiple syscall arguments" nil nil nil "4" "2019042513:23:14" "[oss-security] Re: CVE Request: golang-seccomp incorrectly handles multiple syscall arguments" (number mark "U       jamie@canoni Apr 25   66/2362  " thread-indent "\"[oss-security] Re: CVE Request: golang-seccomp incorrectly handles multiple syscall arguments\"\n") "<20190424162848.GC13360@iolanthe>" ("<20190424161241.GB13360@iolanthe>" "<20190424162848.GC13360@iolanthe>") nil nil nil nil nil nil nil "[oss-security] Re: CVE Request: golang-seccomp incorrectly handles multiple syscall arguments" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 26414 invoked by uid 550); 25 Apr 2019 13:42:58 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11973 invoked from network); 25 Apr 2019 13:23:29 -0000
Date: Thu, 25 Apr 2019 08:23:14 -0500
From: Jamie Strandboge <jamie@canonical.com>
To: OSS Security List <oss-security@lists.openwall.com>
Cc: security@ubuntu.com, mheon@redhat.com, paul@paul-moore.com
Message-ID: <20190425132314.GD13360@iolanthe>
References: <20190424161241.GB13360@iolanthe>
 <20190424162848.GC13360@iolanthe>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ylS2wUBXLOxYXZFQ"
Content-Disposition: inline
In-Reply-To: <20190424162848.GC13360@iolanthe>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: [oss-security] Re: CVE Request: golang-seccomp incorrectly handles multiple syscall
 arguments

--ylS2wUBXLOxYXZFQ
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, 24 Apr 2019, Jamie Strandboge wrote:

> On Wed, 24 Apr 2019, Jamie Strandboge wrote:
>=20
> > Hi,
> >=20
> > https://github.com/seccomp/libseccomp-golang/issues/22 describes a bug =
where
> > golang-seccomp incorrectly generates BPFs which OR multiple arguments r=
ather
> > than ANDing them. This bug was fixed here:
> >=20
> > https://github.com/seccomp/libseccomp-golang/commit/06e7a29f36a34b8cf41=
9aeb87b979ee508e58f9e
> >=20
> > which is currently only in master and not the most current 0.9.0 releas=
e. Since
> > golang-seccomp is meant to be a golang package to facilitate reducing t=
he
> > syscall surface for applications and this bug produces incorrect BPF to=
 achieve
> > that when specifying more that 2 syscall arguments, this probably deser=
ves a
> > CVE assignment so distributions will see the issue and incorporate the =
fix into
> > their stable releases. I've included upstream developers Matthew and Pa=
ul in CC
> > for comment.
> >=20
> Sorry, I was reminded that CVE requests go to https://cveform.mitre.org/.=
 I did
> that just now. I can shuffle back and forth information between here and =
there
> as needed and will report back the CVE if/when it is assigned.

This is CVE-2017-18367

--=20
Jamie Strandboge             | http://www.canonical.com

--ylS2wUBXLOxYXZFQ
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEETCDAa12L3miIVNKKUdvcWMxVlXMFAlzBtLwACgkQUdvcWMxV
lXPmVA//XKwX74l5xPctY+KYNLsHo4VpdRPc+HGoZMybLHXDqiuVs9GbnztClsqj
DlfMSgWSk0haZJIMhR7UsR86A8GFJZHIpBjONXq9yH2OoHwnZ7596vZcOL0ymMsB
DgZ91I4TWzPsNmijkMkMXoO86kiXto/rA1k2bvYofXzfhhS2UNSarA8kYtgjOO0y
ir5PaeNmbGViQtk/QjSN5nhDnsUNg4/jsOJ0wYxQ2odbzfIOWNepvS4UNAF4h/rr
/M0VU5hJEgWimwrRSmDVxC6cRUdRGJQs1kMpvHC9yPQfg6Pa84qRj5u+GSOmPRC/
z7udGfOGLP6Hmd4iN6IWPl3asUYCML/QOaOXJ7VVeVOKsISSnWm/kGq4UVUfdNgg
tbsqrHvT/iT6j3jZPeRVE6i2g0w5V1ca+bu5T5Go+0cW+0mfPVW+yh+KOfPJthnc
pboMNL+v9YzV6oK0oW8Uf34ROnnvgIjVlOdidd9bJK4JkIsXAeeOugbPZigvFOgc
tWPOsb5QdZX2mpyHGDGe4I/jENII5zqtpbseXgLiOhN+SUsTBdCm/rtrO57iOfgu
pPx9TVSamc+EMCBB3DNdqFHG49ydK1smDuYivIbRMpr8rbJMtbIi1t9kaHIRiCHi
FZ/YSzD6Rh+Fdb45eUYbGOmLPkmYrrAlHZC4Q8dvQ9DhPcv8PdI=
=01vM
-----END PGP SIGNATURE-----

--ylS2wUBXLOxYXZFQ--
