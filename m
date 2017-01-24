X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["763" "Tuesday" "24" "January" "2017" "23:37:45" "+0530" "P J P" "ppandit@redhat.com" "<alpine.LFD.2.20.1701242332030.18573@wniryva>" "24" "[oss-security] CVE request Qemu: serial: host memory leakage in 16550A UART emulation" nil nil nil "1" "2017012418:07:45" "[oss-security] CVE request Qemu: serial: host memory leakage in 16550A UART emulation" (number mark "U       ppandit@redh Jan 24   24/763   " thread-indent "\"[oss-security] CVE request Qemu: serial: host memory leakage in 16550A UART emulation\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 32515 invoked by uid 550); 24 Jan 2017 18:08:04 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32497 invoked from network); 24 Jan 2017 18:08:03 -0000
Date: Tue, 24 Jan 2017 23:37:45 +0530 (IST)
From: P J P <ppandit@redhat.com>
X-X-Sender: pjp@javelin
To: oss security list <oss-security@lists.openwall.com>
cc: Li Qiang <liqiang6-s@360.cn>
Message-ID: <alpine.LFD.2.20.1701242332030.18573@wniryva>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.24
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.38]); Tue, 24 Jan 2017 18:07:52 +0000 (UTC)
Subject: [oss-security] CVE request Qemu: serial: host memory leakage in 16550A UART
 emulation

   Hello,

Quick Emulator(Qemu) built with the 16550A UART serial device emulation 
support is vulnerable to a memory leakage issue. It could occur while doing a 
device unplug operation; Doing so repeatedly would result in leaking host 
memory, affecting other services on the host.

A privileged user inside guest could use this flaw to cause a DoS and/or 
potentially crash the Qemu process on the host.

Upstream patch:
---------------
   -> https://lists.nongnu.org/archive/html/qemu-devel/2017-01/msg01945.html

Reference:
----------
   -> https://bugzilla.redhat.com/show_bug.cgi?id=1416157

This issue was reported by Li Qiang of 360.cn Inc.

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
