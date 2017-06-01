X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["663" "Thursday" "1" "June" "2017" "13:00:13" "+0530" "P J P" "ppandit@redhat.com" "<alpine.LFD.2.20.1706011258220.5815@wniryva>" "23" "[oss-security] CVE-2017-9330 Qemu: usb: ohci: infinite loop due to incorrect return value" "^cc:" nil nil "6" "2017060107:30:13" "[oss-security] CVE-2017-9330 Qemu: usb: ohci: infinite loop due to incorrect return value" (number mark "        ppandit@redh Jun  1   23/663   " thread-indent "\"[oss-security] CVE-2017-9330 Qemu: usb: ohci: infinite loop due to incorrect return value\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 24126 invoked by uid 550); 1 Jun 2017 07:30:32 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 24108 invoked from network); 1 Jun 2017 07:30:31 -0000
DMARC-Filter: OpenDMARC Filter v1.3.2 mx1.redhat.com F11978553C
Authentication-Results: ext-mx04.extmail.prod.ext.phx2.redhat.com; dmarc=none (p=none dis=none) header.from=redhat.com
Authentication-Results: ext-mx04.extmail.prod.ext.phx2.redhat.com; spf=pass smtp.mailfrom=ppandit@redhat.com
DKIM-Filter: OpenDKIM Filter v2.11.0 mx1.redhat.com F11978553C
X-X-Sender: pjp@javelin
Message-ID: <alpine.LFD.2.20.1706011258220.5815@wniryva>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.28]); Thu, 01 Jun 2017 07:30:20 +0000 (UTC)
cc: Li Qiang <liqiang6-s@360.cn>
Date: Thu, 1 Jun 2017 13:00:13 +0530 (IST)
From: P J P <ppandit@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE-2017-9330 Qemu: usb: ohci: infinite loop due to incorrect return
 value
To: oss security list <oss-security@lists.openwall.com>

   Hello,

Quick Emulator built with the USB OHCI Emulation support is vulnerable to an 
infinite loop issue. It could occur while processing an endpoint list 
descriptor in ohci_service_ed_list().

A guest user/process could use this flaw to crash Qemu process resulting in 
DoS.

Upstream patch:
---------------
   -> http://git.qemu.org/?p=qemu.git;a=commitdiff;h=26f670a244982335cc08943fb1ec099a2c81e42d

Reference:
----------
   -> https://bugzilla.redhat.com/show_bug.cgi?id=1457697

This issue was reported by Li Qiang of Qihoo 360 Gear Team.

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
