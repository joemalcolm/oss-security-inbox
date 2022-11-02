Received: (qmail 3524 invoked by uid 550); 2 Nov 2022 14:09:35 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3503 invoked from network); 2 Nov 2022 14:09:35 -0000
Date: Wed, 2 Nov 2022 15:09:21 +0100
From: Hanno =?iso-8859-1?q?B=F6ck?= <hanno@hboeck.de>
To: oss-security@lists.openwall.com
Message-ID: <20221102150921.3ab3f2d0@computer>
In-Reply-To: <20221101170833.GA10470@openwall.com>
References: <20221101170833.GA10470@openwall.com>
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.34; x86_64-pc-linux-gnu)
Mime-Version: 1.0
Content-Type: multipart/signed; protocol="application/pgp-signature";
 micalg=pgp-sha256; boundary="=_zucker.schokokeks.org-8868-1667398163-0001-2"
Subject: Re: [oss-security] OpenSSL X.509 Email Address 4-byte Buffer
 Overflow (CVE-2022-3602), X.509 Email Address Variable Length Buffer
 Overflow (CVE-2022-3786)

--=_zucker.schokokeks.org-8868-1667398163-0001-2
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

FWIW it only takes a basically trivial fuzz target on the affected
function to find this bug with libfuzzer.

In OpenSSL 3.0.5 code do:

./config no-shared CC=3Dclang CFLAGS=3D"-fsanitize=3Dfuzzer-no-link,address"
clang -fsanitize=3Dfuzzer,address -I$(pwd)/include punyfuzz.c libcrypto.a

with this in punyfuzz.c:

#include <stddef.h>
#include <stdint.h>
#include "crypto/punycode.h"

int LLVMFuzzerTestOneInput(const uint8_t *data, size_t size) {
  unsigned int bar[32];
  unsigned int x =3D 32;
  ossl_punycode_decode((const char *)data, size, bar, &x);
  return 0;
}

Run ./a.out and it'll crash with an ASAN error almost instantly.

--=20
Hanno B=C3=B6ck
https://hboeck.de/

--=_zucker.schokokeks.org-8868-1667398163-0001-2
Content-Type: application/pgp-signature
Content-Transfer-Encoding: 7bit
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEn3wfQCCb9MicJwD8dkhfABMwL8oFAmNiehEACgkQdkhfABMw
L8qp2xAAiuDFK3Gc8Qq13swaLmh0tuRz0/EWnnbadivxtY7bJ2nUZjDjQXTlr8Cd
VgKiy9H6TDOw5B1aR1q+EiQs4VIIZPMA8FnftyRgA/GuckaTs7YYGpai3LNxOtZE
h/ZwpjrKzZ5sHEYev029eY+NFFNfzTKhc+GU7UgFTD1bZTlFABcN71LIZYdQ5BR3
YXjlVR8RYAwurXcAwp+wTmYQnWrGttYMNKQIv78gEKxcDpIIUmPPcAo93piKAc98
y/LrSLcG5t2ZfRh8qyPLR0Tvu3xpWentWYus/6JV7dvoL2vESc/926f5pZkVhgQC
/1ATeF6o9m9oSEjeZFxPf6LW7ez6lKpCGXurTCGgZmCKPZ5jtxNpevZGPOfFqUYp
zNlllkXy8H6s9lLt+p/TbYPBJ5waznMWoSwWMS7FTo4HxkW4hJAZVy1F7N1Kb2jP
b9+NOZQNJnZOgkCs1U/5NCxLTz+kSem1kl1AZxVrl7XDqdcwPU1CEUTLR8X2eQ5b
4TL4mHKh/hEIM+ZZNv+0k9bu+PdLSvnxb527fnaXXjECQTENffEa5La0o3xpAvdk
PMX9WjvOjeyAQH9+4ksCDRLzI0DjGDT03oPkusLRYUKpxut/befFjNbOJG5KZseM
Yhs6L/zt8ywWkIhQz6JqPT9TPag0BDmkv6a3PuIsQRym/7DQyCY=
=T3J/
-----END PGP SIGNATURE-----

--=_zucker.schokokeks.org-8868-1667398163-0001-2--
