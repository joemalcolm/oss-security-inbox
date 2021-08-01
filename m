X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2729" "Sunday" "1" "August" "2021" "20:40:13" "+0100" "Piotr Krysiuk" "piotras@gmail.com" nil "56" "[oss-security] [CVE-2021-34556,CVE-2021-35477] Linux kernel BPF protection against Speculative Store Bypass can be bypassed to disclose arbitrary kernel memory" nil nil nil "8" nil nil (number mark "U       piotras@gmai Aug  1   56/2729  " thread-indent "\"[oss-security] [CVE-2021-34556,CVE-2021-35477] Linux kernel BPF protection against Speculative Store Bypass can be bypassed to disclose arbitrary kernel memory\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] [CVE-2021-34556,CVE-2021-35477] Linux kernel BPF protection against Speculative Store Bypass can be bypassed to disclose arbitrary kernel memory" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9799 invoked by uid 550); 1 Aug 2021 20:33:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17810 invoked from network); 1 Aug 2021 19:40:35 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=MRN5iDj8y0Gc5mEbs+2fIh3Y/QU5QIQ758n+5sq85Y0=;
        b=bN2cA0hlfQfBdpvFsI4F2qkx1OOglWo1jCa2HBQPZNPwhlCZhiIfruDpWQAgbsZElo
         uVGufXCzg/1Cr6XRExdCwrrcg0aMSk4+jc7x+QWZbE4GCpc+9gaH38i9+47ZWkVU8OXc
         rixHgYtaea8kV1jeqinrSKaoNU3khACNfCcy048GjwwXBu8wdZpF0rCMzRIUzAy3b7Wr
         4qLqTxvA807dX7fNFZXXyL5GMP2FReS9OU/PzhYWgZZI/DPRjJMI2LtjnZdcCF9A5vxZ
         3QPIBBrKs+OoNFLuKYEKzJBSe8/KWdiMA96CyQX2cxeo1TX22gI2gBiEG7z2HfJFml3r
         ObXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=MRN5iDj8y0Gc5mEbs+2fIh3Y/QU5QIQ758n+5sq85Y0=;
        b=Q7Zspkalrtwb3JUhz/Z61qt/h/AZqAS9S5KRNaAvcQ5fhRDO3l136yVn8wQvJnOoOO
         scu/4y9bEjU8zf6mjbcl+5wR7kzZ77iBGCJDKeQnLL5PkIjn1Y6NAscq+p/ZNpOVYFKl
         UX1Vv2f45Y7EepiNwH+Nqn3PppJ1idAsn5UW4wuQXeXZIrT3TTgnUrUHTRT5n2Y9kYr1
         aGKC9sbX9ks5Z7Ee8BjVP+1u928fJXRZ9vOvBN5EO91tsue+3S5deE0wB9g4dhqCjiRz
         sv1G06uFGQgx88KitZFx42AxFsH7s1Iy0QoIF7zhdyL7eoag1lFG6TzzLrd062l/i5Le
         Zdqw==
X-Gm-Message-State: AOAM533gehhs9KDXT053I/DKOGF4hdjwPm+5Jbgy0ngZQFlZl2XpJbsH
	EqXxp+RoC6I9m17HePoirWZPjsfeToNZSAo+e5AVQDBXEtCiwQ==
X-Google-Smtp-Source: ABdhPJxBAPKZr35Vamfx8mNKf5o9HyiJriG5wfH1vRcog8SI/HRjwwmaPrQbIZEs8IHyH2R3IIl8oYxoZu9xK52nd6s=
X-Received: by 2002:adf:ef0d:: with SMTP id e13mr14310941wro.390.1627846824043;
 Sun, 01 Aug 2021 12:40:24 -0700 (PDT)
MIME-Version: 1.0
From: Piotr Krysiuk <piotras@gmail.com>
Date: Sun, 1 Aug 2021 20:40:13 +0100
Message-ID: <CAFzhf4pDZV74SeGurKt1iW=Egt5NwZ=Zvz3Y9dsq86wLfxupOQ@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] [CVE-2021-34556,CVE-2021-35477] Linux kernel BPF protection against
 Speculative Store Bypass can be bypassed to disclose arbitrary kernel memory

Two separate issues have been discovered in the Linux kernel mechanism
to mitigate Speculative Store Bypass in BPF.

On affected systems, an unprivileged BPF program can exploit any of
these issues to disclose the content of arbitrary kernel memory via a
side-channel.

The first issue is that when protecting memory operations against
Speculative Store Bypass, the technique used by the BPF verifier to
manage speculation is unreliable. Specifically, each potentially
problematic memory store operations is sanitized by inserting a
preempting store of zero value. The preempting store is incorrectly
assumed to complete "fast" as it only depends on the BPF stack frame
pointer. However a few different scenarios have been identified where
this assumption is invalid, by demonstrating a dependent load
instruction to speculatively execute ahead of the preempting store.
Practical attacks have been shown to disclose content of arbitrary
kernel memory via a side-channel. CVE-2021-35477 has been reserved for
this issue.

The second issue is that when identifying memory store operations to
be protected against Speculative Store Bypass, any uninitialized BPF
stack locations are not considered. And so for each BPF stack
location, the BPF verifier never attempts to protect the first store
operation. Further, the BPF stack is allocated without any sanitation
of preexisting memory content. Thus any later load instruction, that
depends on the unprotected store, may speculatively execute ahead of
the store to use unsanitized memory. Whenever it is possible to
control content of the unsanitized memory before running the BPF
program, this issue can be abused to perform speculative load from
arbitrary memory location. A practical attack has been demonstrated to
disclose content of arbitrary kernel memory via a side-channel.
CVE-2021-34556 has been reserved for this issue.

Note that each issue can be abused independently of the other, relying
on non-overlapping bugs.

The PoCs have been shared privately with BPF subsystem maintainers to
assist with fix development.

The available fix reimplements the mitigation to follow techniques
recommended by the CPU vendors and is available from mainline kernel
git repository:

* https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/patch/?id=f5e81d1117501546b7be050c5fbafa6efd2c722c
* https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/patch/?id=2039f26f3aca5b0e419b98f65dd36481337b86ee

# Discoverers

Benedict Schlueter <benedict.schlueter@rub.de> (CVE-2021-34556)
Piotr Krysiuk <piotras@gmail.com> (CVE-2021-35477)

# References

CVE-2021-34556 (reserved via https://cveform.mitre.org/)
CVE-2021-35477 (reserved via https://cveform.mitre.org/)
