X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2009/10/23/3
Message-ID: <4AE12734.6030909@kernel.sg>
Date: Fri, 23 Oct 2009 11:47:00 +0800
From: Eugene Teo <eugeneteo@...nel.sg>
To: oss-security@...ts.openwall.com
CC: "Steven M. Christey" <coley@...us.mitre.org>
Subject: CVE request: kvm: update_cr8_intercept() NULL pointer dereference when running without an apic
Content-Type: text/plain; charset=utf-8

Quote from the upstream commit:
"update_cr8_intercept() can be triggered from userspace while there
is no apic present."

http://git.kernel.org/linus/88c808fd42b53a7e01a2ac3253ef31fef74cb5af

This one can be triggered via kvm_vcpu_ioctl() if /dev/kvm is user 
accessible (which is recommended...). Fixed in v2.6.32-rc1.

Eugene
