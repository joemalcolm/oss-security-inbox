X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2299" "Sunday" "18" "April" "2021" "13:16:39" "+0100" "Piotr Krysiuk" "piotras@gmail.com" nil "42" "[oss-security] [CVE-2021-29155] Linux kernel protection for sequences of pointer arithmetic operations against speculatively out-of-bounds loads can be bypassed to leak content of kernel memory" nil nil nil "4" nil nil (number mark "U       piotras@gmai Apr 18   42/2299  " thread-indent "\"[oss-security] [CVE-2021-29155] Linux kernel protection for sequences of pointer arithmetic operations against speculatively out-of-bounds loads can be bypassed to leak content of kernel memory\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] [CVE-2021-29155] Linux kernel protection for sequences of pointer arithmetic operations against speculatively out-of-bounds loads can be bypassed to leak content of kernel memory" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 16227 invoked by uid 550); 18 Apr 2021 12:31:46 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30557 invoked from network); 18 Apr 2021 12:17:02 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=WTPo2rXyC8mAPgXSmb7Fosa4w6TxE6/vewdWjGazb2s=;
        b=tpDnihc73xG0dppWBEo9jTzim90gHmBolpBmpxU1wxntvpKg0boGt0f077NVTjckir
         K1nTyasRwLuhPLxPyh9ttgueY05e5G1zaXYGVfp0SPRFahJiMCz53gfjElWxdTlHLpnF
         iqcw0I/DBY0GHROM4plIY+WCSnuWE9sd8v89Zt6Y51ayeLaxX4rQcvEwrOE1jcl0AYhi
         USZAwXW5XyOxbWSaXQJkNQWnxggtDqNyw46+jLCxAWmzj6VoBiEl3738lv4zP8V+qQwD
         wsCKRC8r66tM82aX2X/HYeK2Maw1AFisxY3QfXgfbQ5tMx3s38s1YYjfl6pp4uga4ero
         1+OA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=WTPo2rXyC8mAPgXSmb7Fosa4w6TxE6/vewdWjGazb2s=;
        b=kUdgs5q6BTv6/94GxjBmqL57V0VvoPu29Vkivj+Bdd+/igk2ilwzA2t4jP19sY97w+
         iAlitN8CU0vt8iYiQIPrzn3YX94ondutntTTcR9VKuX142004mNERMNHzahPiT9G6pmp
         8Q8fgaKKD+mW1lRt/hLOeI/8Cdzha/qa9q+Em0oHafvxAxc80XL9NtX+DPlV/g4N8lxB
         QqUZXz52E6TDfTxgidz37cxBNLByxBWZj+GzXHfZFoJhOmxhpmkwsJ1h/9NaFku4YWup
         0l49qiWi5G8z2t1Jnx7J2f7PLbTjLQOQcYuQjkltg+OY1UHtM9jrgj57gN/+C7wu1Bhq
         KHJA==
X-Gm-Message-State: AOAM53031Z+PYAteRKU4P85JupYz64m0X41nDYumxaNKrHCuwupvokWv
	DrM4TA2LKiqCOhr6CWyw4uOZ1oG7lp4gNv7sTlwKE8YHChJIgQ==
X-Google-Smtp-Source: ABdhPJzbsVsuvyZ/70t2bRvPkTf7ToKjzQVtj0b5j1Pjq6KqvQlIHk2IXp1v6MXM7d58EzTh7vmQnoP/nnZkbhgsp/E=
X-Received: by 2002:adf:f302:: with SMTP id i2mr8604109wro.423.1618748210343;
 Sun, 18 Apr 2021 05:16:50 -0700 (PDT)
MIME-Version: 1.0
From: Piotr Krysiuk <piotras@gmail.com>
Date: Sun, 18 Apr 2021 13:16:39 +0100
Message-ID: <CAFzhf4qZyCD-V0jZJp1QbiTXTOugkme7=Me-XJ-YfP=pofQpdw@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] [CVE-2021-29155] Linux kernel protection for sequences of pointer
 arithmetic operations against speculatively out-of-bounds loads can be
 bypassed to leak content of kernel memory

An issue has been discovered in the Linux kernel mechanism to mitigate
speculatively out-of-bounds loads (Spectre mitigation).

Unprivileged BPF programs running on affected systems can bypass
the protection and execute speculatively out-of-bounds loads from
the kernel memory. This can be abused to extract contents of kernel
memory via side-channel.

The identified gap is that when protecting sequences of pointer
arithmetic operations against speculatively out-of-bounds loads,
the pointer modification performed by the first operation is not
correctly accounted for when restricting subsequent operations.

I developed a PoC that allows unprivileged local users to extract
contents of 31 KByte window within the kernel memory.

The PoC has been shared privately with <security@kernel.org> to
assist with fix development.

The patches are available from Linux kernel mainline public git
repository.

The upstream fix depends on refactoring of the BPF verifier logic.
The full patch series is as follows:

* https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/patch/kernel/bpf/verifier.c?id=9601148392520e2e134936e76788fc2a6371e7be
* https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/patch/kernel/bpf/verifier.c?id=6f55b2f2a1178856c19bbce2f71449926e731914
* https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/patch/kernel/bpf/verifier.c?id=24c109bb1537c12c02aeed2d51a347b4d6a9b76e
* https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/patch/kernel/bpf/verifier.c?id=b658bbb844e28f1862867f37e8ca11a8e2aa94a3
* https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/patch/kernel/bpf/verifier.c?id=a6aaece00a57fa6f22575364b3903dfbccf5345d
* https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/patch/kernel/bpf/verifier.c?id=073815b756c51ba9d8384d924c5d1c03ca3d1ae4
* https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/patch/kernel/bpf/verifier.c?id=f528819334881fd622fdadeddb3f7edaed8b7c9b
* https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/patch/kernel/bpf/verifier.c?id=7fedb63a8307dda0ec3b8969a3b233a1dd7ea8e0

# Discoverers

Piotr Krysiuk <piotras@gmail.com>
Benedict Schlueter (independent report)

# References

CVE-2021-29155 (reserved via https://cveform.mitre.org/)
