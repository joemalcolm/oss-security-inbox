X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1314" "Monday" "30" "March" "2015" "14:40:19" "+0200" "Vasyl Kaigorodov" "vkaigoro@redhat.com" "<20150330124019.GD29777@mail.corp.redhat.com>" "43" "[oss-security] CVE Request: ikiwiki: cross-site scripting via openid_identifier" nil nil nil "3" "2015033012:40:19" "[oss-security] CVE Request: ikiwiki: cross-site scripting via openid_identifier" (number mark "        vkaigoro@red Mar 30   43/1314  " thread-indent "\"[oss-security] CVE Request: ikiwiki: cross-site scripting via openid_identifier\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 9433 invoked by uid 550); 30 Mar 2015 12:40:33 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 9412 invoked from network); 30 Mar 2015 12:40:32 -0000
Message-ID: <20150330124019.GD29777@mail.corp.redhat.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="EP0wieDxd4TSJjHq"
Content-Disposition: inline
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.27
Date: Mon, 30 Mar 2015 14:40:19 +0200
From: Vasyl Kaigorodov <vkaigoro@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE Request: ikiwiki: cross-site scripting via openid_identifier
To: oss-security@lists.openwall.com

--EP0wieDxd4TSJjHq
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello,

Cross-site scripting flaw in the handling of the openid_identifier
parameterhas been fixed in ikiwiki:

http://source.ikiwiki.branchable.com/?p=3Dsource.git;a=3Dcommit;h=3D18dfba8=
68fe2fb9c64706b2123eb0b3a3ce66a77

References:
https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=3D781483
https://bugzilla.redhat.com/show_bug.cgi?id=3D1207210

Can we have a CVE assigned to this please?

Thanks.
--=20
Vasyl Kaigorodov | Red Hat Product Security
PGP:  0xABB6E828 A7E0 87FF 5AB5 48EB 47D0 2868 217B F9FC ABB6 E828

Come talk to Red Hat Product Security at the Summit!
Red Hat Summit 2015 - https://www.redhat.com/summit/

--EP0wieDxd4TSJjHq
Content-Type: application/pgp-signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQEcBAEBAgAGBQJVGUQzAAoJECF7+fyrtugoGL4IAM2VuDzKPvFggPjjQ7F8YT8J
4Hp8MfHZMyUFFaoEgXF796x8OpnGPmQ6agxBIU+XzrNLdAs7ZX1X9kJ9a2xkqCEp
RBTx52n4pjeBDMYYkMImjVhZB2WQB4MOYl6WdOEBc1YJq5yfp+BLY7hT9ZwkaCww
+vlGVlKaikoAApqWxDjUHFZbb5PEZMLxfMiQSpOaJEJ6pJuz+t7prvdY6qKp1W+3
jXr8bIhuSRZHzZ91XeYdV8EWs/pt/ncm26bPeioulXw1v3mH6mOVp9euaZ2lzayc
/Ojan+QX7yWcCB6clcGaTKuD45crnjY+qAXh6lPEekGI2DB7oIHffhaKU7MDL9M=
=quDS
-----END PGP SIGNATURE-----

--EP0wieDxd4TSJjHq--
