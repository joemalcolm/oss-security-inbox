X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1552" "Friday" "29" "January" "2021" "18:01:11" "+0100" "Marcus Meissner" "meissner@suse.de" "<20210129170111.GO2759@suse.de>" "39" "Re: [oss-security] Linux Kernel: local priv escalation via futexes" nil nil nil "1" "2021012917:01:11" "[oss-security] Linux Kernel: local priv escalation via futexes" (number mark "U       meissner@sus Jan 29   39/1552  " thread-indent "\"Re: [oss-security] Linux Kernel: local priv escalation via futexes\"\n") "<20210129164208.GA8779@openwall.com>" ("<20210129100928.GD6548@suse.de>" "<20210129164208.GA8779@openwall.com>") nil nil nil nil nil nil nil "Re: [oss-security] Linux Kernel: local priv escalation via futexes" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 32289 invoked by uid 550); 29 Jan 2021 17:01:21 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32271 invoked from network); 29 Jan 2021 17:01:20 -0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Date: Fri, 29 Jan 2021 18:01:11 +0100
From: Marcus Meissner <meissner@suse.de>
To: oss-security@lists.openwall.com
Message-ID: <20210129170111.GO2759@suse.de>
References: <20210129100928.GD6548@suse.de>
 <20210129164208.GA8779@openwall.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210129164208.GA8779@openwall.com>
Organization: SUSE Software Solutions =?iso-8859-1?Q?Ger?=
 =?iso-8859-1?Q?many_GmbH=2C_Maxfeldstr=2E_5=2C_90409_Nuernberg=2C_Germany?=
 =?iso-8859-1?Q?=2C_GF=3A_Felix_Imend=F6rffer=2C_HRB_36809=2C_AG_N=FCrnber?=
 =?iso-8859-1?Q?g?=
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [oss-security] Linux Kernel: local priv escalation via futexes

Hi,

Mitre has now assigned CVE-2021-3347.

On Fri, Jan 29, 2021 at 05:42:08PM +0100, Solar Designer wrote:
> Hi,
> 
> I'm not familiar with futexes, but just to save others a few minutes on
> looking this up:

(Is anyone? Futex are too complex for me at least, I would guess also 
 using them is error prone.)

> On Fri, Jan 29, 2021 at 11:09:28AM +0100, Marcus Meissner wrote:
> >        - Address a longstanding issue where the user space part of the PI
> >          futex is not writeable. The kernel returns with inconsistent state
> >          which can in the worst case result in a UAF of a tasks kernel
> >          stack.
> > 
> >          The solution is to establish consistent kernel state which makes
> >          future operations on the futex fail because user space and kernel
> >          space state are inconsistent. Not a problem as PI futexes
> >          fundamentaly require a functional RW mapping and if user space
> >          pulls the rug under it, then it can keep the pieces it asked for.
> 
> >     * tag 'locking-urgent-2021-01-28' of git://git.kernel.org/pub/scm/linux/kernel/git/tip/tip:
> >       futex: Handle faults correctly for PI futexes
> 
> FWIW, this commit has:
> 
> Fixes: 1b7558e457ed ("futexes: fix fault handling in futex_lock_pi")
> 
> and that other commit is from 2008.  So probably all currently
> maintained Linux distros and deployments are affected, unless something
> else mitigated the issue in some kernel versions.

Yes, goes back to a long history, sorry for leaving this out.

Ciao, Marcus
