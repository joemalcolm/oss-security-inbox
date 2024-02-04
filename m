Received: (qmail 21751 invoked by uid 550); 4 Feb 2024 16:33:00 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 21620 invoked from network); 4 Feb 2024 16:32:54 -0000
Date: Sun, 4 Feb 2024 17:35:20 +0100
From: Solar Designer <solar@openwall.com>
To: oss-security@lists.openwall.com
Cc: Qualys Security Advisory <qsa@qualys.com>,
	Adhemerval Zanella <adhemerval.zanella@linaro.org>
Message-ID: <20240204163520.GA20987@openwall.com>
References: <20240130183915.GB16546@localhost.localdomain>
Mime-Version: 1.0
Content-Type: multipart/mixed; boundary="FL5UXtIhxfXey3p5"
Content-Disposition: inline
In-Reply-To: <20240130183915.GB16546@localhost.localdomain>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] Out-of-bounds read & write in the glibc's qsort()

--FL5UXtIhxfXey3p5
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

Great findings and excellent quality write-up from Qualys, as usual.

On Tue, Jan 30, 2024 at 06:39:37PM +0000, Qualys Security Advisory wrote:
> We therefore decided to assess the robustness of the glibc's qsort()
> implementation, by calling it with a nontransitive comparison function:
> 
> ------------------------------------------------------------------------
>   1 #include <limits.h>
>   2 #include <stdlib.h>
>   3 #include <sys/time.h>
>   4 
>   5 static int
>   6 cmp(const void * const pa, const void * const pb)
>   7 {
>   8     const int a = *(const int *)pa;
>   9     const int b = *(const int *)pb;
>  10     return (a - b);
>  11 }
>  12 
>  13 int
>  14 main(const int argc, const char * const argv[])
>  15 {
>  16     if (argc != 2) return __LINE__;
>  17     const size_t nmemb = strtoul(argv[1], NULL, 0);
>  18     if (nmemb <= 0 || nmemb >= (1<<28)) return __LINE__;
>  19 
>  20     int * const pcanary1 = calloc(1 + nmemb + 1, sizeof(int));
>  21     if (!pcanary1) return __LINE__;
>  22     int * const array = pcanary1 + 1;
>  23     int * const pcanary2 = array + nmemb;
>  24 
>  25     struct timeval tv;
>  26     if (gettimeofday(&tv, NULL)) return __LINE__;
>  27     srandom((tv.tv_sec << 16) ^ tv.tv_usec);
>  28 
>  29     const int canary1 = *pcanary1 = (random() << 16) ^ random();
>  30     const int canary2 = *pcanary2 = (random() << 16) ^ random();
>  31     array[random() % nmemb] = INT_MIN;
>  32 
>  33     qsort(array, nmemb, sizeof(int), cmp);
>  34     if (*pcanary1 != canary1) abort();
>  35     if (*pcanary2 != canary2) abort();
>  36     return 0;
>  37 }

I've attached an enhanced version of the above program to this message.

> We therefore decided to assess the robustness of the glibc's quick sort
> (instead of its merge sort, which was clearly not crashing), by forcing
> qsort() to call _quicksort(). Locally, forcing the malloc() at line 221
> to fail is very easy: we simply execute our program with a low RLIMIT_AS
> ("The maximum size of the process's virtual memory", man setrlimit); and
> this works even when executing a SUID-root program. So we executed our
> program in the following loop instead:
> 
> 
> ------------------------------------------------------------------------
> $ while true; do n=$((RANDOM*64+RANDOM+1)); prlimit --as=$((n*4/2*3)) ./qsort $n; done
> Aborted (core dumped)

While we have to do it externally with "prlimit" or such when attacking
an existing program, for our own testing we can instead set RLIMIT_AS
right from the test program.  This eliminates the need for choosing a
value for RLIMIT_AS that's barely sufficient for the program to work,
but not sufficient for glibc to choose merge sort.  In the attached
program, I simply set RLIMIT_AS to 0 right before the call to qsort(),
which lets the program continue running (even though it's already beyond
limit) but makes any further memory allocations from the kernel fail.

I also added a test that the sort order is correct when qsort() is
called with a proper, transitive comparison function.

