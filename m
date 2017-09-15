X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2017/09/15/4
Message-ID: <63ba101d-71b7-fcb0-5f28-ed6f78ebfbbd@amazon.de>
Date: Fri, 15 Sep 2017 18:36:59 +0200
From: "Jan H. Schönherr" <jschoenh@...zon.de>
To: oss-security@...ts.openwall.com
Subject: CVE-2017-1000252: KVM denial of service with posted interrupts on Intel systems (since Linux 4.4)
Content-Type: text/plain; charset=utf-8

Hi.

We have discovered a user triggerable BUG() when using KVM with posted interrupts on Intel
systems. This requires an unprivileged user to have access to the KVM device.

Certain values in a KVM_IRQFD API call can trigger a BUG_ON() at a later point in
vmx_update_pi_irte(). KVM as a whole seems to hang after that.

The issue was introduced with Linux 4.4, patches have been posted to the KVM
mailing list:
- https://marc.info/?l=kvm&m=150549145711115&w=2
- https://marc.info/?l=kvm&m=150549146311117&w=2

Regards
Jan H. Schönherr
