X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2847" "Tuesday" "18" "January" "2022" "21:29:18" "+0800" "tr3e wang" "tr3e.wang@gmail.com" nil "85" "[oss-security] Re: Linux Kernel eBPF Improper Input Validation Vulnerability" nil nil nil "1" nil nil (number mark "U       tr3e.wang@gm Jan 18   85/2847  " thread-indent "\"[oss-security] Re: Linux Kernel eBPF Improper Input Validation Vulnerability\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Re: Linux Kernel eBPF Improper Input Validation Vulnerability" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 17437 invoked by uid 550); 18 Jan 2022 13:30:51 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15857 invoked from network); 18 Jan 2022 13:29:41 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=rj3vzpMqUX0aGCoEjQ8eI/wl86R006W4jVMm6rTtw6o=;
        b=kykq/CYhmkcy/L+hQFci2ufwuJ+n8AflwPPkd6dU0ca6QeOL8HpolTGbhzM5NxBkFu
         PkmZX1b/TIwHyC3wwwLpLn99nW6xZdxvYjLSZKE9Ad3LQdLmS1vbVgw7SyIijpUR3I7F
         Y2nz0+o1SlawTjk8k05g0AZseAoKR7/Q1cxeY+PhrL40krNEExRGUsAT5ZUOpP4DQGQP
         qUKzgaI1ax5/L7Pv4z5/AtsGIxnGr0Zpu9dheYONdoZUsoHYAICXq9P2wezAOqsZJYdX
         c1f7RIqPqsJifa23zZUaqZhgJD7jp2iA6X4KqWgIq+VQb2uCH3KOmQ8P9CNQ0BcqcQYX
         V5qA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=rj3vzpMqUX0aGCoEjQ8eI/wl86R006W4jVMm6rTtw6o=;
        b=smxLA3VWuS+blDRcTPszw/4tIR6DwfsTBxOKG1AA7vzmBh07YP9bpGMLiWeywg35D5
         yBkcGxuTEtdwi5VekrQ2N0yyGzCUU8xM2FpUHC63adjdYRSbVSFr2AyJbl02t6VSm2ar
         uZ4sfwFSeizgEvZ+08K4w5Hj1ddRQKLBMaqs3KCM2T4mM3zQlJEHwTr/Eb3T1IZXKEeq
         UIwjhHSF87fgowY7AU4G2XeywbZnFtgLzSOl6QF0z4IVh/FDlt3CmryZvn5Vkg4tZ/9+
         Qn31F+1iTeWroDa2uDy2VKV/wbgGp4w0G/9/Hwu1ob+XYBWLp5g7MI0b1OA6fMm6r9cQ
         NiJg==
X-Gm-Message-State: AOAM533nAaE5emlhRP9zB0txWwM7ViNDiZ8S2d08IFkLT0JE10Av42LN
	6YYcHDlOXxWdn2krxGBb2X5ptcAqbYXvOo5bQoh22ICi23/9Cg==
X-Google-Smtp-Source: ABdhPJwrejrRXCYhWCQWbGlHuMvlx5UiCfKarxmBYCMkV3feo6CMf19wpmexI/uf6KrQJe4Zc359uPI/nhs94tdr5JU=
X-Received: by 2002:a05:6808:e90:: with SMTP id k16mr22304132oil.3.1642512569001;
 Tue, 18 Jan 2022 05:29:29 -0800 (PST)
MIME-Version: 1.0
References: <CA+eGCHaJ8Vcgm=+KqmFwmLd8BP+Vn8aos6RZzvbzHd544SdQZg@mail.gmail.com>
In-Reply-To: <CA+eGCHaJ8Vcgm=+KqmFwmLd8BP+Vn8aos6RZzvbzHd544SdQZg@mail.gmail.com>
From: tr3e wang <tr3e.wang@gmail.com>
Date: Tue, 18 Jan 2022 21:29:18 +0800
Message-ID: <CA+eGCHacHMaHndb9vAAU+Ju3KsZmu6zJfJoLT+id=_FjAhp59A@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="00000000000036ead905d5db4257"
Subject: [oss-security] Re: Linux Kernel eBPF Improper Input Validation Vulnerability

--00000000000036ead905d5db4257
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi all,

This post is the exploit overview of CVE-2022-23222.

We successfully exploited this vulnerability to obtain full root
privileges on default installations of Ubuntu 20.04.

*Exploit overview*

1. Among all these *_OR_NULL types, we choose PTR_TO_MEM_OR_NULL
   which can be created by BPF_FUNC_ringbuf_reserve. First, we
   pass 0xffff........ffff to BPF_FUNC_ringbuf_reserve to get a
   NULL pointer r0, and copy r0 to r1. Then add r1 by 1, and do
   NULL check on r0. At this point, the verifier will believe that
   both r0 and r1 are zero.

2. ALU sanitation is hardened after commit
   "bpf: Fix leakage of uninitialized bpf stack under speculation".
   To bypass alu sanitation, we use helper func bpf_skb_load_bytes_*
   to get partial/full overwrite the pointer on stack to obtain
   pointer address leakage and arbitrary address read/write.

3. We spawn many child processes, and use arbitrary address read to
   find the address of task_struct and cred around the the address of
   the array map we created. After zeroing out the uid/gid/... ,
   full root privileges obtained.

Full exploit code will be published on github in the near future.

Regards,
tr3e

tr3e wang <tr3e.wang@gmail.com> =E4=BA=8E2022=E5=B9=B41=E6=9C=8813=E6=97=A5=
=E5=91=A8=E5=9B=9B 16:21=E5=86=99=E9=81=93=EF=BC=9A

> Hi all,
>
> This vulnerability allows local attackers to escalate privileges on
> affected installations of Linux Kernel. An attacker must first obtain the
> ability to execute low-privileged code on the target system in order to
> exploit this vulnerability.
>
> The specific flaw exists within the handling of eBPF programs. The issue
> results from the lack of proper validation of user-supplied eBPF programs
> prior to executing them. An attacker can leverage this vulnerability to
> escalate privileges and execute code in the context of the kernel.
> BE AWARE, unprivileged bpf is disabled by default in most distros.
>
> *Affected Version*
>
>     Linux Kernel 5.8 or later
>
> *Root Cause Analysis*
>
> The bpf verifier(kernel/bpf/verifier.c) did not properly restrict several
> *_OR_NULL pointer types which allows these types to do pointer arithmetic.
> This can be leveraged to bypass the verifier check and escalate privilege.
> (see
> https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git/tree/ker=
nel/bpf/verifier.c?h=3Dv5.10.83#n6022
> )
>
> *Exploit Code*
>
> Exploit code will be delayed for 5 days and will be posted at 12:00 UTC,
> Jan 18, 2022
>
> *Mitigations*
>
> set kernel.unprivileged_bpf_disabled to 1
>
> BE AWARE AGAIN, unprivileged bpf is disabled by default in most distros.
>
> *Credits*
>
> tr3e of SecCoder Security Lab
> Best,
> tr3e
>

--00000000000036ead905d5db4257--
