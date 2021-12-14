X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2149" "Tuesday" "14" "December" "2021" "23:26:10" "+0800" "butt3rflyh4ck" "butterflyhuangxx@gmail.com" nil "75" "[oss-security] CVE-2021-4095: kernel: KVM: NULL pointer dereference in kvm_dirty_ring_get() in virt/kvm/dirty_ring.c" nil nil nil "12" nil nil (number mark "U       butterflyhua Dec 14   75/2149  " thread-indent "\"[oss-security] CVE-2021-4095: kernel: KVM: NULL pointer dereference in kvm_dirty_ring_get() in virt/kvm/dirty_ring.c\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2021-4095: kernel: KVM: NULL pointer dereference in kvm_dirty_ring_get() in virt/kvm/dirty_ring.c" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 18357 invoked by uid 550); 14 Dec 2021 15:30:04 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13789 invoked from network); 14 Dec 2021 15:26:32 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to;
        bh=FLrs0BMBhgs2tVBniY0BFHlK+YeUrBZj1ywdSiIrkrk=;
        b=C8YjVIbV4uXplAOabPIrCMHK963VuwQnA9/fGmoc/ouK+Se0GT0E6E470atrneVTf0
         gmhgw6Pz7Xpq6hBypyFCNFr+pwAn2qX3wgWe38LEaxXo2OBrfzQHjd8rrIcI/3ftFf/Z
         8pJJSsMnzbzFCbhzhq7RSOS9q0yaXZwFQOPB8fukDcfQo/VWWDjQErdxRhmLqOfbYfZK
         llLhHLhP0jiFaGuIocNESwbcOEdeXtm/28cDGMXEavxwNwrbj/z0NlWNiGDMEBhkangF
         ax23oca47NCVG160g8WkxT/I3bYVvgwBUUIOddUOFoDQJCyQo4/Hb9Ouza3ZRgrnPeO+
         MeJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=FLrs0BMBhgs2tVBniY0BFHlK+YeUrBZj1ywdSiIrkrk=;
        b=ODNCeTJdGr1ioEoiUPhx1/xepqVJjqpcT9PD9LlNCgXy3RAmXzDYmG/eB3t/LWvkGk
         FQFGqfWe70Nf3Tf1hjsBmf5+tgAdrEXLP+0kWam2hJq9B9E8Qxto3Mylyk1YEBpGvuJe
         6/BZuGl78NIJMNfQmfHVy4oeCdcI+2/Wr8NfIzqEws2ReFgS4rxi/uHchpy7vf2XLACO
         oTtCK7uwFdzMBNLRlxvohcq4vRuTFZEsesxtewteutv5HBWP0jPv4s1Qom8IfSd37Ezh
         yyZtAM+0WCAb0HIpJkJWI789P62D6gL4Beum5x4rjfdUWxe5axbcfGb0FvIbM7Qs35Xt
         qG+Q==
X-Gm-Message-State: AOAM532kTUwc+DXqA8p9HrNxv4RqvZ6HpIPwQ4sBoRIB3JZxlY2nvt5Y
	7BDWn3fbgDy9+ydYdUMeayRjfToraB7Vas56qM+Lcgs8b3LyyA==
X-Google-Smtp-Source: ABdhPJweyLeooTSRPrqLMsQ5VWPUFj4OrkdBRhlYoOTI/NIjk35eR/r2083oTBWJhcNOcEUo5H57OPcy8hUYrPx1AY8=
X-Received: by 2002:a25:b599:: with SMTP id q25mr6139846ybj.618.1639495580681;
 Tue, 14 Dec 2021 07:26:20 -0800 (PST)
MIME-Version: 1.0
From: butt3rflyh4ck <butterflyhuangxx@gmail.com>
Date: Tue, 14 Dec 2021 23:26:10 +0800
Message-ID: <CAFcO6XOttbdqHNGP=J0oN5+AKuUHysJM3FwVYc8qNr3wYyRTXQ@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] CVE-2021-4095: kernel: KVM: NULL pointer dereference
 in kvm_dirty_ring_get() in virt/kvm/dirty_ring.c

Hi, there was a null-ptr-deref bug in kvm_dirty_ring_get in
virt/kvm/dirty_ring.c and I reproduced it on 5.15.0-rc5+.

#Root Cause
When dirty ring logging is enabled, any dirty logging without an active
vCPU context will cause a kernel oops via a KVM KVM_XEN_HVM_SET_ATTR ioctl.

we can call KVM_XEN_HVM_SET_ATTR ioctl and it would invoke
kvm_xen_hvm_set_attr(), it would call mark_page_dirty_in_slot().
Call chains is like this:
KVM_XEN_HVM_SET_ATTR ioctl
  --->kvm_xen_hvm_set_attr
      --->kvm_write_wall_clock
         --->kvm_write_guest
            -->__kvm_write_guest_page
               --->mark_page_dirty_in_slot
mark_page_dirty_in_slot().
if kvm->dirty_ring_size is sat.
```
void mark_page_dirty_in_slot(struct kvm *kvm,
     struct kvm_memory_slot *memslot,
     gfn_t gfn)
{
if (memslot && kvm_slot_dirty_track_enabled(memslot)) {
unsigned long rel_gfn = gfn - memslot->base_gfn;
u32 slot = (memslot->as_id << 16) | memslot->id;

if (kvm->dirty_ring_size)
kvm_dirty_ring_push(kvm_dirty_ring_get(kvm),
    slot, rel_gfn);
else
set_bit_le(rel_gfn, memslot->dirty_bitmap);
}
}
```
mark_page_dirty_in_slot() would call kvm_dirty_ring_push() to push a
dirty-page to dirty ring
then kvm_dirty_ring_get() would get vcpu->dirty_ring.

kvm_dirty_ring_get()
```
struct kvm_dirty_ring *kvm_dirty_ring_get(struct kvm *kvm)
{
struct kvm_vcpu *vcpu = kvm_get_running_vcpu();  //-------> invoke
kvm_get_running_vcpu() to get a vcpu.

WARN_ON_ONCE(vcpu->kvm != kvm); [1]

return &vcpu->dirty_ring;
}
```
If vCPU stat did not work, kvm_get_running_vcpu() would get a NULL
vcpu pointer .

#Details
Analyze and some discussion on this issue.
https://lore.kernel.org/kvm/CAFcO6XOmoS7EacN_n6v4Txk7xL7iqRa2gABg3F7E3Naf5uG94g@mail.gmail.com/

#Fix
The patch for this issue, not available upstream now.
https://patchwork.kernel.org/project/kvm/patch/20211121125451.9489-12-dwmw2@infradead.org/

#CVE
Red Hat has assigned CVE-2021-4095 to this issue.
https://access.redhat.com/security/cve/CVE-2021-4095
https://bugzilla.redhat.com/show_bug.cgi?id=2031194

#Cedit
Active Defense Lab of Venustech.


Regards,
 butt3rflyh4ck.
--
Active Defense Lab of Venustech
