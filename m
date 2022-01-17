X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2611" "Monday" "17" "January" "2022" "12:33:54" "+0800" "butt3rflyh4ck" "butterflyhuangxx@gmail.com" nil "91" "Re: [oss-security] CVE-2021-4095: kernel: KVM: NULL pointer dereference in kvm_dirty_ring_get() in virt/kvm/dirty_ring.c" nil nil nil "1" nil nil (number mark "U       butterflyhua Jan 17   91/2611  " thread-indent "\"Re: [oss-security] CVE-2021-4095: kernel: KVM: NULL pointer dereference in kvm_dirty_ring_get() in virt/kvm/dirty_ring.c\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] CVE-2021-4095: kernel: KVM: NULL pointer dereference in kvm_dirty_ring_get() in virt/kvm/dirty_ring.c" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 4069 invoked by uid 550); 17 Jan 2022 04:34:17 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 4048 invoked from network); 17 Jan 2022 04:34:17 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=81aBSTH/GthciOxgEe9pegfqqhICY5minnvUAeAZJ+U=;
        b=qHfYxJju6/+mnus6on1WY+yhiqwjdfao7YKT0VvvgHJ5J+SvRYsnH1Zm2UiDcF5lCq
         XSDIOwy1vcaVPwkp7I1byXBe1iS2Q8lu9W8WrsyQJHAPQj8c1K0XJN/UuLQ0Vf7BE9Q5
         fS7k8hRVV+jvNjJPHYiIvFyEeYlmah0ER84WmzhFRq42jw7K/UcGZY7QA+TYtUxwI42X
         tPOJulx9JFzN/p04tX9+6Kon0ZDGgNnqVPLLrH7ELasxlbTXBFpuk13vXzew5faleGTQ
         KlKTH213ecG2/B/rB6Nftwsr1llrTAe7b2VvxLBuMLm7ithAwjfJ+2aTWLueCsGuVkqj
         JZvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=81aBSTH/GthciOxgEe9pegfqqhICY5minnvUAeAZJ+U=;
        b=VHvzuBUppAI3dmjfNq889ClaiWCS8wna3xjBfLPKcsJRikXazSv7SaLQ/deX28kZVV
         4jw2kBJGBjWdpE4iu2a61bAaYtn+u0HC4YC4hi6VchB/G9CC1Q0II/HQTZrvetZ65Te8
         dVyXCcdj6J2L+U9bhAIjM/+GdegXePpoeMjCmHtYlnPCakdfb2DwgAZY6X8mw4RFX5a4
         PCyj3Dlj0HrAYylSJX8XUa/JoxNRNdL2pl52eBknh7Mvd5Ia+oRmGbtEmcz4cQJaKhhF
         WMbK4J+bdJgrhE/ZQkGz51u9Vt2x3KS5MMXFqPVRnB6VBZ6eL3XS2p8G1kiCtH7ChNgf
         Hpog==
X-Gm-Message-State: AOAM531B2/FkJwbcHN1JbuWcqSZz7jK6l14dUYnrolXNFOJfDDxE32ao
	RG9YlrG4i6ZHQNVIajx1/zRdtGbilBsvmjVGeNhOn2DuEj8=
X-Google-Smtp-Source: ABdhPJz4nScXNM58H9e6jmkyNfn9YoacN9/TqqEqIk/I+7rSXDT04Wh36ICPAj7rkKk2i7YCI4KSIiZbvYRpw4SzUHA=
X-Received: by 2002:a25:7c87:: with SMTP id x129mr17658012ybc.300.1642394045323;
 Sun, 16 Jan 2022 20:34:05 -0800 (PST)
