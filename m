X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3083" "Tuesday" "7" "March" "2017" "13:06:55" "-0800" "Dan Williams" "dan.j.williams@intel.com" "<CAPcyv4h6sA6Sx4wmY_XH0VoTNeVYu0Szd4hdmAdfsNZzwX-H-w@mail.gmail.com>" "89" "[oss-security] Security issue in Linux kernel (v4.5+) persistent memory enabling" nil nil nil "3" "2017030721:06:55" "[oss-security] Security issue in Linux kernel (v4.5+) persistent memory enabling" (number mark "U       dan.j.willia Mar  7   89/3083  " thread-indent "\"[oss-security] Security issue in Linux kernel (v4.5+) persistent memory enabling\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 10132 invoked by uid 550); 7 Mar 2017 21:31:38 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3761 invoked from network); 7 Mar 2017 21:07:08 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=intel-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:from:date:message-id:subject:to;
        bh=N00MrTI7iEXUgJulFU34UkImOiC1dXFUYTgzrzfGJzY=;
        b=MJTCEcbacAbpQH0onBHWM0w11BEtCWUaepTLjrYGUBAfzozvMLwVclbgMqCw5Dx7rM
         7IQTnIqbWrbpfAzx9Y2GvmKo76nOci8SaYam5KuvUUtdh0IdYgqcCBqbtMqJa5hkVREq
         A0MIpB3ApXLY0kzK78ckIcpSEI6nMBYvKnf3JOsgESG5zQ6ZqSref1fWlak4acRm+Uz/
         eoK+kEtwx2Ca933Qcq/wOn3ucsv8qAcQEzbeXR3ucnE+a65uzxBKf8rlK2hzwWciiAyK
         /kZBe61z8BSjZJl5c92jdV7iLN6jQ8gQVBStJcbJehSlNFTyaB3b28bQ7RWXjAxyTzF0
         rizw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=N00MrTI7iEXUgJulFU34UkImOiC1dXFUYTgzrzfGJzY=;
        b=OhYs82awuTF+utLuw/jcb3t92DSo3TANTMHtbAlfQSmD+jCO7j20XDEbeHGBlZe4LF
         Zu/MFwN3ebSgCwH0Fp1jRzoBCpU7bESQgevi0WJt0/ybRuVXvVvNjN5665sgxSWMnXjM
         NJkillDC/T0NDIpL6ZZEbWa6xLMtx2zM6jMGTyLAGCE6Jteyl7NF5vGmP+b+sxLIzOE/
         /3nCM+DPwHB2egfkoJNMY23G4Q4a4e+ehMYCO+Pyvhk0Tk2KZ8MkPZEl9KwdRN7acGLK
         tQ/Jl24CE4AwwuYmTerrd0uBkqTqR+LwHeOudfMTrjmzsmvYpKDP23Z3p4OZaNkZ735o
         EAtg==
X-Gm-Message-State: AMke39lO6vsf7JsosbJYU8JAf4m/QnhsrnozX3n+TFff8KZS62LO3QaXoOX6jhvTNgRR1wlTW8+azUqiAFJ4XZ/a
X-Received: by 10.157.3.82 with SMTP id 76mr1696707otv.101.1488920816363; Tue,
 07 Mar 2017 13:06:56 -0800 (PST)
MIME-Version: 1.0
From: Dan Williams <dan.j.williams@intel.com>
Date: Tue, 7 Mar 2017 13:06:55 -0800
Message-ID: <CAPcyv4h6sA6Sx4wmY_XH0VoTNeVYu0Szd4hdmAdfsNZzwX-H-w@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset=UTF-8
Subject: [oss-security] Security issue in Linux kernel (v4.5+) persistent memory enabling

The patch below fixes a high severity, but limited exposure, security
issue in the direct-I/O support for DAX mappings. High severity in
that any file that can be read can be written, limited exposure in
that it requires uncommon platform resources (persistent memory),
usage of the still flagged "experimental" DAX support in XFS/EXT4, and
non-default configuration to enable direct-I/O for DAX mappings
(details below).

It has been posted publicly on the Linux kernel development mailing list here:

https://lkml.org/lkml/2017/2/25/108

---
mm: fix gup_pte_range() vs DAX mappings

gup_pte_range() fails to check pte_allows_gup() before translating a DAX
pte entry, pte_devmap(), to a page. This allows writes to read-only
mappings, and bypasses the DAX cacheline dirty tracking due to missed
'mkwrite' faults. The gup_huge_pmd() path and the gup_huge_pud() path
correctly check pte_allows_gup() before checking for _devmap() entries.

Cc: <stable@vger.kernel.org>
Cc: Dave Hansen <dave.hansen@linux.intel.com>
Reported-by: Xiong Zhou <xzhou@redhat.com>
Reported-by: Ross Zwisler <ross.zwisler@linux.intel.com>
Fixes: 3565fce3a659 ("mm, x86: get_user_pages() for dax mappings")
Signed-off-by: Ross Zwisler <ross.zwisler@linux.intel.com>
Signed-off-by: Dan Williams <dan.j.williams@intel.com>
---
 arch/x86/mm/gup.c | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/arch/x86/mm/gup.c b/arch/x86/mm/gup.c
index 99c7805a9693..9d32ee608807 100644
--- a/arch/x86/mm/gup.c
+++ b/arch/x86/mm/gup.c
@@ -120,6 +120,11 @@ static noinline int gup_pte_range(pmd_t pmd,
unsigned long addr,
  return 0;
  }

+ if (!pte_allows_gup(pte_val(pte), write)) {
+ pte_unmap(ptep);
+ return 0;
+ }
+
  if (pte_devmap(pte)) {
  pgmap = get_dev_pagemap(pte_pfn(pte), pgmap);
  if (unlikely(!pgmap)) {
@@ -127,8 +132,7 @@ static noinline int gup_pte_range(pmd_t pmd,
unsigned long addr,
  pte_unmap(ptep);
  return 0;
  }
- } else if (!pte_allows_gup(pte_val(pte), write) ||
-   pte_special(pte)) {
+ } else if (pte_special(pte)) {
  pte_unmap(ptep);
  return 0;
  }
-- 
2.7.4

---

The vulnerability was introduced in kernel v4.5. It requires the
following configuration options to be enabled

CONFIG_ZONE_DEVICE
CONFIG_FS_DAX
CONFIG_BLK_DEV_PMEM

The above three options plus defining persistent memory with the
memmap=ss!nn kernel command line parameter creates a pmem block device
that will expose the failing condition if an xfs or ext4 filesytem is
mounted on it with the "-o dax" mount option.

CONFIG_ACPI_NFIT
CONFIG_NVDIMM_PFN

The memmap=ss!nn method of defining persistent memory is primarily
used for testing. Starting with ACPI 6, platform firmware publishes an
NFIT (NVDIMM Firmware Interface Table) to describe persistent memory
resources. Persistent memory described by an NFIT does not support
direct-I/O by default and the CONFIG_NVDIMM_PFN mechanism must be used
to enable direct-I/O. The "ndctl" utility is used to reconfigure an
NFIT-defined pmem device with direct-I/O support [1]

[1]: https://lists.01.org/pipermail/linux-nvdimm/2017-February/008808.html
