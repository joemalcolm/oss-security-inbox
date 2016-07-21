X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2520" "Thursday" "21" "July" "2016" "20:41:48" "+0200" "Peter Bex" "peter@more-magic.net" "<20160721184148.GO26276@scully.more-magic.net>" "69" "Re: [oss-security] A CGI application vulnerability for PHP, Go, Python and others" nil nil nil "7" "2016072118:41:48" "[oss-security] A CGI application vulnerability for PHP, Go, Python and others" (number mark "U       peter@more-m Jul 21   69/2520  " thread-indent "\"Re: [oss-security] A CGI application vulnerability for PHP, Go, Python and others\"\n") "<CANO=Ty1zwb63tApRBJsjpD3DoPO-FRcQtLTMqqo-Y_a-363TCA@mail.gmail.com>" ("<CAMqf4yDbXfYqFYHbMnMbrhcYfmjC56ok5+3VvNYfKndtsuECgA@mail.gmail.com>" "<CANO=Ty1zwb63tApRBJsjpD3DoPO-FRcQtLTMqqo-Y_a-363TCA@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 28512 invoked by uid 550); 21 Jul 2016 18:41:17 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28484 invoked from network); 21 Jul 2016 18:41:16 -0000
Date: Thu, 21 Jul 2016 20:41:48 +0200
From: Peter Bex <peter@more-magic.net>
To: oss-security@lists.openwall.com
Message-ID: <20160721184148.GO26276@scully.more-magic.net>
Mail-Followup-To: oss-security@lists.openwall.com
References: <CAMqf4yDbXfYqFYHbMnMbrhcYfmjC56ok5+3VvNYfKndtsuECgA@mail.gmail.com>
 <CANO=Ty1zwb63tApRBJsjpD3DoPO-FRcQtLTMqqo-Y_a-363TCA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="0et/Au7PJwzVwd4K"
Content-Disposition: inline
In-Reply-To: <CANO=Ty1zwb63tApRBJsjpD3DoPO-FRcQtLTMqqo-Y_a-363TCA@mail.gmail.com>
X-PGP-Key: http://www.more-magic.net/peter-bex.asc
User-Agent: Mutt/1.5.23 (2014-03-12)
Subject: Re: [oss-security] A CGI application vulnerability for PHP, Go,
 Python and others

--0et/Au7PJwzVwd4K
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Jul 18, 2016 at 08:17:03AM -0600, Kurt Seifried wrote:
> Essentially there are two main cases where a CVE is assigned for the
> httpoxy issue:
>=20
>    1.
>=20
>    A web server, programming language or framework (and in some limited
>    situations the application itself) sets the environmental variable
>    HTTP_PROXY from the user supplied Proxy header in the web request, or =
sets
>    a similarly used variable (essentially when the request header turns f=
rom
>    harmless data into a potentially harmful environmental variable)

This isuee affects the CHICKEN egg "spiffy-cgi-handlers", which is an
optional add-on to add CGI and FastCGI support to the Spiffy web server.
Could I have a CVE for this issue?

All versions before 0.5 are affected.  An announcement was made to
http://lists.gnu.org/archive/html/chicken-announce/2016-07/msg00000.html

The spiffy-cgi-handlers code was part of the spiffy web server before
version 5.0, so earlier versions of that egg were also affected.  Strictly
speaking, I think this deserves another CVE because it's a different
piece of software.

>    2.
>=20
>    A web application makes use of HTTP_PROXY or similar variable unsafely
>    (e.g. fails to check the request type) resulting in an attacker contro=
lled
>    proxy being used (essentially when HTTP_PROXY is actually used unsafel=
y)

I believe this affects the CHICKEN egg "http-client", when used in a CGI
context when the calling server unsafely passes "Proxy" as "HTTP_PROXY".
Could I have a CVE for this issue as well?

It affects http-client versions before 0.10 (the very first version, 0.1,
is not affected because it had no proxy support).

An announcement for this is included in the message at the
aforementioned URL.

Cheers,
Peter Bex

--0et/Au7PJwzVwd4K
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQEcBAEBAgAGBQJXkRdsAAoJEBEdufnLRYmwK14IAIYmtdCfnUayq9gtcVKYk8CN
kdxlmT/7J4zB1dVXwXlUM4gWUd1ZWc/V2aPFuqaNtNSGiqZzVBNjvtp/Iv39qnn3
oPfX5E4HPKMDnNrkeox2wVp0wLUEuLNmu8lk9Cf90cOvOuwzP7h/qoceP7CG4ZDr
tEr+KMK2wEymAfrXt6c1rBSQvE3TpcEDKj8tqA8sUDV7dXzv2MLSw+U094Xfl4Ys
Egs0jstjExRLbJJaRg/K2iXxunXFS9zKp4TvxXbbjdu0ka6STtuU5bZFrnydfqHQ
du1zx9SiJhx1avM6wUjwjre1K4TPz9gb8E5p4go1HmwOv3V78dyVdDWyh2rsO9o=
=OuLX
-----END PGP SIGNATURE-----

--0et/Au7PJwzVwd4K--
