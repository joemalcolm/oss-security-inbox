X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["5590" "Thursday" "6" "July" "2017" "14:46:03" "+0200" "Solar Designer" "solar@openwall.com" "<20170706124603.GA4970@openwall.com>" "160" "[oss-security] Libgcrypt 1.7.8 fixes \"Sliding right into disaster\" RSA side-channel attack (CVE-2017-7526)" nil nil nil "7" "2017070612:46:03" "[oss-security] Libgcrypt 1.7.8 fixes \"Sliding right into disaster\" RSA side-channel attack (CVE-2017-7526)" (number mark "U       solar@openwa Jul  6  160/5590  " thread-indent "\"[oss-security] Libgcrypt 1.7.8 fixes \"Sliding right into disaster\" RSA side-channel attack (CVE-2017-7526)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 20302 invoked by uid 550); 6 Jul 2017 12:49:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 18126 invoked from network); 6 Jul 2017 12:46:21 -0000
Date: Thu, 6 Jul 2017 14:46:03 +0200
From: Solar Designer <solar@openwall.com>
To: oss-security@lists.openwall.com
Message-ID: <20170706124603.GA4970@openwall.com>
Mime-Version: 1.0
Content-Type: multipart/mixed; boundary="fUYQa+Pmc3FrFX/N"
Content-Disposition: inline
User-Agent: Mutt/1.4.2.3i
Subject: [oss-security] Libgcrypt 1.7.8 fixes "Sliding right into disaster" RSA side-channel attack (CVE-2017-7526)

--fUYQa+Pmc3FrFX/N
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

Last week, Libgcrypt 1.7.8 was announced as follows:

https://lists.gnupg.org/pipermail/gnupg-announce/2017q2/000408.html

| Noteworthy changes in version 1.7.8 (2017-06-29)  [C21/A1/R8]
| ===================================
| 
|  * Bug fixes:
| 
|    - Mitigate a flush+reload side-channel attack on RSA secret keys
|      dubbed "Sliding right into disaster".  For details see
|      <https://eprint.iacr.org/2017/627>.  [CVE-2017-7526]
| 
| 
| Note that this side-channel attack requires that the attacker can run
| arbitrary software on the hardware where the private RSA key is used.

This affects versions of GnuPG 2 that bundle or otherwise use versions
of Libgcrypt older than 1.7.8.

In a discussion on gnupg-users, Werner Koch answered that GnuPG 1.4
(which does not yet use the separate Libgcrypt library) is "Maybe"
vulnerable to this attack as well, "And probably also to a lot of other
local side channel attacks":

https://lists.gnupg.org/pipermail/gnupg-users/2017-July/058598.html

As referenced further in that thread, Marcus Brinkmann came up with a
backport of the fix from Libgcrypt 1.7.8:

https://dev.gnupg.org/rC8725c99ffa41778f382ca97233183bcd687bb0ce

to GnuPG 1.4:

https://dev.gnupg.org/D438

but it's unclear whether Werner would want to merge it and release an
update of GnuPG 1.4 or not (there's a discussion in the comments at the
URL above).

To keep the context recorded in here (in case any of the above URLs are
gone later), here's the Libgcrypt commit, where the commit message
helpfully quotes the paper's abstract:

| Authored by gniibe on Thu, Jun 29, 4:11 AM.
| 
| Description
| 
| rsa: Add exponent blinding.
| 
| * cipher/rsa.c (secret_core_crt): Blind secret D with randomized
| nonce R for mpi_powm computation.
| 
| The paper describing attack: https://eprint.iacr.org/2017/627
| 
| Sliding right into disaster: Left-to-right sliding windows leak
| by Daniel J. Bernstein and Joachim Breitner and Daniel Genkin and
| Leon Groot Bruinderink and Nadia Heninger and Tanja Lange and
| Christine van Vredendaal and Yuval Yarom
| 
| It is well known that constant-time implementations of modular
| exponentiation cannot use sliding windows. However, software
| libraries such as Libgcrypt, used by GnuPG, continue to use sliding
| windows. It is widely believed that, even if the complete pattern of
| squarings and multiplications is observed through a side-channel
| attack, the number of exponent bits leaked is not sufficient to
| carry out a full key-recovery attack against RSA. Specifically,
| 4-bit sliding windows leak only 40% of the bits, and 5-bit sliding
| windows leak only 33% of the bits.
| 
| In this paper we demonstrate a complete break of RSA-1024 as
| implemented in Libgcrypt. Our attack makes essential use of the fact
| that Libgcrypt uses the left-to-right method for computing the
| sliding-window expansion. We show for the first time that the
| direction of the encoding matters: the pattern of squarings and
| multiplications in left-to-right sliding windows leaks significantly
| more information about exponent bits than for right-to-left. We show
| how to incorporate this additional information into the
| Heninger-Shacham algorithm for partial key reconstruction, and use
| it to obtain very efficient full key recovery for RSA-1024. We also
| provide strong evidence that the same attack works for RSA-2048 with
| only moderately more computation.
| 
| Exponent blinding is a kind of workaround to add noise. Signal (leak)
| is still there for non-constant-time implementation.
| 
|     Co-authored-by: Werner Koch <wk@gnupg.org>
|     Signed-off-by: NIIBE Yutaka <gniibe@fsij.org>

I've attached Marcus' patch for GnuPG 1.4 from D438 referenced above.

Alexander

--fUYQa+Pmc3FrFX/N
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="gnupg-1.4-D438.diff"

diff --git a/cipher/rsa.c b/cipher/rsa.c
--- a/cipher/rsa.c
+++ b/cipher/rsa.c
@@ -29,6 +29,7 @@
 #include <string.h>
 #include "util.h"
 #include "mpi.h"
+#include "../mpi/mpi-internal.h"
 #include "cipher.h"
 #include "rsa.h"
 
@@ -325,14 +326,38 @@
 # endif /* USE_BLINDING */
 
     /* RSA secret operation:  */
-    /* m1 = c ^ (d mod (p-1)) mod p */
+    MPI D_blind = mpi_alloc_secure (nlimbs);
+    MPI rr;
+    unsigned int rr_nbits;
+
+    rr_nbits = mpi_get_nbits (skey->p) / 4;
+    if (rr_nbits < 96)
+      rr_nbits = 96;
+    rr = mpi_alloc_secure ( (rr_nbits + BITS_PER_MPI_LIMB-1)/BITS_PER_MPI_LIMB );
+
+    /* d_blind = (d mod (p-1)) + (p-1) * r            */
+    /* m1 = c ^ d_blind mod p */
+    randomize_mpi (rr, rr_nbits, 0);
+    mpi_set_highbit (rr, rr_nbits - 1);
     mpi_sub_ui( h, skey->p, 1  );
+    mpi_mul ( D_blind, h, rr );
     mpi_fdiv_r( h, skey->d, h );
-    mpi_powm( m1, input, h, skey->p );
-    /* m2 = c ^ (d mod (q-1)) mod q */
+    mpi_add ( D_blind, D_blind, h );
+    mpi_powm ( m1, input, D_blind, skey->p );
+
+    /* d_blind = (d mod (q-1)) + (q-1) * r            */
+    /* m2 = c ^ d_blind mod q */
+    randomize_mpi (rr, rr_nbits, 0);
+    mpi_set_highbit (rr, rr_nbits - 1);
     mpi_sub_ui( h, skey->q, 1  );
+    mpi_mul ( D_blind, h, rr );
     mpi_fdiv_r( h, skey->d, h );
-    mpi_powm( m2, input, h, skey->q );
+    mpi_add ( D_blind, D_blind, h );
+    mpi_powm ( m2, input, D_blind, skey->q );
+
+    mpi_free ( rr );
+    mpi_free ( D_blind );
+
     /* h = u * ( m2 - m1 ) mod q */
     mpi_sub( h, m2, m1 );
     if ( mpi_is_neg( h ) )


--fUYQa+Pmc3FrFX/N--
