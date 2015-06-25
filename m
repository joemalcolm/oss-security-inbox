X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["741" "Thursday" "25" "June" "2015" "11:54:33" "+0200" "Petr Matousek" "pmatouse@redhat.com" "<20150625095432.GH18896@dhcp-25-225.brq.redhat.com>" "18" "[oss-security] Re: CVE request -- Linux kernel - kvm: x86: out-of-bounds memory access in pit_ioport_read function" nil nil nil "6" "2015062509:54:33" "[oss-security] Re: CVE request -- Linux kernel - kvm: x86: out-of-bounds memory access in pit_ioport_read function" (number mark "        pmatouse@red Jun 25   18/741   " thread-indent "\"[oss-security] Re: CVE request -- Linux kernel - kvm: x86: out-of-bounds memory access in pit_ioport_read function\"\n") "<20150625094726.A8DDB6C0636@smtpvmsrv1.mitre.org>" ("<20150625091608.GG18896@dhcp-25-225.brq.redhat.com>" "<20150625094726.A8DDB6C0636@smtpvmsrv1.mitre.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 8023 invoked by uid 550); 25 Jun 2015 09:54:49 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 8005 invoked from network); 25 Jun 2015 09:54:48 -0000
Message-ID: <20150625095432.GH18896@dhcp-25-225.brq.redhat.com>
Mail-Followup-To: cve-assign@mitre.org, oss-security@lists.openwall.com
References: <20150625091608.GG18896@dhcp-25-225.brq.redhat.com>
 <20150625094726.A8DDB6C0636@smtpvmsrv1.mitre.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20150625094726.A8DDB6C0636@smtpvmsrv1.mitre.org>
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.27
Cc: oss-security@lists.openwall.com
Date: Thu, 25 Jun 2015 11:54:33 +0200
From: Petr Matousek <pmatouse@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE request -- Linux kernel - kvm: x86: out-of-bounds memory
 access in pit_ioport_read function
To: cve-assign@mitre.org

On Thu, Jun 25, 2015 at 05:47:26AM -0400, cve-assign@mitre.org wrote:
> -----BEGIN PGP SIGNED MESSAGE-----
> Hash: SHA1
> 
> > Linux kernel versions before
> > http://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/commit/?id=ee73f656
> > had the same problem as QEMU/CVE-2015-3214.
> 
> CVE-2015-3214 is also the correct CVE ID for this vulnerability in the
> Linux kernel. pit_ioport_read in the Linux kernel and pit_ioport_read
> in QEMU are not independent implementations.

Doesn't this fall under different code base? These are two completely
different projects. You can use KVM without using QEMU and vice versa.

-- 
Petr Matousek / Red Hat Product Security
PGP: 0xC44977CA 8107 AF16 A416 F9AF 18F3  D874 3E78 6F42 C449 77CA
