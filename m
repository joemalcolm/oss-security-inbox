X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2601" "Thursday" "18" "March" "2021" "23:47:24" "+0000" "Piotr Krysiuk" "piotras@gmail.com" nil "63" "[oss-security] [CVE-2020-27171] Numeric error when restricting speculative pointer arithmetic allows unprivileged local users to leak content of kernel memory" nil nil nil "3" nil nil (number mark "U       piotras@gmai Mar 18   63/2601  " thread-indent "\"[oss-security] [CVE-2020-27171] Numeric error when restricting speculative pointer arithmetic allows unprivileged local users to leak content of kernel memory\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] [CVE-2020-27171] Numeric error when restricting speculative pointer arithmetic allows unprivileged local users to leak content of kernel memory" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1311 invoked by uid 550); 19 Mar 2021 06:42:13 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 20139 invoked from network); 18 Mar 2021 23:47:47 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=Ozke71IAcLH67Fsnj/KRAgH7Zqlcv0fyhgcVRiCROyM=;
        b=RDYzKaZiinQFTiac9jRaK+X/v7OMNCv1bZsnXIt6xlNvCqsriJqNaCD/CDuDzyk22D
         6iohWhxtAQzPMb6w5tm07ZHBw6Kn5HGKJdw2ReMiI1TDTc/XLye39KjpsPi+NAA9MBAj
         Z7wvdAsDs0DiHJYRgw+2TIBbOh02z0JzOEB9v8POltIUDjAMOW2fvlZ38N/gAJP8qcXJ
         +V22EK7MpuLzjQGcsde9U9FZIUKQEmwsy0pdsxWLQhrxFsLRcM5beizh9VllMUksmaDa
         s6wDwuqqEtyg9i4cwf0KHWck+7R1R64DNzAZmwVjNj3F8xY1O5lgpMO8yCebMngtot0l
         JKWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=Ozke71IAcLH67Fsnj/KRAgH7Zqlcv0fyhgcVRiCROyM=;
        b=jc+DoDGe4lltGr7Br5O8U1Gmk8bR7Aek+ABI5jtr4tm8dgtssKv7rSnpSrq6NKUgwj
         diiSFTdQKJpicIZcMuvVhFtmgHR/rhOshXu5VZY8DdWqdONXlzm70PrJ9qKM83IzAh6Q
         PqQRQe4nR1LdFS8GAMbvFJ9VQgsVVeuGdcHWAcUjoAdOaR+iycDXXNjtBA9o6pt1wxYw
         U5AqHxu7GiuJ0w0sTdQRtPS+7zi2AGwTlTMbiKubjUaSXp2d104gMLWfmyRo2m2bLUlm
         a5JI+Z/unDGHvE63bMoakTz5eubIu5KONw1ktlVtH5MY5uN9UzUmF/Nh2Ia7u6+2k/eg
         RjoA==
X-Gm-Message-State: AOAM531PQk91nCIdcQxjnOO5NMvVb0NR4xSpM11IizHf4eK0tqQaXDne
	NBABsjA1JxTke6lfV0eOsCYPKUvY9d+ikpskAomVRSPdsFZC0pTl
X-Google-Smtp-Source: ABdhPJxmb2aiov82bOZv2EKuVI5rKHdL2dVgmzkRYIVWAqButQBEm/hOqFsw966+R/aAoVJBgGnZjofGCbEHzOwEA4E=
X-Received: by 2002:adf:f3c2:: with SMTP id g2mr1624704wrp.300.1616111255282;
 Thu, 18 Mar 2021 16:47:35 -0700 (PDT)
MIME-Version: 1.0
From: Piotr Krysiuk <piotras@gmail.com>
Date: Thu, 18 Mar 2021 23:47:24 +0000
Message-ID: <CAFzhf4qsDm74NJYA2toWYAVxUvvJyP7dD9sPC88EPkHpxf+cag@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="00000000000049e7cd05bdd839e6"
Subject: [oss-security] [CVE-2020-27171] Numeric error when restricting speculative pointer
 arithmetic allows unprivileged local users to leak content of kernel memory

--00000000000049e7cd05bdd839e6
Content-Type: text/plain; charset="UTF-8"

Numeric error in the Linux kernel mechanism to mitigate speculatively
out-of-bounds loads (Spectre mitigation) has been identified.

Unprivileged BPF programs running on affected 64-bit systems can
exploit this to execute speculatively out-of-bounds loads from 4GB
window within the kernel memory. This can be abused to extract
contents of kernel memory via side-channel.

The identified issue is when computing ptr_limit for preventing
out-of-bounds speculation on pointer arithmetic. The computation of
ptr_limit is off-by-one whenever the pointer moves to the left.

The computed ptr_limit is zero in particular when subtracting zero
offset from a pointer that is already at the beginning of map element
value. This leads to integer underflow in fixup_bpf_calls() where
sanitization code is generated.

I developed a PoC to demonstrate how unprivileged local users can
extract contents of kernel memory.

The PoC has been shared privately with <security@kernel.org> to assist
with fix development.

The patches are available from BPF subsystem public git repository. The
minimal fix is:

* bpf: Fix off-by-one for area size in creating mask to left [
https://git.kernel.org/pub/scm/linux/kernel/git/bpf/bpf.git/patch/?id=10d2bb2e6b1d8c4576c56a748f697dbeb8388899
]

However it is recommended to apply the whole series as it includes
fix for another speculatively out-of-bounds vulnerability in BPF
[CVE-2020-27170] that I reported at the same time and some additional
hardening of the affected code:

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

# Discoverer

Piotr Krysiuk <piotras@gmail.com>

# References

CVE-2020-27171 (reserved via https://cveform.mitre.org/)

--00000000000049e7cd05bdd839e6--
