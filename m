X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1536" "Friday" "24" "June" "2016" "17:23:43" "+1000" "Michael Ellerman" "mpe@ellerman.id.au" "<1466753023.11831.9.camel@ellerman.id.au>" "44" "[oss-security] CVE Request: Linux: powerpc/tm: Always reclaim in start_thread() for exec() class syscalls" nil nil nil "6" "2016062407:23:43" "[oss-security] CVE Request: Linux: powerpc/tm: Always reclaim in start_thread() for exec() class syscalls" (number mark "U       mpe@ellerman Jun 24   44/1536  " thread-indent "\"[oss-security] CVE Request: Linux: powerpc/tm: Always reclaim in start_thread() for exec() class syscalls\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 26276 invoked by uid 550); 24 Jun 2016 08:40:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 21562 invoked from network); 24 Jun 2016 07:24:09 -0000
Message-ID: <1466753023.11831.9.camel@ellerman.id.au>
From: Michael Ellerman <mpe@ellerman.id.au>
To: oss-security@lists.openwall.com
Date: Fri, 24 Jun 2016 17:23:43 +1000
Content-Type: multipart/signed; micalg="pgp-sha1"; protocol="application/pgp-signature";
	boundary="=-umxxbwQlu//ZfBY5O/mn"
X-Mailer: Evolution 3.16.5-1ubuntu3.1 
Mime-Version: 1.0
Subject: [oss-security] CVE Request: Linux: powerpc/tm: Always reclaim in start_thread()
 for exec() class syscalls

--=-umxxbwQlu//ZfBY5O/mn
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

We've found an issue in the handling of Transactional Memory on powerpc
systems. An unprivileged local user can crash the kernel by starting a
transaction, suspending it, and then calling any of the exec() class system
calls.

More info:
 https://patchwork.ozlabs.org/patch/636776/
 https://patchwork.ozlabs.org/patch/636774/ (test case)

Could you please allocate a CVE for this?

cheers

--=-umxxbwQlu//ZfBY5O/mn
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAABAgAGBQJXbN//AAoJEFHr6jzI4aWA6XkQAIwq7NZ7JjqoAFwlqU/xHDMv
dR8wB/AciKdJr/dmV3gTOJWCuhNFBjAkoEUDBA60gdTEMP6T1nV7vXR/PMtoujBe
glHnU/TYtXadTi8NBX6z1utwAgfbG7+WpHvEmKYacYC3y2iszQAK7HBcQhcngPXm
Iy38B6e1FSWfign8m6CMchuruF8n9ujabVkPdHoUSb2pUAumUASf7LttxpeHaec7
jjHBP178rmUf1nyi6soo6c+XFBKc+Ve3eVbfWTn26DUQX1HNBE+h8RkZKBIzBObA
bv56d9w5EfkdKPpmrLdTF2cQnoaBBXiizoQLltehpGdUBVWhVpRdUbSOiL46GMcI
3ugiaPK+1PiQG3LNiOh27hJ/IA/k9XuG70gg2kDcEhyFy5xheSwPgq9TfMzd/WIY
AYJWx8f5KNhC9P/pn0by14/SVdWHCIPgab+wgiLEYgg5CoCurUEdewzERwt5/noE
dlwBJ1hX/kOs0kChdWE7J2UKXlwVGokx+AsyZlOBmAXGV06qL9IfCBc2bvR43RmI
mJ7owS06ydAQKewVya0XZrA7fQhOP0t/RV4ND7ecMQYnxJGGWFTCeRSCI3vI2PnV
bFTz2Xl5XO5VKxGQgrq4YdhSGdjWMVjhaqy3o2GViIZNYl5s3aIhGO6hfHej/Sd7
QHaUfZc4wbP9rYUq0xqx
=casv
-----END PGP SIGNATURE-----

--=-umxxbwQlu//ZfBY5O/mn--

