X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2501" "Thursday" "18" "March" "2021" "22:06:13" "+0000" "Piotr Krysiuk" "piotras@gmail.com" nil "61" "[oss-security] [CVE-2020-27170] Protection against speculatively out-of-bounds loads in the Linux kernel can be bypassed by unprivileged local users to leak content of kernel memory" nil nil nil "3" nil nil (number mark "U       piotras@gmai Mar 18   61/2501  " thread-indent "\"[oss-security] [CVE-2020-27170] Protection against speculatively out-of-bounds loads in the Linux kernel can be bypassed by unprivileged local users to leak content of kernel memory\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] [CVE-2020-27170] Protection against speculatively out-of-bounds loads in the Linux kernel can be bypassed by unprivileged local users to leak content of kernel memory" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 32692 invoked by uid 550); 19 Mar 2021 06:42:05 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28164 invoked from network); 18 Mar 2021 22:06:35 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=irsKywwfocNw+fjqPJhsr5cV4b6jKSKD53QtgA0eO14=;
        b=BQpNG2HiyfOt45K7ZkQamq3ELB+KLk6v3RWjNfwADpnrwlDxgMRSn1xe4O5mgBEOFD
         hQEDxMa3IOlmE6oW1LPGSQJwF98MAvpbv5+7RnO7BKxTw0hGgn/3sNUyPO+rZtfcuNOT
         41B6RZBCScbzY2y5HMNGxAtm+xl1FHWkIq3Dt6eaEiFKhkCEr8PPLG9wR5yqCCYrep3t
         M3SQq2JEiyHXq7hgYqk4CZGHaCR3AoK+WyN3+0nCUzDlgPjtCeVukDtDXG+VwMq2qdt8
         ypAfm7mBA6Bi2H3wUYbkvV1gXh7CGS8fVQl4VNJmDpVonfJRILcxr62kn4W5hvoIthmt
         xxCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=irsKywwfocNw+fjqPJhsr5cV4b6jKSKD53QtgA0eO14=;
        b=BVGMxarJoscQRmdNo4abSPXRx7aVFdBPGe8BhLgfyvA5c9D20lEbZTuRIo4/a76v+k
         +xj55/HyRcEpfgvJ+7j6iwHviglHuVCog26JNQs7KJ7WBXZdSHbnJl3POypHn62z04n4
         ljaYI6VtA4l3sBvO0424rUmGUe/J4ZfMjFmqNCrc12BJJG0zx3R0Dpthaf4WbpFH2/03
         ytKAPSd1c0FSGkWVWtnh5MQDR71vAoh0jXyg8zTfdTVJXi19+YxQEKw8pbpU9foy4wh8
         zcbAx5DgfJ/rr5za8rQMfcckecJ28nrmr1qYe/qgT6JtRE0oGPsZOBfaj75CtPcYOR9X
         VsXA==
X-Gm-Message-State: AOAM533KG1dxTA5hgSAVZEDocRzHENlyixOhzT8h6UWx+Esw7WLuxotG
	DddWaxKMj9GbeE6IJRUOGYBzMgCaWKi6lnp1nhnQh4TiM5S3MzPS
X-Google-Smtp-Source: ABdhPJy2avzaZPt+5jbOlas6ynawwyMUgVH8zqSJkz4e2Z42piZCYxtf4O3i/UiBLFG+46U4PVdIUtetWcxpHAvqZhY=
X-Received: by 2002:a5d:4281:: with SMTP id k1mr1315446wrq.374.1616105184097;
 Thu, 18 Mar 2021 15:06:24 -0700 (PDT)
MIME-Version: 1.0
From: Piotr Krysiuk <piotras@gmail.com>
Date: Thu, 18 Mar 2021 22:06:13 +0000
Message-ID: <CAFzhf4pJm_SLYd_tE69gspYvXm0VRvxhEi6c2JFL4cx_5=wwQg@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="0000000000006af8cb05bdd6cfee"
Subject: [oss-security] [CVE-2020-27170] Protection against speculatively out-of-bounds loads
 in the Linux kernel can be bypassed by unprivileged local users to leak
 content of kernel memory

--0000000000006af8cb05bdd6cfee
Content-Type: text/plain; charset="UTF-8"

A gap in the Linux kernel mechanism to mitigate speculatively
out-of-bounds loads (Spectre mitigation) has been identified.

Unprivileged BPF programs running on affected systems can bypass
the protection and execute speculatively out-of-bounds loads from
any location within the kernel memory. This can be abused to extract
contents of kernel memory via side-channel.

The identified gap is that unprivileged BPF programs are allowed to
perform pointer arithmetic on particular pointer types not defining
ptr_limit. Pointer arithmetic on such pointer types is not protected
against out-of-bounds speculation.

I developed a PoC to demonstrate the issue using ctx pointers that
allows unprivileged local users to extract contents of kernel memory.

The PoC has been shared privately with <security@kernel.org> to assist
with fix development.

The patches are available from BPF subsystem public git repository. The
minimal fix is:

* bpf: Prohibit alu ops for pointer types not defining ptr_limit [
https://git.kernel.org/pub/scm/linux/kernel/git/bpf/bpf.git/patch/?id=f232326f6966cf2a1d1db7bc917a4ce5f9f55f76
]

However it is recommended to apply the whole series as it includes
fix for another speculatively out-of-bounds vulnerability in BPF that
I reported at the same time and some additional hardening of the
affected code:

* bpf: Prohibit alu ops for pointer types not defining ptr_limit [
https://git.kernel.org/pub/scm/linux/kernel/git/bpf/bpf.git/patch/?id=f232326f6966cf2a1d1db7bc917a4ce5f9f55f76
]
* bpf: Fix off-by-one for area size in creating mask to left [
https://git.kernel.org/pub/scm/linux/kernel/git/bpf/bpf.git/patch/?id=10d2bb2e6b1d8c4576c56a748f697dbeb8388899
]
* bpf: Simplify alu_limit masking for pointer arithmetic [
https://git.kernel.org/pub/scm/linux/kernel/git/bpf/bpf.git/patch/?id=b5871dca250cd391885218b99cc015aca1a51aea
]
* bpf: Add sanity check for upper ptr_limit [
https://git.kernel.org/pub/scm/linux/kernel/git/bpf/bpf.git/patch/?id=1b1597e64e1a610c7a96710fc4717158e98a08b3
]
* bpf, selftests: Fix up some test_verifier cases for unprivileged [
https://git.kernel.org/pub/scm/linux/kernel/git/bpf/bpf.git/patch/?id=0a13e3537ea67452d549a6a80da3776d6b7dedb3
]

Details of the other vulnerability to be provided in a separate email.

# Discoverer

Piotr Krysiuk <piotras@gmail.com>

# References

CVE-2020-27170 (reserved via https://cveform.mitre.org/)

--0000000000006af8cb05bdd6cfee--
