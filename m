X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1929" "Sunday" "24" "September" "2017" "16:50:51" "-0400" "Leo Famulari" "leo@famulari.name" "<20170924205051.GA3346@jasmine.lan>" "47" "Re: [oss-security] tcpdump 4.9.2 is fully available" "^Cc:" nil nil "9" "2017092420:50:51" "[oss-security] tcpdump 4.9.2 is fully available" (number mark "        leo@famulari Sep 24   47/1929  " thread-indent "\"Re: [oss-security] tcpdump 4.9.2 is fully available\"\n") "<0066D0CA-AF18-48FD-AB6E-34EF5CF7A986@leventepolyak.net>" ("<15e7d09e363.baac2a74163896.7143621165441625815@ovsienko.info>" "<20170914130443.GA21420@openwall.com>" "<0066D0CA-AF18-48FD-AB6E-34EF5CF7A986@leventepolyak.net>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 32302 invoked by uid 550); 24 Sep 2017 21:30:23 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 30277 invoked from network); 24 Sep 2017 20:51:05 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=famulari.name;
	 h=cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to:x-me-sender:x-me-sender:x-sasl-enc
	:x-sasl-enc; s=mesmtp; bh=tPmeU+SB2voX9p3LbCv1sh4DbfVQyIFDcPcg7R
	iVnZ0=; b=Wqagwgsu17qdyfYdm5Cd3SFNU32onKORHOYBKWQZTkyi4FvNWGFGIP
	rcp3f86KKFGNdGU5cfWNSwdpMppeRU2yeKyMyxsykpufMvfwFyUkfAgukqRYC7JX
	Prv0jCidnanQs/wVTd4SupAh3W6YSkA+mRI69CaX6e+Uhi0AyHd88=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-me-sender
	:x-me-sender:x-sasl-enc:x-sasl-enc; s=fm1; bh=tPmeU+SB2voX9p3LbC
	v1sh4DbfVQyIFDcPcg7RiVnZ0=; b=XtTuhJpIOPgxUPb58H+MoPM13lARFJ6qLo
	Rkcy4enqHg+9N6/mjHudw+pmE167ZIWGNm/g9LUWITa1/h2V3KN/vbnfjZ6NKHo7
	6waLpLQzYN9McfePA+ur0ntOYt/wNt9na6FM+D/8q59CBgu1GZ5uv0rUXPpMD1VT
	LfWqepYL8/Cgo/YPmKzRscOYqKwklNRIL1WVsdaQacVQALGM6fT2g4+mR5600ftH
	Ag8Aksu64QrU7leNRE1PfcZ0g/1Zo2eNj97XSnrOEaukCkRCs8pixAO0qDVQytwm
	fK0BckLWncMHHocLWT7gVIuJthXxbqvJB4uCJM9JFsT48PJbIOSw==
X-ME-Sender: <xms:rBrIWeNSBWsHolEl1yVOvE8CFkfvYDcV1fRZiGzoywhTaRLoYQIYTQ>
X-Sasl-enc: BzNCR7+gqUFPn4RC+waNpmXDJRdN7NJii6XG1YQ9+hU4 1506286252
Message-ID: <20170924205051.GA3346@jasmine.lan>
References: <15e7d09e363.baac2a74163896.7143621165441625815@ovsienko.info>
 <20170914130443.GA21420@openwall.com>
 <0066D0CA-AF18-48FD-AB6E-34EF5CF7A986@leventepolyak.net>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="WIyZ46R2i8wDzkSu"
Content-Disposition: inline
In-Reply-To: <0066D0CA-AF18-48FD-AB6E-34EF5CF7A986@leventepolyak.net>
User-Agent: Mutt/1.8.3 (2017-05-23)
Cc: Solar Designer <solar@openwall.com>,
	Denis Ovsienko <denis@ovsienko.info>
Date: Sun, 24 Sep 2017 16:50:51 -0400
From: Leo Famulari <leo@famulari.name>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] tcpdump 4.9.2 is fully available
To: oss-security@lists.openwall.com

--WIyZ46R2i8wDzkSu
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Sep 14, 2017 at 04:08:21PM +0200, Levente Polyak wrote:
> On September 14, 2017 3:04:43 PM GMT+02:00, Solar Designer <solar@openwal=
l.com> wrote:
> >
> >September 7 - an Arch Linux developer (who is not on (linux-)distros
> >and
> >apparently was not aware of the distros list discussion) brings the
> >issue to oss-security (it's unclear to me how that person knew of the
> >September 25 initial CRD); I approve that message right away
> >
>=20
> Leo Famulari has posted this here, and he is not affiliated with Arch
> Linux. AFAIK he is involved in the GNU Guix project.

That's correct, I was informed of the upcoming 4.9.2 release as part of
my work on Guix security. I'm not involved with Arch.

When the embargo failed, I notified oss-security immediately. I did not
contact the distros lists because Guix is not represented on those
lists.

--WIyZ46R2i8wDzkSu
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEsFFZSPHn08G5gDigJkb6MLrKfwgFAlnIGqoACgkQJkb6MLrK
fwiAng/+OXw+f7A6ZEvAFMEzFiPSN9Ay9q00kwjyES1mu0Tskkcdx7U7TuOSPUhB
QaI0QN+B5cnwl+S2J/UnD4qT8IpMBdlHRSDFnv6DZspGHmxMj0m9t9i7AEFd7kic
2kPfWex0urMHvpEMgvvCkLiCuSinPWErGWy5hl7WX5DKf85PmnjLge1ZmcghpAZx
+gfm6oC4n9VLRSJg8r0+7WMvwST2MtiKfcakJ3d/p0C6+RRx/kDQYvIVK6ypN5JN
SHA/GVfM9zmSlOOCXeZaMC7ug4TqK6CrMMEi9BEISQ5V1U0KjhpeMba9VfwZl43M
1zI/i5y3qGKlHSLHEdAXZ2ow4Z5RQ9qPb/PG8GBsoOmj9+ybFZ+VkWczSbJCSkm8
09I2h1XT/yCdo7Z7GmlP+2BRbcUobWKKGIi5hhT2JAtErRUaqOKWQsApzJbWILgS
nnjLAegUdkhm/u1LJGaLEdulyzFqvHfbQNV878DBbYpd8ZUfw1MIWUmL91fBlGVE
WwvSIyhuFwF/Iz39pxYgJUiNLNu/UGxwi9khyAqDbsSVxICkL/7QQEudveuzLfxz
wGHd8BHFP8haDtcUHOkLSr66TQJ721B+qdJ1ZArcAqMOCMVYv5pYnQn/nUt1RW9Q
2oHxb9SBCt0Q1sW0nLp0nCz2izlgj4NDlPTWaoZWhuqVJkpbAhE=
=oWla
-----END PGP SIGNATURE-----

--WIyZ46R2i8wDzkSu--
