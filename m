X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2528" "Tuesday" "31" "July" "2018" "12:53:34" "+0200" "Matthias Gerstner" "mgerstner@suse.de" "<20180731105334.GB29194@f195.suse.de>" "67" "[oss-security] blueman before version 2.0.6 is not enforcing authorization for polkit action org.blueman.network.setup" "^Date:" nil nil "7" "2018073110:53:34" "[oss-security] blueman before version 2.0.6 is not enforcing authorization for polkit action org.blueman.network.setup" (number mark "U       mgerstner@su Jul 31   67/2528  " thread-indent "\"[oss-security] blueman before version 2.0.6 is not enforcing authorization for polkit action org.blueman.network.setup\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 30447 invoked by uid 550); 31 Jul 2018 10:53:46 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 30412 invoked from network); 31 Jul 2018 10:53:46 -0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Message-ID: <20180731105334.GB29194@f195.suse.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="E39vaYmALEf/7YXx"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
Date: Tue, 31 Jul 2018 12:53:34 +0200
From: Matthias Gerstner <mgerstner@suse.de>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] blueman before version 2.0.6 is not enforcing authorization for
 polkit action org.blueman.network.setup
To: oss-security@lists.openwall.com

--E39vaYmALEf/7YXx
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello,

blueman [1] is a graphical interface for dealing with bluetooth devices
on Linux. It comes with a daemon running as root (blueman-mechanism)
that performs privileged operations.

During a code review [2] I noticed that blueman-mechanism in the stable
version 2.0.5 of blueman does not enforce the polkit action
'org.blueman.network.setup' for which a polkit policy is shipped. This
means that any user with access to the D-Bus system bus is able to
access the related API without authentication.

The result is an unspecified impact on the networking stack.
blueman-mechanism for example sets up a bridge device, changes system
wide IPv4 forwarding settings and runs a DHCP client like dnsmasq,
dhclient or dhcpcd.

After I contacted upstream about this, they released an updated stable
version blueman 2.0.6 containing a set of backported patches that
address this issue. These patches have already been present in the alpha
version branch of blueman for a longer time.

Regards

Matthias

[1]: https://github.com/blueman-project/blueman
[2]: https://bugzilla.suse.com/show_bug.cgi?id=3D1083066
[3]: https://github.com/blueman-project/blueman/releases/tag/2.0.6

--=20
Matthias Gerstner <matthias.gerstner@suse.de>
Dipl.-Wirtsch.-Inf. (FH), Security Engineer
https://www.suse.com/security
Telefon: +49 911 740 53 290
GPG Key ID: 0x14C405C971923553

SUSE Linux GmbH
GF: Felix Imend=F6rffer, Jane Smithard, Graham Norton
HRB 21284 (AG Nuernberg)

--E39vaYmALEf/7YXx
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEE82oG1A8ab1eESZdjFMQFyXGSNVMFAltgP60ACgkQFMQFyXGS
NVO/dhAAlM6fEZMccHew0vtZ0yM2vD9idi5Ay+mFcw6cYQTThkVpPUQShMJlxhnk
12BJrtyA/UZOuKdeP6XMYNwiHUlcqOJ5DPpU2whKx4PvtaFQwjqaAmm3e6SABZ0t
OktlIxVSvfMdsa8bONKk4ihfwHjhQWGAtclUHalvXENxa40IkCQ8sfEus/NM/rsN
MxUjtLaxtZ7mJdMpD3cs8xxuvyf3ToNWiuhLdqzI0erVM7UgkQr19Ynb6L6eqeyx
oAwKIa1tsTKiJymagjPHmbSWDxkRSViowmWjEOLagT7Hn1qiKrOJqisTmU0FyudE
NX6d+Tm54pBOefbUr6/4nc+7ueUXhh38qKZcEiOkAEvwEg68c+611KiY6da3x6qO
0AgLIzTj1i3438keXFdDsyAv9+Dq7Atm9KxnOayiNGkeZkw1oNeW3y0la12YI0ul
vsaeQr8A2QDDEBPd9vB71ILMPO98pJnbzzmmtRtWfPdEx/A+szNpCYZ0E14oabeA
eF62DkL1fXaFfzrAbfFtvFXTddb5t2MIvsNIHEKlPt00t4a9Mefxqjn2YBZCUCUl
XD26GtVyQwnCcBI/INhnoqi2lYNwoPFg0Yzc5EaCnG1cCFCcZ1Z9uaOWq/CzOmk9
gRjxbTi4hYNFGHTNgl4E127zIv/hKFgr9TE4qHX24NG0Uk9GKDQ=
=RY2x
-----END PGP SIGNATURE-----

--E39vaYmALEf/7YXx--
