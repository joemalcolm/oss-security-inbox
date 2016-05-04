X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1743" "Tuesday" "3" "May" "2016" "21:01:43" "-0700" "Seth Arnold" "seth.arnold@canonical.com" "<20160504040143.GC2319@hunt>" "48" "Re: [oss-security] ImageMagick Is On Fire -- CVE-2016-3714" "^Date:" nil nil "5" "2016050404:01:43" "[oss-security] ImageMagick Is On Fire -- CVE-2016-3714" (number mark "        seth.arnold@ May  3   48/1743  " thread-indent "\"Re: [oss-security] ImageMagick Is On Fire -- CVE-2016-3714\"\n") "<alpine.GSO.2.20.1605032020420.23612@freddy.simplesystems.org>" ("<CABi+pA7xDJhirUFbrVZQkwMnFj--zbNJA8_Aoq-SiJx0QNcsoA@mail.gmail.com>" "<20160503181505.GA8195@openwall.com>" "<57292879.7050303@gmail.com>" "<20160503232637.GA2319@hunt>" "<20160503235110.GD1250@sentinelchicken.org>" "<CAC_overhfzw39AL6+0r5hq8JhHb8AOD6-+-V-+ejfDE8OPZb7A@mail.gmail.com>" "<20160504010039.GB2319@hunt>" "<alpine.GSO.2.20.1605032020420.23612@freddy.simplesystems.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 5720 invoked by uid 550); 4 May 2016 04:01:57 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 5699 invoked from network); 4 May 2016 04:01:56 -0000
Message-ID: <20160504040143.GC2319@hunt>
Mail-Followup-To: oss-security@lists.openwall.com
References: <CABi+pA7xDJhirUFbrVZQkwMnFj--zbNJA8_Aoq-SiJx0QNcsoA@mail.gmail.com>
 <20160503181505.GA8195@openwall.com>
 <57292879.7050303@gmail.com>
 <20160503232637.GA2319@hunt>
 <20160503235110.GD1250@sentinelchicken.org>
 <CAC_overhfzw39AL6+0r5hq8JhHb8AOD6-+-V-+ejfDE8OPZb7A@mail.gmail.com>
 <20160504010039.GB2319@hunt>
 <alpine.GSO.2.20.1605032020420.23612@freddy.simplesystems.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="ctP54qlpMx3WjD+/"
Content-Disposition: inline
In-Reply-To: <alpine.GSO.2.20.1605032020420.23612@freddy.simplesystems.org>
User-Agent: Mutt/1.5.24 (2015-08-30)
Date: Tue, 3 May 2016 21:01:43 -0700
From: Seth Arnold <seth.arnold@canonical.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] ImageMagick Is On Fire -- CVE-2016-3714
To: oss-security@lists.openwall.com

--ctP54qlpMx3WjD+/
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, May 03, 2016 at 08:42:30PM -0500, Bob Friesenhahn wrote:
> >This appears to be executed via:
> >https://sourceforge.net/p/graphicsmagick/code/ci/default/tree/magick/del=
egate.c
> >which tries to escape arguments using UnixShellTextEscape(). This functi=
on
> >appears to replace \`"$ chars with backslash-escaped versions. I'm not
> >sure this is a safe mechanism either.
>=20
> Please provide me with a working exploit.

Sorry, exploits aren't my strong suite.

Shells are crazy things though -- | & || && and ; make it easy to execute
additional commands. * ? {} and [] make it easy to turn "single" arguments
into many arguments or get forbidden characters from the filesystem into
the command line anyway. - can change behaviours of called programs. etc et=
c.

> Be aware that this quoting method is only used for the few delegates.mgk
> rules which require shell-like syntax to work. Otherwise the external
> program is run using execvp() without a shell.

Now this I love to hear. execve() makes me happy.

Thanks

--ctP54qlpMx3WjD+/
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQEcBAEBAgAGBQJXKXQnAAoJEPMhclmdjS6XLQgIAJzyJByhp93bVFh1ylBbT7Ie
leaHE1RZ/wHhWyOK2j4NqZeGBF+fOy65yzNNfTyo960qbcvYfAJqeCRc3f2v69aM
Fk6qkhYfKUu0zbv3LvSRyAUGGmtKtW7bNkcK4hBv7eFU+CNgAt5VqmRNkEOh4Lgg
WSox5DNWVMN9cd3QKkgs9TSbB7ryLhHhGdG97ToWi64rNO87J+xnyK9QxIaSloQ/
apDjhSkH/A3Z+z3K2nt/uWMSIcCuIWTPJrvwAmZu9mrYMiaRD2piVZZWZ1XCtF2R
04bXJiUvHBGNVG5UBY6j2CKbnEMURa6kWdmPIBP1Yd6MdchLLGTwfEdT0JDba7M=
=GbsG
-----END PGP SIGNATURE-----

--ctP54qlpMx3WjD+/--
