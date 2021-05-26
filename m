X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1460" "Wednesday" "26" "May" "2021" "23:09:05" "+0100" "Piotr Krysiuk" "piotras@gmail.com" nil "34" "[oss-security] [CVE-2021-33200] Linux kernel enforcing incorrect limits for pointer arithmetic operations by BPF verifier can be abused to perform out-of-bounds reads and writes in kernel memory" nil nil nil "5" nil nil (number mark "U       piotras@gmai May 26   34/1460  " thread-indent "\"[oss-security] [CVE-2021-33200] Linux kernel enforcing incorrect limits for pointer arithmetic operations by BPF verifier can be abused to perform out-of-bounds reads and writes in kernel memory\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] [CVE-2021-33200] Linux kernel enforcing incorrect limits for pointer arithmetic operations by BPF verifier can be abused to perform out-of-bounds reads and writes in kernel memory" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 8013 invoked by uid 550); 27 May 2021 08:13:15 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1091 invoked from network); 26 May 2021 22:09:27 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=MvoZExxGEoLW5zM9o6q7BW4wbalaC/RPdYzhWDkrVKc=;
        b=NC1DCWzIkBH6qidJO6Wkm+gI2H8wK3C3WbpJ41g9Re/QMiBTtFiUzXqqzFvhswPpUY
         toXVNXdrF4yh37IPbyhZLPAd3Boq/6gkGO0vAWFUdkINRrnpXYGFyuRiehSPq8gaE0jQ
         tDsEzMGNxTOAABoT1s+JJ80ystx6XvnWvJrmjL15dTnHxPUgkzyr9ZlHlcz9OhtFc1Y2
         x5AgyAYmuuTk+vu9WLMx0h48LnhFSDRcrNVm+gn2BLBrMzukuK5xLqRMzCjohnbz9LNL
         +vOvUKtL+3CgW4/TNFJCk4KbCMZooUNGgaawA6pkvtIL8683wQqLEUEwa4QmBR9U1Roq
         coZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=MvoZExxGEoLW5zM9o6q7BW4wbalaC/RPdYzhWDkrVKc=;
        b=bcYM7MkRLsWxLESMnFaEl5B6LNWeeLhGtxEqWeKe7PGy15iaXUZtYV0yOzX4NaeTpP
         F44od+RLvWClLBSgQ8CLmX6aTFUSVvlalMGxKFQ1WOX8JYucp//uyprWI7n1DmO8qvKq
         1Srvt9/YMV9FyXoc240ZjedJ/DfSDrBlqCBWjfEpLc2jTPqT8gt2GE92B/RWR2xr58PX
         fyL9VHq34QHSbmfPdFiGROr8HTkpryMHAjc4C3daLEakRX86SxAUYUiIDEZD3rmJq7TP
         ycPgTdBcmdQ/DPahjtJv6aVY12JdbG1r23LTQ/jhZSdUyxnL7ifLPI760iK6rWtUzcpn
         DVcw==
X-Gm-Message-State: AOAM532/oKec+H5HZ4hfh1hikX7nnnE0kt8IxgQgArCw4ucCbSbGjjCI
	aJc1bmOQxNK8NG6+C85pR9Eut82sUDmEHz23iLxVYBmHGAMRVQ==
X-Google-Smtp-Source: ABdhPJygaA//QGkNfrniHAw3A7I5yOEBfadF1VD9PCN4kLFah5ut3hb6d/HYKrnumqJS+VEfU5IttPU1Mm0n9WfxdCw=
X-Received: by 2002:a1c:2743:: with SMTP id n64mr5349181wmn.76.1622066956167;
 Wed, 26 May 2021 15:09:16 -0700 (PDT)
MIME-Version: 1.0
From: Piotr Krysiuk <piotras@gmail.com>
Date: Wed, 26 May 2021 23:09:05 +0100
Message-ID: <CAFzhf4r3C=hqrH_yXVQExeQV5iqrdim7kp-NBDTm6FmSCicbeQ@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] [CVE-2021-33200] Linux kernel enforcing incorrect limits for pointer
 arithmetic operations by BPF verifier can be abused to perform out-of-bounds
 reads and writes in kernel memory

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

One of these PoCs has been shared privately with <security@kernel.org>
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

Piotr Krysiuk <piotras@gmail.com>

# References

CVE-2021-33200 (reserved via https://cveform.mitre.org/)
