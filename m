Received: (qmail 11782 invoked by uid 550); 16 Oct 2023 15:32:58 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 27913 invoked from network); 16 Oct 2023 15:18:36 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	invisiblethingslab.com; h=cc:content-type:content-type:date:date
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:sender:subject:subject:to:to; s=fm2; t=
	1697469504; x=1697555904; bh=AGS6QdyLhkYp2r0tEFt4aYKb6WycbKS44Q7
	5OqTY628=; b=U5YvQzHMlU5vRBR7vLFmVb22EnlXAwkEIeeNyBoVDF1WKpa5Es/
	3/6DJqKWvyxFvAya3Ovq7P+7QtrPFHD0zHoLV+9Z0nuJZI8s1qZhVFjEBmHBSOGZ
	lsQgNgKz4uw5nkCZUhm109J7CrQj9Uj86yYX+LG7+4D9geLeyypoz5NqVgdLkaay
	8Ntk/kZsHsIla/dxAnCO4YZUGjL0B3MjqaooM7c9NNFfJ8Y+U4pINjiEUmIa7iBg
	lvLw3/qUSoNavctNqOmX1Sqm6q9qM2GFkosd154xAF9A/PTTLkYeeaIGluVL0OKM
	J32jYY3M529VJU093NHf5LhrPc6cHMnIRBg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:sender:subject
	:subject:to:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
	:x-sasl-enc; s=fm3; t=1697469504; x=1697555904; bh=AGS6QdyLhkYp2
	r0tEFt4aYKb6WycbKS44Q75OqTY628=; b=rrVr6DRkMelWvPGp4Imhqgx931XNk
	ClK2Kjlz2Idup0Yr+jr9qa+Af7p8jktUpfl7WQemS+GNSL/40f8J3INkzDDUJXN6
	AIfrCTRafISeC31S0ceea7g2A0khfSfroZslIBQdoK0Sq1qobK3BtKXBT59lMDjW
	/Rb3FM3vfR0eaXVfWP7xjJtCIZAc8FLVTzligXJZFvzWBNmKsLOuS3t3HsCXUVs5
	HknknDcOkmaKSnB8RkK+IOfN0wvStV+KdptCgsipWba5bh49IeyOJNi+F0t88fcD
	ZBI/Hw02JbTSZ0dxdQi4ZUqqGA47qH5FUr8gUTdTWyBwZ+sZ7jWrhD+6w==
X-ME-Sender: <xms:P1QtZY1NkiNgUGeEwEtQBpkmFlk9BEpc9RLNnISHP5lx3YX_sl5xWg>
    <xme:P1QtZTHP6aK-T8swPz77kwH3jd2PvFIvPGTpwmTQZgjGLEj9cHZidJPfQ53KKXRFJ
    TLO48SGuEspduw>
X-ME-Received: <xmr:P1QtZQ6WP-Sf0N2ioqf07oTX4enHrOx0YNpylNuJIUR8gtQZOt46v0mvQMgot99Ag2rGeq-LbEniluHKmWRxIV-DGqBH547AdmWxhcP5UDoh_iOo>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvkedrjedtgdekgecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecunecujfgurhepfffhvffukfhfgggtuggjsehgtderre
    dttddvnecuhfhrohhmpeffvghmihcuofgrrhhivgcuqfgsvghnohhurhcuoeguvghmihes
    ihhnvhhishhisghlvghthhhinhhgshhlrggsrdgtohhmqeenucggtffrrghtthgvrhhnpe
    eigfeifedvgfejleefieefgfejvddvfeelgeelieefgeffhffgffeffffhueduheenucev
    lhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpeguvghmihesih
    hnvhhishhisghlvghthhhinhhgshhlrggsrdgtohhm
X-ME-Proxy: <xmx:P1QtZR3krg0g4hHtsbYaUMIk7Jz5CZo5q0m9phBkKPwWEwrztrLnWg>
    <xmx:P1QtZbHyaKEj-ZnKaYZ3sZyD2WVoeuuh-KHknPxB4ZtCmca3WonLlw>
    <xmx:P1QtZa_3zL3-Cmi0W3C-SDDCoQ7NUHwJkIwsDVpObn9-69QzYL5O-w>
    <xmx:QFQtZfT8t8iqGSVJURwVOZEuwhA8jgf1Nj6u01dM80PZsm6I9GdVUg>
Feedback-ID: iac594737:Fastmail
Date: Mon, 16 Oct 2023 11:18:19 -0400
From: Demi Marie Obenour <demi@invisiblethingslab.com>
To: oss-security@lists.openwall.com
Message-ID: <ZS1UPsZo1VyHDAkV@itl-email>
References: <ZSyUUSF_-3YbT14k@workstation>
 <20231016080850.GF10758@suse.de>
 <2023101612-snare-dart-c7cf@gregkh>
 <ZS1CSkbTjDYdGq8F@itl-email>
 <2023101622-imply-tidal-b6cf@gregkh>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="jtx1+ZgnMKnUNy78"
