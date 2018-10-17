X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["891" "Wednesday" "17" "October" "2018" "20:36:24" "+0200" "Jann Horn" "jannh@google.com" "<CAG48ez1iae91RJsQ5ix4icycV+e-7YkUFf2ZpLnWQsMzR=h5Og@mail.gmail.com>" "18" "[oss-security] Linux kernel: BPF verifier bug leads to out-of-bounds access (CVE-2018-18445; 4.14.9-4.14.74; 4.15-4.18.12)" "^Date:" nil nil "10" "2018101718:36:24" "[oss-security] Linux kernel: BPF verifier bug leads to out-of-bounds access (CVE-2018-18445; 4.14.9-4.14.74; 4.15-4.18.12)" (number mark "        jannh@google Oct 17   18/891   " thread-indent "\"[oss-security] Linux kernel: BPF verifier bug leads to out-of-bounds access (CVE-2018-18445; 4.14.9-4.14.74; 4.15-4.18.12)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 9580 invoked by uid 550); 17 Oct 2018 18:45:33 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 30108 invoked from network); 17 Oct 2018 18:37:03 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=DH4FQgYqeu9JPFty8YwZ8QJG0DyqsnY84SI17WJJxOg=;
        b=mQDVthILflp6ePRXBvw1XOTaxppt/2LgA/rhAudcsl9XSjELdDnbOvOGaFKOXHiYra
         G4VvV7E4yCcvWcYgjSZuHknRVEui8iMm6u03Lo/MPBI7YKpMMKnubBQSOXqNNJlzFEqC
         09EtNJbNlFDzw4zZbNjHTk/oZiesjdf2Osphlj1I8cVZtlHbN3s1Ve5csLbsBxVpqLXP
         dbHBbnWBFKqRUXJtfVX4MCaHM7KWi5mHSepv5CtnEIO3KypKqPAQvgvGJn+iedVc/nl9
         711HIqXDFucxkKGVZfyUGGWGHwLU4iuH48ssh27lfyIk0uoIc3Vi3nWgN4e50d/drhHY
         wjPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=DH4FQgYqeu9JPFty8YwZ8QJG0DyqsnY84SI17WJJxOg=;
        b=cmcsu6x4AHVJ4CoAsdbOngM61E4ucXX15vSvKKoQ/bKTF9RnRmJEvG+lChg4R+GGGn
         bIh47S6LbDGqN53XRpvW5HrKtFOGBeIY4ywaqdG6W2Ra1/d+DzbYzt7qm/ZLffB+Ci9S
         BnQie+tapNkG8WUx7u7G6/xQ5UUJtE691OomrkMKWr5Vo1spk1zN/gpMsonn5CMTaP1K
         80wX3fvZdzXh19yGjtee4mEfKhPLJrio55249BiWB+t4dbOZhihpiJvXpPyxNKhjIeW1
         jIWQ6R2ryxe0skB2cubKSDEtWfXCazZ3t/dypwEEycLpLzIx9MasSUhZJVEim+V2bORl
         qUEw==
X-Gm-Message-State: ABuFfohFXB/t2loChv9QfkJUpEW3TMapaUOzjN/xvirplij1CXGq+w8h
	+DVO2/cgOYckn8LCmT54fpOSRBQqR9LAx5s1FnRUU6Cfa4Y=
X-Google-Smtp-Source: ACcGV60QWK4mZSwYNtVH2YMnSx2LwLWmv9kwU8sJvFHt+L1ogw2YuTHKoCMWvBg5PN82K7q3gH30s5U/o2QN1SFrqHA=
X-Received: by 2002:aca:fd14:: with SMTP id b20-v6mr15366625oii.337.1539801410385;
 Wed, 17 Oct 2018 11:36:50 -0700 (PDT)
MIME-Version: 1.0
Message-ID: <CAG48ez1iae91RJsQ5ix4icycV+e-7YkUFf2ZpLnWQsMzR=h5Og@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Date: Wed, 17 Oct 2018 20:36:24 +0200
From: Jann Horn <jannh@google.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Linux kernel: BPF verifier bug leads to out-of-bounds access
 (CVE-2018-18445; 4.14.9-4.14.74; 4.15-4.18.12)
To: oss-security@lists.openwall.com

NOTE: I have requested a CVE identifier, and I'm sending this message,
to make tracking of the fix easier; however, to avoid missing security
fixes without CVE identifiers, you should *NOT* be cherry-picking a
specific patch in response to a notification about a kernel security
bug.

In Linux kernel versions 4.14.9-4.14.74 and 4.15-4.18.12, faulty
computation of numeric bounds in the BPF verifier permits
out-of-bounds memory accesses because adjust_scalar_min_max_vals in
kernel/bpf/verifier.c mishandles 32-bit right shifts. 4.18.13 and
4.14.75 are fixed.

This is CVE-2018-18445.

http://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/commit/?id=b799207e1e1816b09e7a5920fbb2d5fcf6edd681
https://cdn.kernel.org/pub/linux/kernel/v4.x/ChangeLog-4.18.13
https://cdn.kernel.org/pub/linux/kernel/v4.x/ChangeLog-4.14.75
https://bugs.chromium.org/p/project-zero/issues/detail?id=1686
