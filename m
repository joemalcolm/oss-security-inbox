X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["789" "Saturday" "30" "June" "2018" "09:25:08" "+0300" "Georgi Guninski" "guninski@guninski.com" "<20180630062508.oynnfspfl3ak35b7@sivokote.iziade.m$>" "32" "[oss-security] BUG_ON() on mips linux kernels 4.17.2 and earlier (old but alive)" "^Date:" nil nil "6" "2018063006:25:08" "[oss-security] BUG_ON() on mips linux kernels 4.17.2 and earlier (old but alive)" (number mark "        guninski@gun Jun 30   32/789   " thread-indent "\"[oss-security] BUG_ON() on mips linux kernels 4.17.2 and earlier (old but alive)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 17548 invoked by uid 550); 30 Jun 2018 09:53:10 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 5419 invoked from network); 30 Jun 2018 06:25:21 -0000
Message-ID: <20180630062508.oynnfspfl3ak35b7@sivokote.iziade.m$>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
header: best read with a sniffer
Date: Sat, 30 Jun 2018 09:25:08 +0300
From: Georgi Guninski <guninski@guninski.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] BUG_ON() on mips linux kernels 4.17.2 and earlier (old but alive)
To: oss-security@lists.openwall.com


 From
https://j.ludost.net/blog/archives/2018/06/30/bug_on_on_mips_kernels_4_17_2_and_earlier_old_but_alive/index.html

This is old but alive.

On mips linux kernel 4.17.2 and earlier unprivileged user can trigger
BUG_ON() possibly causing denial of service on the whole machine.

Suggested patches from 2013 are in the thread at:
https://www.spinics.net/lists/mips/msg73398.html


in 4.17.2 ./kernel/exit.c

do_group_exit(int exit_code)
{
	struct signal_struct *sig = current->signal;

	BUG_ON(exit_code & 0x80);

|do_group_exit| is called from

./kernel/signal.c:2482:		do_group_exit(ksig->info.si_signo);

Appears to me si_signo can be 0x80 (in decimal 128) because of:

arch/mips/include/uapi/asm/signal.h:15:#define _NSIG		128

Probably testcase will be:
$kill -128 `pidof program`

