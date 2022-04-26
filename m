Received: (qmail 13846 invoked by uid 550); 26 Apr 2022 23:18:40 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13828 invoked from network); 26 Apr 2022 23:18:40 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1651015107;
	bh=2UT6ebEPpq1YUdf7Of2Abft9kB7BxT0s7OxeQqMjWOI=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type;
	b=uq9qJ2ntfw8dsjLiHw7i2XNl13F1MTvOlYtWkYE5R2PvD+RWb8dDybucQtFgI1Ndz
	 A8cmWswAN5CPCsC4VvvxdeGbhneEbvsnRYC+BWU7JHoOsGveKVlVDodOS7jsKQo2NF
	 7YoRPc9QFWMjD6G1TQw813BpMIqyFOSxGodZNiDfnXmY41GPXrRE/vu6RPAdfVgWwU
	 OCmhRVX1rt6rwmQOe+n2r8vN0t94jiliFSypSLkkngsxiCA43XcAtZKOoCU5W3Vu2q
	 YTqtbYKo7Uz/ZidkjWldb5KVFP8973RmJmN66N+d9NHKbLZ/kZU+fwSaGjJuvLDyYD
	 4tM/+ZfQAxHhw==
Date: Tue, 26 Apr 2022 23:18:25 +0000
From: Seth Arnold <seth.arnold@canonical.com>
To: dev@kylin.apache.org
Cc: oss-security@lists.openwall.com
Message-ID: <20220426231825.GA484258@millbarge>
Mail-Followup-To: dev@kylin.apache.org, oss-security@lists.openwall.com
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="yrj/dFKFPuw6o+aM"
Content-Disposition: inline
Subject: [oss-security] [morningman@163.com: [oss-security] CVE-2022-23942: Apache
 Doris(incubating) hardcoded cryptography initialization]

--yrj/dFKFPuw6o+aM
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello, the Apache Doris project recently switched away from using
hard-coded credentials; they apaprently copy-and-pasted code from the
Kylin project:

https://www.openwall.com/lists/oss-security/2022/04/26/2
https://github.com/apache/incubator-doris/pull/7862/files

https://github.com/apache/kylin/blob/0fa41762ec0fc69c0b8029fc8a81b273388bbf=
1d/core-common/src/main/java/org/apache/kylin/common/util/EncryptUtil.java#=
L39

public class EncryptUtil {
    /**
     * thisIsAsecretKey
     */
    private static byte[] key =3D { 0x74, 0x68, 0x69, 0x73, 0x49, 0x73, 0x4=
1, 0x53, 0x65, 0x63, 0x72, 0x65, 0x74, 0x4b,
            0x65, 0x79 };

    private static final Cipher getCipher(int cipherMode) throws InvalidAlg=
orithmParameterException,
            InvalidKeyException, NoSuchPaddingException, NoSuchAlgorithmExc=
eption, UnsupportedEncodingException {
        Cipher cipher =3D Cipher.getInstance("AES/CFB/PKCS5Padding");
        final SecretKeySpec secretKey =3D new SecretKeySpec(key, "AES");
        IvParameterSpec ivSpec =3D new IvParameterSpec(KylinConfig.getInsta=
nceFromEnv().getEncryptCipherIvSpec().getBytes("UTF-8"));
        cipher.init(cipherMode, secretKey, ivSpec);
        return cipher;
    }


Kylin may need a similar fix.

Thanks

----- Forwarded message from =E9=99=88=E6=98=8E=E9=9B=A8 <morningman@163.co=
m> -----

Date: Tue, 26 Apr 2022 22:33:47 +0800 (CST)
From: =E9=99=88=E6=98=8E=E9=9B=A8 <morningman@163.com>
To: general <general@incubator.apache.org>, me@dw1.io, security@apache.org,=
 oss-security@lists.openwall.com
Subject: [oss-security] CVE-2022-23942: Apache Doris(incubating) hardcoded =
cryptography initialization
Message-ID: <3f9af332.69b6.180664aec3f.Coremail.morningman@163.com>

Severity: moderate

Description:
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
Doris use hardcoded key and IV to initialize the cipher used for ldap passw=
ord, which may lead to information disclosure.

Mitigation:
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
Upgrade to 1.0.0[1] or higher will resolve this problem.

Credit:
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
We would like to thanks to Dwi Siswanto for the report of this issue

References:
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
https://lists.apache.org/thread/com2dyzp3bn2rdrotry90q2zzord4tvt[1] http://=
doris.incubator.apache.org/downloads/downloads.html



--

=E6=AD=A4=E8=87=B4=EF=BC=81Best Regards
=E9=99=88=E6=98=8E=E9=9B=A8 Mingyu Chen

Email:
chenmingyu@apache.org

----- End forwarded message -----

--yrj/dFKFPuw6o+aM
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEQVAQ8bojyMcg37H18yFyWZ2NLpcFAmJofbkACgkQ8yFyWZ2N
Lpes1AgAnpgDN8Un14ehJPfoNXJSt+16NgjmJ/8Yy7+/iFENPfjLt2qy/uwvzliA
QIkimJY7wrOVBA2bb2J+njoYZCYuROrrk2Nr/cCGGF8YQ75Gu/LALQ0Io/HwjShA
lbBFMXCg+8JAkTEVwOIZaGpa7HHE6p8aIIp8Qn7kTKt0YD5qlihG1eCDo+w1wX7L
y1JCs1sYXnr2+lfLnMUZ29S7Qj/LUZgQpOtBvzNnzkLmZCxq76XslD6AiQctjWPd
4jHIF4965YdaNxTMbz5asFxiXpEGyW9acWg4qK9ijY3FUyIHo+PYn7GdMYDe4oH/
e1LZ5zvTVxfQCicBLB21R7pyM4H7yg==
=r3/s
-----END PGP SIGNATURE-----

--yrj/dFKFPuw6o+aM--
