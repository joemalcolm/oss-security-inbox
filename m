Received: (qmail 7458 invoked by uid 550); 1 Jun 2022 12:52:27 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 6027 invoked from network); 1 Jun 2022 12:52:01 -0000
Date: Wed, 1 Jun 2022 14:51:57 +0200
From: Solar Designer <solar@openwall.com>
To: tr3e wang <tr3e.wang@gmail.com>
Cc: oss-security@lists.openwall.com
Message-ID: <20220601125157.GA8467@openwall.com>
References: <CA+eGCHaJ8Vcgm=+KqmFwmLd8BP+Vn8aos6RZzvbzHd544SdQZg@mail.gmail.com> <CA+eGCHacHMaHndb9vAAU+Ju3KsZmu6zJfJoLT+id=_FjAhp59A@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CA+eGCHacHMaHndb9vAAU+Ju3KsZmu6zJfJoLT+id=_FjAhp59A@mail.gmail.com>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] Linux Kernel eBPF Improper Input Validation Vulnerability

Hi,

In context of the recent discussions of linux-distros list policies and
their enforcement, I looked at some of the previously handled issues,
and identified that the below wasn't properly handled/enforced.

tr3e, since you had shared actual exploit code with linux-distros, you
were supposed to post the _code_ to oss-security within 7 days after
your initial public disclosure of the vulnerability.  However, you only
posted "the exploit overview" and promised that "Full exploit code will
be published on github in the near future."  Apparently, the latter
never happened, and it wouldn't have satisfied the requirement anyway.

Please post the same exploit code you had shared with linux-distros to
this thread on oss-security ASAP.  Thank you!

Alexander

On Tue, Jan 18, 2022 at 09:29:18PM +0800, tr3e wang wrote:
> Hi all,
> 
> 
> This post is the exploit overview of CVE-2022-23222.
> 
> 
> We successfully exploited this vulnerability to obtain full root
> privileges on default installations of Ubuntu 20.04.
> 
> 
> *Exploit overview*
> 
> 
> 1. Among all these *_OR_NULL types, we choose PTR_TO_MEM_OR_NULL
>    which can be created by BPF_FUNC_ringbuf_reserve. First, we
>    pass 0xffff........ffff to BPF_FUNC_ringbuf_reserve to get a
>    NULL pointer r0, and copy r0 to r1. Then add r1 by 1, and do
>    NULL check on r0. At this point, the verifier will believe that
>    both r0 and r1 are zero.
> 
> 
> 2. ALU sanitation is hardened after commit
>    "bpf: Fix leakage of uninitialized bpf stack under speculation".
>    To bypass alu sanitation, we use helper func bpf_skb_load_bytes_*
>    to get partial/full overwrite the pointer on stack to obtain
>    pointer address leakage and arbitrary address read/write.
> 
> 
> 3. We spawn many child processes, and use arbitrary address read to
>    find the address of task_struct and cred around the the address of
>    the array map we created. After zeroing out the uid/gid/... ,
>    full root privileges obtained.
> 
> 
> Full exploit code will be published on github in the near future.
> 
> 
> Regards,
> tr3e
> 
> 
> tr3e wang <tr3e.wang@gmail.com> ???2022???1???13????????? 16:21?????????
> 
> 
> > Hi all,
> >
> > This vulnerability allows local attackers to escalate privileges on
> > affected installations of Linux Kernel. An attacker must first obtain the
> > ability to execute low-privileged code on the target system in order to
> > exploit this vulnerability.
> >
> > The specific flaw exists within the handling of eBPF programs. The issue
> > results from the lack of proper validation of user-supplied eBPF programs
> > prior to executing them. An attacker can leverage this vulnerability to
> > escalate privileges and execute code in the context of the kernel.
> > BE AWARE, unprivileged bpf is disabled by default in most distros.
> >
> > *Affected Version*
> >
> >     Linux Kernel 5.8 or later
> >
> > *Root Cause Analysis*
> >
> > The bpf verifier(kernel/bpf/verifier.c) did not properly restrict several
> > *_OR_NULL pointer types which allows these types to do pointer arithmetic.
> > This can be leveraged to bypass the verifier check and escalate privilege.
> > (see
> > https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git/tree/kernel/bpf/verifier.c?h=v5.10.83#n6022
> > )
> >
> > *Exploit Code*
> >
> > Exploit code will be delayed for 5 days and will be posted at 12:00 UTC,
> > Jan 18, 2022
> >
> > *Mitigations*
> >
> > set kernel.unprivileged_bpf_disabled to 1
> >
> > BE AWARE AGAIN, unprivileged bpf is disabled by default in most distros.
> >
> > *Credits*
> >
> > tr3e of SecCoder Security Lab
> > Best,
> > tr3e
