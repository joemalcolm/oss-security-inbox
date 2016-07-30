X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2504" "Saturday" "30" "July" "2016" "10:16:58" "-0400" "Hanno =?UTF-8?B?QsO2Y2s=?=" "hanno@hboeck.de" "<20160730101658.05bf4020@pc1>" "64" "Re: [oss-security] CVE Request: nettle's RSA code is vulnerable to cache sharing related attacks" "^Cc:" nil nil "7" "2016073014:16:58" "[oss-security] CVE Request: nettle's RSA code is vulnerable to cache sharing related attacks" (number mark "        hanno@hboeck Jul 30   64/2504  " thread-indent "\"Re: [oss-security] CVE Request: nettle's RSA code is vulnerable to cache sharing related attacks\"\n") "<700c370f-9fc4-7913-9d26-01574b218dba@redhat.com>" ("<700c370f-9fc4-7913-9d26-01574b218dba@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 22509 invoked by uid 550); 30 Jul 2016 14:17:12 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 22491 invoked from network); 30 Jul 2016 14:17:12 -0000
Message-ID: <20160730101658.05bf4020@pc1>
In-Reply-To: <700c370f-9fc4-7913-9d26-01574b218dba@redhat.com>
References: <700c370f-9fc4-7913-9d26-01574b218dba@redhat.com>
X-Mailer: Claws Mail 3.13.2 (GTK+ 2.24.30; x86_64-pc-linux-gnu)
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512; protocol="application/pgp-signature"; boundary="=_zucker.schokokeks.org-32733-1469888222-0001-2"
Cc: oss-security@lists.openwall.com,
  Mitre CVE assign department <cve-assign@mitre.org>
Date: Sat, 30 Jul 2016 10:16:58 -0400
From: Hanno =?UTF-8?B?QsO2Y2s=?= <hanno@hboeck.de>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE Request: nettle's RSA code is vulnerable to
 cache sharing related attacks
To: Huzaifa Sidhpurwala <huzaifas@redhat.com>

--=_zucker.schokokeks.org-32733-1469888222-0001-2
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Fri, 29 Jul 2016 14:19:38 +0530
Huzaifa Sidhpurwala <huzaifas@redhat.com> wrote:

> The following whitepaper talks about libgcrypt's RSA code being
> vulnerable to a cache timing attack, which the paper claims is fixed
> in 1.6.3.
>=20
> It seems nettle is also vulnerable to this flaw. Which was confirmed
> by upstream via:
> https://lists.lysator.liu.se/pipermail/nettle-bugs/2016/003093.html
>=20
> The above link also contains a proposed patch, will be committed soon.

FYI, this patch had some unintended side effects:
https://lists.lysator.liu.se/pipermail/nettle-bugs/2016/003104.html

They replaced GMP's mpz_powm with mpz_powm_sec, however the latter is
not equivalent. It requires odd moduli and will crash with a floating
point exception if the modulus is even.

This is actually a bug class that may turn out to be interesting, I
recently experienced something very similar (but more severe) in
matrixssl (writeup on that will follow as soon as I find time for it).
Bignum libraries have certain conditions on how their input is formed
and don't behave well if the input isn't what they expect. These
conditions usually make sense in the average use case, but not
neccessarily if an attacker can control some of the input.


--=20
Hanno B=C3=B6ck
https://hboeck.de/

mail/jabber: hanno@hboeck.de
GPG: BBB51E42

--=_zucker.schokokeks.org-32733-1469888222-0001-2
Content-Type: application/pgp-signature
Content-Transfer-Encoding: 7bit
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCgAGBQJXnLbaAAoJEKWIAHK7tR5CXu8P/1FIQQbmmkk0NST0nN9ZO3s4
aHciG1RdppQvkkDDXHbUDdzipSEPs9hHfu3eYRx/OxkkWFK7dhXlVfNIGZ804mwP
LO/vEkZzrM6Xj07HI2Ez899Eks4umFMVLEk3BbCXxEPrVkG6a2gHVpuObDjr1Vgq
BijsttoO2E5YIVcDdkr1THjJuNDirZqKJeC3KKGYKwGiRH9BrkXrVaBXxgelbRXl
9aN2OPlY6SBG68VSgS/P7Dlp9JP+fE0C8ZK06ZLEOnu81V1HNUS6ntVUh6EUXCTf
YVW2JXqp/4QOyFsvTxnstBOeM/5tSmEDSboVK0Ilg1zoDn/o4qyExrYtwITFfQpC
LxcORuty8w4GVr7Fokwe194Cz5anEZHvsfy2GRIGbURSQ4hGgPGnxlwxoLCVJeBh
5zcY4s2qrIPz1tYWkQwxu9YcQHAH7co39VD0HIxzSHTssM8U+2Ayjf84QKmyLGFb
4SUcjXPOG2YSTDA0PffGvcbo5Ig9VgWRMHR+yfuNLEU4L+wQzO1jer6tLW5oDC0W
tdNyM5Z1B74Qhr4cohQKPg7xwYZascUiBTsUgnotoUkOexwICksFmR1FhMVvltE8
gg2Bpz4mJ+bM0G6J5K2ZsnrIDNJ+V5s1YapRMGcrWCFN8Stw07El1z8XpYDbh0fa
ptzLXo7Pg57wV8xlQMh5
=B5rP
-----END PGP SIGNATURE-----

--=_zucker.schokokeks.org-32733-1469888222-0001-2--
