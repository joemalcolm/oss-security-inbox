X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2831" "Wednesday" "29" "July" "2020" "14:58:39" "+0200" "Solar Designer" "solar@openwall.com" nil "59" nil "^Cc:" nil nil "7" nil nil (number mark "        solar@openwa Jul 29   59/2831  " thread-indent "\"Re: [oss-security] [CVE-2020-14331] Linux Kernel: buffer over write in vgacon_scrollback_update\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] [CVE-2020-14331] Linux Kernel: buffer over write in vgacon_scrollback_update" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 7991 invoked by uid 550); 29 Jul 2020 12:59:35 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 7770 invoked from network); 29 Jul 2020 12:58:45 -0000
Message-ID: <20200729125839.GA14359@openwall.com>
References: <c5e79bc3-3ca4-2e01-c7f0-2561ec7db4b2@nsfocus.com> <20200728185914.GE4053562@gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200728185914.GE4053562@gmail.com>
User-Agent: Mutt/1.4.2.3i
Cc: Yunhai Zhang <zhangyunhai@nsfocus.com>, Jiri Slaby <jslaby@suse.cz>
Date: Wed, 29 Jul 2020 14:58:39 +0200
From: Solar Designer <solar@openwall.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] [CVE-2020-14331] Linux Kernel: buffer over write in vgacon_scrollback_update
To: oss-security@lists.openwall.com

On Tue, Jul 28, 2020 at 11:59:14AM -0700, Eric Biggers wrote:
> On Tue, Jul 28, 2020 at 11:16:55AM +0800, ????????? wrote:
> > There is a buffer over write in drivers/video/console/vgacon.c in
> > vgacon_scrollback_update.
> > 
> > The issue is reported by Yunhai Zhang / NSFOCUS Security Team
> > <zhangyunhai@nsfocus.com>, CVE-2020-14331 assigned via Red Hat.
> > 
> > # Affected Versions
> > The issue is found and tested on 5.7.0-rc6.
> > The issue is introduced in commit:
> > 15bdab959c9bb909c0317480dd9b35748a8f7887 ([PATCH] vgacon: Add support
> > for soft scrollback)

That was in 2006.

> > According to code review, all versions older than
> > 92ed301919932f777713b9172e525674157e983d (v5.8-rc7) are affected.
> 
> Thanks for the writeup.  Note that there are many open syzbot reports in the
> fbdev, vt, and vgacon kernel subsystems.  These subsystems aren't actively
> maintained (receiving drive-by fixes only), and the kernel developers recommend
> to not enable these subsystems if you care about security
> (https://lkml.kernel.org/lkml/CAKMK7uF5zZH3CaHueWsLR96-AzT==wP8=MpymTqx-T+SRsXWHA@mail.gmail.com/).
> 
> This particular bug, for example, appears to have been already found by someone
> running syzkaller and publicly reported over 2 years ago, with a C reproducer:
> (https://lkml.kernel.org/lkml/CAEAjamsJnG-=TSOwgRbbb3B9Z-PA63oWmNPoKYWQ=Z=+X49akg@mail.gmail.com/).
> No one did anything.
> 
> I suggest that people relying on the security of these kernel subsystems
> contribute resources to fixing the many known fuzzing bugs in them.

Wow.  I suppose the biggest risk here is services that just happen to
run on the console (or able to access it if they re-open /dev/tty) as a
result of normal system startup.  Since an ioctl() is required at least
to trigger CVE-2020-14331, at least this one is limited to attacks by
someone who already got code execution within one of such services, but
I suppose it could in some cases be used to gain ring 0 access from a
non-root pseudo-user that the service (or even merely its privsep child)
might run as.  If any other related issues are triggerable purely by
terminal escapes codes, it's much worse - could even allow for remote
attacks without a prior compromise of any service.

Do others see this same threat model or something different?  I think
non-root users with intentional console access mounting attacks is less
of a concern.

Meanwhile, Jiri Slaby brought the discussion around fixing vgacon
properly to LKML:

https://lists.openwall.net/linux-kernel/2020/07/29/234

The patch posted in this very first LKML message (with the added check
before the loop) is already known to be insufficient - see the
follow-ups.  The patch posted by Yunhai Zhang here on oss-security
(with the added check in the loop) is still considered sufficient.

Alexander
