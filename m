X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/27/3
Message-ID: <ad8263c0-25fd-4d01-bd3c-466dabf0ad37@suse.de>
Date: Tue, 27 Oct 2026 12:57:23 +0100
From: Ricardo Branco <rbranco@...e.de>
To: oss-security@...ts.openwall.com
Subject: Seccomp denylist bypass via 32-bit syscall argument truncation
Content-Type: text/plain; charset=utf-8

Hello,

I am writing to share details regarding a seccomp filter bypass pattern
affecting several projects (including containerd, Podman, systemd, and
QEMU) that rely on denylists for system call argument inspection.

The issue stems from an evaluation mismatch between seccomp-bpf and the
Linux kernel when 32-bit integer arguments are passed via 64-bit CPU
registers on 64-bit architectures.


Vulnerability Details
=====================

Many system calls accept 32-bit integers as arguments. For example, the
first argument to socket(2) (the address family/domain) is an 'int'. On
64-bit architectures, this argument is loaded into a 64-bit register.

When handling the system call, the kernel implicitly ignores or
truncates the upper 32 bits. However, seccomp filters inspect the full
64-bit register value unless an explicit mask is applied.

When a seccomp profile implements a denylist for a specific argument
value, an attacker can bypass the filter by setting non-zero bits in
the upper 32 bits of the register:

1. A seccomp rule attempts to block socket creation for AF_VSOCK (0x28)
    by matching on (arg0 == 0x28).
2. The caller passes 0x100000028 in the corresponding 64-bit register.
3. Seccomp evaluates (0x100000028 == 0x28), which evaluates to false.
    The denylist rule is not triggered, and seccomp allows the syscall.
4. The kernel receives the syscall, casts/truncates the argument to a
    32-bit int (0x28), and creates the AF_VSOCK socket.

Impact
======

Among the projects reviewed, systemd was the most significantly
affected (see issue #44134). While RestrictAddressFamilies= allowed
bypassing socket family restrictions, the impact on RestrictNamespaces=
is particularly critical.

RestrictNamespaces= relies on seccomp to prevent services from creating
or joining namespaces via unshare(2), clone(2), and setns(2). Because
32-bit flag arguments were matched without masking upper register bits,
denylist configurations could be bypassed.


Remediation
===========

To prevent this bypass:

1. Argument Masking:
    Filters must mask 32-bit arguments to their low 32 bits before
    evaluating them (e.g., using SCMP_CMP_MASKED_EQ in libseccomp).

2. Allowlists over Denylists:
    Avoid denylists for system call arguments. Enforcing a strict
    default-deny policy with an allowlist of valid 64-bit values
    inherently prevents unexpected upper-bit payloads.

Documentation patches addressing this pitfall have been submitted across
the libseccomp C, Go, and Rust bindings.


Background and Tooling
======================

This behavior was identified during seccomp profile analysis using
seccat (a tool converting seccomp JSON to/from a compact DSL) and
secprobe (a non-destructive rule testing utility leveraging
seccomp_unotify(2) to inspect syscalls without executing them).

https://github.com/ricardobranco777/seccat

An improvement to seccomp-tools was suggested:
   https://github.com/david942j/seccomp-tools/issues/407


Affected Projects and References
================================

- containerd:
https://github.com/containerd/containerd/issues/14348

- Podman (container-libs):
https://github.com/podman-container-tools/container-libs/issues/1248

- QEMU:
   https://gitlab.com/qemu-project/qemu/-/work_items/4671

- systemd:
   https://github.com/systemd/systemd/issues/44134
   https://github.com/systemd/systemd/issues/44148



Best regards,
Ricardo Branco
