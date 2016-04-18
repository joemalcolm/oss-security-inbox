X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2748" "Monday" "18" "April" "2016" "14:02:31" "-0400" "Randy Barlow" "rbarlow@redhat.com" "<20160418180230.GB53619@mail.corp.redhat.com>" "65" "[oss-security] CVE-2013-7450: Pulp < 2.3.0 distributed the same CA key to all users" nil nil nil "4" "2016041818:02:31" "[oss-security] CVE-2013-7450: Pulp < 2.3.0 distributed the same CA key to all users" (number mark "U       rbarlow@redh Apr 18   65/2748  " thread-indent "\"[oss-security] CVE-2013-7450: Pulp < 2.3.0 distributed the same CA key to all users\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 26102 invoked by uid 550); 18 Apr 2016 18:02:45 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26081 invoked from network); 18 Apr 2016 18:02:44 -0000
Date: Mon, 18 Apr 2016 14:02:31 -0400
From: Randy Barlow <rbarlow@redhat.com>
To: Pulp Users <pulp-list@redhat.com>,
        OSS Security <oss-security@lists.openwall.com>
Message-ID: <20160418180230.GB53619@mail.corp.redhat.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="24zk1gE8NUlDmwG9"
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.27
Subject: [oss-security] CVE-2013-7450: Pulp < 2.3.0 distributed the same CA key to all users

--24zk1gE8NUlDmwG9
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Versions of Pulp < 2.3.0 distributed the same certificate authority key and
certificate to all Pulp users[0]. This CA is used by the /login API call
(pulp-admin login uses this call) to generate and sign a client certificate.
This client certificate is then used for subsequent API calls.

Due to this vulnerability, remote attackers are able to obtain the CA key
from the Pulp git repository and use it to generate valid client certificat=
es
for any Pulp installations that use the default CA. The Pulp documentation
did not emphasize the importance of replacing this CA for production
deployments, so there may be users who use this common CA key in production
environments.

Users are urged to replace the CA certificate and key on any Pulp
installations that began their life with a version less than 2.3.0. Upgradi=
ng
alone is not sufficient, as Pulp upgrades do not replace existing CA key
pairs. Versions of Pulp >=3D 2.3.0 do ship a utility (pulp-gen-ca-certifica=
te)
that is capable of generating a new CA keypair for you, but it should be
noted that there are some known local attacks that this script is vulnerable
to as well[1][2]. The best option is to generate your own CA certificate if
you are concerned about these local attacks.

Thanks to Sander Bos for notifying the Pulp team that we had neglected to
acquire a CVE for this vulnerability at the time of its discovery.


[0] CVE-2013-7450: https://bugzilla.redhat.com/show_bug.cgi?id=3D1003326
[1] CVE-2016-3095 (fixed in Pulp >=3D 2.8.2):
    http://www.openwall.com/lists/oss-security/2016/04/06/3
[2] CVE-2016-3106 (planned for Pulp 2.8.3):
    https://pulp.plan.io/issues/1827

--=20
Randy Barlow
irc:   bowlofeggs

--24zk1gE8NUlDmwG9
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBAgAGBQJXFSE2AAoJEIyFaKUJtmpiKjYP+wdxRSb5fkEdcc3HlojOruiU
CBrniw1AxM5wI1wD07XuJHbbi0MJy2oz2ff63wRlQg+7YCgBqjEnxhgQ2+gXvEOz
WvDbF/2y4ZJ0U+e/caVFV5vESL/9aDt69JEQ/AI8RgyvjeHVcU8mxZfuIDlo2fRT
lzQtDN14wYbsPOYzUa3yub22EqaKZALTusK/yxedKub+N+x6vBNNq6TTCePc8wFq
5QKAFOoX3qL6VYIYuG4k0k+ri8nX2qaiDCLWcq6Qdwk/V5B+FREo7G6Z8/cmBRKm
45Xu/tn0JsseA5faMCVFkcZXU942KhpS1QoakA39cMW3V7pLS1OaMyfSJAp0RA0t
XyiL2RawrfZ4dO6CZS6qpNXFrwkcPxjlHrsKd0rNzZq1VjZMQ3wfFQiKdBrXJEmh
UE2tnlSxiRd59GuEfbcGOm6A/fXDwsH9odEe1euOv12ap1nKlJAUEZvZjOQls8zU
CWEj97JZX1/tNRX7lMwJqS0XMiMfMBF/QuTtx1vo8L7j0jH3AhPcvRoIiK2qrEmq
pTzZKHmBUgIK+Jvu05TpEcdffQ7v5Z9RdX+ZZKM9MoA69OgQaPVpAJ7iiRCPmRGG
T/8WM6/p3fUOsEe4rn76gaJx9CyMElVu9v0+3/U0o4sopX5uoJ4KgmNSD2WgUfaJ
eiv60J8za3K7jolzfEm6
=6XNb
-----END PGP SIGNATURE-----

--24zk1gE8NUlDmwG9--
