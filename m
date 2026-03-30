Received: (qmail 30559 invoked by uid 550); 30 Mar 2026 14:41:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 20090 invoked from network); 30 Mar 2026 06:04:30 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1774850660;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type;
	bh=yZ35VE7LvzLKyVQgmhuOPSoJRIiAfbazp4S83jm6ixY=;
	b=NNB2wc0mnKsw0cm7OnxmtLFp34Y0GPeBY45Rcfw13pXCaYDRKDN7G/PzJm96KEqNtecTrc
	odrcIT3oi1a8olXTrwfeagO863xaSWLki/5zsGwU3GeZL6APEtbTp5OXtDazuTza+KnCb1
	VW0/iFnpj4j/XxjlFlheQnHsKVNoGds=
X-MC-Unique: YY0pcAScN1CC6oHCsHiRHA-1
X-Mimecast-MFC-AGG-ID: YY0pcAScN1CC6oHCsHiRHA_1774850657
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774850655; x=1775455455;
        h=cc:to:subject:message-id:date:from:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=yZ35VE7LvzLKyVQgmhuOPSoJRIiAfbazp4S83jm6ixY=;
        b=E9rZzXhnhHO4YSXQQLnS8Kn1+O28df5fMRvNlsX39UNhnpyGQ6d8+64BOv0+iYcFQe
         Ly22gUVCIXDu+TEaLyUFZoPtMLx70HfBTiJlG8nHkhIwdJI3qQXrJL5jNGbhe3LSScpz
         yQw8ziu6J5jw4zyScdcVEMBsmAJEHwbxM4Pcyy3fNICOVieuV/O7fBdlq0M+Vukjrw3P
         Pp2aSiO+2Dfr4dORs70ugXACQEuvJNgllWss9R+WI7teOuBpVRev4f5K994BPHr+eUd7
         8uRJdvvNfwCAJrVA10HwI9TjDYlpjfV0Cus/VL1/8Xzmox+z9FiLdOTxgRrCr2Wy8Bce
         mwpA==
X-Gm-Message-State: AOJu0YwXDXBoJtl6p4HI6NoutmPpW21Yb7xcM3hgKl0+l0QQMWMYy9nM
	EfPsaWNQCxsgbBmwlMth72CB5V/WlcfysQE7Lv15Gw+wfJ9YB9kqxf2+5Va7/B03O7zhnYdnHOT
	1Qu8xwXblplmGpbV3Oz/XR1jyc7g7YdXlHAUWk2mhkGiKTvmQKD0ObDnqZDOkyWSltksbIQq+HR
	cxGd7B4usjzr+qtqV1CAZunoRoSBSoTmtZreRpC7tdgqrE/mQl6ZW7FXkfSA==
X-Gm-Gg: ATEYQzwOeeLZV4dLLa9xId7lCTL1cy6HNo8RtjCajnBs0mBi30ihzBESpZ3nJS07kB8
	PiZTHlNBteHClU1YatQE1ho/y5IRxiA6YM+G361VheWs5jEUmNrQEWZhFKChKM8RSw46qIALfFV
	AURyYLmvMWOt972mmZoBF+iKj5QN2EOhUlxekkAlTS8dyG6vwlFsSIdw0ZpFfTQHnrVwR62fFa5
	aKMCw==
X-Received: by 2002:a05:651c:146e:b0:38b:f397:539a with SMTP id 38308e7fff4ca-38c731ba306mr38810081fa.1.1774850654985;
        Sun, 29 Mar 2026 23:04:14 -0700 (PDT)
X-Received: by 2002:a05:651c:146e:b0:38b:f397:539a with SMTP id
 38308e7fff4ca-38c731ba306mr38809961fa.1.1774850654307; Sun, 29 Mar 2026
 23:04:14 -0700 (PDT)
MIME-Version: 1.0
From: Sandipan Roy <saroy@redhat.com>
Date: Mon, 30 Mar 2026 11:34:02 +0530
X-Gm-Features: AQROBzD849VEJLOici5AnHvna_s-kayHhM3cmz4EisdE2_-dtzTafpEy2FUmFvg
Message-ID: <CAJ33NAWbTShcWk04-Nu+eeUtkkXOWbXM-nNb64xtwp=gN6dUmA@mail.gmail.com>
To: oss-security@lists.openwall.com
Cc: Paolo Bonzini <pbonzini@redhat.com>, denis.pilipchuk@oracle.com, bkov@amazon.com, 
	fgriffo@amazon.com, Yogesh Mittal <ymittal@redhat.com>, 
	Mauro Matteo Cascella <mcascell@redhat.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: gbDRMgTUgCpFoTwhYjsQM57gexNsDW93zzJVtJ-lQFI_1774850657
X-Mimecast-Originator: redhat.com
Content-Type: multipart/alternative; boundary="000000000000c79e23064e379e00"
Subject: [oss-security] KVM shadow EPT stale rmap use-after-free

--000000000000c79e23064e379e00
Content-Type: text/plain; charset="UTF-8"

Hello OSS-Sec,

Alexander Bulekov(bkov@amazon.com) and Fred Griffoul (fgriffo@amazon.com)
reported a use-after-free in KVM's shadow paging code. The issue was found
through fuzzing. It is

