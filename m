X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1738" "Thursday" "15" "December" "2016" "02:28:07" "+0800" "Kuang-che Wu" "kcwu@csie.org" "<20161214182807.GN10528@kcwu.csie.org>" "54" "Re: [oss-security] Re: CVE request: w3m - multiple vulnerabilities" nil nil nil "12" "2016121418:28:07" "[oss-security] Re: CVE request: w3m - multiple vulnerabilities" (number mark "U       kcwu@csie.or Dec 15   54/1738  " thread-indent "\"Re: [oss-security] Re: CVE request: w3m - multiple vulnerabilities\"\n") "<ad660c2632fa4e6790fb12dc654b6769@imshyb02.MITRE.ORG>" ("<20161122051648.GI10528@kcwu.csie.org>" "<ad660c2632fa4e6790fb12dc654b6769@imshyb02.MITRE.ORG>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 17446 invoked by uid 550); 14 Dec 2016 18:33:16 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13928 invoked from network); 14 Dec 2016 18:28:26 -0000
Date: Thu, 15 Dec 2016 02:28:07 +0800
From: Kuang-che Wu <kcwu@csie.org>
To: oss-security@lists.openwall.com
Cc: cve-assign@mitre.org
Message-ID: <20161214182807.GN10528@kcwu.csie.org>
References: <20161122051648.GI10528@kcwu.csie.org>
 <ad660c2632fa4e6790fb12dc654b6769@imshyb02.MITRE.ORG>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="NtwzykIc2mflq5ck"
Content-Disposition: inline
In-Reply-To: <ad660c2632fa4e6790fb12dc654b6769@imshyb02.MITRE.ORG>
User-Agent: Mutt/1.6.1 (2016-04-27)
Subject: Re: [oss-security] Re: CVE request: w3m - multiple vulnerabilities

--NtwzykIc2mflq5ck
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

FYI, my previous report was for debian's w3m fork. Now I also tested
original w3m 0.5.3.
(https://sourceforge.net/projects/w3m/files/w3m/w3m-0.5.3/)

The original w3m 0.5.3 is also affected by at least following CVEs
CVE-2016-9422
CVE-2016-9424
CVE-2016-9425
CVE-2016-9426
CVE-2016-9432
CVE-2016-9439
CVE-2016-9440
CVE-2016-9441
CVE-2016-9622
CVE-2016-9623
CVE-2016-9624
CVE-2016-9625
CVE-2016-9626
CVE-2016-9627

But the case of CVE-2016-9422, which made debian's w3m stack smashing,
can only make original w3m 0.5.3 heap-buffer-overflow write. I haven't
found cases to smash stack yet.

For other CVEs, I don't know. Maybe original w3m is not affected. Maybe
those issues are covered by above issues.

kcwu

--NtwzykIc2mflq5ck
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEGQyoIFPi3eHEq0DTbVdbyV3SaZcFAlhRjy4ACgkQbVdbyV3S
aZfG6A/9GrjgTr93+Oa6Sb8ZrbDcZf9VYet/Q0S8t2VapwWXs0Ib827i8TKozoHF
zPNMtV6bwqxsKpAUIK/01Ml3Wq7ajnqO8kC8++rDxiEW6MtEiQ3BdwMDLTyseFam
tTtp7yrlq+lK6jwlurA1leBTk5vNJKbsr6vReT0Ic2OBWLmUoB7/kNVBGXpwsTRc
40r2mOkc5s29B8drcSo8quHKLM7E667pnJ6N9FioYEeqLDZQ8luxVD3VH6nAUF+B
RUQXi31cOzhADTrtVv7fxhAxmlvd5WWbTWMboNlQzWqIsjoDgc0F5bnRT3GBNb94
3EW93L/S68lr3zfsRQCXzJOPKETGzO2gnznTmFrPymaNlF8Lju5AEviYUYv2aO7n
KtgpORxWYRZQQ4cpzAsDghsYVf0dLrN9HoC/iie73bQuXoj9e3kCF0ry0BTMgjUs
FjHePrIEAo+/Cek9pMPp6Rgs5YHlOIps0TasN4aa4hqyE3nZM/WaD6Dk3Otqg0QG
4Bw3P+/yJm5msHZpCmtaTbNIUDu9hMV21hEc2niyG2430R0wwB4EMXKgs0wk9kN7
c9jAE/I84VdnPgpRMM41fQpKcsX1LXpTNpiapPvMTkS2XW6Chizf4uZv1gZnzid9
OQdIh5ollR58VibYQnXAEIh7qOpNswH2/C/4p0/leAy4syeJRcE=
=juaq
-----END PGP SIGNATURE-----

--NtwzykIc2mflq5ck--
