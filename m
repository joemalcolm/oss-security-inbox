X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["677" "Wednesday" "18" "January" "2017" "00:45:29" "+0530" "P J P" "ppandit@redhat.com" "<alpine.LFD.2.20.1701180043410.31247@wniryva>" "20" "[oss-security] CVE request Qemu: audio: memory leakage in ac97 device" nil nil nil "1" "2017011719:15:29" "[oss-security] CVE request Qemu: audio: memory leakage in ac97 device" (number mark "U       ppandit@redh Jan 18   20/677   " thread-indent "\"[oss-security] CVE request Qemu: audio: memory leakage in ac97 device\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 22020 invoked by uid 550); 17 Jan 2017 19:15:47 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 21995 invoked from network); 17 Jan 2017 19:15:46 -0000
Date: Wed, 18 Jan 2017 00:45:29 +0530 (IST)
From: P J P <ppandit@redhat.com>
X-X-Sender: pjp@javelin
To: oss security list <oss-security@lists.openwall.com>
cc: Li Qiang <liqiang6-s@360.cn>
Message-ID: <alpine.LFD.2.20.1701180043410.31247@wniryva>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.38]); Tue, 17 Jan 2017 19:15:35 +0000 (UTC)
Subject: [oss-security] CVE request Qemu: audio: memory leakage in ac97 device

   Hello,

Quick Emulator(Qemu) built with the ac97 audio device emulation support is 
vulnerable to a memory leakage issue. It could occur while doing a device 
unplug operation; Doing so repeatedly would result in leaking host memory, 
affecting other services on the host.

A privileged user inside guest could use this flaw to cause a DoS and/or 
potentially crash the Qemu process on the host.

Upstream patch:
---------------
   -> https://lists.nongnu.org/archive/html/qemu-devel/2017-01/msg01740.html

This issue was reported by Mr Li Qiang of 360.cn Inc.

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
