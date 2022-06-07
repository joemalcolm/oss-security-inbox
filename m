Received: (qmail 23806 invoked by uid 550); 7 Jun 2022 10:35:31 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13940 invoked from network); 7 Jun 2022 10:15:31 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=gBod22RFqQWM8nH55+dPk7GS4MHMdxJlnaW6DBHIIjQ=;
        b=UheLpRkvDyO0enF48MJOM8gWwbXcFe+xNbstLWIiRlnFDTdCMqxd1TUvUrlYiFeycT
         ivs402JT8YnEN8XZTUkW/ZkK7KgxuyV/mf70tPmRPAqVgtgr5Fw5lCv+u213eUb5imKy
         NcXjIpINA3LI4ev5zGot0BWB/hxobp+JzKGUTOP14Od57IZpxZhRbsMrTWAwpyIpeShg
         +jDcu/i/I2WnnI9avL/kxcOqq/2mWSM8+GZ12V7X7MIXLpYnmKAG16RR5e7/PHyRL/kz
         ZD83dSVGYYD+cFbfGJVRZRVsaIoPV+KMyZcw6OH9TR3jSCG9cxgYgzt5AXYvCAou7i4O
         uyRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=gBod22RFqQWM8nH55+dPk7GS4MHMdxJlnaW6DBHIIjQ=;
        b=p3Az4ngNwVpRrclv6cILfBybtgTjby99Tpv50l5LeiwFBUkz6Ptcl23Z0Hr9eUUBB1
         kXXX1+JcLcp8WSDctcWgfcmjkgRskfPBJVQoRAn+Db/X4C40esDbjj/fl4F+9Q5oE0mi
         Czhljvj8lk1CLwVgPbuCDFi+NsXMiwMjTZYpDLXoeunavIzCvWr7p0Tfogm9WQ+pxfmf
         040PemLYbQymSJ6Q+xuGYTtATthNu7UflsQZqNehA0C64vp9utulPalnZ/JIfnWADQsG
         2SPTmLBwkPb2VrWCYyRXpNr8xR1PcJyG1R26HPvpW/IjO8KljU3Sn62Oik1zNoA+PZy9
         dyJw==
X-Gm-Message-State: AOAM530w0AXYS/HeBOw1uNKEnC4D+aOB0CYf9j3+LNrxNnk/zmhJHv0H
	rH2Ei43zJQ/xUN8aPDalVX1/dCSqzqR2FVgvDCM=
X-Google-Smtp-Source: ABdhPJxW9Uzbg4EvWkgtI6x0U9TpWS/l1lcSF/EcUbStG5I4SEcuPeUVV+UFM1JqAK+Nfk01YL3xUjzQKlnyqLXRfXg=
X-Received: by 2002:a05:6870:b693:b0:f1:e2b5:80b6 with SMTP id
 cy19-20020a056870b69300b000f1e2b580b6mr34261204oab.29.1654596919997; Tue, 07
 Jun 2022 03:15:19 -0700 (PDT)
MIME-Version: 1.0
References: <CA+eGCHaJ8Vcgm=+KqmFwmLd8BP+Vn8aos6RZzvbzHd544SdQZg@mail.gmail.com>
 <CA+eGCHacHMaHndb9vAAU+Ju3KsZmu6zJfJoLT+id=_FjAhp59A@mail.gmail.com>
 <20220601125157.GA8467@openwall.com> <20220604202423.GB25285@openwall.com>
In-Reply-To: <20220604202423.GB25285@openwall.com>
From: tr3e wang <tr3e.wang@gmail.com>
Date: Tue, 7 Jun 2022 18:15:09 +0800
Message-ID: <CA+eGCHZE22tT-7PNKUssevOcHPm+nk6fz2e=sGOUc1j8U-Xffg@mail.gmail.com>
To: Solar Designer <solar@openwall.com>
Cc: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [oss-security] Linux Kernel eBPF Improper Input Validation Vulnerability

Hi,

The exploit code can be found at https://github.com/tr3ee/CVE-2022-23222

Alexander, thanks for the update and for helping me post the exploit
code, I suffered from network outage last week.

tr3e

