Received: (qmail 16165 invoked by uid 550); 13 Apr 2025 01:12:12 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 15959 invoked from network); 13 Apr 2025 01:12:03 -0000
Date: Sun, 13 Apr 2025 03:11:48 +0200
From: Solar Designer <solar@openwall.com>
To: oss-security@lists.openwall.com
Cc: Qualys Security Advisory <qsa@qualys.com>
Message-ID: <20250413011148.GA16814@openwall.com>
References: <20250122134128.GA29327@localhost.localdomain>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250122134128.GA29327@localhost.localdomain>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] CVE-2025-0395: Buffer overflow in the GNU C Library's assert()

Hi,

I tried to come up with a better test case / regression test for this
bug / fix (a self-contained C program without randomness), but
unexpectedly ran into the bug manifesting itself differently, which may
be relevant to its exploitability.  I'll quote a little bit more context
(than I usually do) since it's an old thread:

On Wed, Jan 22, 2025 at 01:41:36PM +0000, Qualys Security Advisory wrote:
> On January 10, 2025, we contacted the GNU C Library's security team
> about a buffer overflow that we discovered in assert()'s implementation
> (CVE-2025-0395). Because this vulnerability seems relatively minor (for
> reasons detailed below), it was decided that it could be discussed and
> patched publicly, without an embargo.
> 
> Today (January 22, 2025) a Bugzilla entry and a patch proposal for this
> vulnerability have been published:
> 
>   https://sourceware.org/bugzilla/show_bug.cgi?id=32582
>   https://patchwork.sourceware.org/project/glibc/list/?series=43300
>   https://sourceware.org/pipermail/libc-alpha/2025-January/164164.html
>   https://sourceware.org/pipermail/libc-alpha/2025-January/164165.html
>   https://sourceware.org/pipermail/libc-alpha/2025-January/164166.html

