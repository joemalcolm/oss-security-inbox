X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2179" "Thursday" "2" "April" "2020" "02:46:11" "+0000" "Seth Arnold" "seth.arnold@canonical.com" nil "53" nil "^Cc:" nil nil "4" nil nil (number mark "        seth.arnold@ Apr  2   53/2179  " thread-indent "\"Re: [oss-security] Deficient engineering processes\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] Deficient engineering processes" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 25849 invoked by uid 550); 2 Apr 2020 02:46:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 25831 invoked from network); 2 Apr 2020 02:46:24 -0000
Message-ID: <20200402024611.GA251781@millbarge>
Mail-Followup-To: Jeffrey Walton <noloader@gmail.com>,
	oss-security@lists.openwall.com
References: <CAH8yC8=P-5i_0WT-AWSJ65JeY1C3BrB7p9e+4SCtH938H5ZqVA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ibTvN161/egqYuK8"
Content-Disposition: inline
In-Reply-To: <CAH8yC8=P-5i_0WT-AWSJ65JeY1C3BrB7p9e+4SCtH938H5ZqVA@mail.gmail.com>
Cc: oss-security@lists.openwall.com
Date: Thu, 2 Apr 2020 02:46:11 +0000
From: Seth Arnold <seth.arnold@canonical.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Deficient engineering processes
To: Jeffrey Walton <noloader@gmail.com>

--ibTvN161/egqYuK8
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Apr 01, 2020 at 07:42:38PM -0400, Jeffrey Walton wrote:
> My question is, how to convince someone that following standard
> project management procedures is a good thing? How do we get them

I've heard variations on the phrase "we don't have time to fix these bugs
before release" or "this new feature is our top priority" from dozens of
projects over the years.

The impression is that fixing bugs won't win new customers, or finding
bugs proactively means you might spend time fixing bugs your users might
not encounter in practice (thus that time is wasted).

But we have all seen software that's too buggy to be enjoyable, or even so
buggy it is not fit for use. We've all got horror stories of a known, but
ignored, bug, that cost thousands or millions of dollars. (I imagine a
handful of people even know of billion-dollar errors. The usual example is
https://en.wikipedia.org/wiki/Tony_Hoare#Apologies_and_retractions
but this is probably far from the only case.)

The costs of unknown or unfixed bugs is largely hidden from view, until
the cost is large and impossible to ignore.

We all also have examples of bugs that we're very glad to have caught
before release: the bugs that would have cost thousands, or millions, of
dollars to repair after release, if it's possible at all. These are much
less known.

Perhaps we need to talk more about our successes, too? Not just the cases
where we went wrong, but also the cases where we went right, and thus
saved a fortune?

Thanks

--ibTvN161/egqYuK8
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEQVAQ8bojyMcg37H18yFyWZ2NLpcFAl6FUe8ACgkQ8yFyWZ2N
Lpdv2AgAg8Zgy6i/xsGMqijYbhppmfgfuxPtPw8FlXFYkYDwV7+sAmqoqy+bNMAi
uAEp+u/pp+XqdnGWd4DKOnnSlPy2Lc+HYS1iv0WkqFBQDj/AYmxT8g6dTsv0oVpV
J2pJ3WDr7C391xi44A0IiMWfLUGhTXF0yq36jnxqxRSYV3p3hvjMH9jdmty61+bw
uPE+NFAm3c2FdjN9zoKAS62C/5inGgnMLYyJEXmOVlU4cBFX9pinH/bvYNxioX6m
zNn+WXyU3gdz0vdSh3bmcYxMSwMNm7PbiTga06UGt8PiISVufCJ+A6NNKVV6CoOg
TwSTH82lAqF7HhlK9DQQ70RzSr48Vw==
=YZLQ
-----END PGP SIGNATURE-----

--ibTvN161/egqYuK8--
