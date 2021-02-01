X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1750" "Monday" "1" "February" "2021" "07:43:44" "+0100" "Marcus Meissner" "meissner@suse.de" "<20210201064344.GA21262@suse.de>" "55" "Re: [oss-security] Re: Linux kernel: linux-block: nbd: use-after-free Read in nbd_queue_rq" nil nil nil "2" "2021020106:43:44" "[oss-security] Re: Linux kernel: linux-block: nbd: use-after-free Read in nbd_queue_rq" (number mark "U       meissner@sus Feb  1   55/1750  " thread-indent "\"Re: [oss-security] Re: Linux kernel: linux-block: nbd: use-after-free Read in nbd_queue_rq\"\n") "<CAFcO6XP+LtLLCzLakN9QFKNOcDHQhdgxyLz59OCr+5ebXxAkRg@mail.gmail.com>" ("<CAFcO6XMDdVx8uoM8-dJf=AP5t+Tva-J2sOE+gV4F11dvU99yrg@mail.gmail.com>" "<CAFcO6XP+LtLLCzLakN9QFKNOcDHQhdgxyLz59OCr+5ebXxAkRg@mail.gmail.com>") nil nil nil nil nil nil nil "Re: [oss-security] Re: Linux kernel: linux-block: nbd: use-after-free Read in nbd_queue_rq" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 25660 invoked by uid 550); 1 Feb 2021 06:43:54 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 25638 invoked from network); 1 Feb 2021 06:43:54 -0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Date: Mon, 1 Feb 2021 07:43:44 +0100
From: Marcus Meissner <meissner@suse.de>
To: oss-security@lists.openwall.com
Message-ID: <20210201064344.GA21262@suse.de>
References: <CAFcO6XMDdVx8uoM8-dJf=AP5t+Tva-J2sOE+gV4F11dvU99yrg@mail.gmail.com>
 <CAFcO6XP+LtLLCzLakN9QFKNOcDHQhdgxyLz59OCr+5ebXxAkRg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAFcO6XP+LtLLCzLakN9QFKNOcDHQhdgxyLz59OCr+5ebXxAkRg@mail.gmail.com>
Organization: SUSE Software Solutions =?iso-8859-1?Q?Ger?=
 =?iso-8859-1?Q?many_GmbH=2C_Maxfeldstr=2E_5=2C_90409_Nuernberg=2C_Germany?=
 =?iso-8859-1?Q?=2C_GF=3A_Felix_Imend=F6rffer=2C_HRB_36809=2C_AG_N=FCrnber?=
 =?iso-8859-1?Q?g?=
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [oss-security] Re: Linux kernel: linux-block: nbd:
 use-after-free Read in nbd_queue_rq

Hi,

Mitre has assigned CVE-2021-3348 to this issue.

Ciao, Marcus
On Sat, Jan 30, 2021 at 04:46:30PM +0800, butt3rflyh4ck wrote:
> the patch for this issue in upstream:
> 
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=b98e762e3d71e893b221f871825dc64694cfb258
> 
> Regards,
>  butt3rflyh4ck.
> 
> 
> On Fri, Jan 29, 2021 at 2:10 AM butt3rflyh4ck <butterflyhuangxx@gmail.com>
> wrote:
> 
> > Hi, I reported a use-after-free Read bug in ndb_queue_rq() in
> > drivers/block/nbd.c and reproduced in linux-5.11.0-rc4+ too.
> >
> > Root Cause:
> >
> > There is a race condition in nbd ioctl.
> > NBD_SET_SIZE_BLOCKS ioctl will call nbd_size_set(), it will change the
> > block size.
> > NBD_SET_SOCK ioctl will call nbd_add_socket() and it will invoke
> > krealloc() to update a block, free and realloc a new one.
> > But nbd_queue_rq() is in runtime. and calls nbd_handle_cmd(), there
> > will use config->sock. there accesses to config->socks without any locking.
> >
> > Patch for this issue:
> >
> > https://lore.kernel.org/linux-block/24dff677353e2e30a71d8b66c4dffdbdf77c4dbd.1611595239.git.josef@toxicpanda.com/
> >
> > CVE assigned:
> > not assigned.
> >
> > Timeline:
> > *2021/1/25  - Vulnerability reported to security@kernel.org.
> > *2020/1/26  - Vulnerability confirmed and patched.
> > *2020/1/28 - Vulnerability reported to linux-distros@vs.openwall.org.
> > *2021/1/29 - Opened on oss-security@lists.openwall.com.
> >
> > Credit:
> > This issue was discovered by the ADLab of venustech.
> >
> >
> > Regards,
> >  butt3rflyh4ck.
> >

-- 
Marcus Meissner, Project Manager Security
SUSE Software Solutions Germany GmbH, Maxfeldstr. 5, 90409 Nuernberg, Germany,
GF: Felix Imendoerffer, HRB 36809, AG Nuernberg
