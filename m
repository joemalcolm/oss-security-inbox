X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["722" "Monday" "6" "March" "2017" "23:51:41" "+0530" "P J P" "ppandit@redhat.com" "<alpine.LFD.2.20.1703062349510.6862@wniryva>" "25" "[oss-security] CVE-2017-6505 Qemu: usb: an infinite loop issue in ohci_service_ed_list" nil nil nil "3" "2017030618:21:41" "[oss-security] CVE-2017-6505 Qemu: usb: an infinite loop issue in ohci_service_ed_list" (number mark "U       ppandit@redh Mar  6   25/722   " thread-indent "\"[oss-security] CVE-2017-6505 Qemu: usb: an infinite loop issue in ohci_service_ed_list\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7757 invoked by uid 550); 6 Mar 2017 18:21:58 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7736 invoked from network); 6 Mar 2017 18:21:57 -0000
Date: Mon, 6 Mar 2017 23:51:41 +0530 (IST)
From: P J P <ppandit@redhat.com>
X-X-Sender: pjp@javelin
To: oss security list <oss-security@lists.openwall.com>
cc: Li Qiang <liqiang6-s@360.cn>
Message-ID: <alpine.LFD.2.20.1703062349510.6862@wniryva>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.28]); Mon, 06 Mar 2017 18:21:47 +0000 (UTC)
Subject: [oss-security] CVE-2017-6505 Qemu: usb: an infinite loop issue in
 ohci_service_ed_list

   Hello,

Quick Emulator built with the USB OHCI Emulation support is vulnerable to an 
infinite loop issue. It could occur while processing an endpoint list 
descriptor in ohci_service_ed_list().

A guest user/process could use this flaw to crash Qemu process resulting in 
DoS.

Upstream patch:
---------------
   -> http://git.qemu-project.org/?p=qemu.git;a=commitdiff;h=95ed56939eb2eaa4e2f349fe6dcd13ca4edfd8fb

Reference:
----------
   -> https://bugzilla.redhat.com/show_bug.cgi?id=1429432

This issue was reported by Li Qiang of 360.cn Inc.

'CVE-2017-6505' allocated via -> http://cveform.mitre.org/

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
