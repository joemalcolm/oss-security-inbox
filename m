X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1313" "Tuesday" "3" "May" "2016" "18:00:39" "-0700" "Seth Arnold" "seth.arnold@canonical.com" "<20160504010039.GB2319@hunt>" "36" "Re: [oss-security] ImageMagick Is On Fire -- CVE-2016-3714" "^Cc:" nil nil "5" "2016050401:00:39" "[oss-security] ImageMagick Is On Fire -- CVE-2016-3714" (number mark "        seth.arnold@ May  3   36/1313  " thread-indent "\"Re: [oss-security] ImageMagick Is On Fire -- CVE-2016-3714\"\n") "<CAC_overhfzw39AL6+0r5hq8JhHb8AOD6-+-V-+ejfDE8OPZb7A@mail.gmail.com>" ("<CABi+pA7xDJhirUFbrVZQkwMnFj--zbNJA8_Aoq-SiJx0QNcsoA@mail.gmail.com>" "<20160503181505.GA8195@openwall.com>" "<57292879.7050303@gmail.com>" "<20160503232637.GA2319@hunt>" "<20160503235110.GD1250@sentinelchicken.org>" "<CAC_overhfzw39AL6+0r5hq8JhHb8AOD6-+-V-+ejfDE8OPZb7A@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 30521 invoked by uid 550); 4 May 2016 01:00:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 30503 invoked from network); 4 May 2016 01:00:53 -0000
Message-ID: <20160504010039.GB2319@hunt>
Mail-Followup-To: Brandon Dees <brandon@rietta.com>,
	oss-security@lists.openwall.com
References: <CABi+pA7xDJhirUFbrVZQkwMnFj--zbNJA8_Aoq-SiJx0QNcsoA@mail.gmail.com>
 <20160503181505.GA8195@openwall.com>
 <57292879.7050303@gmail.com>
 <20160503232637.GA2319@hunt>
 <20160503235110.GD1250@sentinelchicken.org>
 <CAC_overhfzw39AL6+0r5hq8JhHb8AOD6-+-V-+ejfDE8OPZb7A@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="kORqDWCi7qDJ0mEj"
Content-Disposition: inline
In-Reply-To: <CAC_overhfzw39AL6+0r5hq8JhHb8AOD6-+-V-+ejfDE8OPZb7A@mail.gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Cc: oss-security@lists.openwall.com
Date: Tue, 3 May 2016 18:00:39 -0700
From: Seth Arnold <seth.arnold@canonical.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] ImageMagick Is On Fire -- CVE-2016-3714
To: Brandon Dees <brandon@rietta.com>

--kORqDWCi7qDJ0mEj
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, May 04, 2016 at 12:05:16AM +0000, Brandon Dees wrote:
> is it appropriate to ask if the same issues are present in GraphicsMagick
> as well?

I haven't investigated deeply but it seems very plausible to me:
Here's the delegates.xml work-alike:
https://sourceforge.net/p/graphicsmagick/code/ci/default/tree/config/delegates.mgk.in

This appears to be executed via:
https://sourceforge.net/p/graphicsmagick/code/ci/default/tree/magick/delegate.c
which tries to escape arguments using UnixShellTextEscape(). This function
appears to replace \`"$ chars with backslash-escaped versions. I'm not
sure this is a safe mechanism either.

Thanks

--kORqDWCi7qDJ0mEj
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQEcBAEBAgAGBQJXKUm3AAoJEPMhclmdjS6XW3kIAISQtPMmRqe6DkZiQQJLaDXv
unSMlgXGxHqtDsWpPwIwg4zMMDgGSsNHcGBsB/nXe8i07kyB9tksOpvMTFaqtzAz
aUidLFglBkxyvXxmQI2znFQcOW8JHOcA98XbYqdI4MPfYftg7RqsV1SzeQu9o0qe
OZE+d4kaIrf7QNXKwnosgXr8AxunCnzpcGKO/D2zevrtkKpWErEP/BDAlh/4YgJG
MFGGcZ8tiMUPuDX4DvoiiLvtZHajjG5Sred/EC/oVFkz8uMjxmnYsSeLuXMs/Gy1
KJegDuihM0x9MejzZbkWBW0zLPXjr1JuRQD0Eu4qlmQ3dbfG8w/sUHyaYh7So4E=
=kXmR
-----END PGP SIGNATURE-----

--kORqDWCi7qDJ0mEj--
