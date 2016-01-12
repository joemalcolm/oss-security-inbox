X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1963" "Tuesday" "12" "January" "2016" "08:37:02" "-0600" "Jamie Strandboge" "jamie@canonical.com" "<56950F8E.1020907@canonical.com>" "62" "Re: [oss-security] CVE Request: click" nil nil nil "1" "2016011214:37:02" "[oss-security] CVE Request: click" (number mark "U       jamie@canoni Jan 12   62/1963  " thread-indent "\"Re: [oss-security] CVE Request: click\"\n") "<5693E986.2010705@canonical.com>" ("<5693E986.2010705@canonical.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 24566 invoked by uid 550); 12 Jan 2016 14:37:22 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24548 invoked from network); 12 Jan 2016 14:37:22 -0000
References: <5693E986.2010705@canonical.com>
Cc: oss-security@lists.openwall.com, security <security@ubuntu.com>
To: cve-assign@mitre.org
From: Jamie Strandboge <jamie@canonical.com>
Message-ID: <56950F8E.1020907@canonical.com>
Date: Tue, 12 Jan 2016 08:37:02 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Thunderbird/38.4.0
MIME-Version: 1.0
In-Reply-To: <5693E986.2010705@canonical.com>
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="6r09KQq7slciTQAUbXj0TCcpBcWmIhHVg"
Subject: Re: [oss-security] CVE Request: click

--6r09KQq7slciTQAUbXj0TCcpBcWmIhHVg
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable


I forgot to CC cve-assign@mitre.org on the initial request so bringing them=
 in
the loop now.


On 01/11/2016 11:42 AM, Jamie Strandboge wrote:
>=20
> Hi MITRE, all,
>=20
> A vulnerability was discovered in the click package system:
> https://launchpad.net/bugs/1506467
> http://www.ubuntu.com/usn/usn-2771-1/
>=20
> It was fixed in 0.4.42 with:
> https://code.launchpad.net/~cjwatson/click/audit-missing-dot-slash/+merge=
/274554
>=20
> This is an input sanitization bug where click assumed leading paths were =
always
> prefixed with './' which, for example, allows a crafted click to ship a '=
.click'
> directory to manipulate the click install process.
>=20
> Can we get a CVE for this?
>=20
> Thanks!
>=20


--=20
Jamie Strandboge                 http://www.ubuntu.com/


--6r09KQq7slciTQAUbXj0TCcpBcWmIhHVg
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCgAGBQJWlQ+UAAoJEFHb3FjMVZVzWQkP/1sojI6FXMYlHwIKugFcDIdu
bhDNWHD3p6IbHd6wFFsF3iZktFhxv2mhmgfNMeDSsWylgfq2XZ6ZBTPvTG1GFYcJ
D/eBtUIUpJSfIENla7owTrn88Fd6a/ynG0w3bo9B3ljOkeE7rXhfYI6My2jPLgWs
rOzKimBe9otSzXmSinqo+aKXbuulD8LDbqKow/nBKHgw+DzHFMvMhrtgpjkMPQR2
CGO9jYRRtfypocPIMJobGTW4YzRVNZNtm4vmFWA2saHixL4yXqRyNYDfnLNEWJ/3
VGcq6gJxKEwbwTuOS20xAAFwD0QTt7nHlcOZOv7O6WblIDB9H3qKESPk0UYcsK/j
v26Xwa9LY5z401pxlgN+kX+Gb+fU9cVIYQsMQbpRkQTXuHnys7XOGj+gD3ZSqUWM
XqtiKHOJ8Nef0P8GQA4veFU2Hw5z6Jf3IsiSf9Ck9ogcGO+nJrZCCv0uaAKVJtIT
B6Unky8SVEoekTj+bubO4O5FdDgWnRpaOyzRM1bBVIfU6qDMj9KM86GK/v4DeGf+
KcHACEv/FeTJ7ciNiymMMEeTsofwxjWshTRSv32vHfE6nsPUbl5r0klCNxIMp5Mp
LbdSb1AA+HWSiv65oqxtomCCk9oOED3xTD7se0cXhK88QIlIhZa6EST0b6s+7b8m
aEVnpIlJVE8hpkmfqCT7
=EUiM
-----END PGP SIGNATURE-----

--6r09KQq7slciTQAUbXj0TCcpBcWmIhHVg--
