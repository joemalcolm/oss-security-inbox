X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3029" "Thursday" "22" "August" "2019" "12:59:14" "-0400" "Brad Spengler" "spender@grsecurity.net" "<20190822165914.GA29435@grsecurity.net>" "70" "Re: [oss-security] Linux kernel: multiple vulnerabilities in the USB subsystem x2" "^Date:" nil nil "8" "2019082216:59:14" "[oss-security] Linux kernel: multiple vulnerabilities in the USB subsystem x2" (number mark "        spender@grse Aug 22   70/3029  " thread-indent "\"Re: [oss-security] Linux kernel: multiple vulnerabilities in the USB subsystem x2\"\n") "<20190822162000.GA1670@kroah.com>" ("<CA+fCnZfz=Y41rkacwG6z0d_d6WV=iSkU2R1L-JzxfRKYHnSN9w@mail.gmail.com>" "<C1E053CF-5359-43A3-8572-BE6CDFDCC2B1@oracle.com>" "<20190822093122.GQ6086@suse.de>" "<ECC3E425-3E0F-4671-AC2B-CA5FD8958FBD@oracle.com>" "<CA+fCnZfpGc0qK9MRp-BQJkLPrZhf-Md-UYCOtPi0RhbwJqmAHQ@mail.gmail.com>" "<20190822162000.GA1670@kroah.com>") nil nil nil nil nil nil nil "Re: [oss-security] Linux kernel: multiple vulnerabilities in the USB subsystem x2" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 18244 invoked by uid 550); 22 Aug 2019 17:15:58 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 11266 invoked from network); 22 Aug 2019 17:04:43 -0000
Message-ID: <20190822165914.GA29435@grsecurity.net>
References: <CA+fCnZfz=Y41rkacwG6z0d_d6WV=iSkU2R1L-JzxfRKYHnSN9w@mail.gmail.com>
 <C1E053CF-5359-43A3-8572-BE6CDFDCC2B1@oracle.com>
 <20190822093122.GQ6086@suse.de>
 <ECC3E425-3E0F-4671-AC2B-CA5FD8958FBD@oracle.com>
 <CA+fCnZfpGc0qK9MRp-BQJkLPrZhf-Md-UYCOtPi0RhbwJqmAHQ@mail.gmail.com>
 <20190822162000.GA1670@kroah.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="Qxx1br4bt0+wmkIi"
Content-Disposition: inline
In-Reply-To: <20190822162000.GA1670@kroah.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Date: Thu, 22 Aug 2019 12:59:14 -0400
From: Brad Spengler <spender@grsecurity.net>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Linux kernel: multiple vulnerabilities in the USB
 subsystem x2
To: oss-security@lists.openwall.com

--Qxx1br4bt0+wmkIi
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Sorry, a little too much marketing coming out of this camp these days, and
this one demands a response.

On Thu, Aug 22, 2019 at 09:20:00AM -0700, Greg KH wrote:
> On Thu, Aug 22, 2019 at 05:16:03PM +0200, Andrey Konovalov wrote:
> > On a side note, currently there's an issue with many Linux kernel bugs
> > being fixed, but not backported to distro kernels. Those bugs might
> > have security implications, but there's no way to know that, unless
> > someone specifically spends time to assess them in that regard.
> > Requesting CVEs for those bugs is a way to get the fixes into distro
> > kernels (even though that doesn't always work promptly [1] :).
> >=20
> > [1] https://www.openwall.com/lists/oss-security/2018/10/30/2
>=20
> Note, I am scraping the logs for anything that says it is fixed due do a
> syzbot find or report and backporting them to the stable kernel
> branches.  So those distros that do follow the LTS/stable kernel
> releases do get these fixes.

All of the fixes, Greg?  Who backports them?  Would you like to share with
the list what happens when an upstream fix doesn't apply cleanly to an
earlier kernel?  What happens when a volunteer doesn't show up to backport
the fix for you?

If security fixes are being tracked as your "everything is fine, nothing to
see here" reply suggests, we wouldn't be carrying hundreds of security fixes
your LTS kernels are missing.

You'd also need to explain very easy to find examples like this:
https://www.spinics.net/lists/stable/msg317698.html
of random LTS kernels not receiving security fixes.  This particular issue =
was
public since April (which is when we backported fixes for it to 4.4/4.14).
It's now 4 months later and your 4.4 6-year "supported" LTS kernel still
doesn't contain the fixes.

This list should be for informing people, not for spreading misinformation
and a sense of security that you must know is false.

Thanks,
-Brad

--Qxx1br4bt0+wmkIi
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.12 (GNU/Linux)

iQIcBAEBCgAGBQJdXsnaAAoJEETRwPglJf5JiDAP/R4ZIjGmv9eqAs61Yb3rF1i3
7Gf+JKbZRyIVxVWJP0oDXjmk8oulDr8NQsNTdVjvPi41W1N+T1ph5QN3Wj+ER0Oi
Kc+iXmATKsg8vOB7SwcgosCb2M8z3VhC4VyTg1rGTUtuOqp8w7Lu2HgkUhs3eAYi
qXpxajgkwrVqEWdNjDCxs6l+TuL0uFw0V3FlypqniQU4+9/uiofgo5NSJ26YsPYO
b+iSlXi3iakQ8H4egWug45mjLFAsgPGq1uUkTpgCfpeIuhu0rzQUWW2WAElWfmeL
ardj9tlBXMnNbVO4uZf2p8wnu+ntNUyXyqmhdlHWuH43T72IGlblw9DFh6Oe97xM
5AQpnP42RlypOyK+H6jJqNYj/oFbvIfbA5YJne1+LOqv3RBy3BqyTWvvclAEZW8+
KLcYQ8D/Zz9a3XEjG+u+KIkYtBsNFBBxEBU1VtFWDwJaZcqGAIaMGmMqoEunvR8t
/2rddJzl1h9j886yz4+0nkC9jse1NqohSWPBWgP6aUnQbap/4zJsoTtMEkWG9BwF
gWtYjpBEL7zs/NTjBFWYhj6oxXfkfNdwp8ho2fc2XYZ+nxxyd6mfN4tL4LMxpzKv
LlopW/5Q/p880DIG1oDa0aNaSuDI6VKZIWwTynBEIOpXZNUWr0eqpbaVdzQcS0qZ
ArLZHlhcEYwRKWmVRQra
=5cDQ
-----END PGP SIGNATURE-----

--Qxx1br4bt0+wmkIi--