This makes me wonder whether/how glibc upstream tests quick sort, given
that without the RLIMIT_AS trick or such that code is not reached.  If
glibc tests do not include this yet (I didn't see it), then maybe they
should make use of the "set RLIMIT_AS to 0" trick in a bundled test?
Searching the glibc tree for RLIMIT_AS now, I see some tests do set it
for similar reasons, but none of them are for qsort() and they use
various non-zero values.

> To patch these out-of-bounds memory accesses in _quicksort(), a simple
> check "tmp_ptr > base_ptr &&" can be added in front of the cmp() call at
> line 227 (of course this does not magically result in a correctly sorted
> array if cmp() is nontransitive, but at least it does not result in a
> memory corruption anymore).

I confirmed (with the attached test program) that this one-line change
indeed makes qsort() robust also when applied on top of RHEL9's patched
glibc 2.34, as found in Rocky Linux 9 (patch attached).  We now use this
in Rocky Linux SIG/Security package of glibc for EL9:

https://sig-security.rocky.page/packages/glibc/

> In fact, while drafting this advisory, we discovered that such a check
> ("tmp_ptr != base_ptr &&") has already been added to the glibc's master
> branch (which will become glibc 2.39 in February 2024), by the following
> commit ("stdlib: Fix array bounds protection in insertion sort phase of
> qsort"):
> 
>   https://sourceware.org/git?p=glibc.git;a=commit;h=b9390ba93676c4b1e87e218af5e7e4bb596312ac

This commit also adds a test, but I don't see how that test would
possibly detect the issue.  It sorts a tiny array and does not set
RLIMIT_AS, so it probably does not reach quick sort, does it?  Well,
maybe it did briefly while glibc experimented with introsort, but
perhaps currently it does not:

As you've identified in the "last-minute note", a later commit ("stdlib:
Reinstate stable mergesort implementation on qsort") made/reverted lots
of other changes:

https://sourceware.org/git/?p=glibc.git;a=commit;h=709fbd3ec3595f2d1076b4fec09a739327459288

It's so invasive I cannot easily tell whether qsort() remained robust
after it or not.  There's no longer a "tmp_ptr != base_ptr &&" check.
So, lacking known-working tests in glibc tree, we don't know about glibc
2.39's status with respect to this issue.

I don't have a glibc 2.39 build handy.  Perhaps someone on a distro that
has already updated can run the attached test program and let us know?

Alexander

--FL5UXtIhxfXey3p5
Content-Type: text/x-c; charset=us-ascii
Content-Disposition: attachment; filename="glibc-qualys-rocky-qsort-test.c"

/* glibc quick sort test originally by Qualys, enhanced for Rocky Linux */

#include <limits.h>
#include <stdio.h>
#include <stdlib.h>
#include <sys/time.h>
#include <sys/resource.h>

static int
cmp(const void * const pa, const void * const pb)
{
    const int a = *(const int *)pa;
    const int b = *(const int *)pb;
    return (a - b);
}

int
main(const int argc, const char * const argv[])
{
    if (argc != 2) return __LINE__;
    const size_t nmemb = strtoul(argv[1], NULL, 0);
    if (nmemb <= 0 || nmemb >= (1<<28)) return __LINE__;

    int * const pcanary1 = calloc(1 + nmemb + 1, sizeof(int));
    if (!pcanary1) return __LINE__;
    int * const array = pcanary1 + 1;
    int * const pcanary2 = array + nmemb;

    struct timeval tv;
    if (gettimeofday(&tv, NULL)) return __LINE__;
    srandom((tv.tv_sec << 16) ^ tv.tv_usec);

    const int canary1 = *pcanary1 = (random() << 16) ^ random();
    const int canary2 = *pcanary2 = (random() << 16) ^ random();
    array[random() % nmemb] = INT_MIN;

    /* Force fallback from merge to quick sort */
    const struct rlimit rlim = {};
    setrlimit(RLIMIT_AS, &rlim);

    qsort(array, nmemb, sizeof(int), cmp);
    if (*pcanary1 != canary1) abort();
    if (*pcanary2 != canary2) abort();

    for (size_t i = 0; i < nmemb; i++)
        array[i] = random();

    qsort(array, nmemb, sizeof(int), cmp);
    if (*pcanary1 != canary1) abort();
    if (*pcanary2 != canary2) abort();

    for (size_t i = 1; i < nmemb; i++)
        if (array[i - 1] > array[i]) abort();

    puts("PASSED");

    return 0;
}

--FL5UXtIhxfXey3p5
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="glibc-2.34-qualys-rocky-qsort.patch"

diff -urpN glibc-2.34-sanitize-env/stdlib/qsort.c glibc-2.34-qsort/stdlib/qsort.c
--- glibc-2.34-sanitize-env/stdlib/qsort.c	2021-08-02 03:33:43.000000000 +0200
+++ glibc-2.34-qsort/stdlib/qsort.c	2024-01-31 17:21:15.061418442 +0100
@@ -225,7 +225,7 @@ _quicksort (void *const pbase, size_t to
     while ((run_ptr += size) <= end_ptr)
       {
 	tmp_ptr = run_ptr - size;
-	while ((*cmp) ((void *) run_ptr, (void *) tmp_ptr, arg) < 0)
+	while (tmp_ptr > base_ptr && (*cmp) ((void *) run_ptr, (void *) tmp_ptr, arg) < 0)
 	  tmp_ptr -= size;
 
 	tmp_ptr += size;

--FL5UXtIhxfXey3p5--