MIME-Version: 1.0
References: <CAFcO6XOttbdqHNGP=J0oN5+AKuUHysJM3FwVYc8qNr3wYyRTXQ@mail.gmail.com>
In-Reply-To: <CAFcO6XOttbdqHNGP=J0oN5+AKuUHysJM3FwVYc8qNr3wYyRTXQ@mail.gmail.com>
From: butt3rflyh4ck <butterflyhuangxx@gmail.com>
Date: Mon, 17 Jan 2022 12:33:54 +0800
Message-ID: <CAFcO6XMeXqzHL3JDV2mrBv8KXd2=QyMFSzK4-rUfrA1u2TueKw@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [oss-security] CVE-2021-4095: kernel: KVM: NULL pointer
 dereference in kvm_dirty_ring_get() in virt/kvm/dirty_ring.c

The patch for this issue is available upstream now.
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=55749769fe608fa3f4a075e42e89d237c8e37637



Regards,
 butt3rflyh4ck.

On Tue, Dec 14, 2021 at 11:26 PM butt3rflyh4ck
<butterflyhuangxx@gmail.com> wrote:
>
> Hi, there was a null-ptr-deref bug in kvm_dirty_ring_get in
> virt/kvm/dirty_ring.c and I reproduced it on 5.15.0-rc5+.
>
> #Root Cause
> When dirty ring logging is enabled, any dirty logging without an active
> vCPU context will cause a kernel oops via a KVM KVM_XEN_HVM_SET_ATTR ioctl.
>
> we can call KVM_XEN_HVM_SET_ATTR ioctl and it would invoke
> kvm_xen_hvm_set_attr(), it would call mark_page_dirty_in_slot().
> Call chains is like this:
> KVM_XEN_HVM_SET_ATTR ioctl
>   --->kvm_xen_hvm_set_attr
>       --->kvm_write_wall_clock
>          --->kvm_write_guest
>             -->__kvm_write_guest_page
>                --->mark_page_dirty_in_slot
> mark_page_dirty_in_slot().
> if kvm->dirty_ring_size is sat.
> ```
> void mark_page_dirty_in_slot(struct kvm *kvm,
>      struct kvm_memory_slot *memslot,
>      gfn_t gfn)
> {
> if (memslot && kvm_slot_dirty_track_enabled(memslot)) {
> unsigned long rel_gfn = gfn - memslot->base_gfn;
> u32 slot = (memslot->as_id << 16) | memslot->id;
>
> if (kvm->dirty_ring_size)
> kvm_dirty_ring_push(kvm_dirty_ring_get(kvm),
>     slot, rel_gfn);
> else
> set_bit_le(rel_gfn, memslot->dirty_bitmap);
> }
> }
> ```
> mark_page_dirty_in_slot() would call kvm_dirty_ring_push() to push a
> dirty-page to dirty ring
> then kvm_dirty_ring_get() would get vcpu->dirty_ring.
>
> kvm_dirty_ring_get()
> ```
> struct kvm_dirty_ring *kvm_dirty_ring_get(struct kvm *kvm)
> {
> struct kvm_vcpu *vcpu = kvm_get_running_vcpu();  //-------> invoke
> kvm_get_running_vcpu() to get a vcpu.
>
> WARN_ON_ONCE(vcpu->kvm != kvm); [1]
>
> return &vcpu->dirty_ring;
> }
> ```
> If vCPU stat did not work, kvm_get_running_vcpu() would get a NULL
> vcpu pointer .
>
> #Details
> Analyze and some discussion on this issue.
> https://lore.kernel.org/kvm/CAFcO6XOmoS7EacN_n6v4Txk7xL7iqRa2gABg3F7E3Naf5uG94g@mail.gmail.com/
>
> #Fix
> The patch for this issue, not available upstream now.
> https://patchwork.kernel.org/project/kvm/patch/20211121125451.9489-12-dwmw2@infradead.org/
>
> #CVE
> Red Hat has assigned CVE-2021-4095 to this issue.
> https://access.redhat.com/security/cve/CVE-2021-4095
> https://bugzilla.redhat.com/show_bug.cgi?id=2031194
>
> #Cedit
> Active Defense Lab of Venustech.
>
>
> Regards,
>  butt3rflyh4ck.
> --
> Active Defense Lab of Venustech



-- 
Active Defense Lab of Venustech
