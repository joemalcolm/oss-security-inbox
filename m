X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2201" "Monday" "21" "June" "2021" "17:47:27" "+0300" "Adam Morrison" "mad@cs.tau.ac.il" nil "45" "[oss-security] [CVE-2021-33624] Linux kernel BPF protection against speculative execution attacks can be bypassed to read arbitrary kernel memory" nil nil nil "6" nil nil (number mark "U       mad@cs.tau.a Jun 21   45/2201  " thread-indent "\"[oss-security] [CVE-2021-33624] Linux kernel BPF protection against speculative execution attacks can be bypassed to read arbitrary kernel memory\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] [CVE-2021-33624] Linux kernel BPF protection against speculative execution attacks can be bypassed to read arbitrary kernel memory" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3239 invoked by uid 550); 21 Jun 2021 14:56:13 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32206 invoked from network); 21 Jun 2021 14:47:48 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=A/hBA8QdigmJwDK+xAYuDfqr8x0thxMTs6fz02iW2fk=;
        b=PKpvJ64P2dmi1ntmSLCP+umr5EtqAx2mDEEjzMBNMvgHG+azbrCD6CQ5cS5x90tq66
         Pgk4fihOD92JLMF3+a9sm18+vCf1YBeJ9eho/o4HBODeEKfVNUmhLems7PHEhv0Jw3vg
         X2gppzPeFzERzPOuQfkr9aws7MtfiRTaJ3cxrYYTp3iHv4xZlLIpdRkM421atwE92uiU
         7KGoDFX+QPJkMHZFHs7O/CDYXMnyNSWZ026mdth//GEvOuyGqRQ9vc9FAzNG33W2J2lN
         hENQntWit5hT/xsakW6UNLM2js4CQHKLMk7cN1q/m8lfEHE+ieAJyp6XsBeaZQ/JYqVN
         C/Og==
X-Gm-Message-State: AOAM5330H3FQH9lh1+A/EoJDGy4AaMR3+TiBlLhyTAG5rgPRum6WjXNe
	dwFThJMnDjLvZY3lUv1704MHhL8DoSn3qA==
X-Google-Smtp-Source: ABdhPJxYb69S0tHFRBCAntd7tw6uXi5qyHcKnJmTVi4kC1Is88aKWZSTOiOsHBXRK/i9EcDYEj6f5A==
X-Received: by 2002:a17:906:6847:: with SMTP id a7mr21231845ejs.268.1624286856880;
        Mon, 21 Jun 2021 07:47:36 -0700 (PDT)
X-Received: by 2002:a1c:7c12:: with SMTP id x18mr18261940wmc.122.1624286855965;
 Mon, 21 Jun 2021 07:47:35 -0700 (PDT)
MIME-Version: 1.0
From: Adam Morrison <mad@cs.tau.ac.il>
Date: Mon, 21 Jun 2021 17:47:27 +0300
X-Gmail-Original-Message-ID: <CAHMfzJkhZ01FG62sfMdXayK_NwD3g=5NcpGmg+-PVZLBpjJ9Fw@mail.gmail.com>
Message-ID: <CAHMfzJkhZ01FG62sfMdXayK_NwD3g=5NcpGmg+-PVZLBpjJ9Fw@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] [CVE-2021-33624] Linux kernel BPF protection against speculative
 execution attacks can be bypassed to read arbitrary kernel memory

The Linux kernel BPF subsystem's protection against speculative
execution attacks (Spectre mitigation) can be bypassed.

On affected systems, an unprivileged BPF program can exploit this
vulnerability to leak the contents of arbitrary kernel memory (and
therefore, of all physical memory) via a side-channel.

The issue is that when the kernel's BPF verifier enumerates the
possible execution paths of a BPF program, it skips any branch
outcomes that are impossible according to the ISA semantics.
However, when the BPF program executes, such branch outcomes may be
mispredicted and so a path could speculatively execute that was
missed by the verifier.

For example, when analyzing a memory load instruction, the paths
inspected by the verifier could use an address register that is always
in-bounds, and so the instruction is deemed safe. Whereas a path
missed by the verifier could put an arbitrary attacker-controlled
scalar into the address register before a branch that mispredicts
to the load instruction. This can be abused to read and leak the
contents of any kernel address via a side-channel.

Several PoCs of this vulnerability have been shared privately with
<security@kernel.org> and the BPF maintainers to assist developing
the fix.

The following patch series (available from the mainline git
repository) fixes the vulnerability (the 3rd one is the main patch):

* https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/patch/?id=d203b0fd863a2261e5d00b97f3d060c4c2a6db71
* https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/patch/?id=fe9a5ca7e370e613a9a75a13008a3845ea759d6e
* https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/patch/?id=9183671af6dbf60a1219371d4ed73e23f43b49db
* https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/patch/?id=973377ffe8148180b2651825b92ae91988141b05

Thanks to Piotr Krysiuk for collaborating on this advisory.

# Discoverers

Ofek Kirzner <ofekkir@gmail.com> and Adam Morrison <mad@cs.tau.ac.il>
Benedict Schlueter <benedict.schlueter@rub.de> (independent report)
Piotr Krysiuk <piotras@gmail.com> (independent report)

# References

CVE-2021-33624 (reserved via https://cveform.mitre.org/)
