Received: (qmail 12122 invoked by uid 550); 2 Apr 2024 18:29:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9659 invoked from network); 2 Apr 2024 18:27:28 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=korelogic.com;
	s=mail; t=1712082440;
	bh=cxfEkqMjGhpfSxfHEONdfwlK7PwEh6r3AIuBSL2NWvw=;
	h=Date:From:To:Subject:Reply-To:In-Reply-To;
	b=FT8CVdZA36aj/ukWiJVlELfjYOjmj8v+/LOrNbkgSEtCmZzxIVxBx++bu/qyDcZuZ
	 xaTUYgEBgD+tP7D9GhKwbmSab6oRRDDZCsaSEmFFOlWS4v7GHRqtyXAU0t/CuP4iuJ
	 72Dtasp7Mgu07XGkWKPte0tIBELKq+ZWVlwsRyao=
X-Virus-Status: Clean
X-Virus-Scanned: clamav-milter 0.103.8 at mail.korelogic.com
Date: Tue, 2 Apr 2024 12:27:18 -0600
From: Hank Leininger <hlein@korelogic.com>
To: oss-security@lists.openwall.com
Message-ID: <20240402121050.552d3d82-1bc9-4d55-8d92-91b935e0e308@korelogic.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="Kzz4DPwJl+Q0505E"
Content-Disposition: inline
In-Reply-To: <uuhg0r$3dd$1@ciao.gmane.io>
Subject: [oss-security] Re: finding similar compromises (was Re: From xz to ibus: ...

--Kzz4DPwJl+Q0505E
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On 2024-04-02, Tavis Ormandy wrote:
> On 2024-04-02, Tavis Ormandy wrote:
> > On 2024-04-01, HW42 wrote:
> >> Hi Jan,
> >>
> >> great that you are looking for further problems. (Just to be clear,
> >> I'm not associated with ibus in any way.)
> >
> > Yes, agreed. In the interests of discussing things in the open after
> > just complaining about embargoes... :)

Along similar lines, I've been analyzing other packages to see if I can
find similar fragments to those used in the stage0, stage1, stage2
loaders from the xz-utils backdoor:

https://github.com/hlein/distro-backdoor-scanner

tl;dr: did some scans, more to come, nothing found yet; help add patterns.

I'll quote my own README here:

###

The toolkit used for the xz-utils backdoor is far too sophisticated to
be a first draft. Were there earlier iterations of this, that shared
some things in common but were slightly simpler, injected into other
projects? Can we detect the style/"fist" of the author elsewhere? Moreso
the delivery mechanics than the contents of the extracted+injected
malicious .so.

These scripts unpack the source packages for all of a distro repo's
current packages, then scan them for content similar to the malware that
was added to xz-utils.

Running over the unpacked source trees of ~19k Gentoo packages and ~40k
Debian packages gives a manageable amount of results (~hundreds of
hits), digestable by a human. So far the only confirmed malicious
results are... from the backdoored xz-utils versions.

There need to be more search patterns, among other things; see TODO.

###

Working on some submitted patches and adding Rocky Linux support ~today.

Thanks,

--=20

Hank Leininger <hlein@korelogic.com>
8428 ED14 5268 C727 0C48  F454 846F 0637 5FEB 1612

--Kzz4DPwJl+Q0505E
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEhCjtFFJoxycMSPRUhG8GN1/rFhIFAmYMTgYACgkQhG8GN1/r
FhJWCw/9Fo7fHDzilNGaO8yDGuTw83KcHU601xEgARDCEUQ4/DXEL/1oxBA2tmar
W54tNuXDI1CcUzaP31GW2MmkATFdJcgB5SbQyIeaupwVzEtjojlMG8+xV9J2RlKM
n3vH+6+HtqQaBz9eXmL7O9RHPSbN6yEM6KBHNrA9ttBpVO6YToLDlxfuy4oCT11C
YGkV92i1fdNws5xzKecUv5O+i3a4iGuQG416Zmp5Y5sK9egXDn9L+nXJ+S+wC7B6
C0bWl0j9h9r/IE8jIqLFS+HHg99luxPE5z79g6xvrZBNh1/e8ROFDjCsOBy82X6X
0MiLFaiBE9mk6eNOQ/gx5s0yr/4KaGVkCpSmRU/rQNpYiZC+Gm+LtpHuEI755EtG
ipOZ3XjUsqdnkDfg/c70haObaKOq9bBdVoAN8MmMCPZTMq4oKjoFastwwyVUHSZ3
6xuDCjMOX+kGJKWiRRPsWKxXdnqcfkZlDKsf+z37aDFvKE3kUA4+BB0vpRhSVtnm
b/KanSvHTpMdJraoW0HUm4X3XusQVk532DpJJ6KZEPCyaKM9z7DNkm/FEckOR8YZ
9RvlMV+0ERFIn3n710e2QQv+R5YDs8TKOjRIdXjzQx8Znugp98JNUl+Az7zDjg72
lU7mRf6OccqHArcMrPrQOum5XrVl2dZCNPJMFs7gTASZ8gDWc0g=
=xLZx
-----END PGP SIGNATURE-----

--Kzz4DPwJl+Q0505E--
