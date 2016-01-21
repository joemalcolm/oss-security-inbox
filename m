X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2575" "Thursday" "21" "January" "2016" "16:37:00" "+0100" "Florent Daigniere" "florent.daigniere@trustmatta.com" "<1453390620.3030.60.camel@trustmatta.com>" "69" "Re: [oss-security] Prime example of a can of worms" "^Date:" nil nil "1" "2016012115:37:00" "[oss-security] Prime example of a can of worms" (number mark "        florent.daig Jan 21   69/2575  " thread-indent "\"Re: [oss-security] Prime example of a can of worms\"\n") "<1793542.7Axp6M92oG@x2>" ("<CANO=Ty18_pMLco8RdabsEbhs9sLahRhT_U93PGhDVwhcRaqzpQ@mail.gmail.com>" "<20160121010506.GA21071@gremlin.ru>" "<1453373025.3030.24.camel@trustmatta.com>" "<1793542.7Axp6M92oG@x2>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 30440 invoked by uid 550); 21 Jan 2016 15:36:54 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 30421 invoked from network); 21 Jan 2016 15:36:53 -0000
Authentication-Results: filter.trustmatta.local; dkim=pass
	reason="1024-bit key; unprotected key"
	header.d=trustmatta.com header.i=@trustmatta.com header.b=YW5NwRox;
	dkim-adsp=pass; dkim-atps=neutral
X-Spam-ASN:  
Message-ID: <1453390620.3030.60.camel@trustmatta.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=trustmatta.com;
	s=dkim2015; t=1453390600;
	bh=29yPNIxz3WFtzjVf+5uD0r917ESE+I3xqkdGoAooyho=;
	h=Subject:From:To:Date:In-Reply-To:References;
	b=YW5NwRoxNOgtUuIA/c/CY8dk8FM5DTSP+s63I3fAJTa6k5DiGswTn/H/iT1lTAQq4
	 K8rhNhSyT0mTBUEhhKcBtzF4dcoaxmI+v8lV6v0TXVteJ4+sWSOVEPpp0NUYFsbfyC
	 ZPOnWir17efzSphZRdLqziCB/hwbjki+VZxXyVT0=
In-Reply-To: <1793542.7Axp6M92oG@x2>
References: 
	<CANO=Ty18_pMLco8RdabsEbhs9sLahRhT_U93PGhDVwhcRaqzpQ@mail.gmail.com>
	 <20160121010506.GA21071@gremlin.ru>
	 <1453373025.3030.24.camel@trustmatta.com> <1793542.7Axp6M92oG@x2>
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-AvT/qDY+GcgvXlOsq5zP"
Mime-Version: 1.0
X-Envelope-From: <florent.daigniere@trustmatta.com>
Date: Thu, 21 Jan 2016 16:37:00 +0100
From: Florent Daigniere <florent.daigniere@trustmatta.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Prime example of a can of worms
To: oss-security@lists.openwall.com

--=-AvT/qDY+GcgvXlOsq5zP
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, 2016-01-21 at 10:15 -0500, Steve Grubb wrote:
> On Thursday, January 21, 2016 11:43:45 AM Florent Daigniere wrote:
> > On Thu, 2016-01-21 at 04:05 +0300, gremlin@gremlin.ru wrote:
> > > On 2016-01-20 08:45:07 -0700, Kurt Seifried wrote:
> > >=20
> > > =C2=A0> I finally got the article written and published, it's at:
> > > =C2=A0> https://securityblog.redhat.com/2016/01/20/primes-parameters-a
> > > nd-m
> > > oduli/
> > >=20
> > > In that article you wrote:
> > >=20
> > > =C2=A0> I think the best plan for dealing with this in the short term
> > > =C2=A0> is deploying larger primes (2048 bits minimum, ideally 4096
> > > =C2=A0> bits) right now wherever possible.
> > >=20
> > > 4096 bit keys seem to be the absolute minimum, and personally
> > > I've
> > > already moved to 8192 bit keys.
> >=20
> > I'd like to know where you guys picked those numbers from:
> > http://www.keylength.com/en/compare/ suggests that 2048 bits is oka
> > y
> > for everyone but the BSI (at least not past 2016). Surely a
> > recommendation today should have a higher standard than that.
> >=20
> > On the other hand, 3072 bits seems to be enough for everyone for
> > the
> > next decade or so.
>=20
> I think that is assuming that quantum computers are not brought to
> market any=C2=A0
> time soon.=C2=A0

Indeed. It's also assuming no other major breakthrough happens (whether
it's in maths, moore's law or anything else)...

but here we are talking about making recommendations towards replacing
legacy crypto we suspect^wknow to be broken, in practice, in the real
world, today.

I think that it's very important to keep the message simple: use bigger
(possibly standardized) groups, of at least X bits. The BSI thinks that
X should be greater than 2048 bits and so do I.

Florent=

--=-AvT/qDY+GcgvXlOsq5zP
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQEcBAABCAAGBQJWoPscAAoJEOrF6/B6qcKjiCoIAJye/FG0kLrHqFJAAtLXOskT
5+Jlv65sXQXOQa4yK9SEVKxEK9aGMYYH0AVlUOYFMYQq82YOHq/BFJVm6ezc+Of9
hr/PhGnzFZGn8sFa8gtJsyVrEjxN5OcyC6SPU3HeVLfK4KexvMMf+iA1Fh2O1Ypx
feS//1JbGjQOGhlKIbIuC/vN7fXAy2KEMFhthp8Hn08A+DRp2iBywr/QJluTgUoy
/cn6WMBEjZ0w/W4mCL+A5e/KkkEy9RMOaCjflLHpAxa0NhansnroGOG3GvXBY4M6
EVkViryeNckU83LNdNpaM7Oa84QHadDF+rBivFOCwZEcBTMAjkuECcWuH1jPijU=
=0ETa
-----END PGP SIGNATURE-----

--=-AvT/qDY+GcgvXlOsq5zP--
