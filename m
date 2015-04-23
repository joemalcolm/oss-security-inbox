X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1627" "Wednesday" "22" "April" "2015" "18:14:08" "-0700" "Seth Arnold" "seth.arnold@canonical.com" "<20150423011408.GE3854@hunt>" "46" "Re: [oss-security] Re: USBCreator D-Bus service" nil nil nil "4" "2015042301:14:08" "[oss-security] Re: USBCreator D-Bus service" (number mark "        seth.arnold@ Apr 22   46/1627  " thread-indent "\"Re: [oss-security] Re: USBCreator D-Bus service\"\n") "<CAJ_zFk+xFe+BoS-gGabAhkzcbqNxaJF6=S78vn9PfZY+6sq3XA@mail.gmail.com>" ("<CAJ_zFk+imjcZZTm8KwOZia0McwHZ2iQawpXoijRpejM9jt3PGA@mail.gmail.com>" "<20150423000423.GA31439@openwall.com>" "<20150423002746.GD3854@hunt>" "<CAJ_zFk+xFe+BoS-gGabAhkzcbqNxaJF6=S78vn9PfZY+6sq3XA@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 3660 invoked by uid 550); 23 Apr 2015 01:14:23 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 3634 invoked from network); 23 Apr 2015 01:14:22 -0000
Message-ID: <20150423011408.GE3854@hunt>
Mail-Followup-To: oss-security@lists.openwall.com
References: <CAJ_zFk+imjcZZTm8KwOZia0McwHZ2iQawpXoijRpejM9jt3PGA@mail.gmail.com>
 <20150423000423.GA31439@openwall.com>
 <20150423002746.GD3854@hunt>
 <CAJ_zFk+xFe+BoS-gGabAhkzcbqNxaJF6=S78vn9PfZY+6sq3XA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="ey/N+yb7u/X9mFhi"
Content-Disposition: inline
In-Reply-To: <CAJ_zFk+xFe+BoS-gGabAhkzcbqNxaJF6=S78vn9PfZY+6sq3XA@mail.gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Date: Wed, 22 Apr 2015 18:14:08 -0700
From: Seth Arnold <seth.arnold@canonical.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: USBCreator D-Bus service
To: oss-security@lists.openwall.com

--ey/N+yb7u/X9mFhi
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Apr 22, 2015 at 05:50:35PM -0700, Tavis Ormandy wrote:
> > We treat local root escalation vulnerabilities with a high priority[1].
>=20
> I wish you had spoken up during the previous discussion. It was my
> impression that embargoes for local privilege escalations were universally
> considered deprecated.

Believe me, I would have spoken up had I noticed any concensus forming
around that idea in the previous discussions; I don't recall seeing it.

Anywhere, here we are, I'm speaking up now. Local root is still important
to us.

> Embargoes tend to make things worse, see your apport patch developed duri=
ng
> embargo or shellshock for examples. However, if you're sure, I'm willing =
to
> do so for Ubuntu specific bugs in future.

I still believe reasonable length embargoes help more than they hurt; the
failures are more obvious than the successes.

Thanks

--ey/N+yb7u/X9mFhi
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQEcBAEBAgAGBQJVOEdgAAoJEPMhclmdjS6Xm8gH/0KIe1TzfRyYEVxYk9hkXDpm
miZsbSlPi65wFrqK2dPc6OcrFGWAkQGIibX3vczpp+U4/ya+R6uFQq8eGz8Qkq+z
ZAEs1Gc9wYEh0uRsp6evMHtXwkUkmKbcAZess9LvabBiPyk50ZihpG2lbREOkiIO
ZqSKIdHftTuUwxDqD/lhFtOR5tdORj65myCy7kWBNtjXDCA9mNVjAVoeiC0OGh1h
K+39Onx7gWif6lHLcXyytz9+MQFgkbIJ1+xRsgh6GRpkhmcoEwFgkPI1hFM2rBzn
XpaRSzJ4Dio9ACKrgv245naC43qlRVWtGjsqK8klHiDN/9LQ/kyYD6xBth1yhb4=
=Ci1m
-----END PGP SIGNATURE-----

--ey/N+yb7u/X9mFhi--
