Received: (qmail 7770 invoked by uid 550); 4 Jun 2022 20:25:16 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5979 invoked from network); 4 Jun 2022 20:24:28 -0000
Date: Sat, 4 Jun 2022 22:24:23 +0200
From: Solar Designer <solar@openwall.com>
To: tr3e wang <tr3e.wang@gmail.com>
Cc: oss-security@lists.openwall.com
Message-ID: <20220604202423.GB25285@openwall.com>
References: <CA+eGCHaJ8Vcgm=+KqmFwmLd8BP+Vn8aos6RZzvbzHd544SdQZg@mail.gmail.com> <CA+eGCHacHMaHndb9vAAU+Ju3KsZmu6zJfJoLT+id=_FjAhp59A@mail.gmail.com> <20220601125157.GA8467@openwall.com>
Mime-Version: 1.0
Content-Type: multipart/mixed; boundary="yNb1oOkm5a9FJOVX"
Content-Disposition: inline
In-Reply-To: <20220601125157.GA8467@openwall.com>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] Linux Kernel eBPF Improper Input Validation Vulnerability

--yNb1oOkm5a9FJOVX
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

I've attached the exploit from the linux-distros thread - hopefully, the
right one.  (I really shouldn't be the one doing it.  The exploit author
is most qualified to do it, as required by linux-distros list policy.)

Alexander

On Wed, Jun 01, 2022 at 02:51:57PM +0200, Solar Designer wrote:
> Hi,
> 
> In context of the recent discussions of linux-distros list policies and
> their enforcement, I looked at some of the previously handled issues,
> and identified that the below wasn't properly handled/enforced.
> 
> tr3e, since you had shared actual exploit code with linux-distros, you
> were supposed to post the _code_ to oss-security within 7 days after
> your initial public disclosure of the vulnerability.  However, you only
> posted "the exploit overview" and promised that "Full exploit code will
> be published on github in the near future."  Apparently, the latter
> never happened, and it wouldn't have satisfied the requirement anyway.
> 
> Please post the same exploit code you had shared with linux-distros to
> this thread on oss-security ASAP.  Thank you!
> 
> Alexander
> 
> On Tue, Jan 18, 2022 at 09:29:18PM +0800, tr3e wang wrote:
> > Hi all,
> > 
> > 
> > This post is the exploit overview of CVE-2022-23222.
> > 
> > 
> > We successfully exploited this vulnerability to obtain full root
> > privileges on default installations of Ubuntu 20.04.
> > 
> > 
> > *Exploit overview*
> > 
> > 
> > 1. Among all these *_OR_NULL types, we choose PTR_TO_MEM_OR_NULL
> >    which can be created by BPF_FUNC_ringbuf_reserve. First, we
> >    pass 0xffff........ffff to BPF_FUNC_ringbuf_reserve to get a
> >    NULL pointer r0, and copy r0 to r1. Then add r1 by 1, and do
> >    NULL check on r0. At this point, the verifier will believe that
> >    both r0 and r1 are zero.
> > 
> > 
> > 2. ALU sanitation is hardened after commit
> >    "bpf: Fix leakage of uninitialized bpf stack under speculation".
> >    To bypass alu sanitation, we use helper func bpf_skb_load_bytes_*
> >    to get partial/full overwrite the pointer on stack to obtain
> >    pointer address leakage and arbitrary address read/write.
> > 
> > 
> > 3. We spawn many child processes, and use arbitrary address read to
> >    find the address of task_struct and cred around the the address of
> >    the array map we created. After zeroing out the uid/gid/... ,
> >    full root privileges obtained.
> > 
> > 
> > Full exploit code will be published on github in the near future.
> > 
> > 
> > Regards,
> > tr3e
> > 
> > 
> > tr3e wang <tr3e.wang@gmail.com> ???2022???1???13????????? 16:21?????????
> > 
> > 
> > > Hi all,
> > >
> > > This vulnerability allows local attackers to escalate privileges on
> > > affected installations of Linux Kernel. An attacker must first obtain the
> > > ability to execute low-privileged code on the target system in order to
> > > exploit this vulnerability.
> > >
> > > The specific flaw exists within the handling of eBPF programs. The issue
> > > results from the lack of proper validation of user-supplied eBPF programs
> > > prior to executing them. An attacker can leverage this vulnerability to
> > > escalate privileges and execute code in the context of the kernel.
> > > BE AWARE, unprivileged bpf is disabled by default in most distros.
> > >
> > > *Affected Version*
> > >
> > >     Linux Kernel 5.8 or later
> > >
> > > *Root Cause Analysis*
> > >
> > > The bpf verifier(kernel/bpf/verifier.c) did not properly restrict several
> > > *_OR_NULL pointer types which allows these types to do pointer arithmetic.
> > > This can be leveraged to bypass the verifier check and escalate privilege.
> > > (see
> > > https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git/tree/kernel/bpf/verifier.c?h=v5.10.83#n6022
> > > )
> > >
> > > *Exploit Code*
> > >
> > > Exploit code will be delayed for 5 days and will be posted at 12:00 UTC,
> > > Jan 18, 2022
> > >
> > > *Mitigations*
> > >
> > > set kernel.unprivileged_bpf_disabled to 1
> > >
> > > BE AWARE AGAIN, unprivileged bpf is disabled by default in most distros.
> > >
> > > *Credits*
> > >
> > > tr3e of SecCoder Security Lab
> > > Best,
> > > tr3e

--yNb1oOkm5a9FJOVX
Content-Type: application/x-gzip
Content-Disposition: attachment; filename="exploit-for-OR_NULL_types.tar.gz"
Content-Transfer-Encoding: base64

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
WzqPz+Pz+Dw+/3uf/w+x/Q/AAA4BAA==

--yNb1oOkm5a9FJOVX--
