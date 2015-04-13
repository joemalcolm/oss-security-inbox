X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1636" "Monday" "13" "April" "2015" "15:31:20" "+0200" "Vasyl Kaigorodov" "vkaigoro@redhat.com" "<20150413133120.GB4115@mail.corp.redhat.com>" "50" "[oss-security] CVE request: libksba version 1.3.3 fixes multiple security issues" nil nil nil "4" "2015041313:31:20" "[oss-security] CVE request: libksba version 1.3.3 fixes multiple security issues" (number mark "        vkaigoro@red Apr 13   50/1636  " thread-indent "\"[oss-security] CVE request: libksba version 1.3.3 fixes multiple security issues\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 10233 invoked by uid 550); 13 Apr 2015 13:18:49 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 10215 invoked from network); 13 Apr 2015 13:18:48 -0000
Message-ID: <20150413133120.GB4115@mail.corp.redhat.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="JYK4vJDZwFMowpUq"
Content-Disposition: inline
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.26
Date: Mon, 13 Apr 2015 15:31:20 +0200
From: Vasyl Kaigorodov <vkaigoro@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE request: libksba version 1.3.3 fixes multiple security issues
To: oss-security@lists.openwall.com

--JYK4vJDZwFMowpUq
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello,

Following issues were fixed in libksba 1.3.3:

libksba: integer overflow in the DN decoder src/dn.c (append_quoted, append=
_atv)
http://git.gnupg.org/cgi-bin/gitweb.cgi?p=3Dlibksba.git;a=3Dcommit;h=3D243d=
12fdec66a4360fbb3e307a046b39b5b4ffc3

libksba: integer overflow in the BER decoder src/ber-decoder.c (ber_decoder=
_s)
http://git.gnupg.org/cgi-bin/gitweb.cgi?p=3Dlibksba.git;a=3Dcommit;h=3Daea7=
b6032865740478ca4b706850a5217f1c3887

libksba: denial of service due to stack overflow in src/ber-decoder.c (push=
_decoder_state, pop_decoder_state)
http://git.gnupg.org/cgi-bin/gitweb.cgi?p=3Dlibksba.git;a=3Dcommit;h=3D0711=
6a314f4dcd4d96990bbd74db95a03a9f650a

Can a CVE be assigned to these please?

Thanks.
--=20
Vasyl Kaigorodov | Red Hat Product Security
PGP:  0xABB6E828 A7E0 87FF 5AB5 48EB 47D0 2868 217B F9FC ABB6 E828

Come talk to Red Hat Product Security at the Summit!
Red Hat Summit 2015 - https://www.redhat.com/summit/

--JYK4vJDZwFMowpUq
Content-Type: application/pgp-signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQEcBAEBAgAGBQJVK8UoAAoJECF7+fyrtugoGtEIAJeRwrnT4tq3wzdQq3FVsBf8
VdvqVDv1iTVFrjdhx9ymMMBO4VKFxuKSZ5MBCvbW/1geExJG473Y8xfJIkEytDvK
MY8KyPHA0a51hvtCe2Ir26mQ4dGh12xMsapnfUVjfRO9GBPhu/qHT35wbaKPAfTO
5YhZ2OW6+HQsBIayScHGLvS8RfhlVewmkNw7+sbG76C8tmZhVlBhIFuVy/nUQj/w
DHC5tu86GjUFSmMSo29ZKkWgWkYCNN/u+u/F3M9yR6ov5XZgFYCvblYJjQ4rZmV0
2WKUamlq99vX79oyiBKTsm98J+q6A8/rBQ1iojZLZ7kB2tmUijAK+hpzcYBIaBE=
=+yig
-----END PGP SIGNATURE-----

--JYK4vJDZwFMowpUq--
