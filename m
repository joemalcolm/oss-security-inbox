X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2549" "Thursday" "1" "June" "2017" "08:20:46" "+0200" "Johannes Segitz" "jsegitz@suse.de" "<20170601062046.GI15203@suse.com>" "68" "Re: [oss-security] Information on recent sqlite3 issues?" "^Date:" nil nil "6" "2017060106:20:46" "[oss-security] Information on recent sqlite3 issues?" (number mark "        jsegitz@suse Jun  1   68/2549  " thread-indent "\"Re: [oss-security] Information on recent sqlite3 issues?\"\n") "<95c188ba-76a3-7190-94ea-a369d011ae6c@suse.com>" ("<20170531203037.hxl4v36govklpenk@pisco.westfalen.local>" "<95c188ba-76a3-7190-94ea-a369d011ae6c@suse.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 15953 invoked by uid 550); 1 Jun 2017 07:52:37 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 15517 invoked from network); 1 Jun 2017 06:21:00 -0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Message-ID: <20170601062046.GI15203@suse.com>
References: <20170531203037.hxl4v36govklpenk@pisco.westfalen.local>
 <95c188ba-76a3-7190-94ea-a369d011ae6c@suse.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="v2/QI0iRXglpx0hK"
Content-Disposition: inline
In-Reply-To: <95c188ba-76a3-7190-94ea-a369d011ae6c@suse.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Date: Thu, 1 Jun 2017 08:20:46 +0200
From: Johannes Segitz <jsegitz@suse.de>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Information on recent sqlite3 issues?
To: oss-security@lists.openwall.com

--v2/QI0iRXglpx0hK
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Jun 01, 2017 at 12:24:10AM +0200, Andreas Stieger wrote:
> Hello,
>=20
>=20
> On 05/31/2017 10:30 PM, Moritz Muehlenhoff wrote:
> > one of the latest Apple advisories mentions several vulnerabilities in =
sqlite:
> > https://support.apple.com/en-us/HT207798
> >
> > CVE-2017-2513: found by OSS-Fuzz
> > CVE-2017-2518: found by OSS-Fuzz
> > CVE-2017-2520: found by OSS-Fuzz
> > CVE-2017-2519: found by OSS-Fuzz
> > CVE-2017-6983: Chaitin Security Research Lab (@ChaitinTech) working wit=
h Trend Micro's Zero Day Initiative
> > CVE-2017-6991: Chaitin Security Research Lab (@ChaitinTech) working wit=
h Trend Micro's Zero Day Initiative
> >
> > Does anyone have additional information on those and whether that
> > applies to the standard sqlite releases or Apple-specific changes?
>=20
> SUSE has asked Apple, but has not yet received an answer as far as I am
> aware.

They replied:

>Thank you for contacting the Apple Product Security team.
>
>Please contact the SQLite maintainers to coordinate.

I think it is problematic that they assign CVEs but don't provice any
details even if it's not only their code. I contacted the sqlite-devs for
details but didn't receive a reply up to this point.

Johannes
--=20
GPG Key E7C81FA0       EE16 6BCE AD56 E034 BFB3  3ADD 7BF7 29D5 E7C8 1FA0
Subkey fingerprint:    250F 43F5 F7CE 6F1E 9C59  4F95 BC27 DD9D 2CC4 FD66
SUSE Linux GmbH, GF: Felix Imend=F6rffer, Jane Smithard, Graham Norton
HRB 21284 (AG N=FCrnberg)

--v2/QI0iRXglpx0hK
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----

iQIcBAEBCgAGBQJZL7I+AAoJELwn3Z0sxP1m8ywQAL6uKqf2lVCGg/g0A24Be7uH
L0dMyX6/kqDr7wyBsetan8z62mdttlBb7YQrLy70pkQZT+3lmcMVKvIvrHUUaSyY
IYgnNLGrGzlH2D2vZaKQMbCUvw7zQE8/LZMF9QrAuG2ar0mw9Y6bhHde91atUcPQ
c3129pMoiTtgqAWxszkq1clKAXGOzUI1NQmhbXFWbwJpbf1MLoezah+Q8ZiKuU6w
MPCsN/cDpGzQvWQcOSJLMvUf94t12PF5qtV6C/psKZ4+2CQWBP1XmpbQg4P3bjQd
yaufL9vy+vbms3UNUaTfZ+rsMCTut+MwXYRxUQ4/iKCKn+FIQkv4yOa67lYxzpag
/4fUQ8TxJuJ7iWqug71jrwcrsQxhZMFE+zgKOAdp8JFU3utboyV8k75iPKa+vpZm
0s2IMNbDHTadPjnZWBAxxozogjBOwGtI+Zlghw2tpJ2660AaiQXMqTR+SoV19sL3
NDObh6aiXjoFlh5Qt9MdtC9hDbOo2B5M1++twWyU9YZ4ots6NtOUuy1+2EgK4nL+
j91wWcyu9Ce4s9KC++YeIfumUS1TnohjjssbNVwsPVJj62Y4xGD0FX32cuC0cGom
M5aj09H2eEaGKawmuRxMoGxVQmqO+yM6CUcYsqev8ylKG9wsVzwJQfmu9EMM8dgC
4SmONeXVwZ6q3M7lWgpv
=eEO7
-----END PGP SIGNATURE-----

--v2/QI0iRXglpx0hK--
