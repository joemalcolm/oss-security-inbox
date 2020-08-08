X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2543" "Saturday" "8" "August" "2020" "01:20:29" "+0000" "Seth Arnold" "seth.arnold@canonical.com" "<20200808012029.GD3169683@millbarge>" "75" "Re: [oss-security] CVE-2020-11984: Apache httpd: mod_uwsgi buffer overlow" nil nil nil "8" "2020080801:20:29" "[oss-security] CVE-2020-11984: Apache httpd: mod_uwsgi buffer overlow" (number mark "U       seth.arnold@ Aug  8   75/2543  " thread-indent "\"Re: [oss-security] CVE-2020-11984: Apache httpd: mod_uwsgi buffer overlow\"\n") "<1596799898.GKATVRZF@httpd.apache.org>" ("<1596799898.GKATVRZF@httpd.apache.org>") nil nil nil nil nil nil nil "Re: [oss-security] CVE-2020-11984: Apache httpd: mod_uwsgi buffer overlow" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 20262 invoked by uid 550); 8 Aug 2020 01:20:44 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 20241 invoked from network); 8 Aug 2020 01:20:43 -0000
Date: Sat, 8 Aug 2020 01:20:29 +0000
From: Seth Arnold <seth.arnold@canonical.com>
To: Daniel Ruggeri <druggeri@apache.org>
Cc: oss-security@lists.openwall.com
Message-ID: <20200808012029.GD3169683@millbarge>
Mail-Followup-To: Daniel Ruggeri <druggeri@apache.org>,
	oss-security@lists.openwall.com
References: <1596799898.GKATVRZF@httpd.apache.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="/unnNtmY43mpUSKx"
Content-Disposition: inline
In-Reply-To: <1596799898.GKATVRZF@httpd.apache.org>
Subject: Re: [oss-security] CVE-2020-11984: Apache httpd: mod_uwsgi buffer
 overlow

--/unnNtmY43mpUSKx
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Aug 07, 2020 at 06:31:38AM -0500, Daniel Ruggeri wrote:
> CVE-2020-11984: mod_uwsgi buffer overlow
> Versions Affected:
> httpd 2.4.32 to 2.4.44

> Description:
> Apache HTTP Server 2.4.32 to 2.4.44
> mod_proxy_uwsgi info disclosure and possible RCE

> References:
> https://httpd.apache.org/security/vulnerabilities_24.html

Hello Daniel, all,

I'm confused: this english description of affected versions
reads like 2.4.44 is affected. However, there is a heading on the
vulnerabilities_24.html page that says this CVE is fixed in 2.4.44.

Many projects include a "fixed in versions ..." list to indicate when
something is fixed; I think this is less ambiguous.

The "affects versions" don't always line up with the heading that claims
to be fixed, eg CVE-2019-10092 claims to be fixed in 2.4.41, but the
Affects entry doesn't mention 2.4.40.

The headings are out of order:

$ curl -sq https://httpd.apache.org/security/vulnerabilities_24.html | grep "Fixed in Apache"
Fixed in Apache httpd 2.4.44</h1><dl>
Fixed in Apache httpd 2.4.25</h1><dl>  # 2.4.25 is between 2.4.42 and 2.4.44
Fixed in Apache httpd 2.4.42</h1><dl>
Fixed in Apache httpd 2.4.41</h1><dl>
Fixed in Apache httpd 2.4.39</h1><dl>
[..]

The download site doesn't have a 2.4.40 download:
https://archive.apache.org/dist/httpd/

But the CHANGES_2.4.41 file shows a 2.4.40 release:
https://archive.apache.org/dist/httpd/CHANGES_2.4.41

I don't actually care that much about CVE-2019-10092 -- I just tried to
figure out the status of CVE-2020-11984 by looking at other examples on
the page and found the page difficult to understand.

And, something is a bit off with the CURRENT-IS-$version markers:

$ curl -sq https://archive.apache.org/dist/httpd/ | grep -c CURRENT
47

I expected one in each of the 2.0, 2.2, and 2.4 series, or perhaps just
one for the newest 2.4 release.

Thanks

--/unnNtmY43mpUSKx
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEQVAQ8bojyMcg37H18yFyWZ2NLpcFAl8t/dkACgkQ8yFyWZ2N
LperUAf/ajBZuyVPsnvLe6VSS+lkw2Nq28TrzEGX4otPBRkBMOqz2oTQjM34323g
MP9KFQDElw5sHvukD7i0HxlsYyq9WURVYLEKSJY8SYZh93wDMxyF85fHopSEWLHD
10VshkNy9cU9AoYe5QJBXuVC0WVNAvCYnVWgi0zrx/eL8C4rmC3fsqOtjC43vxnd
6epB5Pbk20EOXj+u83+DNXM03maMfvsobw5Oa3qNTGHenvllFNhGTNWKfVgdT095
VxiNQsvUMiG7ScPyCekvZVBD9UMUOS245tFYCdpGyJgkS39VQjiih4775PDisSBQ
fnSi9uB4+4t+bmZ/3il1KltD6N+sCQ==
=yqjW
-----END PGP SIGNATURE-----

--/unnNtmY43mpUSKx--
