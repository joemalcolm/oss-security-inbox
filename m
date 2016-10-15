X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["7898" "Saturday" "15" "October" "2016" "17:35:58" "+0200" "Hanno =?UTF-8?B?QsO2Y2s=?=" "hanno@hboeck.de" "<20161015173558.657276ad@pc1>" "241" "[oss-security] Update on MatrixSSL miscalculation (incomplete fix for CVE-2016-6887)" "^Cc:" nil nil "10" "2016101515:35:58" "[oss-security] Update on MatrixSSL miscalculation (incomplete fix for CVE-2016-6887)" (number mark "        hanno@hboeck Oct 15  241/7898  " thread-indent "\"[oss-security] Update on MatrixSSL miscalculation (incomplete fix for CVE-2016-6887)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 17446 invoked by uid 550); 15 Oct 2016 15:36:13 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 17411 invoked from network); 15 Oct 2016 15:36:11 -0000
Message-ID: <20161015173558.657276ad@pc1>
X-Mailer: Claws Mail 3.14.0 (GTK+ 2.24.31; x86_64-pc-linux-gnu)
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256; protocol="application/pgp-signature"; boundary="=_zucker.schokokeks.org-26778-1476545759-0001-2"
Cc: cve-assign@mitre.org
Date: Sat, 15 Oct 2016 17:35:58 +0200
From: Hanno =?UTF-8?B?QsO2Y2s=?= <hanno@hboeck.de>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Update on MatrixSSL miscalculation (incomplete fix for
 CVE-2016-6887)
To: oss-security@lists.openwall.com

--=_zucker.schokokeks.org-26778-1476545759-0001-2
Content-Type: multipart/mixed; boundary="MP_/+PihBfVc4qVjWUwoqrNPw1h"

--MP_/+PihBfVc4qVjWUwoqrNPw1h
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Content-Disposition: inline

https://blog.fuzzing-project.org/54-Update-on-MatrixSSL-miscalculation-inco=
mplete-fix-for-CVE-2016-6887.html

CVE-assigners: I think this could get a CVE as an incomplete fix for
CVE-2016-6887

----------

I recently [1] reported how I found various bugs in the bignum
implementation of MatrixSSL, some of them leading to remotely
exploitable vulnerabilities.

One of the bugs was that the modular exponentiation function -
pstm_exptmod() - produced wrong results for some inputs . This wasn't
really fixed, but only worked around by restricting the allowed size of
the modulus. Not surprisingly it is still possible to find inputs that
cause miscalculations (code). I reported this to MatrixSSL on August
1st.

Recently MatrixSSL released another update (3.8.6) fixing several
vulnerabilities reported by Craig Young from Tripwire [2]. However the
pstm_exptmod() bug is still there.

It is unclear how exploitable such bugs are, but given that it's used
in the context of cryptographic functions handling secret key material
this is clearly a reason for concern.

MatrixSSL has long advertised itself as a safer alternative to OpenSSL,
because it didn't suffer from the same kind of high severity bugs. I
think it has been sufficiently shown that this was due to the fact that
nobody was looking. But what's more worrying is that bugs they knew
about for several months now don't get fixed properly.

[1]
https://blog.fuzzing-project.org/51-Fun-with-Bignums-Crashing-MatrixSSL-and=
-more.html
[2]
http://www.tripwire.com/state-of-security/security-data-protection/cyber-se=
curity/flawed-matrixssl-code-highlights-need-for-better-iot-update-practice=
s/


--=20
Hanno B=C3=B6ck
https://hboeck.de/

mail/jabber: hanno@hboeck.de
GPG: FE73757FA60E4E21B937579FA5880072BBB51E42

--MP_/+PihBfVc4qVjWUwoqrNPw1h
Content-Type: text/x-c++src
Content-Transfer-Encoding: quoted-printable
Content-Disposition: attachment; filename=matrixssl-exptmod-bug-variant2.c

/* MatrixSSL miscalculation bug
 * demonstrating incomplete fix for Use CVE-2016-6887
 *
 * by Hanno B=C3=B6ck, license: CC0 / public domain
 */

#include <stdio.h>
#include <stdlib.h>
#include <openssl/bn.h>
#include <crypto/cryptoApi.h>

unsigned char a1[] =3D {
  0xe7, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
  0x00, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00,
  0x00, 0x00, 0x00, 0xff, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
  0x00, 0x00, 0xff, 0xff, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0xff,
  0xff, 0xff, 0xe1, 0x00, 0x00, 0x00, 0x00, 0x00, 0x40, 0x00, 0x14, 0x00,
  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x74, 0x00, 0x00,
  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
  0xb7, 0xcc, 0x03, 0x00, 0x00
};

unsigned int a1_len =3D 197;

unsigned char b1[] =3D {
  0x0c, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
  0x00, 0x00
};

unsigned int b1_len =3D 50;

unsigned char m1[] =3D {
  0xe7, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
  0x00, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xcc, 0xb9, 0x6c, 0x00,
  0x00, 0x00, 0x00, 0xff
};

unsigned int m1_len =3D 64;

/* test bn functions from openssl/libcrypto */
char *bntest(unsigned char *a_raw, int a_len, unsigned char *b_raw, int b_l=
en,
	     unsigned char *m_raw, int m_len)
{
	BN_CTX *bctx =3D BN_CTX_new();
	BIGNUM *a =3D BN_new();
	BIGNUM *b =3D BN_new();
	BIGNUM *m =3D BN_new();
	BIGNUM *res1 =3D BN_new();
	char *result;

	BN_bin2bn(a_raw, a_len, a);
	BN_bin2bn(b_raw, b_len, b);
	BN_bin2bn(m_raw, m_len, m);

	BN_mod_exp(res1, a, b, m, bctx);
	result =3D BN_bn2hex(res1);
	printf("openssl:\n%s\n", result);

	BN_free(a);
	BN_free(b);
	BN_free(m);
	BN_free(res1);
	BN_CTX_free(bctx);

	return result;
}

char *matrixtest(unsigned char *a_raw, int a_len, unsigned char *b_raw,
		 int b_len, unsigned char *m_raw, int m_len)
{
	unsigned char *rr =3D malloc(4096);
	char *buf, *buf_ptr;
	int i, s;
	pstm_int a, b, m, r;

	if (pstm_init_for_read_unsigned_bin(NULL, &a, a_len) < 0) {
		printf("pstm_init_for_read_unsigned_bin a error\n");
		return 0;
	}
	if (pstm_read_unsigned_bin(&a, a_raw, a_len) !=3D 0) {
		printf("pstm_read_unsigned_bin a error\n");
		return 0;
	}
	if (pstm_init_for_read_unsigned_bin(NULL, &b, b_len) < 0) {
		printf("pstm_init_for_read_unsigned_bin b error\n");
		return 0;
	}
	if (pstm_read_unsigned_bin(&b, b_raw, b_len) !=3D 0) {
		printf("pstm_read_unsigned_bin b error\n");
		return 0;
	}
	if (pstm_init_for_read_unsigned_bin(NULL, &m, m_len) < 0) {
		printf("pstm_init_for_read_unsigned_bin c error\n");
		return 0;
	}
	if (pstm_read_unsigned_bin(&m, m_raw, m_len) !=3D 0) {
		printf("pstm_read_unsigned_bin c error\n");
		return 0;
	}

	if (pstm_init(NULL, &r) !=3D 0) {
		printf("pstm_init r error\n");
		return 0;
	}

	if (pstm_exptmod(NULL, &a, &b, &m, &r) !=3D 0) {
		printf("pstm_exptmod error\n");
		return 0;
	}

	if (pstm_to_unsigned_bin(0, &r, rr) < 0) {
		printf("pstm_to_unsigned_bin error\n");
		return 0;
	}
	s =3D pstm_unsigned_bin_size(&r);
	buf =3D buf_ptr =3D malloc(s * 2 + 1);
	for (i =3D 0; i < s; i++) {
		buf_ptr +=3D sprintf(buf_ptr, "%02X", rr[i]);
	}

	printf("matrixssl:\n%s\n", buf);
	return buf;
}

int main(int argc, char *argv[])
{
	char *r1, *r2;

	r1 =3D matrixtest(a1, a1_len, b1, b1_len, m1, m1_len);

	r2 =3D bntest(a1, a1_len, b1, b1_len, m1, m1_len);

	if (strcmp(r1, r2) !=3D 0)
		printf("Results differ!\n");

	return 0;
}

--MP_/+PihBfVc4qVjWUwoqrNPw1h--

--=_zucker.schokokeks.org-26778-1476545759-0001-2
Content-Type: application/pgp-signature
Content-Transfer-Encoding: 7bit
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQIcBAEBCAAGBQJYAkzeAAoJEKWIAHK7tR5C7iEQAKwEXK5aXowRHO+ot+q+MOxM
e3aS6EBOFHGeXhzT2lqkfYlfJv01YH1FtvAoQmeuNOfJjdYGKbN8qkI6bAVAGQSs
bcri6nYJtWIwg4nQLmbDqYhIeBUThKE7sjuYUbu+ruB4C7CUD2K7KoslEH+AbtlN
6oh4JyUKKKPhKhqgn1CVBHhAnvK3jeiztceTavxs2FKRfdV9WYGB3yaO4NF/DJ9+
NtKCU5zQqxvbSaE1ePrJyDUzNRlpkvHfIUai8KX2ZrzlMsrKdq3jU6AVp57Auehb
oJ8B/B42y11rOtDOo+39ZJEdnpLrEJ1dK/vnKpQKSSGfqR7Ch7ib0I6GnXP78+HS
WSeTtENn3Q1M0CC+FSLfoh4iGUCyBXYF1x/HJkg08/AFiBm/XcdTfhCsyNMmVJBn
mHanWweQkjj75nkSOvtBXjPN2O91T5a9YX/KyEFNlD6asC9eAtKXY6L+Wv38i1En
aRME+uQAOsRCURP0ytZ5MmtLAt1g+c+ofEW9Vd+FGnY/Xv3A47ZDO8mrOndLkdDI
dGFex14DJ+RJfny0+IorWA9qrwn8K5DK+07ln1QwF4kY6ymp7K+f+vujHux/4djC
jT8prD61VnUrR9SS3MBcCPqZJLJTgp0IDJdxb/6CXJrWXECbPM8WfHJmMfStStRt
oUEMXZLGxPsRpJGCncAB
=lAxP
-----END PGP SIGNATURE-----

--=_zucker.schokokeks.org-26778-1476545759-0001-2--
