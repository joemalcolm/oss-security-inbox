Received: (qmail 7226 invoked by uid 550); 4 May 2023 10:35:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30077 invoked from network); 4 May 2023 06:49:14 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1683182943; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=9Ljk1UvtGLK7cLLvHfoLZUQ4HiJBbMNOdeotdE1SU1I=;
	b=z9UqasaIt7V2cgBr3ZwVJ4F1ezObFVBkshueHrUl87+USW8FSGrUjz9jyQyYF7AsXoPCw9
	RIsY7ByAECFN3repZYYe8i7kIZzpDbkA5MGDUFt6yo4MXIDjvcRoHbFw1OBnBPRGDWhAWx
	SuB7bP2c0C6xaj8O250Ju3K0g01Zvjw=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1683182943;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=9Ljk1UvtGLK7cLLvHfoLZUQ4HiJBbMNOdeotdE1SU1I=;
	b=Lr48iE1KRXigKtiwq/YPUY7RHiaAJoZPswh921XJr7k1jLWtvXUeTQB6df2CeLUwTu3Hl0
	h13J0WHzxhi1MbDg==
Date: Thu, 4 May 2023 08:48:58 +0200
From: Johannes Segitz <jsegitz@suse.de>
To: oss-security@lists.openwall.com
Cc: Daniel Stenberg <daniel@haxx.se>
Message-ID: <20230504064858.GF20467@suse.com>
References: <20230503190011.GA13309@openwall.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ChQOR20MqfxkMJg9"
Content-Disposition: inline
In-Reply-To: <20230503190011.GA13309@openwall.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [oss-security] semi-public issues on (linux-)distros

--ChQOR20MqfxkMJg9
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

first of all let me take the opportunity to thank you for your work in this
area. I'm not a member of the distros list anymore (have been for years),
but I appreciate very much what you do for the community.

On Wed, May 03, 2023 at 09:00:11PM +0200, Solar Designer wrote:
> curl project's handling of security issues has been exemplary so far, in

I agree. And I'm happy to see that this is being discussed, as I've seen
Daniel talking on Mastodon about this and it would be a shame if they
wouldn't provide their high quality reports to distributions up front
anymore.

> my opinion at least, which gives me reason to expect sound judgement
> from Daniel on which issues to handle in which way.  Also, like it or
> not, starting to publicly commit some security fixes is a decision the
> project has already made, so our only options are (1) to change the list
> policy, (2) to grant one-time exceptions every time, or (3) to create
> extra work for Daniel for notifying the individual distros other than
> via the list (or choose not to).

My vote is for option 1.=20

> I would also be happy to have a general solution if we _reasonably_ can,
> for all projects, but I'm not sure how reasonable that is.  The terms
> for Linux kernel's vs. curl's exceptions may reasonably vary to meet
> these project's exact needs and not more: for Linux kernel it's "issues
> concurrently or very recently handled by the Linux kernel security team"
> and for curl it can be "low and medium severity issues".

This is indeed tricky. I would not try to sync this to specific conditions
of the upstream policy, but to the proven track record of an upstream
project. If they can show that they can reliable do this for security
issues below a certain threshold they should get approved to post
semi-public issues onto the list.

And yes, this isn't a hard criterion that can be easily judged, which is
indeed a problem. There could be some form of vote on the list to decide
this for each project asking for it. In my experience the subscribers are
reasonable and I would expect that this would lead to good results.

Johannes
--=20
GPG Key                EE16 6BCE AD56 E034 BFB3  3ADD 7BF7 29D5 E7C8 1FA0
Subkey fingerprint:    250F 43F5 F7CE 6F1E 9C59  4F95 BC27 DD9D 2CC4 FD66
SUSE Software Solutions Germany GmbH, Frankenstra=DFe 146, 90461 N=FCrnberg=
, Germany
Gesch=E4ftsf=FChrer: Ivo Totev, Andrew Myers, Andrew McDonald, Boudien Moer=
man
(HRB 36809, AG N=FCrnberg)

--ChQOR20MqfxkMJg9
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEJQ9D9ffObx6cWU+VvCfdnSzE/WYFAmRTVVoACgkQvCfdnSzE
/WaM1A/+PC/+SkMP9ielMS8xunx/SWiEB+3g2CwcUG+QPs/PkqLSHqQjDxmZAU9J
hAv1RluPp5KKBULymqIaE+LiliprztJnTYFDfsawf5oX5jVSMrSDENYjO84TbBal
at4oWCwTID7yoPDaNZM7bKoZ+MXq22Uppxl6MUxJAm8CWcZiCRpUvL2Lk7CS52lj
KwCW+dn08v8c/PhykKMfaIFq6l0yBCyGy2kNu1cDXT/gs7+5ZU8sUK2hpItA1YRP
J0j8K3lBW3Sx/Br1GdIXbz8+i1pcC6y+kkvtbOEBOnQyvf/fO8WYXHudaF1q/Kq3
c2j/UHdf9x5nR/aYaFc+toWJcICSLnmdVV9Vtt9nPxH2+9e4bWcX6UX1fTKw4wa9
L2IWqJMylNehoLy3HEW6Hf8FD/eIOGsnQG8TDhZd+XYTlWaX7vCi3hElFyh8SynK
nOKleoOW6bg9+4BQf3Yk/4J2lcK78cQu77sGVNBy0YMt1rXb4yjX6384aj+knhfS
cVnE9kPsA6fUjw0or+GYMJAn8MepAGjaU7R6yy8K1/iFs6h9PiciNY52EHUqLsCg
YryHjiEgjWyqH853mMN3G0BiMN6BHvvYFY3ALkNE97yvPz4YkeTHSuD7yWbPqQ7Q
x68ZCJ0unrjhG6FOMnvzh+U8hovjKzt3rXK2U3EuAIenqnvNFNw=
=z+ST
-----END PGP SIGNATURE-----

--ChQOR20MqfxkMJg9--
