Received: (qmail 21969 invoked by uid 550); 12 Apr 2024 15:46:04 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3739 invoked from network); 12 Apr 2024 12:31:16 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712925066;
	bh=l6UpdZDb/6XCReApL4aLVXCnu2V36bn4tsUkw+RluFk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Yz31Pt3iUbhGZ0lhpPdlRfh6l5FtPzDrNrD5KeFOM5HVW29U2ATr5dPN2se65AVuG
	 ISYmSZ+UfyOmmgsU4dED7s9gKH6MM1v2udz+j1I6P5jgWVPg/j8dE29HkoNmXGupPJ
	 qnSA140L8tOOreaWkz96RG+DDE2JvXtfu8jsVXJE3iQ88SxWvJv7+6GZFC6QUkkCb+
	 +D/DozI4wRwbK1CVxxyv3yjTbu5TckDOx/2k8thwscahvlaKhKvFSGNdNIyB3pV/RG
	 2uF05KFj/4QFlEDFBZFCG1TEPMniKH0nIceCQWcPokhk49qZAQv0GzGUY10Pn3Gwtn
	 qfpMnObDYJKWw==
Date: Fri, 12 Apr 2024 14:31:02 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Jacob Bachmeyer <jcb62281@gmail.com>
Cc: oss-security@lists.openwall.com, Sam James <sam@gentoo.org>,
	Joey Hess <id@joeyh.name>, Jonathan Nieder <jrnieder@gmail.com>,
	Andres Freund <andres@anarazel.de>,
	Lasse Collin <lasse.collin@tukaani.org>, xz@tukaani.org
Message-ID: <ZhkphiAdOcI-WWx4@debian>
References: <ZhYEpAFolwefRv7X@debian>
 <20240410162812.GA17059@openwall.com>
 <66175855.2090805@gmail.com>
 <Zhgc_fyeFqnTc__t@debian>
 <6618AB04.5030707@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="Z3N58QNAorCCBhI6"
Content-Disposition: inline
In-Reply-To: <6618AB04.5030707@gmail.com>
Subject: Re: [oss-security] Analysis on who is Jia Tan, and who he could work
 for, reading xz.git

--Z3N58QNAorCCBhI6
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Fri, 12 Apr 2024 14:31:02 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Jacob Bachmeyer <jcb62281@gmail.com>
Cc: oss-security@lists.openwall.com, Sam James <sam@gentoo.org>,
	Joey Hess <id@joeyh.name>, Jonathan Nieder <jrnieder@gmail.com>,
	Andres Freund <andres@anarazel.de>,
	Lasse Collin <lasse.collin@tukaani.org>, xz@tukaani.org
Subject: Re: [oss-security] Analysis on who is Jia Tan, and who he could work
 for, reading xz.git

Hi Jacob,

Thanks to your script, I've found a mistake in my analysis of the
timestamps.

The commit dates in +0200 recently seem to be because Jia Tan rebased
some commits from Lasse, and used --committer-date-is-author-date.

	commit 3007e74ef250f0ce95d97ffbdf2282284f93764d
	Author:     Lasse Collin <lasse.collin@tukaani.org>
	AuthorDate: Tue Mar 5 23:21:26 2024 +0200
	Commit:     Lasse Collin <lasse.collin@tukaani.org>
	CommitDate: Tue Mar 5 23:23:16 2024 +0200

	commit 6e97b299f1b22e366ec42ba5dc5b9d0746e87b84
	Author:     Lasse Collin <lasse.collin@tukaani.org>
	AuthorDate: Tue Mar 5 23:21:26 2024 +0200
	Commit:     Jia Tan <jiat0218@gmail.com>
	CommitDate: Tue Mar 5 23:21:26 2024 +0200

$ git describe --all --contains 3007e74ef250f0ce95d97ffbdf2282284f93764d
master~37
$ git describe --all --contains 6e97b299f1b22e366ec42ba5dc5b9d0746e87b84
tags/v5.6.1~9

The other three commits have a similar story.  So it was a red herring.
Then, all of Jia's actions have consistently been in +0800.


Now I'm using your scripts to collect data from several projects where I
work, to compare with data points that I know well.


Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es/>

--Z3N58QNAorCCBhI6
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmYZKYYACgkQnowa+77/
2zKB4g//R22pzRNdBxO7rv+NPm9Xc+nuSQlOzW4vJo62sOpPEn+z/rhuadjqdWCx
r/tf/6wkZ7QrZayF9sZSP/GAkud8libOYCzakR4gix+Rc2XBNCefvS4WPXCgczKe
nBMgO7jSNPCOQ2Cu4X2B0lBtmqOLj5ADL5ITIdEbBWc+WWSe0nQKCesyLww/9Cho
DsYwaYuscwHltTIjbaf4xrIN4QbClribDfQA6/v+jwd9l0eNPbdk5C4UFYgpHJoB
e5QU7Rax2G5cpQ6rCbL3/mjW5S2L27ZEk906bnKv610wDnd802qJT0d65ibcSV6C
BdWizykPqVjaUekcFQgdAUlTHGckuO4SObxuvjV4jSeUnYlKZ/8Eo8vj6S565Bn/
jA3PjIh9VLw1xmRhd35/fZOTfOpII6bxlxIbZaKB4qx48P5c/AxWtuOyVBkqVSW0
btSM6qCcepWwv9G08LerxKLvAyGVRHfm84cjUE8OusWOzCYhwTKxVW6fxjn4SF2N
flHtuFmU9uVZCj4DqK4iu9JIrbnXj6fmoGi73HrNu0vDPrn3hOa2xndOhKOfnXWo
qoL/0WCM+67V3nwU0pp4RS//LPkqYfIgDPYN/ehIRHIoevyZEcgxhzdOeMcO+2FJ
TQKLTUdzVOAamiAbRSMTjLXIm1v2vwkg0egRqyqxJL+uRVjIedE=
=Npwq
-----END PGP SIGNATURE-----

--Z3N58QNAorCCBhI6--
