X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1558" "Tuesday" "29" "October" "2019" "10:12:35" "-0400" "Randy Barlow" "randy@electronsweatshop.com" "<133fcd41f0466a9efbfc1c1d5fa6f21f586436b4.camel@electronsweatshop.com>" "40" "[oss-security] Bodhi: Script injection" "^Date:" nil nil "10" "2019102914:12:35" "[oss-security] Bodhi: Script injection" (number mark "        randy@electr Oct 29   40/1558  " thread-indent "\"[oss-security] Bodhi: Script injection\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Bodhi: Script injection" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 18307 invoked by uid 550); 29 Oct 2019 14:18:49 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 16226 invoked from network); 29 Oct 2019 14:12:52 -0000
Message-ID: <133fcd41f0466a9efbfc1c1d5fa6f21f586436b4.camel@electronsweatshop.com>
Organization: electronsweatshop.com
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-z/GvwY0EOFfMxAKzyKdu"
User-Agent: Evolution 3.32.4 (3.32.4-1.fc30) 
MIME-Version: 1.0
X-CMAE-Envelope: MS4wfMZ8KkGwFSoJUXkhyyspcidjAChS8YxYp95l3HW00TbivnfXt8Xd/Lp8UxPou7aEJ717vO3pClBDfTYWcK5PD4rg67Ff8sN6C6UIslxO6jcyBQa66cfw
 8lPcbElVIikezRbxGkFY8zSE7+oUudF39s8FaDZUAHBSIiyZQFbt289vfHgwYFucgJ2HaZ22nn8ujFq+FAsKdMBqUcVZyf/vqSE=
Date: Tue, 29 Oct 2019 10:12:35 -0400
From: Randy Barlow <randy@electronsweatshop.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Bodhi: Script injection
To: oss-security@lists.openwall.com

--=-z/GvwY0EOFfMxAKzyKdu
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

A script injection vulnerability[0] was recently reported in Bodhi[1],
and a patch[2] has been merged in response. Users with packager
privileges were able to create or edit updates that included <script>
tags.

There is not yet a CVE for this issue.


[0] https://pagure.io/fedora-infrastructure/issue/8324
[1] https://github.com/fedora-infra/bodhi
[2] https://github.com/fedora-infra/bodhi/pull/3657

--=-z/GvwY0EOFfMxAKzyKdu
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEtaW+t5vwm7qNSBIDeETMuDvdJGIFAl24SNMACgkQeETMuDvd
JGLtrw/9FyPv/u09q4n0yr7r5NG636v6UuMIJhYLDHoa7IsG7iwDUdW7VIQKnnGm
WgWZ8AiAVXx0KHTXDyctfEcZ8s6znHV++wajHfiWTfnOjbTkFwmrQ16JblDWPP0i
OYqXEmcst4DMyq5Sp6DDQhtazS+adf++oW4tJm9JNUzEdpCjaJv1VBZ93KmIJpiA
a2q7OorwflA/3TfOW5wpuaQzExTG562GS9fPlE7sfNxdgMOfNheSj0YYzUl4xDc9
AP8y5aW5MiuZNh5GIrtD+fF6DYolB3TSORlHOK7ntkJ0H+jMFvcyeg+Ib7bvt8dF
DTKKrZi29Qyw939LSI4YPqopmdRAIAEg7ublOS4ChLVhJGAtC/vHPjKIzpo6Dcjw
vZ4hz+0F4V0TIpWWWQpxy9Gkfur7BJzFd1qhAjXOdzvFk65SiAPyDt3V5KChzBmM
gzIWBCm0eeLpYdimjbmn7vGxA7KeurHaCGsY1Zy09y+xY9MbA3H7aemw2YAlaxMx
e+UhdhyONbHuhdp/nL7P9VJyefGQ3in1CglsstZ+x2a5KTtYl6ypDyKNOS1sEbDm
1hc/wuRX2hXbpEvScL4icbWeArz4WdX7cGS2Pgy9nGZMlK22Yij/gBxizhD+rh41
3qg2o+aj6W4jCw8s/N/SJrr82HBs7WDSLDz6JbepdQ3a8Im8yFg=
=SFHD
-----END PGP SIGNATURE-----

--=-z/GvwY0EOFfMxAKzyKdu--

