X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1155" "Saturday" "20" "June" "2015" "22:23:59" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20150621022359.D769B72E0D1@smtpvbsrv1.mitre.org>" "36" "[oss-security] Re: CVE request -- Linux kernel - kvm: x86: NULL pointer dereference in kvm_apic_has_events function" nil nil nil "6" "2015062102:23:59" "[oss-security] Re: CVE request -- Linux kernel - kvm: x86: NULL pointer dereference in kvm_apic_has_events function" (number mark "        cve-assign@m Jun 20   36/1155  " thread-indent "\"[oss-security] Re: CVE request -- Linux kernel - kvm: x86: NULL pointer dereference in kvm_apic_has_events function\"\n") "<20150610144114.GC19706@dhcp-25-225.brq.redhat.com>" ("<20150610144114.GC19706@dhcp-25-225.brq.redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 29720 invoked by uid 550); 21 Jun 2015 02:24:12 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 29702 invoked from network); 21 Jun 2015 02:24:11 -0000
In-Reply-To: <20150610144114.GC19706@dhcp-25-225.brq.redhat.com>
Message-Id: <20150621022359.D769B72E0D1@smtpvbsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Sat, 20 Jun 2015 22:23:59 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE request -- Linux kernel - kvm: x86: NULL pointer dereference in kvm_apic_has_events function
To: pmatouse@redhat.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

> https://lkml.org/lkml/2015/6/4/163

> A local user with access to /dev/kvm (usually unprivileged) can use this
> flaw to crash the system.

> arch/x86/kvm/lapic.h
> 
> kvm_apic_has_events
> 
> - return vcpu->arch.apic->pending_events;
> + return kvm_vcpu_has_lapic(vcpu) && vcpu->arch.apic->pending_events;

(not yet available at
http://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/log/arch/x86/kvm/lapic.h)

Use CVE-2015-4692.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.14 (SunOS)

iQEcBAEBAgAGBQJVhh/YAAoJEKllVAevmvmsp/8H/ilk6zFEDd0eldBYV2vjqiiN
gygbpivWA6/zn93pbMDCHAGhLrqxpOWdnPKBiDmsk3zu2tO7dwgWD9gSwTbTd00I
9Ecd8kIW1VtqDEGr/1xH478NipY4RAFJYaM/h8kpGw+XI7bvuvHD9ykr9ZRFNkaV
rzfRbtq4JvwfqMX6eAIId62zOexlhvsbzqUxrRdTSlT7CMH8Th/BKYx+X7LTwJMy
dvoZ3KneJyjCoYzd8LMCWNiuf5xQa8GuNObMA50FYGUWDhs5/Dy4uCnA52FooR9a
79agu9zQowTupO+v3eENp0u2iid82vFdVrnSEeXLfT+sKOhpUvMify7VwstBPc8=
=STEK
-----END PGP SIGNATURE-----
