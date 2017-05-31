X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1241" "Wednesday" "31" "May" "2017" "11:11:32" "+0200" "Peter Bex" "peter@more-magic.net" "<20170531091132.GH4590@scully.more-magic.net>" "40" "Re: [oss-security] CVE request form not working" "^Date:" nil nil "5" "2017053109:11:32" "[oss-security] CVE request form not working" (number mark "        peter@more-m May 31   40/1241  " thread-indent "\"Re: [oss-security] CVE request form not working\"\n") "<2308024.l19IxOpFt6@wanheda>" ("<20170531084224.GG4590@scully.more-magic.net>" "<2308024.l19IxOpFt6@wanheda>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 28090 invoked by uid 550); 31 May 2017 09:11:44 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 28057 invoked from network); 31 May 2017 09:11:43 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=more-magic.net; s=dkim-2016-12;
	h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:To:From:Date; bh=Ri4qol9wteDJEe0nWZ7IC0Q2X33XF72Jm0+UwAmSZOc=;
	b=SNvKHAtqJBISUXOVCfI3CDydWcItXHkE1mMJ5Q7m0FpCaP7DPUsEzzFPjCeg74P18ae5ampC+t7vF9tmK8DYu/HG6ghnfx0K0vZSTqLgncfKpclktO9tgG+Efv8rjz+/0xPmRf3XGzCbOzt0xgakEvtGQyOs36SznY9A4s/5gaM=;
Message-ID: <20170531091132.GH4590@scully.more-magic.net>
Mail-Followup-To: oss-security@lists.openwall.com
References: <20170531084224.GG4590@scully.more-magic.net>
 <2308024.l19IxOpFt6@wanheda>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="/rDaUNvWv5XYRSKj"
Content-Disposition: inline
In-Reply-To: <2308024.l19IxOpFt6@wanheda>
X-PGP-Key: http://www.more-magic.net/peter-bex.asc
User-Agent: Mutt/1.5.23 (2014-03-12)
Date: Wed, 31 May 2017 11:11:32 +0200
From: Peter Bex <peter@more-magic.net>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE request form not working
To: oss-security@lists.openwall.com

--/rDaUNvWv5XYRSKj
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, May 31, 2017 at 11:02:44AM +0200, Agostino Sarubbo wrote:
> On Wednesday 31 May 2017 10:42:24 Peter Bex wrote:
> > Hi all,
> >=20
> > Today I wanted to request another CVE, but cveform.mitre.org seems to
> > be down (it just loads forever here).  Can anyone please fix this?
> >=20
> > Cheers,
> > Peter Bex
>=20
> It works for me. However is missing a redirect from http to https.

Thanks, I didn't remember to check https.  The http version is what loads
forever.

Cheers,
Peter

--/rDaUNvWv5XYRSKj
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQEcBAEBAgAGBQJZLojEAAoJEBEdufnLRYmwkzEH/3WZHgqu4TrurXHd32U58FXX
El9lCRmZ+d2AuQyhUKozs/UwhUlqnOXuT8X9lQZz+akF8EURmm7YsubYBMItewPU
VhVljL0cUp711XwqXWUNup5VphOCT2V3vHXahzG+yANsHkm/DvaUJHzC5TLgxpju
Nz8SVz99Di5NV9n3ZIXdOWYj4owUtoLpyP4qjYbF/qB/RapdcPqe577M6lWtt36q
bBTcbfizZgmwdKYvt4T+rWQsHFeEAyZV4U5RmEXAy3P8n5dQt4xWJUFNNlMlfIyQ
ap+CBPuO1dMh6bB27qn2ew0BYKbbk1GRyOlI/zMED2jXbeeyOSujsSlhNbPPOQ0=
=87me
-----END PGP SIGNATURE-----

--/rDaUNvWv5XYRSKj--
