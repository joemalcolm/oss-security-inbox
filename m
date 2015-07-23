X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2928" "Thursday" "23" "July" "2015" "06:34:50" "-0700" "Andy Lutomirski" "luto@amacapital.net" "<CALCETrUkkNhnAnbwVCk94sXv0fxEoiXVXa7kFFu-=BbMAy8Ubg@mail.gmail.com>" "73" "Re: [oss-security] Linux x86_64 NMI security issues" nil nil nil "7" "2015072313:34:50" "[oss-security] Linux x86_64 NMI security issues" (number mark "        luto@amacapi Jul 23   73/2928  " thread-indent "\"Re: [oss-security] Linux x86_64 NMI security issues\"\n") "<20150723132828.GP15931@dhcp-25-225.brq.redhat.com>" ("<CALCETrXViSiMG79NtqN79NauDN9B2k9nOQN18496h9pJg+78+g@mail.gmail.com>" "<20150723132828.GP15931@dhcp-25-225.brq.redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 29930 invoked by uid 550); 23 Jul 2015 13:35:02 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 29912 invoked from network); 23 Jul 2015 13:35:02 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:content-type;
        bh=EBM6poac8xsCVKxDPw7T5503TxWPJdNmSzGTUOUpcYw=;
        b=k1t3nTbcfQ8KZ98VM5a5EYp+HCNeVVpj9jDONI5spkls6wOGJ1m/qMUDnURI1vFqcg
         ubNgv//9PoMxQYrClbT2CoUb5uv86dJfs9WGFi7W/w1+Dnu/Z/bEF8+bnNVw8k3R4485
         YuvpraM5uAjVJYgi1SQTMuLClUFiNy9LJhX+yt5ugeSTm27dD3yVuGHU7Rfn07wPGuU/
         tpB/rwjZS2I2ZsOjNAWKBpm7py+8bUnrSfmTWHmXCmnv3TrEJ9MYpPuNHq2xLHU3g2u7
         lMlaCiBld54trSCPQ063+Ra6j5OGmw3AJ5SOiN5p3YhX/NwOqDFsq6pY5AFikH9v8T6C
         8bOA==
X-Gm-Message-State: ALoCoQkHmnW4WC2R60AP7hqtnlHidTzW8D8yGT/vEA6Be+zlJeiPzEI6NFLnD5MvhhnRM0wI8iBY
MIME-Version: 1.0
X-Received: by 10.152.1.66 with SMTP id 2mr8215530lak.56.1437658490894; Thu,
 23 Jul 2015 06:34:50 -0700 (PDT)
In-Reply-To: <20150723132828.GP15931@dhcp-25-225.brq.redhat.com>
References: <CALCETrXViSiMG79NtqN79NauDN9B2k9nOQN18496h9pJg+78+g@mail.gmail.com>
	<20150723132828.GP15931@dhcp-25-225.brq.redhat.com>
Message-ID: <CALCETrUkkNhnAnbwVCk94sXv0fxEoiXVXa7kFFu-=BbMAy8Ubg@mail.gmail.com>
Content-Type: multipart/alternative; boundary=089e013c62bca89596051b8af3fa
Date: Thu, 23 Jul 2015 06:34:50 -0700
From: Andy Lutomirski <luto@amacapital.net>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Linux x86_64 NMI security issues
To: oss security list <oss-security@lists.openwall.com>

--089e013c62bca89596051b8af3fa
Content-Type: text/plain; charset=UTF-8

On Jul 23, 2015 6:28 AM, "Petr Matousek" <pmatouse@redhat.com> wrote:
>
> Hi Andy,
>
> thanks much for your summary.
>
> On Wed, Jul 22, 2015 at 11:12:00AM -0700, Andy Lutomirski wrote:
> > +++++ CVE-2015-5157 +++++
> >
> > Petr Matousek and I discovered that an NMI that interrupts userspace
> > and encounters an IRET fault is incorrectly handled.  Symptoms range
> > from an OOPS to possible corruption or privilege escalation.
>
> First of all, it was pretty much you, who discovered this issue.
>
> > I haven't verified how much corruption is possible or on what kernel
> > versions it occurs.  Some form of crash is likely in principle since
> > 3.3, and it can be triggered by the attached exploit on 3.13 or newer,
> > I believe.
>
> Why since 3.3? Is it because the nested NMI handler functionality
> introduction in 3.3?
>
> If nested NMI handler is not present, isn't this still a problem since
> the second NMI will rewrite the content of the NMI stack (and thus first
> NMI entry) and potentially overwrite the parts that are already used
> by the exception handler?

Hmm, right.  It may go back farther than that.  Also, my exploit may also
work before 3.13 -- I think I was confused when I wrote that bit.

>
> > On kernels that are patched for BadIRET and have a fixup_bad_iret
> > function (which should be most kernels that are keeping up with
> > low-level security issues), there are two cases.
> >
> > Case 1a (more up-to-date kernels where INTERRUPT_RETURN is "jmp
> > irq_return"): fixup_bad_iret will be invoked and will attempt to
> > recover.  There's a narrow window in which a new NMI will cause
> > corruption, in which case all bets are off.  That could hang, crash,
> > or possibly be exploited for privilege escalation.
> >
> > Case 1b (less up-to-date kernels where INTERRUPT_RETURN is "iretq"):
> > The kernel will try to OOPS due to a bad kernel fault, except that the
> > OOPS will be processed with the wrong gsbase.  This is basically the
> > BadIRET condition, and is probably exploitable using similar
> > techniques to BadIRET.
>
> Could you please explain the backtrace leading to this?  You mean the
> nested nmi return which invokes INTERRUPT_RETURN and in case
> INTERRUPT_RETURN is "iretq", error_kernelspace won't detect that and
> won't fixup the gs?

I mean the normal (non-nested) NMI return.  If we return with iretq, then
the error_bad_iret fixup won't trigger at all because that iretq
instruction has no fixup entry or swapgs special case.

--Andy

>
> Isn't this supposed not to fault? It says "/* No need to check faults
> here */" which doesn't mean much, but how it can fault? It always
> returns to kernel space to the NMI stack, no?
>
> Thanks,
> --
> Petr Matousek / Red Hat Product Security
> PGP: 0xC44977CA 8107 AF16 A416 F9AF 18F3  D874 3E78 6F42 C449 77CA

--089e013c62bca89596051b8af3fa--
