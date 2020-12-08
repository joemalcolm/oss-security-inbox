X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2219" "Tuesday" "8" "December" "2020" "22:35:58" "+0000" "Seth Arnold" "seth.arnold@canonical.com" "<20201208223558.GF3381169@millbarge>" "53" "Re: [oss-security] Bugs found by Cryptofuzz - some missing CVEs or too low impact for CVE?" nil nil nil "12" "2020120822:35:58" "[oss-security] Bugs found by Cryptofuzz - some missing CVEs or too low impact for CVE?" (number mark "U       seth.arnold@ Dec  8   53/2219  " thread-indent "\"Re: [oss-security] Bugs found by Cryptofuzz - some missing CVEs or too low impact for CVE?\"\n") "<CAOfWR+Ew1+0u8R7+=h7KO4u-asj3kZWi7o0u7c-a+6Z713gJmg@mail.gmail.com>" ("<CAH5b-BUVDeMaifMPf5HibLqjQKky3ch0__eYnzU1f_k3=JmMTg@mail.gmail.com>" "<X8/iqSaDQqige53U@gmail.com>" "<CAOfWR+Ew1+0u8R7+=h7KO4u-asj3kZWi7o0u7c-a+6Z713gJmg@mail.gmail.com>") nil nil nil nil nil nil nil "Re: [oss-security] Bugs found by Cryptofuzz - some missing CVEs or too low impact for CVE?" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 31887 invoked by uid 550); 8 Dec 2020 22:36:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 31869 invoked from network); 8 Dec 2020 22:36:11 -0000
Date: Tue, 8 Dec 2020 22:35:58 +0000
From: Seth Arnold <seth.arnold@canonical.com>
To: Robert Watson <robertcwatson1@gmail.com>
Cc: oss-security@lists.openwall.com
Message-ID: <20201208223558.GF3381169@millbarge>
Mail-Followup-To: Robert Watson <robertcwatson1@gmail.com>,
	oss-security@lists.openwall.com
References: <CAH5b-BUVDeMaifMPf5HibLqjQKky3ch0__eYnzU1f_k3=JmMTg@mail.gmail.com>
 <X8/iqSaDQqige53U@gmail.com>
 <CAOfWR+Ew1+0u8R7+=h7KO4u-asj3kZWi7o0u7c-a+6Z713gJmg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="sDKAb4OeUBrWWL6P"
Content-Disposition: inline
In-Reply-To: <CAOfWR+Ew1+0u8R7+=h7KO4u-asj3kZWi7o0u7c-a+6Z713gJmg@mail.gmail.com>
Subject: Re: [oss-security] Bugs found by Cryptofuzz - some missing CVEs or
 too low impact for CVE?

--sDKAb4OeUBrWWL6P
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Dec 08, 2020 at 05:18:04PM -0500, Robert Watson wrote:
> Question from a retired programmer but security novice... Since fuzzing is
> used to find bugs in other programs, doesn't it need to be held to a bit
> higher standard in order to maintain credibility?

The output from fuzzers is a large body of inputs (or programs, in the
case of syzkaller) that directly demonstrate the problem in the program
being fuzzed.

The generated inputs can be used separately from the fuzzing framework.
Many are only useful when combined with sanitizers, or debug builds,
or similar efforts to turn errors into something visible (corrupting
the stack may not be visible directly, for example). It's unfortunate
that this step is required, and I have seen maintainers not interested
in taking fixes that are "only visible with ubsan", for example, but
this attitude is thankfully rare.

Developers can keep these example inputs for their test suites, CI /
CD systems, etc, and make sure that their programs don't fail on these
inputs in the future, too.

This does put a lot of trust into the sanitizers but compilers tend to
have pretty good test suites. Afterall, they, too, are fuzzed, and
automated tooling like csmith, creduce, delta, cvise, and probably more,
can help find minimal test cases.

The most difficult part of working with fuzzers, in my opinion, is that
it can take a long time to figure out the cause of a crash or sanitizer
alert. Often finding the causes, or to propose a fix, takes longer than
finding issues.

Thanks

--sDKAb4OeUBrWWL6P
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEQVAQ8bojyMcg37H18yFyWZ2NLpcFAl/P/8oACgkQ8yFyWZ2N
Lpcq6Af7BuzjbmVBe6pcOGfzzKmN7Zg1oc2mNBRY3Xnc0iZR2FbUu7tlVu2sTCu/
maOOEuP5ugtiOAWNwWYqkvhi1lC3FG19V6Jg1I/Yl4k3dCH1WQXAYWdlpZ3zfdXh
meZZ9xx5OfitSQwl7laX2G8H/BDH7rwDqT9CtxvPGsq/jKI2uOv9ZRtHpncV0aQm
5LISRBBMTdUK/6SebKbYE570DmysDN6I+8Q+OBmSrbCZN9QkYL/cS9ShJNK4l2U8
SX4b9ffC+BJEgnY7V0IXERp24TEPndAgTnn2RUELXlxlVF1QA11Rsqoq9umR5b2J
EWGDTVzmKN4IHnfHIMrrPWJtZclMDQ==
=XhQX
-----END PGP SIGNATURE-----

--sDKAb4OeUBrWWL6P--