Content-Disposition: inline
In-Reply-To: <2023101622-imply-tidal-b6cf@gregkh>
Subject: Re: [oss-security] linux-distros membership application of openEuler

--jtx1+ZgnMKnUNy78
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Mon, 16 Oct 2023 11:18:19 -0400
From: Demi Marie Obenour <demi@invisiblethingslab.com>
To: oss-security@lists.openwall.com
Subject: Re: [oss-security] linux-distros membership application of openEuler

On Mon, Oct 16, 2023 at 04:52:32PM +0200, Greg KH wrote:
> On Mon, Oct 16, 2023 at 10:01:44AM -0400, Demi Marie Obenour wrote:
> > On Mon, Oct 16, 2023 at 10:23:50AM +0200, Greg KH wrote:
> > > On Mon, Oct 16, 2023 at 10:08:50AM +0200, Marcus Meissner wrote:
> > > > Hi,
> > > >=20
> > > > Regardless of your viability of subscription status I think we also
> > > > (sadly) have to consider current geopolitical issues here.
> > > >=20
> > > > As far as I understand, US companies and US citizens are not permit=
ted
> > > > to work with Chinese organizations and/or Chinese nationals.
> > >=20
> > > They can when working in the open on public projects and other
> > > open-source-like things.  For "closed" lists and groups, please consu=
lt
> > > a lawyer as the rules there are quite varied and depends on the
> > > countries and companies involved.
> > >=20
> > > But to be sure, again, consult your corporate lawyers, they know the
> > > rules and the issues involved better than I do.
> > >=20
> > > good luck!
> > >=20
> > > greg k-h
> >=20
> > The question is _who_ should consult their lawyers.
>=20
> The people deciding if this group can be added to the closed list as
> they are the ones responsible for it, AND then if the group is added,
> the members of the list need to talk to their lawyers to see if their
> country laws allow them to participate in a closed group with such
> members.  Many countries might be fine, many might not be, it all
> depends on the participants and what country laws they must abide by.
>=20
> So in short, everyone involved in the list!  :(
>=20
> good luck!
>=20
> greg "I talk to too many lawyers" k-h

The result of this is simply that those who do not have access to
lawyers on staff will not participate, which will reduce the value of
the list substantially.  I suspect that most people who report
vulnerabilities via distros@ fall into this category.  I know I do.

Therefore, I recommend rejecting the application as too risky from a
legal perspective.
--=20
Sincerely,
Demi Marie Obenour (she/her/hers)
Invisible Things Lab

--jtx1+ZgnMKnUNy78
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEdodNnxM2uiJZBxxxsoi1X/+cIsEFAmUtVD0ACgkQsoi1X/+c
IsHhUhAApJN7SEmcLHUKm4K554Nh0fyx1t7S6mfUhOZmqmuIUctMmmxN4UMq8cNL
CujbDgQm7zp1r9yBbOSYq3vYBYI0U5l2xMBX2C/w9agYbk0bIWeRyd63ghSV+wQ1
gn4g5Vp72QKobmuZHLm6Pbp50nmNNkWyTpe8uu04m6IEEL4iwK3ZneYeXbvTRGKi
spayE3RO5xOZC45ANX/7kFvo1EtBLOJp2if0Mgxw396E2yXlKaWdpSvxzF0JbBrz
j+IoKDgjkRQbdGmaXcNkLosBK8OoUooT/CX759Vz5IBAGf7/S56upbvT1+PuDmIA
eCMndt0glV51213uQ1sC9JJ0Nc2HCQeqSlgTJcUHVNpV/73vyuwvEsfQ1bvjEo8F
ePFDbknQ1UshLP+CAc1DM9qih8ekqx0w0wpDcyevZpS3wnfqk0tY01RV6Zb8Ru8J
sU/2oFRWduOSklxsOTTBL52BeCe2T6L2LToOBuGgRQvc77PV1SRv86Tp+nMEyXcO
w3A7Qo80ra0cjskocLMYIeu74pi/sRiMBgjcN96G4uk4rfegTibkuv+gzFUBugz4
eVZBsxR/Iipko45DZjczwJFp11XJTlNWoCgF3jPsq68c2SGfw3KMAya/5oJaozyW
R3L8RmqISIyyPX423U/3fi/Yp7OXVoUxKrY6CI445JhjDXtnZrg=
=nGiX
-----END PGP SIGNATURE-----

--jtx1+ZgnMKnUNy78--
