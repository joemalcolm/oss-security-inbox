X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2021/05/27/1
Message-ID: <CAFzhf4r3C=hqrH_yXVQExeQV5iqrdim7kp-NBDTm6FmSCicbeQ@mail.gmail.com>
Date: Wed, 26 May 2021 23:09:05 +0100
From: Piotr Krysiuk <piotras@...il.com>
To: oss-security@...ts.openwall.com
Subject: [CVE-2021-33200] Linux kernel enforcing incorrect limits for pointer arithmetic operations by BPF verifier can be abused to perform out-of-bounds reads and writes in kernel memory
Content-Type: text/plain; charset=utf-8

An issue has been discovered in the Linux kernel that can be abused by
unprivileged local users to escalate privileges.

The issue is with how the BPF verifier computes limits to enforce on
the pointer arithmetic operations in BPF programs. In a particular
scenario these limits are computed incorrectly. When any incorrect
limits are enforced, performing the pointer arithmetic operation may
lead to out-of-bounds reads and writes in the kernel memory.

I developed PoCs that allow unprivileged local users to examine and
modify critical data structures in the kernel memory. It is possible,
for example, to reliably hijack control flow.

One of these PoCs has been shared privately with <security@...nel.org>
to assist with fix development.

The buggy computation was introduced with the commit
7fedb63a8307dda0ec3b8969a3b233a1dd7ea8e0 ("bpf: Tighten speculative
pointer arithmetic mask").

The patches are available from BPF subsystem public git repository.
The full patch series is as follows:

* https://git.kernel.org/pub/scm/linux/kernel/git/bpf/bpf.git/patch/?id=3d0220f6861d713213b015b582e9f21e5b28d2e0
* https://git.kernel.org/pub/scm/linux/kernel/git/bpf/bpf.git/patch/?id=bb01a1bba579b4b1c5566af24d95f1767859771e
* https://git.kernel.org/pub/scm/linux/kernel/git/bpf/bpf.git/patch/?id=a7036191277f9fa68d92f2071ddc38c09b1e5ee5

# Discoverers

Piotr Krysiuk <piotras@...il.com>

# References

CVE-2021-33200 (reserved via https://cveform.mitre.org/)
