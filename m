X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1349" "Wednesday" "22" "November" "2017" "09:13:39" "+0100" "Peter Bex" "peter@more-magic.net" "<20171122081339.eacdjs5pewelvhod@scully.more-magic.net>" "39" "Re: [oss-security] Go programming language invalid modular exponentiation result (Exp() in math/big pkg)" nil nil nil "11" "2017112208:13:39" "[oss-security] Go programming language invalid modular exponentiation result (Exp() in math/big pkg)" (number mark "U       peter@more-m Nov 22   39/1349  " thread-indent "\"Re: [oss-security] Go programming language invalid modular exponentiation result (Exp() in math/big pkg)\"\n") "<CAO5O-ELaS6a9jPqxZeuEYX3nhT1k2X8hWkz2D6=1G+mBW14BPw@mail.gmail.com>" ("<CAO5O-ELaS6a9jPqxZeuEYX3nhT1k2X8hWkz2D6=1G+mBW14BPw@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 31919 invoked by uid 550); 22 Nov 2017 08:13:52 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 31901 invoked from network); 22 Nov 2017 08:13:51 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=more-magic.net; s=dkim-2016-12; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:To:From:Date:Sender:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	 bh=o3I+LgMB610jVkMYvdskklewrbaNEDBL26KX1W8xv7I=; b=ka2OqGzim1pbiBp5Sm86TfNyu
	XblZTWgx5LbWSkJPTZ+kFH+rJqn7GLXtHF1kGlYQv7PTfWL3HFpArsaWnS2geDNA1L5TIIosPQMDl
	Q/f4Bes+1/UPFAJIxmWFwWmUKWH1YG2kE1DsQ+FYAvpT0OkAOdCKEBZt311XlgtlSFtSE=;
Date: Wed, 22 Nov 2017 09:13:39 +0100
From: Peter Bex <peter@more-magic.net>
To: oss-security@lists.openwall.com
Message-ID: <20171122081339.eacdjs5pewelvhod@scully.more-magic.net>
Mail-Followup-To: oss-security@lists.openwall.com
References: <CAO5O-ELaS6a9jPqxZeuEYX3nhT1k2X8hWkz2D6=1G+mBW14BPw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="rlmcq3gpyacocqlm"
Content-Disposition: inline
In-Reply-To: <CAO5O-ELaS6a9jPqxZeuEYX3nhT1k2X8hWkz2D6=1G+mBW14BPw@mail.gmail.com>
X-PGP-Key: http://www.more-magic.net/peter-bex.asc
User-Agent: NeoMutt/20170113 (1.7.2)
Subject: Re: [oss-security] Go programming language invalid modular
 exponentiation result (Exp() in math/big pkg)

--rlmcq3gpyacocqlm
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Nov 22, 2017 at 12:30:08AM +0100, Guido Vranken wrote:
> Dear list,
>=20
> I've written a bignum fuzzer that compares the results of mathematical
> operations (addtion, subtraction, multiplication, ...) across multiple
> bignum libraries.

Hi there,

Is this fuzzer freely available?  I'd love to try it out on the bignum
support I added to the CHICKEN Scheme implementation for its upcoming
new major release (probably somewhere mid-2018).  Being able to release
it with a bit higher confidence in its correctness would be nice, as this
is almost all brand new code.

Cheers,
Peter Bex (CHICKEN core maintainer)

--rlmcq3gpyacocqlm
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEE6bh5EUSYP1EE+1UTER25+ctFibAFAloVMbAACgkQER25+ctF
ibAQXwf/YnJauUEr6kV9NQVDPRzi2IF2BslwOD6Wl74lV5DrCdMNJYaUBiRq5Jlh
bE00t2AZ6GBEbu2YqH8wxDhyZ/dflR+fv7HTumYEq74QT5i6OlsNsMKAWQhBtSov
styMUm/tER0DIz7UyYC3VSr5kGHe5xPdwExjBdiSTTu+A5Ie+knZBerJ9YKYHtn+
VuPtzeLPmRLWOlS5XY6yGLSXW4pahhPQHMFCkFoXhVfPSlC3EzKHfQlA2R3xPLAp
GqkHTx3W6Rv+u52LjHj4kfHG9cFaKw1soHLN8ZjFIK/6T2Sav9H8/c6n+EsLu0x+
TriHlPeWYLPTMMdk7Z0dHMEOFHS4bA==
=o3jO
-----END PGP SIGNATURE-----

--rlmcq3gpyacocqlm--
