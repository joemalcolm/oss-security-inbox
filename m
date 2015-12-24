X-VM-v5-Data: ([nil nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["696" "Thursday" "24" "December" "2015" "11:48:02" "+0530" "P J P" "ppandit@redhat.com" "<alpine.LFD.2.20.1512241145360.17815@wniryva>" "22" "[oss-security] CVE request Qemu: acpi: heap based buffer overrun during VM migration" "^Date:" nil nil "12" "2015122406:18:02" "[oss-security] CVE request Qemu: acpi: heap based buffer overrun during VM migration" (number mark "D       ppandit@redh Dec 24   22/696   " thread-indent "\"[oss-security] CVE request Qemu: acpi: heap based buffer overrun during VM migration\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0009
X-Mozilla-Status2: 00000000
Received: (qmail 26428 invoked by uid 550); 24 Dec 2015 06:18:22 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 26410 invoked from network); 24 Dec 2015 06:18:22 -0000
X-X-Sender: pjp@javelin
Message-ID: <alpine.LFD.2.20.1512241145360.17815@wniryva>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.26
Date: Thu, 24 Dec 2015 11:48:02 +0530 (IST)
From: P J P <ppandit@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE request Qemu: acpi: heap based buffer overrun during VM
 migration
To: oss security list <oss-security@lists.openwall.com>

   Hello,

Qemu emulator built with the Q35 chipset based pc system emulator is 
vulnerable to a heap based buffer overflow. It occurs during VM guest 
migration, as more(16 bytes) data is moved into allocated(8 bytes) memory 
area.

A privileged guest user could use this issue to corrupt the VM guest image, 
potentially leading to a DoS. This issue affects q35 machine types.

Upstream fix:
-------------
   -> http://git.qemu.org/?p=qemu.git;a=commitdiff;h=d9a3b33d2c9f996537b7f1d0246dee2d0120cefb

Reference:
----------
   -> https://bugzilla.redhat.com/show_bug.cgi?id=1283722

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
