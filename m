X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2287" "Friday" "22" "May" "2015" "11:46:02" "+0200" "Alessandro Ghedini" "alessandro@ghedini.me" "<20150522094602.GB7977@kronk.local>" "60" "[oss-security] Re: CVE Request: zeromq downgrade attack" nil nil nil "5" "2015052209:46:02" "[oss-security] Re: CVE Request: zeromq downgrade attack" (number mark "        alessandro@g May 22   60/2287  " thread-indent "\"[oss-security] Re: CVE Request: zeromq downgrade attack\"\n") "<20150521141653.0EB24B2E24E@smtpvbsrv1.mitre.org>" ("<20150507144908.GA1677@kronk.local>" "<20150521141653.0EB24B2E24E@smtpvbsrv1.mitre.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 21952 invoked by uid 550); 22 May 2015 09:46:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 21934 invoked from network); 22 May 2015 09:46:17 -0000
Message-ID: <20150522094602.GB7977@kronk.local>
Mail-Followup-To: cve-assign@mitre.org, oss-security@lists.openwall.com
References: <20150507144908.GA1677@kronk.local>
 <20150521141653.0EB24B2E24E@smtpvbsrv1.mitre.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="kORqDWCi7qDJ0mEj"
Content-Disposition: inline
In-Reply-To: <20150521141653.0EB24B2E24E@smtpvbsrv1.mitre.org>
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: oss-security@lists.openwall.com
Date: Fri, 22 May 2015 11:46:02 +0200
From: Alessandro Ghedini <alessandro@ghedini.me>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE Request: zeromq downgrade attack
To: cve-assign@mitre.org

--kORqDWCi7qDJ0mEj
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, May 21, 2015 at 10:16:53AM -0400, cve-assign@mitre.org wrote:
> > // Is the peer using ZMTP/1.0 with no revision number?
> > if (greeting_recv [0] !=3D 0xff || !(greeting_recv [9] & 0x01)) {
> >     if (session->zap_enabled ()) {
> >         // Reject ZMTP 1.0 connections if ZAP is enabled
> >         error ();
> >=20
> > if (greeting_recv [revision_pos] =3D=3D ZMTP_1_0) {
> >     if (session->zap_enabled ()) {
> >         // Reject ZMTP 1.0 connections if ZAP is enabled
> >         error ();
> >=20
> > if (greeting_recv [revision_pos] =3D=3D ZMTP_2_0) {
> >     if (session->zap_enabled ()) {
> >         // Reject ZMTP 1.0 connections if ZAP is enabled
> >         error ();
>=20
> We think there is essentially only one vulnerability, and it was fixed
> by that commit, but it is somewhat confusing because of an apparent
> typo in a comment. Shouldn't the "=3D=3D ZMTP_2_0" test have a "Reject
> ZMTP 2.0" comment?

Yes, I think that was due to a copy-paste error when backporting the patche=
s.

The current git version has the correct comment [0].

Cheers

[0] https://github.com/zeromq/libzmq/blob/f03a78bbfc205e12591a256914c6d53cc=
57e9023/src/stream_engine.cpp#L609

--kORqDWCi7qDJ0mEj
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCgAGBQJVXvrXAAoJEK+lG9bN5XPLZQYP/1DYRBUYpbZQiNy35ecqp71+
2vF5tWPTP+ju0EkVFiVFPqD8uKV1ehTjaLewk1EGhjgGOAOvktbJVDVIM2mXlK/7
ROHEGCQ0kv4A24x/wCTRcnsKW6wfpQb9D0t+OAxw5kXY42OIYkD6cnUX8MlpcppM
pJBqMK8RNuSxvcc4vDZxBXA8jr0yIo6bbmVbZ1doWO2Y3hsD44ppvDjtUobjvAZc
v3RuObjX5sF1IkdPhthSEV6oc5rB/9rRUJG3m7fQKuBL8xQn2zPx/3XBFS+dC329
40O0aTKs8UQCxGPPh9sR7Bp8pmYb7IIBkm0DkfEWMv31viNTQ3lTCW1nbsjE/GiU
nvVloYNHIL76IpS1mlkjDYxv/ec7GgJaK85iHXYwn6bOxWZyzdTqxEnw5+XPEB80
WwB+l6jl9LBaSMcKBBiyxVs2d1ibfvjtpsaHwtDFanqqyf5p1mGB3CnpfhoB4qgz
m3z1YmHZv5F+s3aNU+1tu2Ho9U0DqE/h26egiDhXvQAGWBGkIqGei4OF+EwHLP1t
083nxVm0+z2Pu7/ofCS6YcloadeKl60H830HPAJAIOULbubinRr9EGJPdR4luaRL
kBRh8YLmh6WJ3W3McaGtTKt00uc/4qHILaFQqVHnjQh7+qGyl32ymJU29LJpMXfs
K4DTEolsuMeK7+mg7CA4
=UrsA
-----END PGP SIGNATURE-----

--kORqDWCi7qDJ0mEj--
