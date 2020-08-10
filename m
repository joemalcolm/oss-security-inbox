X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2358" "Monday" "10" "August" "2020" "22:29:35" "+0000" "Seth Arnold" "seth.arnold@canonical.com" "<20200810222935.GA3601880@millbarge>" "63" "Re: [oss-security] CVE-2020-11984: Apache httpd: mod_uwsgi buffer overlow" nil nil nil "8" "2020081022:29:35" "[oss-security] CVE-2020-11984: Apache httpd: mod_uwsgi buffer overlow" (number mark "U       seth.arnold@ Aug 10   63/2358  " thread-indent "\"Re: [oss-security] CVE-2020-11984: Apache httpd: mod_uwsgi buffer overlow\"\n") "<eb6a0eab-af5e-7fea-3183-9e3308b1e3db@apache.org>" ("<1596799898.GKATVRZF@httpd.apache.org>" "<20200808012029.GD3169683@millbarge>" "<eb6a0eab-af5e-7fea-3183-9e3308b1e3db@apache.org>") nil nil nil nil nil nil nil "Re: [oss-security] CVE-2020-11984: Apache httpd: mod_uwsgi buffer overlow" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 18282 invoked by uid 550); 10 Aug 2020 22:29:50 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 18264 invoked from network); 10 Aug 2020 22:29:49 -0000
Date: Mon, 10 Aug 2020 22:29:35 +0000
From: Seth Arnold <seth.arnold@canonical.com>
To: oss-security@lists.openwall.com
Message-ID: <20200810222935.GA3601880@millbarge>
Mail-Followup-To: oss-security@lists.openwall.com
References: <1596799898.GKATVRZF@httpd.apache.org>
 <20200808012029.GD3169683@millbarge>
 <eb6a0eab-af5e-7fea-3183-9e3308b1e3db@apache.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="u3/rZRmxL6MmkK24"
Content-Disposition: inline
In-Reply-To: <eb6a0eab-af5e-7fea-3183-9e3308b1e3db@apache.org>
Subject: Re: [oss-security] CVE-2020-11984: Apache httpd: mod_uwsgi buffer
 overlow

--u3/rZRmxL6MmkK24
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sat, Aug 08, 2020 at 07:21:35AM -0500, Daniel Ruggeri wrote:
> =A0=A0 You're correct. That was an error on our part. We try to double ch=
eck
> this data (since sometimes we burn a release number as we test the
> candidate) and things can get out of sync. I have it in my personal TODO
> list to add some tooling around automating this particular part of the
> release management process.
>=20
> I've fixed this in a recent patch and the the site should now show the
> correct data - many thanks for the correction

Hello Daniel, thanks for the fixes, this is a lot more clear to me now.

Quite a lot of my confusion came from not knowing that some releases were
versioned but not released -- suddenly quite a lot more makes sense.

> > The headings are out of order:

> No problem - I thought about this as I was putting together the
> announcement but didn't adjust it at the time. I've fixed this as well

Thanks -- I know how it goes, there's always something somewhere that
needs to fixed.

> > And, something is a bit off with the CURRENT-IS-$version markers:
> >
> > $ curl -sq https://archive.apache.org/dist/httpd/ | grep -c CURRENT
> > 47
> I can see how that appears odd. This URL is our archive distribution
> point, so anything we release to the formal distribution point will be
> added here automatically to preserve history. It's best to use the
> current distribution point:
> https://dist.apache.org/repos/dist/release/httpd/

Aha! And this explains the duplicates. It's nice to know it's intentional.

> Thanks for taking the time to provide feedback! Have a great weekend

Thanks for the quick fixes :)



--u3/rZRmxL6MmkK24
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEQVAQ8bojyMcg37H18yFyWZ2NLpcFAl8xyksACgkQ8yFyWZ2N
Lpdulwf+OyW0/jJsB+5YMkuI2pB0OFWP5B93dX0BYvbRHbtpVgPfELR+8W2hF7nQ
ghqh9JcORpQCKuIAJNOQbRy3HHQ/UUKuRi69QOsuVmLa481arhOqFvSNIqIhUCwD
+wFzlth7AOUMzRqZeQpG52w5ojLb0Gm9c5xwLzek4RUogJEVdAwI2F0Mm7q4nEEl
fryfkwfIgS1hIu4kQaApvQZicdeWXoo2rqoxbrMvnwPNtwLMCxwfzugGfSKB4iIX
hS0298niXXFkxPLYLDFDsYVSbk1WGrQTTvNvR8BONAe4tVdqOYKcMTJ2tL0oog52
CJc8sqhZHDWV3+cWqxPR+/pjY89uUQ==
=sdNe
-----END PGP SIGNATURE-----

--u3/rZRmxL6MmkK24--
