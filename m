X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2196" "Wednesday" "12" "August" "2015" "09:43:24" "-0500" "Tyler Hicks" "tyhicks@canonical.com" "<20150812144323.GA31551@boyd>" "62" "[oss-security] CVE Request: libbfd in binutils (was: strings /libbfd crash)" nil nil nil "8" "2015081214:43:24" "[oss-security] CVE Request: libbfd in binutils (was: strings /libbfd crash)" (number mark "        tyhicks@cano Aug 12   62/2196  " thread-indent "\"[oss-security] CVE Request: libbfd in binutils (was: strings /libbfd crash)\"\n") "<20150731172130.GA30077@boyd>" ("<5457C7B6.7050205@internot.info>" "<20150731172130.GA30077@boyd>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 25823 invoked by uid 550); 12 Aug 2015 14:43:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 25796 invoked from network); 12 Aug 2015 14:43:38 -0000
Message-ID: <20150812144323.GA31551@boyd>
References: <5457C7B6.7050205@internot.info>
 <20150731172130.GA30077@boyd>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="Kj7319i9nmIyA2yE"
Content-Disposition: inline
In-Reply-To: <20150731172130.GA30077@boyd>
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: security@ubuntu.com
Date: Wed, 12 Aug 2015 09:43:24 -0500
From: Tyler Hicks <tyhicks@canonical.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE Request: libbfd in binutils (was: strings /libbfd crash)
To: oss-security@lists.openwall.com

--Kj7319i9nmIyA2yE
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On 2015-07-31 12:21:31, Tyler Hicks wrote:
> On 2014-11-04 05:21:42, Joshua Rogers wrote:
> > I'd like to expand on this:
> > http://openwall.com/lists/oss-security/2014/10/27/4
> > and mention that 'ihex.c' is also vulnerable to the same thing, as they
> > share the same code.
> >=20
> > > :10010000214601360121470136007EFE09D2190140
> > > :100110002146017E17C0001FF5F16002148011928
> > > :10012000194E79234623965778239EDA3F01B2CAA7
> > > :100130003F0156702B5E712B722B732146013421C7
> > > :00000001Ff
> >=20
> > is an example of code that will crash it.
>=20
> This was never fixed upstream. I've opened a bug and attached a patch:
>=20
>   https://sourceware.org/bugzilla/show_bug.cgi?id=3D18750
>=20
> I think this deserves CVE assignment since the srec.c issue was assigned
> CVE-2014-8504 and it is very similar in nature.

Ping on this CVE request since it wasn't clear that I was requesting one
in the last email.

A fix has been committed upstream:

  https://sourceware.org/git/gitweb.cgi?p=3Dbinutils-gdb.git;a=3Dcommitdiff=
;h=3D7e27a9d5f22f9f7ead11738b1546d0b5c737266b

Thanks!

Tyler

--Kj7319i9nmIyA2yE
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCgAGBQJVy1uLAAoJENaSAD2qAscKviMP/RJBz0kEERrKiRTESsVbS7Ff
m3KZEd1DnVsB6yBjbzZw1aK3BsISIC6tHysF/6Lel2m9L4o1/uFVscgcO3QR0sLf
Xu4QBmWfzqMCABBbIBVJ7Uvtcksp9USX7EyOelNo1ccWQ4ZsznpKAZdjC6eNQ7wj
V+4Upbus0tGl9iZzgyOb9zg5hdIi1NZtjyhPHVKZe5ry0MCFYnFDd2MN0cPBKF2X
p2r1wTiSShlLXhJ81bYwsd1mZKuEhuZTwX9ug0DklczECMJ3+CZ5TNspJ6L+xc3N
neEmlv/hWGMd+v6tmzhf6FriLMEAHy0rdbOXnMKuz4kxTqlb4K9KltkpnXu6a2Qc
nTniM3ay5CHTrtkRd8nOK7Xeegezfe1vCcESThsla+X+ysgQIMWGmRxm4wNQyqNY
M5JC3d2yHapmZxXbcGWcKPWA5/tpBpY3qq/7F8ajP1k4XjyD9EFR9Yz08vQWZlE3
YAkezj7LnVKGe423wv0RU+pTSTnh30pxVYk3OwCK8k+LOpMMGBbYOldAE0uaJIIJ
2HVDxooz47Tt3ffFFdeZdC7v9KyavsbDnE4Gni+MgmDeRbUxFXVCiQYBsut4GPTL
GLZnZK9W6pCjqUu9Gw/qooP50/A9N7HZ/EsEjKlEEngH2J38qgSDWHyg3dWcd+W/
lkRLl02G8a+fy8fsNOsN
=GVvz
-----END PGP SIGNATURE-----

--Kj7319i9nmIyA2yE--
