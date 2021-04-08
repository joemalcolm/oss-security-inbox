X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1297" "Thursday" "8" "April" "2021" "16:24:26" "+0100" "Piotr Krysiuk" "piotras@gmail.com" nil "30" "[oss-security] [CVE-2021-29154] Linux kernel incorrect computation of branch displacements in BPF JIT compiler can be abused to execute arbitrary code in Kernel mode" nil nil nil "4" nil nil (number mark "U       piotras@gmai Apr  8   30/1297  " thread-indent "\"[oss-security] [CVE-2021-29154] Linux kernel incorrect computation of branch displacements in BPF JIT compiler can be abused to execute arbitrary code in Kernel mode\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] [CVE-2021-29154] Linux kernel incorrect computation of branch displacements in BPF JIT compiler can be abused to execute arbitrary code in Kernel mode" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 20255 invoked by uid 550); 8 Apr 2021 15:30:38 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 16190 invoked from network); 8 Apr 2021 15:24:48 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=aQY6n7MVaOx+0xVzHKySnNGQABUZDt3uCaeTHAmr6Jc=;
        b=dCxVfIZlFRfKrNvNLCKO3a031ZSfQOMlHefLOkWIOjW+1ATqVSvd8xCENa3efA4+7/
         fbz5Fbh5JtH+ybV25M2cSvQxmDAX+S8wGBeV8mKG08i9Q4j6KeWuWlMl+jWC+0HtfiJ9
         I4jYIBe0exhh03eLx625mXCzw49G80mJkHBnGpeSUB9qwKRHnaJhd12A0b7/0ZkLYz6C
         pAZi+1NlREYd6F+ggRdU6W+KFL5CiRVFvNpHisgy9tfCKUVRiKJaDjtAysmxLdHU0sza
         lqmOsRcIOsqBtN1YMGT5ph+dwSWJcBRwowaOBAogSKu5AmwUqjg6PLzwHV61ka/wtxk1
         LLRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=aQY6n7MVaOx+0xVzHKySnNGQABUZDt3uCaeTHAmr6Jc=;
        b=PcGpQaZiYtMI8FF7yAltGmdKc5mchL6NmirrDfo0fQd7NJVSV4DqIUBHSpIoPcDmYN
         hwcfih2Ft2Yk58i5+r3dWkfklhft89T5zCtCJPPXUQWReiEJHcse/vnRWkqGvLP3Ambu
         OJgA67dwJCbP2DUnqol3RUE/GwyOZ/tewmlmpQt28p94QMcH3ldbyOtcf5AOYj8ag8wN
         qrZPMph4fJurX/B2v/KB9zB2wuMZaHuct0nuLoHItarYfpUGRJZx98W0tXukCZKzCwj7
         hYFv9hCYiImScRrk2hvv35+hTB5AxUUTok1N0Cj4AXfQQRt3BmCMRk0kNksm9yBpoHc+
         outw==
X-Gm-Message-State: AOAM533luQrEBPuhi2OjiGnbD8wIn4KmaWj1honShhjsEo4QAs+67u8m
	R8C3kgfC72FJiudF6AFlw+7DiB2kIbAvZSxO3IajtdD1QDMGEjJy
X-Google-Smtp-Source: ABdhPJxX1bs2xKnOr7emysiX9bC77uqWUGlEd0dFdvxme2ZTRYU7TkqHSOItg/YgFOwWOYvWpS1NlBVmQ+SGCldT/qo=
X-Received: by 2002:adf:ba94:: with SMTP id p20mr12257780wrg.300.1617895476906;
 Thu, 08 Apr 2021 08:24:36 -0700 (PDT)
MIME-Version: 1.0
From: Piotr Krysiuk <piotras@gmail.com>
Date: Thu, 8 Apr 2021 16:24:26 +0100
Message-ID: <CAFzhf4pqTAOivUgVSOLw74yCOoGOS1Fm-8-xWpy-JOADMkKrKA@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] [CVE-2021-29154] Linux kernel incorrect computation of branch
 displacements in BPF JIT compiler can be abused to execute arbitrary code in
 Kernel mode

An issue has been discovered in the Linux kernel that can be abused by
unprivileged local users to escalate privileges.

The issue is with how BPF JIT compilers for some architectures compute
branch displacements when generating machine code. This can be abused
to craft anomalous machine code and execute it in the Kernel mode,
where the control flow is hijacked to execute unsafe code.

I developed PoCs for x86-64 and x86-32 architectures to demonstrate
shellcode execution in Kernel mode by unprivileged local users.

One of these PoCs has been shared privately with <security@kernel.org>
to assist with fix development.

Patches to mitigate the issue for x86-64 and x86-32 architectures are
available. These patches do not attempt to correct the underlying
algorithm and instead assert that all computations were performed
correctly, such that all unsafe inputs are rejected.

The patches were published via BPF subsystem public git repository:
* https://git.kernel.org/pub/scm/linux/kernel/git/bpf/bpf.git/patch/?id=e4d4d456436bfb2fe412ee2cd489f7658449b098
* https://git.kernel.org/pub/scm/linux/kernel/git/bpf/bpf.git/patch/?id=26f55a59dc65ff77cd1c4b37991e26497fc68049

# Discoverer

Piotr Krysiuk <piotras@gmail.com>

# References

CVE-2021-29154 (reserved via https://cveform.mitre.org/)
