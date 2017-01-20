X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["771" "Friday" "20" "January" "2017" "20:06:20" "+0530" "P J P" "ppandit@redhat.com" "<alpine.LFD.2.20.1701202004350.14113@wniryva>" "24" "[oss-security] CVE request Qemu: watchdog: memory leakage in virtual hardware watchdog wdt_i6300esb" "^cc:" nil nil "1" "2017012014:36:20" "[oss-security] CVE request Qemu: watchdog: memory leakage in virtual hardware watchdog wdt_i6300esb" (number mark "        ppandit@redh Jan 20   24/771   " thread-indent "\"[oss-security] CVE request Qemu: watchdog: memory leakage in virtual hardware watchdog wdt_i6300esb\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 7770 invoked by uid 550); 20 Jan 2017 14:36:40 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 7684 invoked from network); 20 Jan 2017 14:36:40 -0000
X-X-Sender: pjp@javelin
Message-ID: <alpine.LFD.2.20.1701202004350.14113@wniryva>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.28]); Fri, 20 Jan 2017 14:36:29 +0000 (UTC)
cc: Li Qiang <liqiang6-s@360.cn>
Date: Fri, 20 Jan 2017 20:06:20 +0530 (IST)
From: P J P <ppandit@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE request Qemu: watchdog: memory leakage in virtual hardware
 watchdog wdt_i6300esb
To: oss security list <oss-security@lists.openwall.com>

   Hello,

Quick Emulator(Qemu) built with the virtual hardware watchdog 'wdt_i6300esb' 
support is vulnerable to a memory leakage issue. It could occur while doing a 
device unplug operation; Doing so repeatedly would result in leaking host 
memory, affecting other services on the host.

A privileged user inside guest could use this flaw to cause a DoS and/or 
potentially crash the Qemu process on the host.

Upstream patch:
---------------
   -> https://lists.nongnu.org/archive/html/qemu-devel/2016-12/msg03104.html

Reference:
----------
   -> https://bugzilla.redhat.com/show_bug.cgi?id=1415199

This issue was reported by Mr Li Qiang of 360.cn Inc.

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
