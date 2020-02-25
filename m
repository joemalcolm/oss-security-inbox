X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4345" "Tuesday" "25" "February" "2020" "19:04:01" "+0100" "Florian Weimer" "fweimer@redhat.com" nil "115" nil "^Date:" nil nil "2" nil nil (number mark "        fweimer@redh Feb 25  115/4345  " thread-indent "\"[oss-security] CVE-2020-9391: Ignoring the top byte of addresses in brk causes heap corruption (AArch64)\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2020-9391: Ignoring the top byte of addresses in brk causes heap corruption (AArch64)" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 1026 invoked by uid 550); 25 Feb 2020 18:04:23 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 32720 invoked from network); 25 Feb 2020 18:04:22 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1582653851;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=/N2ZLktdpsMKqSnuGJgrOI8d8MTlVecqhXgjlYaGsmE=;
	b=VVcaHmBw472UbPqBz5wHPdnlJnjgOSvPfGrN59C3qBxCRt0dIFX1n8NgYYmS5XJpKL7Fut
	ooeWJEdf1CsatFPtjlB2kTi2c8VvbndEabywLQpJBvXJbUr0aZoLP1wOpep6QfRc3+fq7T
	IbuzaBaPcuyJFuszOY+nLxvj2rlPPl4=
X-MC-Unique: OI6O1kVcNReksHvylTMR_A-1
Message-ID: <87tv3ebl2m.fsf@oldenburg2.str.redhat.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.3 (gnu/linux)
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable
Date: Tue, 25 Feb 2020 19:04:01 +0100
From: Florian Weimer <fweimer@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE-2020-9391: Ignoring the top byte of addresses in brk causes heap corruption (AArch64)
To: oss-security@lists.openwall.com

AArch64 has an architectural feature where the top byte of a 64-bit
pointer is ignored.  Therefore, applications can use this as storage
space for colored pointers without having to mask those bits.  Recent
Linux kernels (starting with 5.4) ignore the top byte in certain system
call arguments as well.  This was also done for the brk system call, but
there it can result in moving the brk in the wrong direction (downward
instead of upward).

Here's a test program that shows the problem with the glibc allocator on
AArch64:

#include <err.h>
#include <stdlib.h>
#include <stdio.h>
#include <stddef.h>
#include <string.h>

int
main (void)
{
  enum { size =3D 4096, count =3D 128 };
  void *array[count];
  for (int i =3D 0; i < count; ++i)
    {
      array[i] =3D malloc (size);
      if (array[i] =3D=3D NULL)
        err (1, "malloc (%d)", size);
    }

  void *p =3D malloc ((2ULL << 56) - size * count);
  printf ("p =3D %p\n", p);
  if (p !=3D NULL)
    explicit_bzero (p, 1024);

  for (int i =3D 0; i < count; ++i)
    explicit_bzero (array[i], size);

  for (int i =3D 0; i < count; ++i)
    free (array[i]);

  free (p);

  return 0;
}

With Fedora's 5.6.0-0.rc1.git0.1.fc32.aarch64 kernel, this is the result.

brk(NULL)                               =3D 0x2c490000
brk(0x2c4b1000)                         =3D 0x2c4b1000
brk(NULL)                               =3D 0x2c4b1000
brk(NULL)                               =3D 0x2c4b1000
brk(0x2c4d2000)                         =3D 0x2c4d2000
brk(NULL)                               =3D 0x2c4d2000
brk(0x2c4f3000)                         =3D 0x2c4f3000
brk(NULL)                               =3D 0x2c4f3000
brk(0x2c514000)                         =3D 0x2c514000
mmap(NULL, 144115188075335680, PROT_READ|PROT_WRITE, MAP_PRIVATE|MAP_ANONYM=
OUS, -1, 0) =3D -1 ENOMEM (Cannot allocate memory)
brk(NULL)                               =3D 0x2c514000
brk(0x20000002c4b1000)                  =3D 0x2c4b1000
mmap(NULL, 144115188075466752, PROT_READ|PROT_WRITE, MAP_PRIVATE|MAP_ANONYM=
OUS, -1, 0) =3D -1 ENOMEM (Cannot allocate memory)
--- SIGSEGV {si_signo=3DSIGSEGV, si_code=3DSEGV_MAPERR, si_addr=3D0x2c510a9=
8} ---
+++ killed by SIGSEGV (core dumped) +++

The last brk call moved the break down because the top byte has been
ignored by the kernel.  glibc detects the brk result as a failure, but
at that point, the damage is already done, and the heap is corrupted.

Originally reported by Victor Stinner as
<https://bugzilla.redhat.com/show_bug.cgi?id=3D1797052>.  Additional
analysis by DJ Delorie.

The upstream fix is here:

commit dcde237319e626d1ec3c9d8b7613032f0fd4663a
Author: Catalin Marinas <catalin.marinas@arm.com>
Date:   Wed Feb 19 12:31:56 2020 +0000

    mm: Avoid creating virtual address aliases in brk()/mmap()/mremap()
=20=20=20=20
    Currently the arm64 kernel ignores the top address byte passed to brk(),
    mmap() and mremap(). When the user is not aware of the 56-bit address
    limit or relies on the kernel to return an error, untagging such
    pointers has the potential to create address aliases in user-space.
    Passing a tagged address to munmap(), madvise() is permitted since the
    tagged pointer is expected to be inside an existing mapping.
=20=20=20=20
    The current behaviour breaks the existing glibc malloc() implementation
    which relies on brk() with an address beyond 56-bit to be rejected by
    the kernel.
=20=20=20=20
    Remove untagging in the above functions by partially reverting commit
    ce18d171cb73 ("mm: untag user pointers in mmap/munmap/mremap/brk"). In
    addition, update the arm64 tagged-address-abi.rst document accordingly.
=20=20=20=20
    Link: https://bugzilla.redhat.com/1797052
    Fixes: ce18d171cb73 ("mm: untag user pointers in mmap/munmap/mremap/brk=
")
    Cc: <stable@vger.kernel.org> # 5.4.x-
    Cc: Florian Weimer <fweimer@redhat.com>
    Reviewed-by: Andrew Morton <akpm@linux-foundation.org>
    Reported-by: Victor Stinner <vstinner@redhat.com>
    Acked-by: Will Deacon <will@kernel.org>
    Acked-by: Andrey Konovalov <andreyknvl@google.com>
    Signed-off-by: Catalin Marinas <catalin.marinas@arm.com>
    Signed-off-by: Will Deacon <will@kernel.org>

<https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/=
?id=3Ddcde237319e626d1ec3c9d8b7613032f0fd4663a>

Thanks,
Florian

