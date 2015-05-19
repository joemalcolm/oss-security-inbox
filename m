X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1294" "Tuesday" "19" "May" "2015" "11:01:48" "+0200" "Vasyl Kaigorodov" "vkaigoro@redhat.com" "<20150519090148.GB24390@mail.corp.redhat.com>" "41" "[oss-security] CVE request: python-tornado: XSRF cookie allows side-channel attack against TLS (BREACH)" nil nil nil "5" "2015051909:01:48" "[oss-security] CVE request: python-tornado: XSRF cookie allows side-channel attack against TLS (BREACH)" (number mark "        vkaigoro@red May 19   41/1294  " thread-indent "\"[oss-security] CVE request: python-tornado: XSRF cookie allows side-channel attack against TLS (BREACH)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 17775 invoked by uid 550); 19 May 2015 09:01:59 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 17746 invoked from network); 19 May 2015 09:01:58 -0000
Message-ID: <20150519090148.GB24390@mail.corp.redhat.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="VrqPEDrXMn8OVzN4"
Content-Disposition: inline
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.24
Date: Tue, 19 May 2015 11:01:48 +0200
From: Vasyl Kaigorodov <vkaigoro@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE request: python-tornado: XSRF cookie allows side-channel attack
 against TLS (BREACH)
To: oss-security@lists.openwall.com

--VrqPEDrXMn8OVzN4
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Version 3.2.2 of Tornado fixes BREACH attach possibility:

https://github.com/tornadoweb/tornado/commit/1c36307463b1e8affae100bf938694=
8e6c1b2308

References:
https://bugzilla.novell.com/show_bug.cgi?id=3D930362
https://bugzilla.redhat.com/show_bug.cgi?id=3D1222816

Can a CVE be assigned for this please?

Thanks.
--=20
Vasyl Kaigorodov | Red Hat Product Security
PGP:  0xABB6E828 A7E0 87FF 5AB5 48EB 47D0 2868 217B F9FC ABB6 E828
Free/Busy status: https://url.corp.redhat.com/vk-free-busy-status

Come talk to Red Hat Product Security at the Summit!
Red Hat Summit 2015 - https://www.redhat.com/summit/

--VrqPEDrXMn8OVzN4
Content-Type: application/pgp-signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQEcBAEBAgAGBQJVWvv8AAoJECF7+fyrtugozPAIAJc5/fELdWQzkg0lqFy5nHeP
FpX05k0Yu43WRPgb1/t0iNyokUX7xwo1wYAnIE0Hf3tBA4kqyscwZYaVFneMUWA5
+O4zKS2LHL3Bplv913V/octT4AstjvX9/yKv9erm96GERfKPXotOZrMvXE0z1Ypj
luYlt8LInuguLjsRdWrUdZAromrJK24Kci1EeokkJWnrAOo6mPHVutqh7JDDcnY0
06EvJyjn6BwMZ3X9gkNYqdTAhQPay6eVfBXnXuGlz6DZGYl/ytd13rN6Xd2KDrRW
/khUGRCNgqG+XsCodEQKXx42R0q1IFQ1RQotZBUhMtO5jLv7iqxSgLKr9f17U74=
=u6QG
-----END PGP SIGNATURE-----

--VrqPEDrXMn8OVzN4--
