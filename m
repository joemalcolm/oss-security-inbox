X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["701" "Tuesday" "20" "September" "2016" "00:11:37" "+0530" "P J P" "ppandit@redhat.com" "<alpine.LFD.2.20.1609200003200.13498@wniryva>" "20" "[oss-security] CVE Request Qemu: usb: xhci memory leakage during device unplug" nil nil nil "9" "2016091918:41:37" "[oss-security] CVE Request Qemu: usb: xhci memory leakage during device unplug" (number mark "U       ppandit@redh Sep 20   20/701   " thread-indent "\"[oss-security] CVE Request Qemu: usb: xhci memory leakage during device unplug\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7733 invoked by uid 550); 19 Sep 2016 18:42:04 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7713 invoked from network); 19 Sep 2016 18:42:04 -0000
Date: Tue, 20 Sep 2016 00:11:37 +0530 (IST)
From: P J P <ppandit@redhat.com>
X-X-Sender: pjp@javelin
To: oss security list <oss-security@lists.openwall.com>
cc: liqiang6-s@360.cn
Message-ID: <alpine.LFD.2.20.1609200003200.13498@wniryva>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.27
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.29]); Mon, 19 Sep 2016 18:41:52 +0000 (UTC)
Subject: [oss-security] CVE Request Qemu: usb: xhci memory leakage during device unplug

   Hello,

Quick Emulator(Qemu) built with the USB xHCI controller emulation support is 
vulnerable to a memory leakage issue. It could occur while doing a USB device 
unplug operation; Doing so repeatedly would result in leaking host memory, 
affecting other services on the host.

A privileged user inside guest could use this flaw to cause a DoS on the host 
and/or potentially crash the Qemu process instance on the host.

Upstream patch:
---------------
   -> https://lists.gnu.org/archive/html/qemu-devel/2016-09/msg02773.html

This issue was reported by Mr Li Qiang of 360.cn Inc.

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