On Sun, Jun 5, 2022 at 4:24 AM Solar Designer <solar@openwall.com> wrote:
>
> Hi,
>
> I've attached the exploit from the linux-distros thread - hopefully, the
> right one.  (I really shouldn't be the one doing it.  The exploit author
> is most qualified to do it, as required by linux-distros list policy.)
>
> Alexander
>
> On Wed, Jun 01, 2022 at 02:51:57PM +0200, Solar Designer wrote:
> > Hi,
> >
> > In context of the recent discussions of linux-distros list policies and
> > their enforcement, I looked at some of the previously handled issues,
> > and identified that the below wasn't properly handled/enforced.
> >
> > tr3e, since you had shared actual exploit code with linux-distros, you
> > were supposed to post the _code_ to oss-security within 7 days after
> > your initial public disclosure of the vulnerability.  However, you only
> > posted "the exploit overview" and promised that "Full exploit code will
> > be published on github in the near future."  Apparently, the latter
> > never happened, and it wouldn't have satisfied the requirement anyway.
> >
> > Please post the same exploit code you had shared with linux-distros to
> > this thread on oss-security ASAP.  Thank you!
> >
> > Alexander
> >
> > On Tue, Jan 18, 2022 at 09:29:18PM +0800, tr3e wang wrote:
> > > Hi all,
> > >
> > >
> > > This post is the exploit overview of CVE-2022-23222.
> > >
> > >
> > > We successfully exploited this vulnerability to obtain full root
> > > privileges on default installations of Ubuntu 20.04.
> > >
> > >
> > > *Exploit overview*
> > >
> > >
> > > 1. Among all these *_OR_NULL types, we choose PTR_TO_MEM_OR_NULL
> > >    which can be created by BPF_FUNC_ringbuf_reserve. First, we
> > >    pass 0xffff........ffff to BPF_FUNC_ringbuf_reserve to get a
> > >    NULL pointer r0, and copy r0 to r1. Then add r1 by 1, and do
> > >    NULL check on r0. At this point, the verifier will believe that
> > >    both r0 and r1 are zero.
> > >
> > >
> > > 2. ALU sanitation is hardened after commit
> > >    "bpf: Fix leakage of uninitialized bpf stack under speculation".
> > >    To bypass alu sanitation, we use helper func bpf_skb_load_bytes_*
> > >    to get partial/full overwrite the pointer on stack to obtain
> > >    pointer address leakage and arbitrary address read/write.
> > >
> > >
> > > 3. We spawn many child processes, and use arbitrary address read to
> > >    find the address of task_struct and cred around the the address of
> > >    the array map we created. After zeroing out the uid/gid/... ,
> > >    full root privileges obtained.
> > >
> > >
> > > Full exploit code will be published on github in the near future.
> > >
> > >
> > > Regards,
> > > tr3e
> > >
> > >
> > > tr3e wang <tr3e.wang@gmail.com> ???2022???1???13????????? 16:21?????????
> > >
> > >
> > > > Hi all,
> > > >
> > > > This vulnerability allows local attackers to escalate privileges on
> > > > affected installations of Linux Kernel. An attacker must first obtain the
> > > > ability to execute low-privileged code on the target system in order to
> > > > exploit this vulnerability.
> > > >
> > > > The specific flaw exists within the handling of eBPF programs. The issue
> > > > results from the lack of proper validation of user-supplied eBPF programs
> > > > prior to executing them. An attacker can leverage this vulnerability to
> > > > escalate privileges and execute code in the context of the kernel.
> > > > BE AWARE, unprivileged bpf is disabled by default in most distros.
> > > >
> > > > *Affected Version*
> > > >
> > > >     Linux Kernel 5.8 or later
> > > >
> > > > *Root Cause Analysis*
> > > >
> > > > The bpf verifier(kernel/bpf/verifier.c) did not properly restrict several
> > > > *_OR_NULL pointer types which allows these types to do pointer arithmetic.
> > > > This can be leveraged to bypass the verifier check and escalate privilege.
> > > > (see
> > > > https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git/tree/kernel/bpf/verifier.c?h=v5.10.83#n6022
> > > > )
> > > >
> > > > *Exploit Code*
> > > >
> > > > Exploit code will be delayed for 5 days and will be posted at 12:00 UTC,
> > > > Jan 18, 2022
> > > >
> > > > *Mitigations*
> > > >
> > > > set kernel.unprivileged_bpf_disabled to 1
> > > >
> > > > BE AWARE AGAIN, unprivileged bpf is disabled by default in most distros.
> > > >
> > > > *Credits*
> > > >
> > > > tr3e of SecCoder Security Lab
> > > > Best,
> > > > tr3e
