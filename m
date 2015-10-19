X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1566" "Monday" "19" "October" "2015" "12:34:11" "-0700" "Seth Arnold" "seth.arnold@canonical.com" "<20151019193411.GA15710@hunt>" "40" "Re: [oss-security] Prime example of a can of worms" nil nil nil "10" "2015101919:34:11" "[oss-security] Prime example of a can of worms" (number mark "        seth.arnold@ Oct 19   40/1566  " thread-indent "\"Re: [oss-security] Prime example of a can of worms\"\n") "<CAFRnB2Wrz=zexGonV5fHosVqfiOhNvA6Ya2YsCYyDkt7UE_0mw@mail.gmail.com>" ("<CANO=Ty18_pMLco8RdabsEbhs9sLahRhT_U93PGhDVwhcRaqzpQ@mail.gmail.com>" "<CAFRnB2Wrz=zexGonV5fHosVqfiOhNvA6Ya2YsCYyDkt7UE_0mw@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 11487 invoked by uid 550); 19 Oct 2015 19:34:25 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 11464 invoked from network); 19 Oct 2015 19:34:24 -0000
Message-ID: <20151019193411.GA15710@hunt>
Mail-Followup-To: oss-security@lists.openwall.com
References: <CANO=Ty18_pMLco8RdabsEbhs9sLahRhT_U93PGhDVwhcRaqzpQ@mail.gmail.com>
 <CAFRnB2Wrz=zexGonV5fHosVqfiOhNvA6Ya2YsCYyDkt7UE_0mw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="BXVAT5kNtrzKuDFl"
Content-Disposition: inline
In-Reply-To: <CAFRnB2Wrz=zexGonV5fHosVqfiOhNvA6Ya2YsCYyDkt7UE_0mw@mail.gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Date: Mon, 19 Oct 2015 12:34:11 -0700
From: Seth Arnold <seth.arnold@canonical.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Prime example of a can of worms
To: oss-security@lists.openwall.com

--BXVAT5kNtrzKuDFl
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Oct 19, 2015 at 12:24:40AM -0400, Alex Gaynor wrote:
> I think we can have a far simpler rule: use of DH at <= 1024 bits gets a
> CVE, the same way 512-bit RSA, or DES would.

Should there be any middle-ground for how much use a specific value gets?
Part of the weakdh gift is the reconition that randomly generated 1024 bit
primes might be fine for one router or website to use but is terrible when
used by millions and might repay the cost to crack it.

Do we allow 1024-bit dhparams when they are randomly generated? Or do we
also want to move these to e.g. 2048 out of abundance of caution?

(I don't share Kurt's pessimism on generating DH primes, though that does
come with the caveat that they should only be generated on systems that
have been running long enough to collect enough entropy for random number
generation to work well.)

Thanks

--BXVAT5kNtrzKuDFl
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQEcBAEBAgAGBQJWJUWzAAoJEPMhclmdjS6XR+cIAJ9wmombU1tO+P0QEyCQGH0P
ZLOU4RcS1HtBZMwa+adUIHYQ68NHMApuTSkTDwAwv/poxyo2IUt+L/3IFSkBIhko
AD2lAUdGVh3E3hDeokPhvrdepoSXg+AdcDiKjajX1dN+m9QnPET703MTPW4vUbUJ
B6xCCWoF4N6D4LDzrlJCGU3MNWdBelWMLSDA9KgCEV7CfgVXrAcuzaC5izXjxmuq
b2ogBkmXjuqJ6vxsTxAS7hRd5quKoItTgqYyNPpTa1cpJREr9cN3Xdr/iuMvxs24
N/V6CrlpwY3DL8pp31kNWWrQ8QNRk9Xqs0Sl9GdeDRjP89Nddt1xr9TiIBvfY38=
=qk/A
-----END PGP SIGNATURE-----

--BXVAT5kNtrzKuDFl--
