X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2019/02/18/2
Message-ID: <CAG48ez2exshg9QipMkiuHK7rgiaJCO4KO8XMa_C-DiddfmK78A@mail.gmail.com>
Date: Mon, 18 Feb 2019 16:53:06 +0100
From: Jann Horn <jannhorn@...glemail.com>
To: oss-security@...ts.openwall.com
Cc: Felix Wilhelm <fwilhelm@...gle.com>
Subject: Linux kernel: three KVM bugs (CVE-2019-6974, CVE-2019-7221, CVE-2019-7222)
Content-Type: text/plain; charset=utf-8

Three vulnerabilities were recently fixed in KVM-related code; two
found by Felix Wilhelm, one by me:

CVE-2019-7222
https://bugs.chromium.org/p/project-zero/issues/detail?id=1759
KVM: uninitialized memory leak in kvm_inject_page_fault
Fix: https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=353c0956a618a07ba4bbe7ad00ff29fe70e8412a
guest-reachable, requires nested virtualization support

CVE-2019-7221
https://bugs.chromium.org/p/project-zero/issues/detail?id=1760
KVM: use-after-free using emulated vmx preemption timer
Fix: https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=ecec76885bcfe3294685dc363fd1273df0d5d65f
guest-reachable, requires nested virtualization support

CVE-2019-6974
https://bugs.chromium.org/p/project-zero/issues/detail?id=1765
Linux: kvm_ioctl_create_device() installs fd before taking reference
Fix: https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=cfa39381173d5f969daf43582c95ad679189cbc9
reachable only by host userspace with access to /dev/kvm

These are all fixed in the following stable releases:
https://cdn.kernel.org/pub/linux/kernel/v4.x/ChangeLog-4.20.8
https://cdn.kernel.org/pub/linux/kernel/v4.x/ChangeLog-4.19.21
https://cdn.kernel.org/pub/linux/kernel/v4.x/ChangeLog-4.14.99
https://cdn.kernel.org/pub/linux/kernel/v4.x/ChangeLog-4.9.156
