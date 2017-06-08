X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["765" "Thursday" "8" "June" "2017" "11:40:32" "+0530" "P J P" "ppandit@redhat.com" "<alpine.LFD.2.20.1706081138160.21700@wniryva>" "24" "[oss-security] CVE-2017-9503 Qemu: scsi: null pointer dereference while processing megasas command" "^cc:" nil nil "6" "2017060806:10:32" "[oss-security] CVE-2017-9503 Qemu: scsi: null pointer dereference while processing megasas command" (number mark "U       ppandit@redh Jun  8   24/765   " thread-indent "\"[oss-security] CVE-2017-9503 Qemu: scsi: null pointer dereference while processing megasas command\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1378 invoked by uid 550); 8 Jun 2017 06:10:52 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 1354 invoked from network); 8 Jun 2017 06:10:51 -0000
DMARC-Filter: OpenDMARC Filter v1.3.2 mx1.redhat.com C326485365
Authentication-Results: ext-mx01.extmail.prod.ext.phx2.redhat.com; dmarc=none (p=none dis=none) header.from=redhat.com
Authentication-Results: ext-mx01.extmail.prod.ext.phx2.redhat.com; spf=pass smtp.mailfrom=ppandit@redhat.com
DKIM-Filter: OpenDKIM Filter v2.11.0 mx1.redhat.com C326485365
X-X-Sender: pjp@javelin
Message-ID: <alpine.LFD.2.20.1706081138160.21700@wniryva>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.25]); Thu, 08 Jun 2017 06:10:39 +0000 (UTC)
cc: Zhangyanyu <zyy4013@stu.ouc.edu.cn>
Date: Thu, 8 Jun 2017 11:40:32 +0530 (IST)
From: P J P <ppandit@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE-2017-9503 Qemu: scsi: null pointer dereference while processing
 megasas command
To: oss security list <oss-security@lists.openwall.com>

   Hello,

Quick Emulator(Qemu) built with the MegaRAID SAS 8708EM2 Host Bus Adapter 
emulation support is vulnerable to a null pointer dereference issue. It could 
occur while processing megasas commands via megasas_command_complete().

A privileged user inside guest could use this flaw to crash the Qemu process 
on the host resulting in DoS.

Upstream patches:
-----------------
   -> https://lists.gnu.org/archive/html/qemu-devel/2017-06/msg01313.html
   -> https://lists.gnu.org/archive/html/qemu-devel/2017-06/msg01309.html

Reference:
----------
   -> https://bugzilla.redhat.com/show_bug.cgi?id=1459477

This issue was reported by Zhangyanyu.

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
