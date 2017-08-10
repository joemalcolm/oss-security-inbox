X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["964" "Thursday" "10" "August" "2017" "14:53:36" "+0200" "Tobias Mueller" "tobiasmue@gnome.org" "<1502369616.23921.10.camel@cryptobitch.de>" "36" "[oss-security] CVE-2017-2885 libsoup - stack based buffer overflow with HTTP Chunked Encoding" nil nil nil "8" "2017081012:53:36" "[oss-security] CVE-2017-2885 libsoup - stack based buffer overflow with HTTP Chunked Encoding" (number mark "U       tobiasmue@gn Aug 10   36/964   " thread-indent "\"[oss-security] CVE-2017-2885 libsoup - stack based buffer overflow with HTTP Chunked Encoding\"\n") "<1502368570.23921.2.camel@cryptobitch.de>" ("<52F55B55-5280-4D95-AE5B-D8605D604DB3@cisco.com>" "<20170802235830.GA20780@cryptobit.ch>" "<17AA6FB0-A698-4A77-B3BC-F8DF8095FCB1@cisco.com>" "<20170803135156.GA24148@cryptobit.ch>" "<0e4ff185-ef96-170a-30dc-02eb0147553c@gnome.org>" "<1502116188.11384.19.camel@cryptobitch.de>" "<1502128444.11384.41.camel@cryptobitch.de>" "<1502368570.23921.2.camel@cryptobitch.de>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1473 invoked by uid 550); 10 Aug 2017 13:07:13 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 18263 invoked from network); 10 Aug 2017 12:53:48 -0000
Message-ID: <1502369616.23921.10.camel@cryptobitch.de>
From: Tobias Mueller <tobiasmue@gnome.org>
To: oss-security@lists.openwall.com
Date: Thu, 10 Aug 2017 14:53:36 +0200
In-Reply-To: <1502368570.23921.2.camel@cryptobitch.de>
References: <52F55B55-5280-4D95-AE5B-D8605D604DB3@cisco.com>
	 <20170802235830.GA20780@cryptobit.ch>
	 <17AA6FB0-A698-4A77-B3BC-F8DF8095FCB1@cisco.com>
	 <20170803135156.GA24148@cryptobit.ch>
	 <0e4ff185-ef96-170a-30dc-02eb0147553c@gnome.org>
	 <1502116188.11384.19.camel@cryptobitch.de>
	 <1502128444.11384.41.camel@cryptobitch.de>
	 <1502368570.23921.2.camel@cryptobitch.de>
Content-Type: multipart/signed; micalg="pgp-sha1"; protocol="application/pgp-signature";
	boundary="=-ac5ppZRUthrVLmPKdB5M"
X-Mailer: Evolution 3.20.5-0ubuntu1~ubuntu16.04.2 
Mime-Version: 1.0
Subject: [oss-security] CVE-2017-2885 libsoup - stack based buffer overflow with HTTP
 Chunked Encoding

--=-ac5ppZRUthrVLmPKdB5M
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi.

PSA: Please update libsoup with the patch from
https://bugzilla.gnome.org/show_bug.cgi?id=3D785774
or take one of the new releases 2.59.90.1,=C2=A0=C2=A02.58.2 (gnome-3-24), =
or
2.56.1 (gnome-3-22).

The patch fixes a severe bug which affects libsoup acting as either
client or server when dealing with chunked encoding.

All versions since 2012 are affected.
Credits go to Aleksandar Nikolic of Cisco Talos for finding this issue.

Cheers,
=C2=A0 Tobi=

--=-ac5ppZRUthrVLmPKdB5M
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iEYEABECAAYFAlmMV1AACgkQnO4bawWbWY6vOACgrzMjIKE6pugUUilRPvpO7F14
wlMAnjkoLMwYdY02EaHK53CZ/k/lxXbD
=GzmJ
-----END PGP SIGNATURE-----

--=-ac5ppZRUthrVLmPKdB5M--

