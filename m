X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1138" "Thursday" "16" "March" "2017" "11:08:21" "+0100" "Peter Bex" "peter@more-magic.net" "<20170316100821.GH759@scully.more-magic.net>" "35" "Re: [oss-security] CVE request for unchecked size argument in malloc() in CHICKEN Scheme" nil nil nil "3" "2017031610:08:21" "[oss-security] CVE request for unchecked size argument in malloc() in CHICKEN Scheme" (number mark "U       peter@more-m Mar 16   35/1138  " thread-indent "\"Re: [oss-security] CVE request for unchecked size argument in malloc() in CHICKEN Scheme\"\n") "<1489656677.3059.3.camel@redhat.com>" ("<20170315224749.GG759@scully.more-magic.net>" "<1489656677.3059.3.camel@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 13751 invoked by uid 550); 16 Mar 2017 10:08:33 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13728 invoked from network); 16 Mar 2017 10:08:33 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=more-magic.net; s=dkim-2016-12;
	h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date; bh=8SM1h1bJHsIvKEg3mjBLHkdqG0Am3/gCBzgSzsqMI5E=;
	b=VFOOLyhM7sa4RCLOKNmKFE6eNV89dRSN5hd6CNsFks25kMxIxh7CwKGh7iLC1r8m5A+qFtutp72sk8Q/R+PLF57j1UqOcJw6VJP5yclUT8L6DY0lE+XABBeameT1gyRQY3Rr4kAPNaR3byATShzqa0Sy3PPuk/zL9cBxy/YyWy0=;
Date: Thu, 16 Mar 2017 11:08:21 +0100
From: Peter Bex <peter@more-magic.net>
To: Adam Maris <amaris@redhat.com>
Cc: oss-security@lists.openwall.com
Message-ID: <20170316100821.GH759@scully.more-magic.net>
Mail-Followup-To: Adam Maris <amaris@redhat.com>,
	oss-security@lists.openwall.com
References: <20170315224749.GG759@scully.more-magic.net>
 <1489656677.3059.3.camel@redhat.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="utPK4TBebyzZxMrE"
Content-Disposition: inline
In-Reply-To: <1489656677.3059.3.camel@redhat.com>
X-PGP-Key: http://www.more-magic.net/peter-bex.asc
User-Agent: Mutt/1.5.23 (2014-03-12)
Subject: Re: [oss-security] CVE request for unchecked size argument in
 malloc() in CHICKEN Scheme

--utPK4TBebyzZxMrE
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Mar 16, 2017 at 10:31:17AM +0100, Adam Maris wrote:
> Hi Peter,
>=20
> oss-security mailing is no longer a place for requesting CVEs. Please,
> request CVE from MITRE via=A0https://cveform.mitre.org/=A0or also possibly
> from DWF project via=A0http://iwantacve.org/

Oh yeah, I forgot about that.  I've filled out the form, and I hope I've
done this correctly.

Cheers,
Peter

--utPK4TBebyzZxMrE
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQEcBAEBAgAGBQJYymQVAAoJEBEdufnLRYmwMwMH/3Y10qS8/SILb4BvlVe5TobR
pnudR6Ihn2JplriNChzuw5rYg7IgEX++eRd2SRe9JpiBDa6hUiSa7rcaIxwWVJhq
s/c8r17eSpgaoaQroIL36IKMLN9a9RDafZzVQbaWd2qWUaRezoTouBlUtowrl89s
jwYCIkgrY9e5rgKPesxaZMbzwclW5HE6bWhsUwaXO23na2Fq7uL9Pc4mVi8dmI6E
OTwWqll5c62n2Z/B3iICtoJnViPQ5RvgtcyWW/nZ87/zsNGClc014681hTvkyRHF
J04iQl1szzNkYvMkAvoAxOjotMKywij1ygH+ex5dNogcHGrF+pZjon3OVIR8lWM=
=TPo8
-----END PGP SIGNATURE-----

--utPK4TBebyzZxMrE--
