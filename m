X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2388" "Tuesday" "15" "August" "2017" "20:54:01" "+0200" "chbi@chbi.eu" "chbi@chbi.eu" "<17c021e8-7b27-32ef-cfa1-1bbc51389359@chbi.eu>" "75" "[oss-security] CVE-2017-12850, CVE-2017-12851: Privilege Escalation in Kanboard <= v1.0.45" nil nil nil "8" "2017081518:54:01" "[oss-security] CVE-2017-12850, CVE-2017-12851: Privilege Escalation in Kanboard <= v1.0.45" (number mark "U       chbi@chbi.eu Aug 15   75/2388  " thread-indent "\"[oss-security] CVE-2017-12850, CVE-2017-12851: Privilege Escalation in Kanboard <= v1.0.45\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 10138 invoked by uid 550); 15 Aug 2017 18:56:42 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9371 invoked from network); 15 Aug 2017 18:54:33 -0000
To: oss-security@lists.openwall.com
From: chbi@chbi.eu
Message-ID: <17c021e8-7b27-32ef-cfa1-1bbc51389359@chbi.eu>
Date: Tue, 15 Aug 2017 20:54:01 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.2.1
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="JLVwDjtRSRO0a6rmW1Ed90L0oi6uV2Q25"
Subject: [oss-security] CVE-2017-12850, CVE-2017-12851: Privilege Escalation in Kanboard <=
 v1.0.45

--JLVwDjtRSRO0a6rmW1Ed90L0oi6uV2Q25
Content-Type: multipart/mixed; boundary="TxWCb4d9kUjbWV3QO6BenVT891o9fs2TJ";
 protected-headers="v1"
From: chbi@chbi.eu
To: oss-security@lists.openwall.com
Message-ID: <17c021e8-7b27-32ef-cfa1-1bbc51389359@chbi.eu>
Subject: CVE-2017-12850, CVE-2017-12851: Privilege Escalation in Kanboard <=
 v1.0.45

--TxWCb4d9kUjbWV3QO6BenVT891o9fs2TJ
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

Hi,

there are two security issues in Kanboard <=3D v1.0.45 (https://kanboard.ne=
t)


CVE-2017-12850:
By altering form data an authenticated standard user can set a new
password for any other user (including the admin) to takeover the account.

Fix:
https://github.com/kanboard/kanboard/commit/88dd6abbf3f519897f2f6280e95c9ee=
c9123a4ae


CVE-2017-12851:
By altering form data an authenticated standard user can change the mail
address of the admin account to set a new password via "Forgot
password?" to takeover the admin account.

Fix:
https://github.com/kanboard/kanboard/commit/b79b18efd7a1a8b591753a4eddd473f=
88d55b7df


Both issues are fixed in Kanboard v1.0.46.


--=20
chbi
https://chbi.eu

GPG: 3DE9 9187 4BE9 EAE6 3CA8  DC20 BA7B 93F9 9037 AE7E
     https://chbi.eu/chbi.asc


--TxWCb4d9kUjbWV3QO6BenVT891o9fs2TJ--

--JLVwDjtRSRO0a6rmW1Ed90L0oi6uV2Q25
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEPemRh0vp6uY8qNwgunuT+ZA3rn4FAlmTQ1UACgkQunuT+ZA3
rn6BuxAAiQMTA7EbxnUsKvNyf6uBqLcHExq20QEIdI0dHF1RG2SSyDudAkrPJTFp
pHDSZe2ZRdMEpVJQ6eNVQfLhBZpnRV4PPgIvpk0aKIe2MD3Iv6bE9LLEL+rRXttL
o8IIdWxgq4OLRHi8nRR5pHr7O1gRqNCLXpyUzJ8Ljyq4qFnzJTaEDCXVfA+7bHw1
34+uQSXzMcpVrS1eqyjBm8vB9sTTkPX3I9u+N1/6YMYlPKj1Mz0DebqH6FagxRx2
HXQO4H6eAkxBCyLAlmZW6aEpL6XL9xCzo0B1OWIY2ke3zhpJ8YHGKhxs2hs69uGD
MAHkpuTJz7KaXFi/YqE95Q4nqQJmMsnhqfBIDgpgXkV3/m0OXjWm3Mjzd5VOoIFY
diqPVAzwKv9GekoXKLaL/srMqzQBVPR5Ngu+6H44YFuWmpDXoySOUK3sKHPyUaKz
nMSo/JI/v77ZDTxYJHm0vU0tRMLjrX/8q7E+GNtfWGTHuiYVzbqFapXtohOcs6fZ
tW7btjsSD9LN/uqpgPbgTT0SbgldxrgbZK4jTzEJOCD+IHUtt0yASf0xZjaH4cWj
e/pi/rU3C23v9UK0KuEsPE84f6gDzAru5sdOgHGlJSrN8Ugn8EefYfz+kGGfx4nV
z6SvstnB85lbJxOvf+Nf2/R8YQ+gPZBVsQvlAi2r6H9dZaPoVeA=
=my02
-----END PGP SIGNATURE-----

--JLVwDjtRSRO0a6rmW1Ed90L0oi6uV2Q25--
