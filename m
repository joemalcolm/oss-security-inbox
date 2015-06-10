X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["278" "Wednesday" "10" "June" "2015" "16:41:14" "+0200" "Petr Matousek" "pmatouse@redhat.com" "<20150610144114.GC19706@dhcp-25-225.brq.redhat.com>" "10" "[oss-security] CVE request -- Linux kernel - kvm: x86: NULL pointer dereference in kvm_apic_has_events function" nil nil nil "6" "2015061014:41:14" "[oss-security] CVE request -- Linux kernel - kvm: x86: NULL pointer dereference in kvm_apic_has_events function" (number mark "        pmatouse@red Jun 10   10/278   " thread-indent "\"[oss-security] CVE request -- Linux kernel - kvm: x86: NULL pointer dereference in kvm_apic_has_events function\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 29732 invoked by uid 550); 10 Jun 2015 14:41:31 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 29708 invoked from network); 10 Jun 2015 14:41:29 -0000
Message-ID: <20150610144114.GC19706@dhcp-25-225.brq.redhat.com>
Mail-Followup-To: oss-security@lists.openwall.com, cve-assign@mitre.org
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.23
Date: Wed, 10 Jun 2015 16:41:14 +0200
From: Petr Matousek <pmatouse@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE request -- Linux kernel - kvm: x86: NULL pointer dereference in
 kvm_apic_has_events function
To: oss-security@lists.openwall.com, cve-assign@mitre.org

Please assign CVE to
https://lkml.org/lkml/2015/6/4/163.

A local user with access to /dev/kvm (usually unprivileged) can use this
flaw to crash the system.

Thanks,
-- 
Petr Matousek / Red Hat Product Security
PGP: 0xC44977CA 8107 AF16 A416 F9AF 18F3  D874 3E78 6F42 C449 77CA
