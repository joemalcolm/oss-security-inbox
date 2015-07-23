X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2308" "Thursday" "23" "July" "2015" "15:28:28" "+0200" "Petr Matousek" "pmatouse@redhat.com" "<20150723132828.GP15931@dhcp-25-225.brq.redhat.com>" "55" "Re: [oss-security] Linux x86_64 NMI security issues" nil nil nil "7" "2015072313:28:28" "[oss-security] Linux x86_64 NMI security issues" (number mark "        pmatouse@red Jul 23   55/2308  " thread-indent "\"Re: [oss-security] Linux x86_64 NMI security issues\"\n") "<CALCETrXViSiMG79NtqN79NauDN9B2k9nOQN18496h9pJg+78+g@mail.gmail.com>" ("<CALCETrXViSiMG79NtqN79NauDN9B2k9nOQN18496h9pJg+78+g@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 16247 invoked by uid 550); 23 Jul 2015 13:28:44 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 16229 invoked from network); 23 Jul 2015 13:28:44 -0000
Message-ID: <20150723132828.GP15931@dhcp-25-225.brq.redhat.com>
Mail-Followup-To: Andy Lutomirski <luto@amacapital.net>,
	oss security list <oss-security@lists.openwall.com>
References: <CALCETrXViSiMG79NtqN79NauDN9B2k9nOQN18496h9pJg+78+g@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CALCETrXViSiMG79NtqN79NauDN9B2k9nOQN18496h9pJg+78+g@mail.gmail.com>
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.23
Cc: oss security list <oss-security@lists.openwall.com>
Date: Thu, 23 Jul 2015 15:28:28 +0200
From: Petr Matousek <pmatouse@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Linux x86_64 NMI security issues
To: Andy Lutomirski <luto@amacapital.net>

Hi Andy,

thanks much for your summary.

On Wed, Jul 22, 2015 at 11:12:00AM -0700, Andy Lutomirski wrote:
> +++++ CVE-2015-5157 +++++
> 
> Petr Matousek and I discovered that an NMI that interrupts userspace
> and encounters an IRET fault is incorrectly handled.  Symptoms range
> from an OOPS to possible corruption or privilege escalation.

First of all, it was pretty much you, who discovered this issue.

> I haven't verified how much corruption is possible or on what kernel
> versions it occurs.  Some form of crash is likely in principle since
> 3.3, and it can be triggered by the attached exploit on 3.13 or newer,
> I believe.

Why since 3.3? Is it because the nested NMI handler functionality
introduction in 3.3?

If nested NMI handler is not present, isn't this still a problem since
the second NMI will rewrite the content of the NMI stack (and thus first
NMI entry) and potentially overwrite the parts that are already used
by the exception handler?

> On kernels that are patched for BadIRET and have a fixup_bad_iret
> function (which should be most kernels that are keeping up with
> low-level security issues), there are two cases.
> 
> Case 1a (more up-to-date kernels where INTERRUPT_RETURN is "jmp
> irq_return"): fixup_bad_iret will be invoked and will attempt to
> recover.  There's a narrow window in which a new NMI will cause
> corruption, in which case all bets are off.  That could hang, crash,
> or possibly be exploited for privilege escalation.
> 
> Case 1b (less up-to-date kernels where INTERRUPT_RETURN is "iretq"):
> The kernel will try to OOPS due to a bad kernel fault, except that the
> OOPS will be processed with the wrong gsbase.  This is basically the
> BadIRET condition, and is probably exploitable using similar
> techniques to BadIRET.

Could you please explain the backtrace leading to this?  You mean the
nested nmi return which invokes INTERRUPT_RETURN and in case
INTERRUPT_RETURN is "iretq", error_kernelspace won't detect that and
won't fixup the gs?

Isn't this supposed not to fault? It says "/* No need to check faults
here */" which doesn't mean much, but how it can fault? It always
returns to kernel space to the NMI stack, no?

Thanks,
-- 
Petr Matousek / Red Hat Product Security
PGP: 0xC44977CA 8107 AF16 A416 F9AF 18F3  D874 3E78 6F42 C449 77CA