> While looking into commit 6f0ea84 ("assert: Remove the use of %n from
> __assert_fail_base (BZ #32456)"), we spotted an mmap-based buffer
> overflow in assert() (more precisely, in __assert_fail_base()),
> introduced in 2011 by commit f8a3b5b ("Use mmap for allocation of
> buffers used for __abort_msg"):
> 
> ------------------------------------------------------------------------
> 356 struct abort_msg_s
> 357 {
> 358   unsigned int size;
> 359   char msg[0];
> 360 };
> ------------------------------------------------------------------------
>  68       total = (total + 1 + GLRO(dl_pagesize) - 1) & ~(GLRO(dl_pagesize) - 1);
>  69       struct abort_msg_s *buf = __mmap (NULL, total, PROT_READ | PROT_WRITE,
>  70                                         MAP_ANON | MAP_PRIVATE, -1, 0);
>  71       if (__glibc_likely (buf != MAP_FAILED))
>  72         {
>  73           buf->size = total;
>  74           strcpy (buf->msg, str);
> ------------------------------------------------------------------------
> 
> - at lines 68-70, a buffer buf is mmap()ed for a copy of the string str

Here, "str" comes from a call to asprintf() just made by
__assert_fail_base() itself.

>   and its terminating null byte (total + 1 bytes), plus possible padding
>   (to a multiple of the page size);
> 
> - but at line 73, an extra, unaccounted-for unsigned int (size) is also
>   written into this mmap()ed buf;
> 
> - so at line 74, the strcpy() overflows buf with the last bytes of str
>   (an off-by-one, two, three, or four bytes (the sizeof unsigned int),
>   depending on the padding size).
> 
> Because the string str includes __progname (the basename() of argv[0]),
> a local attacker can ensure that the padding at line 68 is minimal and
> can overflow the buffer buf at line 74 (and this works even against a
> SUID program that contains an assertion failure). Exploitation of this
> vulnerability looks difficult, but cannot be ruled out completely:
> 
> - a SUID program that contains a reachable assertion failure is needed;
> 
> - the buffer overflow is mmap-based, and at most an off-by-four bytes;
> 
> - the attacker does not control the four bytes that overflow the buffer;
> 
> - the program is about to die (assert() calls abort(), eventually).

Eventually.  However, if the program doesn't crash on the strcpy(), then
it first calls free(str) before proceeding to abort().

Below is a curious backtrace of one of my attempts to trigger the bug,
where I was puzzled I was still getting a SIGABRT (as if the bug were
fixed) rather than a SIGSEGV (which would normally occur if the strcpy()
tries to write beyond the mmap()'ed memory).

[...] aaaaaaaaaa: glibc-assert.c:26: glibc_assert: Assertion `0' failed.
munmap_chunk(): invalid pointer

Program received signal SIGABRT, Aborted.
0x00007ffff7e232a2 in raise () from /lib64/libc.so.6
(gdb) bt
#0  0x00007ffff7e232a2 in raise () from /lib64/libc.so.6
#1  0x00007ffff7e0c8a4 in abort () from /lib64/libc.so.6
#2  0x00007ffff7e65ac7 in __libc_message () from /lib64/libc.so.6
#3  0x00007ffff7e6d73c in malloc_printerr () from /lib64/libc.so.6
#4  0x00007ffff7e6db6c in munmap_chunk () from /lib64/libc.so.6
#5  0x00007ffff7e727db in free () from /lib64/libc.so.6
#6  0x00007ffff7e0c784 in __assert_fail_base.cold () from /lib64/libc.so.6
#7  0x00007ffff7e1ba16 in __assert_fail () from /lib64/libc.so.6

This is in gdb and without ASLR, but the same "munmap_chunk(): invalid
pointer" is also triggerable on this system without gdb and with ASLR.

What happens is that the undersized mmap() consistently returns a
pointer just below the (also mmap-based here) allocation by asprintf().
So instead of crashing, strcpy() overwrites the malloc implementation's
metadata for asprintf()'s allocation.

Here's what we see just before the strcpy():

(gdb) p -elements 999999 -- (char *)$rsi
$3 = 0x7ffff7db1010 'a' <repeats 180166 times>, ": glibc-assert.c:26: glibc_assert: Assertion `0' failed.\n"
(gdb) p -elements 999999 -- (char *)$rdi
$4 = 0x7ffff7d85004 ""

and here's right after:

(gdb) ni
0x00007ffff7e1b979 in __assert_fail_base () from /lib64/libc.so.6
(gdb) p -elements 999999 -- (char *)0x7ffff7db1010
$6 = 0x7ffff7db1010 'a' <repeats 180166 times>, ": glibc-assert.c:26: glibc_assert: Assertion `0' failed.\n"
(gdb) p -elements 999999 -- (char *)0x7ffff7d85004
$7 = 0x7ffff7d85004 'a' <repeats 180166 times>, ": glibc-assert.c:26: glibc_assert: Assertion `0' failed.\n"
(gdb) p -elements 999999 -- (char *)0x7ffff7db1000
$8 = 0x7ffff7db1000 "d.\n"

So the string was copied just fine, and the source string remained
intact as well, but if we look 16 bytes prior to the source string where
the allocation metadata should be, we see the end of the string right in
there in place of some of the metadata.

Luckily, free() still seems to recognize this as a mmap-based allocation
and so calls munmap_chunk(), which seems upset things no longer appear
aligned on a page boundary (they are, but the metadata no longer agrees)
and so it prints that message and shortly abort()'s the program anyway,
but via a different code path.

This other abort() is why I was getting a SIGABRT anyway, so my test
case reported the bug was not present (but I knew it was, which is why
I investigated).

In the above test, I was setting the __progname pointer from my program
manually.  Arguably, this is not fair (for determining exploitability),
because it's not something a well-behaved program would commonly do, but
OTOH I don't see a reason why this difference would matter for this
bug's exposure and exploitability.  Nothing seems to depend on the value
of the __progname pointer - only the string itself matters.  Similar
behavior is probably also achievable without such hack.

More importantly, can those fixed 4 bytes (or 3 or 2 or 1 of them) cause
such malloc metadata corruption that it'd be exploitable?  This may also
be affected by what original values are overwritten by those, which
could vary due to ASLR.  I haven't looked into that.  Maybe Qualys will?

> Important note: __libc_message_impl() in sysdeps/posix/libc_fatal.c is
> also vulnerable to a very similar buffer overflow.

Looks like I hit this bird with the same stone as well, but not its bug.

> To validate our findings, we first used the following proof of concept:
> 
> ------------------------------------------------------------------------
> $ cat > poc.c << "EOF"
> #include <assert.h>
> int
> main(const int argc, const char * const argv[])
> {
>     assert(argc < 3);
>     return 0;
> }
> EOF
> 
> $ gcc -o poc poc.c
> 
> $ ./poc one two
> poc: poc.c:5: main: Assertion `argc < 3' failed.
> Aborted
> 
> $ wc << "EOF"
> : poc.c:5: main: Assertion `argc < 3' failed.
> EOF
>       1       8      46
> 
> $ while true; do
>     P="$(((1 + RANDOM % 32) * 4096))"
>     L="$((P - (46 + 1)))"
>     A="$(perl -e "print 'a' x $L")"
>     (exec -a "$A" ./poc one two 2>/dev/null)
>     if test "$?" -ne "$((128 + 6))"; then
>         echo "$L"
>         break
>     fi
> done

On this system, the above triggered the bug presumably in the same way
Qualys had observed (segfault instead of abort) only after I changed 32
to 64, so with page counts in the range of 32 to 63.  Yet a similar page
count (44 in gdb examples above) works very differently in my standalone
test.  I don't know why the difference.

With page counts below 32 (as in the unmodified shell snippet above), it
would just abort all the time as if the bug were not present (apparently
_not_ the same issue as I observed above, since no "munmap_chunk():
invalid pointer" message appeared here).  I also don't know why.

All of the above was on old Fedora with glibc-2.33-21.fc34 (but
non-default kernel, so stock Fedora would not necessarily have the same
mmap layout for the two allocations, although I think that's likely).

On a different system (stock Rocky Linux 9.5 without a fix for this CVE,
although we actually do also have the fix in SIG/Security glibc
override), the original shell snippet as above (with 32 in it) triggers
the bug in the same way Qualys observed.  Yet my test case also runs
into "munmap_chunk(): invalid pointer".  So it's not only an old Fedora
nor an unusual kernel thing.

I really wonder why the discrepancy, but haven't looked into that more
closely yet.

(Not attaching the test case yet as it's work-in-progress.  Hopefully,
I'll have a reliable test soon.  I may introduce an exec to mimic the
shell script approach or/and detect the extra stderr message rather than
rely solely on SIGABRT.)

Alexander
