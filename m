X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["760" "Friday" "28" "October" "2016" "01:54:24" "+0530" "P J P" "ppandit@redhat.com" "<alpine.LFD.2.20.1610280151370.5357@wniryva>" "24" "[oss-security] CVE request Qemu: net: eepro100 memory leakage at device unplug" nil nil nil "10" "2016102720:24:24" "[oss-security] CVE request Qemu: net: eepro100 memory leakage at device unplug" (number mark "U       ppandit@redh Oct 28   24/760   " thread-indent "\"[oss-security] CVE request Qemu: net: eepro100 memory leakage at device unplug\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 15860 invoked by uid 550); 27 Oct 2016 20:24:43 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15825 invoked from network); 27 Oct 2016 20:24:42 -0000
Date: Fri, 28 Oct 2016 01:54:24 +0530 (IST)
From: P J P <ppandit@redhat.com>
X-X-Sender: pjp@javelin
To: oss security list <oss-security@lists.openwall.com>
cc: Li Qiang <liqiang6-s@360.cn>
Message-ID: <alpine.LFD.2.20.1610280151370.5357@wniryva>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.27
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.31]); Thu, 27 Oct 2016 20:24:30 +0000 (UTC)
Subject: [oss-security] CVE request Qemu: net: eepro100 memory leakage at device unplug

   Hello,

Quick Emulator(Qemu) built with the i8255x (PRO100) NIC emulation support is 
vulnerable to a memory leakage issue. It could occur while unplugging the 
device, and doing so repeatedly would result in leaking host memory affecting, 
other services on the host.

A privileged user inside guest could use this flaw to cause a DoS on the host 
and/or potentially crash the Qemu process on the host.

Upstream patch:
---------------
   -> https://lists.gnu.org/archive/html/qemu-devel/2016-10/msg03024.html

Reference:
----------
   -> https://bugzilla.redhat.com/show_bug.cgi?id=1389538

This issue was reported by Li Qiang of 360.cn Inc.

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