exploitable from any x86 guest with nested virtualization enabled,

on either Intel or AMD processors, or using shadow paging (ept=0 /

npt=0). The bug leads to kernel memory corruption and DoS issues.


Summary:

mark_mmio_spte() overwrites a present shadow SPTE via mmu_spte_set()

without first calling drop_spte() to remove the rmap entry. When the

shadow page is later freed through a level-conflict zap, the stale rmap

points into freed memory. Subsequent rmap traversal (dirty-page-tracking,
ksmd,

NUMA balancing, ...) dereferences the stale pointer, resulting in a

use-after-free.

The bug was introduced by commit a54aa15c6bda ("KVM: x86/mmu: Handle

MMIO SPTEs directly in mmu_set_spte()").  It is present from

v5.13 through current upstream/kvm-next.


OVE ID: OVE-20260330-0003

CVE ID: Pending from kernel.org CNA.

Root cause:

Commit a54aa15c6bda moved MMIO SPTE handling to an early return in

mmu_set_spte() that bypasses the rmap cleanup. The original code was

safe because mark_mmio_spte was called inside set_spte(), which ran

after mmu_set_spte() had already cleaned up the rmap via drop_spte().

The reasoning in the commit message ("it should be impossible to

convert a valid SPTE to an MMIO SPTE") is motivated by the earlier

commit e0c378684b65 ("KVM: x86/mmu: Retry page faults that hit an

invalid memslot").  However, this protection does not apply if

the page table entry is rewritten via DMA, thus bypassing the

write protection on the guest's shadowed page tables.


Trigger Mechanism:

L1 (e.g. a normal QEMU VM) cooperates with L2. Two EPT12 PD entries

both point to the same guest PT page, so L0 creates one shadow page

for both paths.

1. L2 accesses GPA_A (via PD[0] -> PT[0]). L0 creates a shadow page

   for the guest PT with a present SPTE at spt[0] and an rmap entry.

2. L1 rewrites PT[0] to a noslot GPA via DMA (virtio-blk, bypasses

   EPT01 write-protection). L0 does not invalidate EPT02.

3. L2 accesses GPA_B (via PD[N] -> PT[0]). This is a fresh EPT02 miss

   on a different GPA, no invalidation needed. L0 resolves PT[0] to

   noslot. mark_mmio_spte() overwrites spt[0] without drop_spte(),

   leaving a stale rmap.

4. L1 rewrites EPT12 via DMA to create a level conflict (guest PT page

   reused as PD).

5. L2 accesses through the level-conflict path. L0 zaps the shadow

   page. mmu_page_zap_pte() clears the MMIO SPTE with

   mmu_spte_clear_no_track() (no rmap removal). Shadow page freed,

   stale rmap points to freed slab.

6. Rmap traversal (dirty logging, fork/madvise via MMU notifier, ksmd)

   dereferences the freed sptep. Use-after-free read and write.

On 6.1.74, CONFIG_KASAN=y reports issues such as:

1. use-after-free Write of size 8 in mmu_spte_clear_track_bits

2. use-after-free Read of size 8 in mmu_spte_clear_track_bits

3. use-after-free Read of size 8 in rmap_write_protect

4. use-after-free Read of size 4 in mmu_spte_clear_track_bits

5. null-ptr-deref at addr 0x24 in mmu_spte_clear_track_bits

6. user-memory-access in mmu_spte_clear_track_bits

7. slab-out-of-bounds Read in mmu_spte_clear_track_bits

8. kernel BUG at mmu.c:1110, BUG_ON(!is_shadow_present_pte(*sptep))

   in rmap_write_protect

These demonstrate guest-to-host DoS and guest-to-host kernel heap

corruption, potentially aiding VM escape.

On kernels 6.16 and newer the reproducer also triggers a WARN, present

since commit 11d45175111d ("KVM: x86/mmu: Warn if PFN changes on

shadow-present SPTE in shadow MMU").


Backport instructions:

The code has seen small changes but the logic has not changed substantially

since Linux v5.13. The "if (flush)" branch added by the patch is the same

as the one that is already present at the end of mmu_set_spte().


Timeline:

March 4, 2026: vulnerability reported to security@kernel.org by Alexander
Bulekov <bkov@amazon.com>, with Cc to the KVM-x86 maintainers (Paolo
Bonzini <pbonzini@redhat.com>, Sean Christopherson <seanjc@google.com)

March 5, 2026: related WARN reported by Sean Christopherson

March 6, 2026: final patches posted

March 29, 2026: Patch Released as Public.


Patches

[1]
https://lore.kernel.org/kvm/20260329162258.106549-1-pbonzini@redhat.com/T/#u

[2]
https://lore.kernel.org/kvm/20260329162258.106549-2-pbonzini@redhat.com/T/#u


-- 
*Sandipan Roy*

Senior Product Security Engineer, Product Security

Secure Engineering - Incident Response

Email: sandipan@redhat.com

PGP:0x4B5C7470051BB332 <https://bytehackr.fedorapeople.org/saroy.asc>

*secalert@redhat.com <secalert@redhat.com>* For Urgent Response.
<https://www.redhat.com/>

--000000000000c79e23064e379e00--

