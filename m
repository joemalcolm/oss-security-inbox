X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1364" "Monday" "18" "February" "2019" "16:53:06" "+0100" "Jann Horn" "jannhorn@googlemail.com" "<CAG48ez2exshg9QipMkiuHK7rgiaJCO4KO8XMa_C-DiddfmK78A@mail.gmail.com>" "26" "[oss-security] Linux kernel: three KVM bugs (CVE-2019-6974, CVE-2019-7221, CVE-2019-7222)" "^Cc:" nil nil "2" "2019021815:53:06" "[oss-security] Linux kernel: three KVM bugs (CVE-2019-6974, CVE-2019-7221, CVE-2019-7222)" (number mark "        jannhorn@goo Feb 18   26/1364  " thread-indent "\"[oss-security] Linux kernel: three KVM bugs (CVE-2019-6974, CVE-2019-7221, CVE-2019-7222)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 9585 invoked by uid 550); 18 Feb 2019 16:24:37 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 3632 invoked from network); 18 Feb 2019 15:53:46 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=20161025;
        h=mime-version:reply-to:from:date:message-id:subject:to:cc;
        bh=S17+jIj3DzvdMkWk1UIK0wi8e0Ja8mzevOLbZhFbTMM=;
        b=ZbUbFZadkuYhdrXAZA5Mdnprn++gzb0goVZ/jH4xcY0Rh5f/HeKEGJoSKKzLqFCKQ2
         zTDYUPF0S6oMzsrI4LImWocbOIcxuZTN0KCNVHQneXXKk4fNHcqJhxs5Xif7zaRv1Wgb
         /D1EHVEZa2DuSHTUzy4+SQ40D8/51htbLIthP4o22BFFyh8p1gmQvM292btITZnDevcp
         4oNdQnEtHwW7xWkCbTuHIF0RoPmX71dltYdNyfEYdV9UxtAUbxrXDIQEDapj9aLxYcEB
         x4IWed/xbhk5J/GlTjOpdBPNLkWISJOMSptGmGaa1Fzh47wVrkbxoNjNnaAyqHwpTXOp
         s64g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:reply-to:from:date:message-id
         :subject:to:cc;
        bh=S17+jIj3DzvdMkWk1UIK0wi8e0Ja8mzevOLbZhFbTMM=;
        b=dJocsdDleXmH2z6UG0MUYT/ZQPpG2aDD/1QJYE4rWlCZ2z3kgInZfc1Ae6ZZUwcPSn
         hSEtxIVapqn/3bbdkWsKL7tc5kpk4BaldUHM9EpN7XdiMFRHIX+407fSaR7N0RdtSLmh
         JcAqNbvTNXWyV2Yyxxy1EepiEGspehZ4i5FHRQFqZxzvHFiMn6QW+vb4QdXIfZ6Z1exx
         EwKEWOcx5oLQM0nHxrXQRsPbdkljAmzONYPL/wBXbmH11ZPy+Hua9XCOu8ZFfyFcIGdS
         kjAO+Knnt25i75B8H25AAQ3/3idLn/xaFes2b3zThoruUvJeGmzIO3e3/F17S28O3DdL
         TKDg==
X-Gm-Message-State: AHQUAuatp1axOEgUDRk0T+9U4y/ljL3+/Fsm2LF0968SsjogIU3C/R1L
	LxAxlxwP1dqDbASiYdwQjI7OCHCi
X-Google-Smtp-Source: AHgI3IYMxs4uH/kXd6eCKGz4XjXiVc0jvlQVEHdhNA5pBIPGt7Qs5MmvLBoTuAoCB/ewgToAANrCMg==
X-Received: by 2002:a9d:66c8:: with SMTP id t8mr11153212otm.368.1550505214254;
        Mon, 18 Feb 2019 07:53:34 -0800 (PST)
X-Received: by 2002:aca:3806:: with SMTP id f6mr13592786oia.47.1550505212797;
 Mon, 18 Feb 2019 07:53:32 -0800 (PST)
MIME-Version: 1.0
X-Gmail-Original-Message-ID: <CAG48ez2exshg9QipMkiuHK7rgiaJCO4KO8XMa_C-DiddfmK78A@mail.gmail.com>
Message-ID: <CAG48ez2exshg9QipMkiuHK7rgiaJCO4KO8XMa_C-DiddfmK78A@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Cc: Felix Wilhelm <fwilhelm@google.com>
Date: Mon, 18 Feb 2019 16:53:06 +0100
From: Jann Horn <jannhorn@googlemail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Linux kernel: three KVM bugs (CVE-2019-6974, CVE-2019-7221, CVE-2019-7222)
To: oss-security@lists.openwall.com

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
