X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1448" "Wednesday" "15" "September" "2021" "18:47:16" "+0100" "Piotr Krysiuk" "piotras@gmail.com" nil "35" "[oss-security] [CVE-2021-38300] Linux kernel cBPF JIT compiler for MIPS emits incorrect branches leading to execution of arbitrary Kernel code" nil nil nil "9" nil nil (number mark "U       piotras@gmai Sep 15   35/1448  " thread-indent "\"[oss-security] [CVE-2021-38300] Linux kernel cBPF JIT compiler for MIPS emits incorrect branches leading to execution of arbitrary Kernel code\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] [CVE-2021-38300] Linux kernel cBPF JIT compiler for MIPS emits incorrect branches leading to execution of arbitrary Kernel code" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 26457 invoked by uid 550); 15 Sep 2021 17:47:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26439 invoked from network); 15 Sep 2021 17:47:39 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to;
        bh=1QBUSyjLS5thLDLZmGrU1bX2qCBZ2vB1iz8Sfr7p0kM=;
        b=RClCJLnfuVaF7qsQJpy51cbqh5OoU0P088jvG0QOUkUHOk5XoGwXOeduTsFk+kHQL8
         2k858nsvVjISkTxKmWlBfR36Qz9jhJk/zGqlcRhD6fT8dIOYnVu/QI6h86n+uIxhzcZj
         wf+1iH7qYX4e3tgflOiJL8yENm2r8RMTAGb6QXWNNJstDf0ltJdaszzZ5ygmTSDMHRY1
         XSjBVjWZNMDs8ghQ067oYbBeWy1tXgp+WLlyBFxq8E+yBokuEiL5I0IZQWAGzGQfLl58
         yS00CyYJwD28NKm/LA7D3vlwucJw9+b3JQn+YdSadIADS6wAS/lKCuysqJe5ijidxxTg
         avpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=1QBUSyjLS5thLDLZmGrU1bX2qCBZ2vB1iz8Sfr7p0kM=;
        b=ZFicl1QiVtGFR6kZS7rzch0Od7qg1daWoSb+IXyCOYZ1lcfUVaWRl1ab6GRkviAdS0
         zf/S2woyubhhCqT2xKdll/EAZ8hizlF3DOH2blxCjXflJqijUMUZfTiz4xZNdReLUyCk
         Ub28/XDiCvYbzFeQ93NCdkLAsi+IIqw0tSbyVgGmnZgWpReQupDqj1gmiat+KMNBZADS
         gtaT0+1QcC8FbAkycRfAs+AlD/hggb97cuzD2YQIh3X3DnwHDSP9YdSByx7Amxlecu4x
         HPBnUEsPQSc6acgwgCqHJGJlBoIuJKmAbkfwOR5yZ5S52l9rQ5ZTekg7/bdEGUFkrlaa
         o0Rw==
X-Gm-Message-State: AOAM531+gtwr0r0Phqoqq0cA1XfoyJj5JSpRyzv/x2J2yUJS3Z/Opf39
	c99q5eP/vYMxwmzFE2AypCe9AqobE8vZ43p2h1C0HpEluW4Chw==
X-Google-Smtp-Source: ABdhPJwUYdGpaKZIBqEUEBwR9aJ6ja9ko5ZJC8bdwmdAVLvV4VjfzSVSB9heZtpPbXw6i6FwC4SY5UZUv2EpxaX9pMg=
X-Received: by 2002:adf:e546:: with SMTP id z6mr1415859wrm.346.1631728047304;
 Wed, 15 Sep 2021 10:47:27 -0700 (PDT)
MIME-Version: 1.0
From: Piotr Krysiuk <piotras@gmail.com>
Date: Wed, 15 Sep 2021 18:47:16 +0100
Message-ID: <CAFzhf4oRPW_Qncavep6+Rm24eEuvahatZyWxRQwoKUn_8x65mg@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] [CVE-2021-38300] Linux kernel cBPF JIT compiler for MIPS emits
 incorrect branches leading to execution of arbitrary Kernel code

An issue has been discovered in the Linux kernel that can be abused by
unprivileged local users to escalate privileges.

The issue is with how the cBPF JIT compiler for MIPS generates branch
instructions. The conditional branch instructions on MIPS use 18-bit
signed offsets allowing for a branch range of 128 KBytes (backward and
forward). However, this limit is not observed by the cBPF JIT compiler,
and so the JIT compiler emits out-of-range branches when translating
certain cBPF programs. This can be abused to craft anomalous machine
code, where the control flow is hijacked to execute arbitrary Kernel
code. Such machine code may be crafted and executed by unprivileged
local users.

I developed a PoC that demonstrates code execution in Kernel mode by
unprivileged local users via setsockopt().

Note that the recently introduced BPF_UNPRIV_DEFAULT_OFF is not
effective against issues in cBPF, including this one.

The issue has been reported to security@kernel.org and included two
alternative patch proposals. The kernel maintainers picked one of the
proposed patches and suggested to send it to the BPF subsystem public
mailing list, before it can be merged into the BPF subsystem public git
repository.

The patch is currently available from:
* https://lore.kernel.org/bpf/20210915160437.4080-1-piotras@gmail.com/

# Discoverer

Piotr Krysiuk <piotras@gmail.com>

# References

CVE-2021-38300 (reserved via https://cveform.mitre.org/)
