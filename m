X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2478" "Monday" "16" "August" "2021" "16:13:56" "+0200" "Mauro Matteo Cascella" "mcascell@redhat.com" nil "75" "[oss-security] [CVE-2021-3653, CVE-2021-3656] SVM nested virtualization issues in KVM" nil nil nil "8" nil nil (number mark "U       mcascell@red Aug 16   75/2478  " thread-indent "\"[oss-security] [CVE-2021-3653, CVE-2021-3656] SVM nested virtualization issues in KVM\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] [CVE-2021-3653, CVE-2021-3656] SVM nested virtualization issues in KVM" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 16271 invoked by uid 550); 16 Aug 2021 14:14:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 16250 invoked from network); 16 Aug 2021 14:14:23 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1629123252;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type;
	bh=ryQiSmCEJ4bmUSucclSTxRjRdkKFXn7kV4oWcxvwtKw=;
	b=OyV5RZBQqOTXLs6BYQWBOUe+SUiReGXcEqeVxa3GxH3+2qk/+9cZPySIoErMHqd9WHRske
	l6OofjBQeJ2ZyBJgnURYQVaBZZq4Yye3fp1RCz8A6Q7gMyK9Lte/tC3X10qrSlP1rjqRu/
	Xe9R5iED7wGTHNFSAep+Efcf93a/MsQ=
X-MC-Unique: W7wFyNQ3N26vts8JId7CCA-1
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=ryQiSmCEJ4bmUSucclSTxRjRdkKFXn7kV4oWcxvwtKw=;
        b=WJCVv7uoGoE/VL2YmyVNjtaotJJHdlwM+NOGRyLRG9Ejg7ZcgprO3zXBTV/QZslFkJ
         NVTz8HLs2bw6dnAy7Gi2EOYC2kC4sw/KQRsM0D4g0offpwb8iiRLCmTF3vPPNVhZQluz
         8ZwxSkL8qUzkFV6Qz7dtSPR00Xw0TKawpeOkR4P+/JlrHoUgbK956jJgilIeIYHyF3+/
         pEy482T+BH+19DbtHXChWVn5y5bsUhoal/AF6qb1axvjjZ+YInnWdf3A4x9cvtmwRqAg
         utx8OJcXrfdQ1Ll+LXb/zQN463Zufww0UJ5fKBPkRW5Uy+XKOVAw/vmweVLCKPK7Ch33
         kEPQ==
X-Gm-Message-State: AOAM531rD9IAfjJzgxpc+3P1fzdVPQchMndrE3D+uKozS8vg5ACB0Eo1
	CtpcpM3/S+1+24TAGO5uQ/gT+uyN9M5C6nqILZwqQVIwwoFflw3MXyVhHC+EtjILb0cfJv7Nylh
	HPduzF2abBNVhO6aCWlXw5q/rg822MoNyba1JzKK/MQqc
X-Received: by 2002:a17:90a:ba16:: with SMTP id s22mr17250148pjr.28.1629123247546;
        Mon, 16 Aug 2021 07:14:07 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJw5MktU/ybrbNiW+mE3nU02+K8Ye/k00Wc5EykXRHtR0HoZ8wBSZ6fmt7QXtbdWVcI9UCZK3omtlVXlgoP3xH0=
X-Received: by 2002:a17:90a:ba16:: with SMTP id s22mr17250118pjr.28.1629123247204;
 Mon, 16 Aug 2021 07:14:07 -0700 (PDT)
MIME-Version: 1.0
From: Mauro Matteo Cascella <mcascell@redhat.com>
Date: Mon, 16 Aug 2021 16:13:56 +0200
Message-ID: <CAA8xKjVxPtO+VpLsn1Ta+2Tv9YB2Q_fg2BOcC7=z6BzR7Qm8OQ@mail.gmail.com>
To: oss-security@lists.openwall.com
Cc: Maxim Levitsky <mlevitsk@redhat.com>, Paolo Bonzini <pbonzini@redhat.com>
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=mcascell@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] [CVE-2021-3653, CVE-2021-3656] SVM nested
 virtualization issues in KVM

Hello,

Two vulnerabilities were found in the KVM's AMD code for supporting
SVM nested virtualization. They occur due to missing sanity checks of
some VMCB (virtual machine control block) fields provided by the L1
guest to handle a nested L2 guest.

----------------------
CVE-2021-3653
----------------------
This issue is caused by missing validation of the `int_ctl` VMCB field
and allows a malicious L1 guest to enable AVIC support (Advanced
Virtual Interrupt Controller) for the L2 guest. The L2 guest is able
to write to a limited but still relatively large subset of the host
physical memory. Note that AVIC is currently not supported with
nesting and it is not advertised in the L1 CPUID.

This bug dates back to kernel 2.6.30 where it was first introduced via
commit: https://github.com/torvalds/linux/commit/3d6368ef580a.

CVE-2021-3653 has been assigned by Red Hat, Inc.

----------------------
CVE-2021-3656
----------------------
This issue is caused by missing validation of the the `virt_ext` VMCB
field and allows a malicious L1 guest to disable both VMLOAD/VMSAVE
intercepts and VLS (Virtual VMLOAD/VMSAVE) for the L2 guest. Under
these circumstances, the L2 guest is able to run VMLOAD/VMSAVE
unintercepted, and thus read/write portions of the host physical
memory.

This bug was introduced in kernel version 4.13 while enabling the
Virtual VMLOAD/VMSAVE feature:
https://github.com/torvalds/linux/commit/89c8a4984fc9.

CVE-2021-3656 has been assigned by Red Hat, Inc.

---------
Impact
---------
The nested guest (L2) could use these flaws to read/write physical
pages of the host, resulting in a crash of the entire system, leak of
sensitive data or potential guest-to-host escape.

-------------
Mitigation
-------------
Both vulnerabilities can be mitigated by disabling the nested
virtualization feature when loading kvm:
# modprobe kvm_amd nested=0

Disabling VLS (Virtual VMLOAD/VMSAVE) is an alternative mitigation for
CVE-2021-3656:
# modprobe kvm_amd vls=0

----------
Credits
----------
CVE-2021-3653: Maxim Levitsky (Red Hat)
CVE-2021-3656: Maxim Levitsky (Red Hat) and Paolo Bonzini (Red Hat)

--------
Patch
--------
CVE-2021-3653: https://git.kernel.org/pub/scm/virt/kvm/kvm.git/commit/?id=0f923e07124df069ba68d8bb12324398f4b6b709
CVE-2021-3656: https://git.kernel.org/pub/scm/virt/kvm/kvm.git/commit/?id=c7dfa4009965a9b2d7b329ee970eb8da0d32f0bc

Thank you,
Best regards.
-- 
Mauro Matteo Cascella
Red Hat Product Security
PGP-Key ID: BB3410B0

