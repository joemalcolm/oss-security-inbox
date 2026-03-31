Received: (qmail 1219 invoked by uid 550); 31 Mar 2026 18:33:54 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 14015 invoked from network); 31 Mar 2026 18:20:27 -0000
From: Sam James <sam@gentoo.org>
To: oss-security@lists.openwall.com
Cc: xz@tukaani.org
Organization: Gentoo
References: <20260331195829.5d023064.lasse.collin@tukaani.org>
User-Agent: mu4e 1.12.15; emacs 31.0.50
Date: Tue, 31 Mar 2026 19:20:13 +0100
Message-ID: <87o6k3274y.fsf@gentoo.org>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="=-=-=";
	micalg=pgp-sha512; protocol="application/pgp-signature"
Subject: [oss-security] Fwd: XZ Utils 5.8.3 and a security fix

--=-=-=
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable

Hi,

We've released a new xz version with some minor security fixes. It's not
believed that any application is actually vulnerable to the main one,
nor the other. It requires an unusual use of a rarely called API.

-------------------- Start of forwarded message --------------------
Date: Tue, 31 Mar 2026 19:58:29 +0300
From: Lasse Collin <lasse.collin@tukaani.org>
To: xz-announce@tukaani.org
Subject: XZ Utils 5.8.3 and a security fix

In XZ Utils 5.8.2 and older, a buffer overflow can occur in
lzma_index_append() under conditions that likely don't exist in any
real-world application (CVE-2026-34743). No new 5.2.x, 5.4.x, or 5.6.x
releases will be made, but the fix is in the v5.2, v5.4, and v5.6
branches in the xz Git repository. For details, see the NEWS entry
below or the security advisory:

    https://tukaani.org/xz/index-append-overflow.html

XZ Utils 5.8.3 is available at <https://tukaani.org/xz/#_stable>.

5.8.3 (2026-03-31)

    * liblzma:

        - Fix a buffer overflow in lzma_index_append(): If
          lzma_index_decoder() was used to decode an Index that
          contained no Records, the resulting lzma_index was left in
          a state where where a subsequent lzma_index_append() would
          allocate too little memory, and a buffer overflow would occur.

          The lzma_index functions are rarely used by applications
          directly. In the few applications that do use these functions,
          the combination of function calls required to trigger this bug
          are unlikely to exist, because there typically is no reason to
          append Records to a decoded lzma_index. Thus, it's likely that
          this bug cannot be triggered in any real-world application.

          The bug was reported and discovered by Cantina using their
          AppSec agent, Apex.

        - Fix the build on Windows ARM64EC.

        - Add "License: 0BSD" to liblzma.pc.

    * xz:

        - Fix invalid memory access in --files and --files0. All of
          the following must be true to trigger it:

            1. A string being read (which supposedly is a filename) is
               at least SIZE_MAX / 2 bytes long. This size is plausible
               on 32-bit platforms (2 GiB - 1 B).

            2. realloc(ptr, SIZE_MAX / 2 + 1) must succeed.
               On glibc >=3D 2.30 it shouldn't because the value
               exceeds PTRDIFF_MAX.

            3. An integer overflow results in a realloc(ptr, 0) call.
               If it doesn't return NULL, then invalid memory access
               will occur.

        - On QNX, don't use fsync() on directories because it fails.

    * Autotools: Enable 32-bit x86 assembler on Hurd by default.
      It was already enabled in the CMake-based build.

    * Translations: Add Arabic man page translations.

--=20
Lasse Collin

-------------------- End of forwarded message --------------------

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEBBAEWCgCpFiEEJaa7iN2bdkxrVUHCc4QJ9SDfkZAFAmnMEF0bFIAAAAAABAAO
bWFudTIsMi41KzEuMTIsMiwyXxSAAAAAAC4AKGlzc3Vlci1mcHJAbm90YXRpb25z
Lm9wZW5wZ3AuZmlmdGhob3JzZW1hbi5uZXQyNUE2QkI4OEREOUI3NjRDNkI1NTQx
QzI3Mzg0MDlGNTIwREY5MTkwDxxzYW1AZ2VudG9vLm9yZwAKCRBzhAn1IN+RkM2Z
AQCe2HZOXi25iTI0F91dsyCl5Grc7AFeKRv+UbiNiwuJAgD9F3LuFNewNcUFSZFb
bbSQCFeGMcqhSMlr6Qxjp1oSQQ4=
=4v45
-----END PGP SIGNATURE-----
--=-=-=--
