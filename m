X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1433" "Tuesday" "28" "July" "2020" "11:59:14" "-0700" "Eric Biggers" "ebiggers@kernel.org" nil "30" nil "^Date:" nil nil "7" nil nil (number mark "        ebiggers@ker Jul 28   30/1433  " thread-indent "\"Re: [oss-security] [CVE-2020-14331] Linux Kernel: buffer over write in vgacon_scrollback_update\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] [CVE-2020-14331] Linux Kernel: buffer over write in vgacon_scrollback_update" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 28615 invoked by uid 550); 28 Jul 2020 22:20:59 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 23618 invoked from network); 28 Jul 2020 18:59:27 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1595962755;
	bh=mK9etJTqi6W1snCt/x6qcKXAgXkPd5ypbDwvOufEbps=;
	h=Date:From:To:Subject:References:In-Reply-To:From;
	b=lEyU3kvdvGTg6e80H8uBhmVg74yiuVtmWu4XlKzEB5Kf/rCxheMRpC4brA+wZaG7j
	 13d53Xak1aKCtG2sM23j82i0KjdtcjrZo4xr5zBN9T+tpSJiomZkCE6Nnmm/LQodCf
	 WAs8zYm2TmZWFAF6k7aV6hb7oEkYX+VEGI5eybCc=
Message-ID: <20200728185914.GE4053562@gmail.com>
References: <c5e79bc3-3ca4-2e01-c7f0-2561ec7db4b2@nsfocus.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <c5e79bc3-3ca4-2e01-c7f0-2561ec7db4b2@nsfocus.com>
Date: Tue, 28 Jul 2020 11:59:14 -0700
From: Eric Biggers <ebiggers@kernel.org>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] [CVE-2020-14331] Linux Kernel: buffer over write
 in vgacon_scrollback_update
To: oss-security@lists.openwall.com

On Tue, Jul 28, 2020 at 11:16:55AM +0800, 张云海 wrote:
> There is a buffer over write in drivers/video/console/vgacon.c in
> vgacon_scrollback_update.
> 
> The issue is reported by Yunhai Zhang / NSFOCUS Security Team
> <zhangyunhai@nsfocus.com>, CVE-2020-14331 assigned via Red Hat.
> 
> # Affected Versions
> The issue is found and tested on 5.7.0-rc6.
> The issue is introduced in commit:
> 15bdab959c9bb909c0317480dd9b35748a8f7887 ([PATCH] vgacon: Add support
> for soft scrollback)
> According to code review, all versions older than
> 92ed301919932f777713b9172e525674157e983d (v5.8-rc7) are affected.

Thanks for the writeup.  Note that there are many open syzbot reports in the
fbdev, vt, and vgacon kernel subsystems.  These subsystems aren't actively
maintained (receiving drive-by fixes only), and the kernel developers recommend
to not enable these subsystems if you care about security
(https://lkml.kernel.org/lkml/CAKMK7uF5zZH3CaHueWsLR96-AzT==wP8=MpymTqx-T+SRsXWHA@mail.gmail.com/).

This particular bug, for example, appears to have been already found by someone
running syzkaller and publicly reported over 2 years ago, with a C reproducer:
(https://lkml.kernel.org/lkml/CAEAjamsJnG-=TSOwgRbbb3B9Z-PA63oWmNPoKYWQ=Z=+X49akg@mail.gmail.com/).
No one did anything.

I suggest that people relying on the security of these kernel subsystems
contribute resources to fixing the many known fuzzing bugs in them.

- Eric
