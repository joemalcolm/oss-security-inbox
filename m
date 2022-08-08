Received: (qmail 31752 invoked by uid 550); 8 Aug 2022 14:30:16 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30707 invoked from network); 8 Aug 2022 14:30:15 -0000
Date: Mon, 8 Aug 2022 16:28:41 +0200
From: Fabian Keil <freebsd-listen@fabiankeil.de>
To: oss-security@lists.openwall.com
Message-ID: <20220808162841.32d49ab9@fabiankeil.de>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="Sig_/1PYaUYG=YSQxj7TLELGrqoo";
 protocol="application/pgp-signature"; micalg=pgp-sha1
X-Df-Sender: Nzc1MDY3
Subject: [oss-security] wolfSSL 5.4.0 fixes CVE-2022-34293 and other issues

--Sig_/1PYaUYG=YSQxj7TLELGrqoo
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

Looks like wolfSSL 5.4.0 has been released weeks ago but I only
became aware of it today thanks to the FreeBSD ports commit mail [0].

According to the package status on the GitHub page [1] others projects
haven't imported the update yet either.

Quoting the project page:
| The wolfSSL embedded SSL library (formerly CyaSSL) is a lightweight
| SSL/TLS library written in ANSI C and targeted for embedded, RTOS,
| and resource-constrained environments - primarily because of its
| small size, speed, and feature set. It is commonly used in standard
| operating environments as well because of its royalty-free pricing
| and excellent cross platform support.

Quoting the commit message:
| Release 5.4.0 of wolfSSL embedded TLS has bug fixes and new features incl=
uding:
|
| Vulnerabilities
|
| * [High] Potential for DTLS DoS attack. In wolfSSL versions before 5.4.0 =
the
|   return-routability check is wrongly skipped in a specific edge case. Th=
e check
|   on the return-routability is there for stopping attacks that either con=
sume
|   excessive resources on the server, or try to use the server as an ampli=
fier
|   sending an excessive amount of messages to a victim IP. If using DTLS 1=
.0/1.2
|   on the server side users should update to avoid the potential DoS
|   attack. CVE-2022-34293
| * [Medium] Ciphertext side channel attack on ECC and DH operations. Users=
 on
|   systems where rogue agents can monitor memory use should update the ver=
sion of
|   wolfSSL and change private ECC keys. Thanks to Sen Deng from Southern
|   University of Science and Technology (SUSTech) for the report.
| * [Medium] Public disclosure of a side channel vulnerability that has bee=
n fixed
|   since wolfSSL version 5.1.0. When running on AMD there is the potential=
 to
|   leak private key information with ECDSA operations due to a ciphertext =
side
|   channel attack. Users on AMD doing ECDSA operations with wolfSSL versio=
ns less
|   than 5.1.0 should update their wolfSSL version used. Thanks to professor
|   Yinqian Zhang from Southern University of Science and Technology (SUSTe=
ch),
|   his Ph.D. student Mengyuan Li from The Ohio State University, and his M=
.S
|   students Sen Deng and Yining Tang from SUStech along with other collabo=
rators;
|   Luca Wilke, Jan Wichelmann and Professor Thomas Eisenbarth from the Uni=
versity
|   of Lubeck, Professor Shuai Wang from Hong Kong University of Science and
|   Technology, Professor Radu Teodorescu from The Ohio State University, H=
uibo
|   Wang, Kang Li and Yueqiang Cheng from Baidu Security and Shoumeng Yang =
from
|   Ant Financial Services Group.
| CVE-2020-12966
| https://www.amd.com/en/corporate/product-security/bulletin/amd-sb-1013
| CVE-2021-46744
| https://www.amd.com/en/corporate/product-security/bulletin/amd-sb-1033

In somewhat related news I started collecting Privoxy TLS benchmarks using
various TLS libraries a while ago ([3]). WolfSSL appears to be competitive.

Fabian

[0] <https://cgit.freebsd.org/ports/commit/?id=3D4850ea1e3ca82f63f94654cf1b=
9790ec476bbb18>
[1] <https://github.com/wolfSSL/wolfssl/>
[2] <https://www.fabiankeil.de/gehacktes/privoxy-tls-benchmarks/>

--Sig_/1PYaUYG=YSQxj7TLELGrqoo
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iF0EARECAB0WIQTKUNd6H/m3+ByGULIFiohV/3dUnQUCYvEdmgAKCRAFiohV/3dU
nQ+mAJ0ZGkoyohQs8Ww0isOEsj+fUMIFNQCeKo3YDk/NS3Z4CZWyc1FIObq2mCc=
=K5Ra
-----END PGP SIGNATURE-----

--Sig_/1PYaUYG=YSQxj7TLELGrqoo--
