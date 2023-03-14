Received: (qmail 9455 invoked by uid 550); 14 Mar 2023 10:46:47 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9428 invoked from network); 14 Mar 2023 10:46:46 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=more-magic.net; s=dkim-2016-12; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:To:From:Date:Sender:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=URhHxgiuL9esfvWcKRPaE23eZcK8lW3BVcKuVojFCoY=; b=DGhmUqwM34V+Bt5VaSyhfzioL7
	do7TalzvuDnvS5oXWDV734bDuNZzBl+Hmwl4CqLLqcy6TisyrHMmo9sWcaas7Rrsr5cHjLmFtov3u
	YwJ+SOel5A6OsQev910rz1oFUi84xKDYS6zVXdLzrJFG8Z0JpHaO3OsPURlcJyO7X9+U=;
Date: Tue, 14 Mar 2023 11:46:33 +0100
From: Peter Bex <peter@more-magic.net>
To: oss-security@lists.openwall.com
Message-ID: <ZBBQifYr6J8OSNXP@doggett>
Mail-Followup-To: oss-security@lists.openwall.com
References: <20230314095103.1ed76cc0.hanno@hboeck.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="9xZ2S21IakVeQsut"
Content-Disposition: inline
In-Reply-To: <20230314095103.1ed76cc0.hanno@hboeck.de>
X-PGP-Key: https://www.more-magic.net/peter-bex.asc
Subject: Re: [oss-security] TTY pushback vulnerabilities / TIOCSTI

--9xZ2S21IakVeQsut
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Mar 14, 2023 at 09:51:03AM +0100, Hanno B=F6ck wrote:
> This seems to be the only real mitigation for this issue. It appears
> su has a parameter, and in sudo one can configure the creation of a new
> pty in the sudoers file. I don't consider these as satisfying fixes, as
> they are optinal, and thus rely on the expectation that users are aware
> of this risk and manually use these mitigations. That does not seem
> realistic to me.

Indeed, opendoas (the portable version of OpenBSD's "doas") has this
exact bug as well: https://github.com/Duncaen/OpenDoas/issues/106

Cheers,
Peter

--9xZ2S21IakVeQsut
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEE6bh5EUSYP1EE+1UTER25+ctFibAFAmQQUIUACgkQER25+ctF
ibAUSQgAnIx7f/5bUssF8cmvZzupPr/PQfY0OsfVmpHT47tRIOdqsIxA0JOkjkLL
Mj+miYXhrz/HIxa4KRxU0PuN223CkQJywS2ez90IsNFVOKwAT6pZ2k6bS6IMYu2u
4+LNcIfEeQ6qHpvCUtJgVSX+pys7WkFaaFuA7vxj/BchIVIUSEtEUo8JVGpek9dE
0C+fUNDEk5edy6/r6VxUH1d26nqbgUXlg0++MisaQdoRVLAXhok7MuTu061Y1Spc
2t6MZAWLLzJ1Hl2rTm2vmn/RRx5bdsyauft4V9FIVVpJhJ1SMCb6VgdFd9aT/YsT
wjMiJNQlULWafFTaavdhhEvFz4VmbQ==
=3cby
-----END PGP SIGNATURE-----

--9xZ2S21IakVeQsut--
