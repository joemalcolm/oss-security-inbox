X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3595" "Thursday" "23" "July" "2015" "16:00:15" "+0200" "Petr Matousek" "pmatouse@redhat.com" "<20150723140015.GQ15931@dhcp-25-225.brq.redhat.com>" "55" "Re: [oss-security] Linux x86_64 NMI security issues" nil nil nil "7" "2015072314:00:15" "[oss-security] Linux x86_64 NMI security issues" (number mark "        pmatouse@red Jul 23   55/3595  " thread-indent "\"Re: [oss-security] Linux x86_64 NMI security issues\"\n") "<CALCETrUkkNhnAnbwVCk94sXv0fxEoiXVXa7kFFu-=BbMAy8Ubg@mail.gmail.com>" ("<CALCETrXViSiMG79NtqN79NauDN9B2k9nOQN18496h9pJg+78+g@mail.gmail.com>" "<20150723132828.GP15931@dhcp-25-225.brq.redhat.com>" "<CALCETrUkkNhnAnbwVCk94sXv0fxEoiXVXa7kFFu-=BbMAy8Ubg@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 20263 invoked by uid 550); 23 Jul 2015 14:00:32 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 20245 invoked from network); 23 Jul 2015 14:00:31 -0000
Message-ID: <20150723140015.GQ15931@dhcp-25-225.brq.redhat.com>
Mail-Followup-To: Andy Lutomirski <luto@amacapital.net>,
	oss security list <oss-security@lists.openwall.com>
References: <CALCETrXViSiMG79NtqN79NauDN9B2k9nOQN18496h9pJg+78+g@mail.gmail.com>
 <20150723132828.GP15931@dhcp-25-225.brq.redhat.com>
 <CALCETrUkkNhnAnbwVCk94sXv0fxEoiXVXa7kFFu-=BbMAy8Ubg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CALCETrUkkNhnAnbwVCk94sXv0fxEoiXVXa7kFFu-=BbMAy8Ubg@mail.gmail.com>
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.26
Cc: oss security list <oss-security@lists.openwall.com>
Date: Thu, 23 Jul 2015 16:00:15 +0200
From: Petr Matousek <pmatouse@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Linux x86_64 NMI security issues
To: Andy Lutomirski <luto@amacapital.net>

On Thu, Jul 23, 2015 at 06:34:50AM -0700, Andy Lutomirski wrote:
> On Jul 23, 2015 6:28 AM, "Petr Matousek" <pmatouse@redhat.com> wrote:
> > On Wed, Jul 22, 2015 at 11:12:00AM -0700, Andy Lutomirski wrote:
> > > On kernels that are patched for BadIRET and have a fixup_bad_iret
> > > function (which should be most kernels that are keeping up with
> > > low-level security issues), there are two cases.
> > >
> > > Case 1a (more up-to-date kernels where INTERRUPT_RETURN is "jmp
> > > irq_return"): fixup_bad_iret will be invoked and will attempt to
> > > recover.  There's a narrow window in which a new NMI will cause
> > > corruption, in which case all bets are off.  That could hang, crash,
> > > or possibly be exploited for privilege escalation.
> > >
> > > Case 1b (less up-to-date kernels where INTERRUPT_RETURN is "iretq"):
> > > The kernel will try to OOPS due to a bad kernel fault, except that the
> > > OOPS will be processed with the wrong gsbase.  This is basically the
> > > BadIRET condition, and is probably exploitable using similar
> > > techniques to BadIRET.
> >
> > Could you please explain the backtrace leading to this?  You mean the
> > nested nmi return which invokes INTERRUPT_RETURN and in case
> > INTERRUPT_RETURN is "iretq", error_kernelspace won't detect that and
> > won't fixup the gs?
> 
> I mean the normal (non-nested) NMI return.  If we return with iretq, then
> the error_bad_iret fixup won't trigger at all because that iretq
> instruction has no fixup entry or swapgs special case.

Hmm, sorry, my bad. I've been looking at rhel-7 -- I see two ways to exit
the NMI handler there -- INTERRUPT_RETURN after the nested_nmi_out label,
which should only trigger on nested NMIs and thus be safe, and the second
one after the nmi_restore label which does jmp irq_return.

And irq_return is:

irq_return:                                                                                                                                                                                                    
	INTERRUPT_RETURN                                                                                                                                                                                       
	_ASM_EXTABLE(irq_return, bad_iret)

and error_kernelspace checking for irq_return

error_kernelspace:                                                                                                                                                                                             
	incl %ebx                                                                                                                                                                                              
	leaq irq_return(%rip),%rcx                                                                                                                                                                             
	cmpq %rcx,RIP+8(%rsp)                                                                                                                                                                                  
	je error_swapgs                                                                                                                                                                                        


Now the paravirt iret case is not protected by the error_kernelspace
fixup. How much that is a problem is something I'm going to have a look
at ...

-- 
Petr Matousek / Red Hat Product Security
PGP: 0xC44977CA 8107 AF16 A416 F9AF 18F3  D874 3E78 6F42 C449 77CA
