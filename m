X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["6381" "Monday" "8" "August" "2016" "23:15:10" "-0700" "Hanno =?UTF-8?B?QsO2Y2s=?=" "hanno@hboeck.de" "<20160808231510.6514ee1c@pc1>" "130" "[oss-security] MatrixSSL Bignum bugs" "^Date:" nil nil "8" "2016080906:15:10" "[oss-security] MatrixSSL Bignum bugs" (number mark "        hanno@hboeck Aug  8  130/6381  " thread-indent "\"[oss-security] MatrixSSL Bignum bugs\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 17863 invoked by uid 550); 9 Aug 2016 06:15:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 17744 invoked from network); 9 Aug 2016 06:15:26 -0000
Message-ID: <20160808231510.6514ee1c@pc1>
X-Mailer: Claws Mail 3.14.0 (GTK+ 2.24.30; x86_64-pc-linux-gnu)
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512; protocol="application/pgp-signature"; boundary="=_zucker.schokokeks.org-29352-1470723316-0001-2"
Date: Mon, 8 Aug 2016 23:15:10 -0700
From: Hanno =?UTF-8?B?QsO2Y2s=?= <hanno@hboeck.de>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] MatrixSSL Bignum bugs
To: OSS Security Mailinglist <oss-security@lists.openwall.com>,
  cve-assign@mitre.org

--=_zucker.schokokeks.org-29352-1470723316-0001-2
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Wrote that about a week ago and forgot to forward it here, can't hurt
if a few more people have a look.

--------

If you've been following my fuzzing work you will be aware that I've
fuzzed various bignum libraries and found several bugs by comparing
implementations against each other.

I recently had a look at the MatrixSSL's modular exponentiation
function, for reasons I'll explain later. I wrote a wrapper, similar to
previous experiments, comparing its result to OpenSSL.
https://github.com/hannob/bignum-fuzz/blob/master/openssl-vs-matrixssl-mode=
xp.c

I immediately noted that the pstm_exptmod() function of MatrixSSL has
certain limitations that weren't documented. If one tries to calculate
a modular exponentiation with the base equal to the modulus (a^b mod a,
code) it would return an error. If one tries to calculate a modular
exponentiation with the base zero (0^b mod a, code) it would crash with
an invalid free operation, potentially leading to memory corruption.
https://github.com/hannob/bignum-fuzz/blob/master/matrixssl-base-zero.c

In normal cryptographic operations these values should never appear.
But these values are in many situations attacker controlled. One
situation is during an RSA key exchange. What happens here is that a
client encrypts a random secret with the server's key. However a
malicious client could simply send a zero or the key's modulus here. I
created a patch against openssl that allows to test this. Both values
crash the MatrixSSL server. However the crash seems not to happen in
pstm_exptmod(), it hits another bug earlier. In both cases the crash
happens due to an invalid memory read in the function pstm_reverse(),
which is not prepared for zero-sized inputs and will underflow the len
variable.
https://github.com/hannob/bignum-fuzz/blob/master/openssl-break-rsa-values.=
diff

The crashes have been fixed in 3.8.4, but the pstm_exptmod() function
still doesn't accept these inputs. However it no longer crashes with a
zero base. It may be possible that these issues can be triggered
through other code paths. I haven't tested Diffie Hellman key
exchanges, which also allows putting attacker-controlled values into a
modular exponentiation.
http://www.matrixssl.org/blog/releases/matrixssl_3_8_4

This is an interesting class of bugs. Bignum functions often aren't
designed to handle all inputs and only consider values that make sense
in the context of the cryptographic operations. However if they are
attacker-controlled this may lead to problems. I just discovered a
somewhat similar issue in Nettle. They switched their RSA
implementation from GMP's mpz_powm() function to mpz_powm_sec(), which
is supposed to be sidechannel resistant. However mpz_powm_sec() is no
drop-in replacement. Unlike mpz_pown() it doesn't accept even moduli
and crashes with a floating point error. Therefore when trying to use a
specifically crafted RSA key with an even modulus this will crash.
Fortunately this was discovered before the change made it into a
release.
https://lists.lysator.liu.se/pipermail/nettle-bugs/2016/003104.html

But back to MatrixSSL: Independent of these corner case values that
lead to failures I was able to identify an input value that caused a
wrong calculation result.

There's a particularly severe risk with calculation errors in the
modulo exponentiation when it comes to the RSA algorithm. A common way
to speed up the calculation of RSA signatures is an algorithm based on
the chinese remainder theorem (CRT) that splits it up into two smaller
calculations. However if one of these calculations goes wrong an
attacker can learn the private key. Last year Florian Weimer observed
that various devices had this error and he could extract their keys. He
recently mentioned on the oss-security mailing list that he also
observed this in devices using MatrixSSL.
http://www.openwall.com/lists/oss-security/2016/06/27/1

The way the MatrixSSL team "fixed" the miscalculation issue is not
really satisfying: They now restrict the input to the pstm_exptmod()
function to a set of bit sizes (512, 1024, 1536, 2048, 3072, 4096). My
test input had a different bit size, therefore I cannot reproduce the
miscalculation any more, but the underlying bug is most likely still
there. I've tried to find inputs matching these restrictions and still
causing wrong results, but without success yet. Independent of that the
restriction means that connections to sites with unusual key sizes or
Diffie Hellman moduli will no longer work. While they are not common,
there is no rule that RSA keys or Diffie Hellman moduli need to have
certain sizes.

Despite the fact that the bug may be still there the CRT attack will
probably no longer work. A protection mechanism against that was
implemented in version 3.8.3.

I got told by the MatrixSSL developers that their bignum code is based
on libtommath. Therefore I also checked if the same bugs appeared
there. That wasn't the case. The test input causing wrong results in
MatrixSSL were correctly calculated by libtommath and it was also
capable of correctly using a zero base or a base equal to the modulus.
--=20
Hanno B=C3=B6ck
https://hboeck.de/

mail/jabber: hanno@hboeck.de
GPG: BBB51E42

--=_zucker.schokokeks.org-29352-1470723316-0001-2
Content-Type: application/pgp-signature
Content-Transfer-Encoding: 7bit
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCgAGBQJXqXTuAAoJEKWIAHK7tR5ChP0P/1Cj5ul6Yk64mXiq9bvzE+yw
rYZjqDucZOr1BhzmipvwtsHcDmxOrxb2ODBBOutDkUl+XMCKc01793f/HMLz11Ez
txKL9SMQ5ikdJbTsP+r02hkrE5I7f/TslynIzyEQ2Mr8fYdz+WR4bMCmLqcpTJdw
4QsYQPdMIzALHZSxq2/skym2SqoicAhErJLH+AsGXYT7q0wseKnrU7PMJuvL1Xgx
cXtuIaa5WLAjiSLvygrG1/DaVP77nTUfqNdQYGJCSufg3v9ThVHomDbMCYTkdZ/C
Vj4+uS05PZW5sbSN3U2vyfumyjiVTo9Cb+eG07hC+2mlPyNDix2qH0WIveaPr5Im
oFkU90XHJnwfhUCbtj9y48eO6SyHHXIu+fUWaMBZ7GkKmL0vKEj77WJNR4+Lq9Dw
5dgsDmVONPs1YXrTLA+y2XRR1lU7f8N9Uod1s9ZzUU6S0MVDRFYAJI7nv7ZBwifj
0YGKt8NLewwjHzxkGOWtei2VyDUxSaV2IEo7TQdRsRNf2fqpVkhSG77YxdixCf4p
IU1tPVFS9kgF+JH2SfF8LFjExairLNcKmaXMWclMxQ5EXzpDSJuXjenY9aPjrIyA
ZI2X0wJmbjRMAI3kwvF8dX+dd9A3rOIxZsfhP6uLCUuEnv51JBi6B+ZwnmS3JL5w
/UQ2ImAX/ireJS497u88
=C6kn
-----END PGP SIGNATURE-----

--=_zucker.schokokeks.org-29352-1470723316-0001-2--
