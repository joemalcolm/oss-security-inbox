Received: (qmail 32164 invoked by uid 550); 27 Jan 2026 17:19:43 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 13895 invoked from network); 27 Jan 2026 16:44:26 -0000
From: Sam James <sam@gentoo.org>
To: oss-security@lists.openwall.com
Organization: Gentoo
User-Agent: mu4e 1.12.15; emacs 31.0.50
Date: Tue, 27 Jan 2026 16:44:11 +0000
Message-ID: <87343rqa3o.fsf@gentoo.org>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="=-=-=";
	micalg=pgp-sha512; protocol="application/pgp-signature"
Subject: [oss-security] GnuPG security release

--=-=-=
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

GnuPG 2.5.17 has been released to fix a possible RCE:
* https://dev.gnupg.org/T8044 ("gpg-agent stack buffer overflow in pkdecryp=
t using KEM")

[Description for this one at the end, for the full quoted advisory.]

There's two other security-relevant bugs too:
* https://dev.gnupg.org/T8045 ("Stack-based buffer overflow in TPM2 `PKDECR=
YPT`")

> A stack-based buffer overflow exists in GnuPG=E2=80=99s tpm2daemon when h=
andling
> the PKDECRYPT command for TPM-backed RSA and ECC keys. A local attacker
> who can access the daemon=E2=80=99s Assuan socket can send an oversized c=
iphertext
> and trigger memory corruption, resulting in a crash and potentially
> arbitrary code execution. When a user stores private keys inside a TPM,
> GnuPG runs a helper process called tpm2daemon to perform cryptographic
> operations on their behalf. Other GnuPG components communicate with this
> daemon over Assuan, a local IPC protocol. During a PKDECRYPT request,
> tpm2daemon copies the attacker-supplied ciphertext into fixed-size TPM
> work buffers without validating that the ciphertext fits. If the supplied
> ciphertext is larger than the TPM buffer, the copy operation writes past
> the end of the stack buffer and corrupts adjacent stack memory. This
> affects both supported TPM decrypt paths: RSA (tpm2_rsa_decrypt) and ECC
> (tpm2_ecc_decrypt). Because the overflow occurs on the stack and is
> attacker-controlled, it is potentially exploitable for code execution
> inside the tpm2daemon process.

* https://dev.gnupg.org/T8049 ("Null pointer dereference with overlong
signature packet")

> Overlong signature packet length causes parse_signature to return
> success with sig->data[] left NULL, leading to a crash in later
> consumers.

The advisory is at https://dev.gnupg.org/T7996#212268 (not yet on
gnupg-announce ML). Quoting that, which discusses the main bug (T8044):

> These versions are affected:
>
>    GnuPG 2.5.16 (released 2025-12-30)
>    GnuPG 2.5.15 (released 2025-12-29)
>    GnuPG 2.5.14 (released 2025-11-19)
>    GnuPG 2.5.13 (released 2025-10-22)
>    Gpg4win 5.0.0 (released 2026-01-14)
>    Gpg4win 5.0.0-beta479 (released 2026-01-02)
>    Gpg4win 5.0.0-beta476 (released 2025-12-22)
>    Gpg4win 5.0.0-beta395 (released 2025-10-22)
>
> All other versions are not affected.
>
> A crafted CMS (S/MIME) EnvelopedData message carrying an oversized
> wrapped session key can cause a stack buffer overflow in gpg-agent
> during the PKDECRYPT--kem=3DCMS handling. This can easily be used for a
> DoS but, worse, the memory corruption can very likley also be used to
> mount a remote code execution attack.
>
> A CVE-id has not been assigned. We track this bug as T8044 under
> https://dev.gnupg.org/T8044. This vulnerability was discovered by:
> OpenAI Security Research. Their report was received on 2026-01-18;
> fixed versions released 2026-01-27.
>
> Solution:
>
> If an affected GnuPG version is used please update ASAP to the new
> version 2.5.17.
>
> If an affected version of Gpg4win is used please update ASAP to the new
> version 5.0.1.
>
> If an immediate update is not possible please remove the gpgsm or
> gpgsm.exe binary, this way the the bug can't be remotely triggered.

sam

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEBBAEWCgCpFiEEJaa7iN2bdkxrVUHCc4QJ9SDfkZAFAml461sbFIAAAAAABAAO
bWFudTIsMi41KzEuMTEsMiwyXxSAAAAAAC4AKGlzc3Vlci1mcHJAbm90YXRpb25z
Lm9wZW5wZ3AuZmlmdGhob3JzZW1hbi5uZXQyNUE2QkI4OEREOUI3NjRDNkI1NTQx
QzI3Mzg0MDlGNTIwREY5MTkwDxxzYW1AZ2VudG9vLm9yZwAKCRBzhAn1IN+RkIIP
AP0bYX5i3luQFnpz2aKvKOTvG+IfEC5lMuwitG1gCeoJ8AEAm8u/bh3MmZA5bhX8
ip78XlUrAYpjTsUcKynlAhcpQAQ=
=xmkk
-----END PGP SIGNATURE-----
--=-=-=--
