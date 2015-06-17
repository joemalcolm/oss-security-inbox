X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["968" "Wednesday" "17" "June" "2015" "13:09:30" "+0200" "Petr Matousek" "pmatouse@redhat.com" "<20150617110929.GI2422@dhcp-25-225.brq.redhat.com>" "24" "[oss-security] CVE-2015-3214 qemu: i8254: out-of-bounds memory access in pit_ioport_read function" nil nil nil "6" "2015061711:09:30" "[oss-security] CVE-2015-3214 qemu: i8254: out-of-bounds memory access in pit_ioport_read function" (number mark "        pmatouse@red Jun 17   24/968   " thread-indent "\"[oss-security] CVE-2015-3214 qemu: i8254: out-of-bounds memory access in pit_ioport_read function\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 10215 invoked by uid 550); 17 Jun 2015 11:09:46 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 10193 invoked from network); 17 Jun 2015 11:09:45 -0000
Message-ID: <20150617110929.GI2422@dhcp-25-225.brq.redhat.com>
Mail-Followup-To: oss-security@lists.openwall.com
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.22
Date: Wed, 17 Jun 2015 13:09:30 +0200
From: Petr Matousek <pmatouse@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE-2015-3214 qemu: i8254: out-of-bounds memory access in
 pit_ioport_read function
To: oss-security@lists.openwall.com

Due converting PIO to the new memory read/write api we no longer provide
separate I/O region lenghts for read and write operations. As a result,
reading from PIT Mode/Command register will end with accessing
pit->channels with invalid index and potentially cause memory corruption
and/or minor information leak.

A privileged guest user in a guest with QEMU PIT emulation enabled could
potentially (tough unlikely) use this flaw to execute arbitrary code on
the host with the privileges of the hosting QEMU process.

Please note that by default QEMU/KVM guests use in-kernel (KVM) PIT
emulation and are thus not vulnerable to this issue.

Acknowledgements:

Red Hat would like to thank Matt Tait of Google's Project Zero security
team for reporting this issue.

Upstream patch submission:
https://www.mail-archive.com/qemu-devel@nongnu.org/msg304063.html

-- 
Petr Matousek / Red Hat Product Security
PGP: 0xC44977CA 8107 AF16 A416 F9AF 18F3  D874 3E78 6F42 C449 77CA
