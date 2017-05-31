X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["778" "Wednesday" "31" "May" "2017" "12:16:25" "+0530" "P J P" "ppandit@redhat.com" "<alpine.LFD.2.20.1705311213560.8996@wniryva>" "25" "[oss-security] CVE-2017-9310 Qemu: net: infinite loop in e1000e NIC emulation" "^cc:" nil nil "5" "2017053106:46:25" "[oss-security] CVE-2017-9310 Qemu: net: infinite loop in e1000e NIC emulation" (number mark "U       ppandit@redh May 31   25/778   " thread-indent "\"[oss-security] CVE-2017-9310 Qemu: net: infinite loop in e1000e NIC emulation\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 32718 invoked by uid 550); 31 May 2017 06:46:43 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 32700 invoked from network); 31 May 2017 06:46:42 -0000
DMARC-Filter: OpenDMARC Filter v1.3.2 mx1.redhat.com 8C5E785540
Authentication-Results: ext-mx04.extmail.prod.ext.phx2.redhat.com; dmarc=none (p=none dis=none) header.from=redhat.com
Authentication-Results: ext-mx04.extmail.prod.ext.phx2.redhat.com; spf=pass smtp.mailfrom=ppandit@redhat.com
DKIM-Filter: OpenDKIM Filter v2.11.0 mx1.redhat.com 8C5E785540
X-X-Sender: pjp@javelin
Message-ID: <alpine.LFD.2.20.1705311213560.8996@wniryva>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.28]); Wed, 31 May 2017 06:46:30 +0000 (UTC)
cc: Li Qiang <liqiang6-s@360.cn>
Date: Wed, 31 May 2017 12:16:25 +0530 (IST)
From: P J P <ppandit@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE-2017-9310 Qemu: net: infinite loop in e1000e NIC emulation
To: oss security list <oss-security@lists.openwall.com>

   Hello,

Qemu emulator built with the e1000e NIC emulation support is vulnerable to an 
infinite loop issue. It could occur while processing data via transmit or 
receive descriptors, provided the initial receive/transmit descriptor 
head(TDH/RDH) is set outside the allocated descriptor buffer.

A privileged user inside guest could use this flaw to crash the Qemu instance 
resulting in DoS.

Upstream patch:
---------------
   -> http://git.qemu.org/?p=qemu.git;a=commitdiff;h=4154c7e03fa55b4cf52509a83d50d6c09d743b7

Reference:
----------
   -> https://bugzilla.redhat.com/show_bug.cgi?id=1452620

This issue was reported by Li Qiang of Qihoo 360 Gear Team.


Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
