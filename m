X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2246" "Wednesday" "24" "April" "2019" "11:28:48" "-0500" "Jamie Strandboge" "jamie@canonical.com" "<20190424162848.GC13360@iolanthe>" "61" "[oss-security] Re: CVE Request: golang-seccomp incorrectly handles multiple syscall arguments" nil nil nil "4" "2019042416:28:48" "[oss-security] Re: CVE Request: golang-seccomp incorrectly handles multiple syscall arguments" (number mark "U       jamie@canoni Apr 24   61/2246  " thread-indent "\"[oss-security] Re: CVE Request: golang-seccomp incorrectly handles multiple syscall arguments\"\n") "<20190424161241.GB13360@iolanthe>" ("<20190424161241.GB13360@iolanthe>") nil nil nil nil nil nil nil "[oss-security] Re: CVE Request: golang-seccomp incorrectly handles multiple syscall arguments" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 13756 invoked by uid 550); 24 Apr 2019 17:46:21 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28341 invoked from network); 24 Apr 2019 16:29:03 -0000
Date: Wed, 24 Apr 2019 11:28:48 -0500
From: Jamie Strandboge <jamie@canonical.com>
To: OSS Security List <oss-security@lists.openwall.com>
Cc: security@ubuntu.com, mheon@redhat.com, paul@paul-moore.com
Message-ID: <20190424162848.GC13360@iolanthe>
References: <20190424161241.GB13360@iolanthe>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="zCKi3GIZzVBPywwA"
Content-Disposition: inline
In-Reply-To: <20190424161241.GB13360@iolanthe>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: [oss-security] Re: CVE Request: golang-seccomp incorrectly handles multiple syscall
 arguments

--zCKi3GIZzVBPywwA
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, 24 Apr 2019, Jamie Strandboge wrote:

> Hi,
>=20
> https://github.com/seccomp/libseccomp-golang/issues/22 describes a bug wh=
ere
> golang-seccomp incorrectly generates BPFs which OR multiple arguments rat=
her
> than ANDing them. This bug was fixed here:
>=20
> https://github.com/seccomp/libseccomp-golang/commit/06e7a29f36a34b8cf419a=
eb87b979ee508e58f9e
>=20
> which is currently only in master and not the most current 0.9.0 release.=
 Since
> golang-seccomp is meant to be a golang package to facilitate reducing the
> syscall surface for applications and this bug produces incorrect BPF to a=
chieve
> that when specifying more that 2 syscall arguments, this probably deserve=
s a
> CVE assignment so distributions will see the issue and incorporate the fi=
x into
> their stable releases. I've included upstream developers Matthew and Paul=
 in CC
> for comment.
>=20
Sorry, I was reminded that CVE requests go to https://cveform.mitre.org/. I=
 did
that just now. I can shuffle back and forth information between here and th=
ere
as needed and will report back the CVE if/when it is assigned.

--=20
Jamie Strandboge             | http://www.canonical.com

--zCKi3GIZzVBPywwA
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEETCDAa12L3miIVNKKUdvcWMxVlXMFAlzAjrkACgkQUdvcWMxV
lXMpBg/5AcUKeGMlUQnqCG7nDTFdzQA6nG+EYDAzCQAWW6SEYaW8BRpmNORQ+DtM
/UVc9C1XMzmuZET4k93nS5RYKCNjwoj0cyoAE2FCTPvPatOBXwOzTr2x8arcPB7d
wA+1lAQsplVQ80Q05UJhvyN1Cz7/as9ro5BLNJIOkFWqdm2sU8gSVMvhO6k2PFhT
ZODUGt4MyUQE4wK6LR/WHVbuWjRt3+J2v32pk8PCAjO31GJI9ksabM3FkAo8U+8F
D3HcYxJQkc81kGRgmUbVJum4OcLIQiQqwE09L6RWcV4It7ugAx8omdwSy9TXkbZQ
YoLeRlTl1CIY1z+2F/q4AKk5BWmTtso0OqWhk2uWmcD8UYUEz2E030ySvYoGXEQB
lFxiJaHPG5JiS7EpVNwE0lCAQAE0vEXzGGjGvv9x1jnwSAEBqy07tV/6dgupyLwy
gZU7NGHBgA6LN1Z6gOS0hr2o7edZejMsZKldFB5anl317zUNDAerajiP8bnuZdAA
r5aKTiaZ8VOTH9XxZs1BMU6o5pSX+Z4KCo5RzhjK/nUxBNI/CU9K2+QLk3jnqpLa
IcE9HxqxL8/e4q1YWY9uUPJ4C4F2fQBPOL734VMG45yYaNiDKBa6U3iCyEzvdSUI
ckRukPcF9oSLcSP5juQL5PJp0HAmsgH4AI+io3RhvjcpNpCGSag=
=UanT
-----END PGP SIGNATURE-----

--zCKi3GIZzVBPywwA--
