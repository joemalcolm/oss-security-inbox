X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1788" "Tuesday" "11" "January" "2022" "20:00:08" "+0800" "tr3e wang" "tr3e.wang@gmail.com" nil "58" "[oss-security] CVE-2021-4204: Linux Kernel eBPF Improper Input Validation Vulnerability" nil nil nil "1" nil nil (number mark "U       tr3e.wang@gm Jan 11   58/1788  " thread-indent "\"[oss-security] CVE-2021-4204: Linux Kernel eBPF Improper Input Validation Vulnerability\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2021-4204: Linux Kernel eBPF Improper Input Validation Vulnerability" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1916 invoked by uid 550); 11 Jan 2022 13:10:29 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13427 invoked from network); 11 Jan 2022 12:00:31 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to:cc;
        bh=oxrbkL58s2EHDucmBaAcj9VC458e4WpxpvY79d6lLNM=;
        b=nN7JqmcZ5kPP+T2vwaCpsu/VlLKq7SQ8AnQiidNhBU8syU9nMmxR2EDSI6HN9N4NGR
         Zi/R6w9n59MsTdvxVx5xBC3THnyoM8HsFpfF2+mLchWv31ejgllr65akzGuw29oN10Qg
         32J64GCjMzg8B62dHRC2mLLb6Egk9IejVuhnmIJY9U+ct993aqw8kztjiWgDP/BvWgzv
         6O5S9z9ZI1uTc+Bz802gbdwsNrd6V6Nh7kQSN7Nsf+hNs9nx+fOVck7wDuYEA/zQ9SzX
         kzaweubttr6c23aAEP4TnFSueUN0uiJ1D5bmXum5ri7sch/eUUIef39OYt6CJVmYbrN5
         68sw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=oxrbkL58s2EHDucmBaAcj9VC458e4WpxpvY79d6lLNM=;
        b=y37lkcOoViQ+f5Rb7foa4aTaLo0ftewnQxEsAThVdtympF2K9bEqSBr8lYE28as2Xl
         Tlp0pSyFubpx3AKRrwLaW3wCetRbRc5DslFfK9wahHPF24a4Yqur/Is7GOr/8KrbU0iw
         g3rM8yX+0fTPZjHtXSMurseCM+RoumPHP6oILWTbfHDBGkIhnkTJF9oF0wk3EEyAlY8+
         Xl9rljAvv8N45ttgT/PSI3B27tx+h4JG33mDKwoZjiYsdZYk7TWXTB/vyy67MT2tK6fu
         XBXCr16U6Ttq1+VLAu7WTahvUO78IRL74a95M05B429deJGMgHc7rl2demsh1+WcMey8
         e77g==
X-Gm-Message-State: AOAM530rFFHd9ApSHX+nHlQLdd74zwvj52/GWO/uYRZ5oJPgR9Tf9x0x
	eNbe0w0b0XwaIjlBUjNY8eHM3cCj2SzJXQKuQDsxnpdrDYRTQw==
X-Google-Smtp-Source: ABdhPJwL2sdLhCZM4SJ+IOPJ7M/y+Znp9WYLlN7mClugBkpD8kZWUmrBA6xsOqWR8BBVlCPdU84MmcRYQ++uZ1AOy6A=
X-Received: by 2002:a17:907:6d22:: with SMTP id sa34mr3193203ejc.635.1641902419618;
 Tue, 11 Jan 2022 04:00:19 -0800 (PST)
MIME-Version: 1.0
From: tr3e wang <tr3e.wang@gmail.com>
Date: Tue, 11 Jan 2022 20:00:08 +0800
Message-ID: <CA+eGCHb3=V20Fh-dda20O6xtfBszuKmHnqSupsmrz_1Xuj3N4Q@mail.gmail.com>
To: oss-security@lists.openwall.com
Cc: Daniel Borkmann <daniel@iogearbox.net>
Content-Type: multipart/alternative; boundary="0000000000007a2dc305d54d327c"
Subject: [oss-security] CVE-2021-4204: Linux Kernel eBPF Improper Input Validation Vulnerability

--0000000000007a2dc305d54d327c
Content-Type: text/plain; charset="UTF-8"

Hi all,

This vulnerability allows local attackers to escalate privileges on
affected installations of Linux Kernel. An attacker must first obtain the
ability to execute low-privileged code on the target system in order to
exploit this vulnerability.

The specific flaw exists within the handling of eBPF programs. The issue
results from the lack of proper validation of user-supplied eBPF programs
prior to executing them. An attacker can leverage this vulnerability to
escalate privileges and execute code in the context of the kernel.
BE AWARE, unprivileged bpf is disabled by default in most distros.

*Affected Version*

    Linux kernel 5.8 or later (For now, 5.8 - 5.16)

*Root Cause Analysis*

eBPF provides some helper functions, and the verifier checks whether it is
used properly according to bpf_func_proto.

For some helper functions require a PTR_TO_MEM as an argument, the verifier
MUST know the memory size through the next argument to prevent OOB.
(see
https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git/tree/kernel/bpf/verifier.c?h=v5.10.83#n4579
)

However, bpf_ringbuf_submit and bpf_ringbuf_discard do not follow the
aboving rule. the verifier never know the size of memory passing into these
two helper functions, resulting in OOB.
(see
https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git/tree/kernel/bpf/ringbuf.c?h=v5.10.83#n423
)

*Exploit Code*

Exploit code will be delayed for 7 days and will be posted at 12:00 UTC,
Jan 18, 2022

*Mitigations*

set kernel.unprivileged_bpf_disabled to 1

BE AWARE AGAIN, unprivileged bpf is disabled by default in most distros.

*Credits*

tr3e of SecCoder Security Lab


Best Regards,
tr3e

--0000000000007a2dc305d54d327c--
