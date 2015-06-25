X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["282" "Thursday" "25" "June" "2015" "11:16:09" "+0200" "Petr Matousek" "pmatouse@redhat.com" "<20150625091608.GG18896@dhcp-25-225.brq.redhat.com>" "10" "[oss-security] CVE request -- Linux kernel - kvm: x86: out-of-bounds memory access in pit_ioport_read function" nil nil nil "6" "2015062509:16:09" "[oss-security] CVE request -- Linux kernel - kvm: x86: out-of-bounds memory access in pit_ioport_read function" (number mark "        pmatouse@red Jun 25   10/282   " thread-indent "\"[oss-security] CVE request -- Linux kernel - kvm: x86: out-of-bounds memory access in pit_ioport_read function\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 5857 invoked by uid 550); 25 Jun 2015 09:16:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 5834 invoked from network); 25 Jun 2015 09:16:24 -0000
Message-ID: <20150625091608.GG18896@dhcp-25-225.brq.redhat.com>
Mail-Followup-To: oss-security@lists.openwall.com, cve-assign@mitre.org
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.23
Date: Thu, 25 Jun 2015 11:16:09 +0200
From: Petr Matousek <pmatouse@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE request -- Linux kernel - kvm: x86: out-of-bounds memory access
 in pit_ioport_read function
To: oss-security@lists.openwall.com, cve-assign@mitre.org

Hi,

Linux kernel versions before
http://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/commit/?id=ee73f656
had the same problem as QEMU/CVE-2015-3214.

Thanks,
-- 
Petr Matousek / Red Hat Product Security
PGP: 0xC44977CA 8107 AF16 A416 F9AF 18F3  D874 3E78 6F42 C449 77CA
