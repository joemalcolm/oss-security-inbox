X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["754" "Wednesday" "3" "May" "2017" "14:22:50" "+0530" "P J P" "ppandit@redhat.com" "<alpine.LFD.2.20.1705031419470.32279@wniryva>" "25" "[oss-security] CVE-2017-8379 Qemu: input: host memory lekage via keyboard" nil nil nil "5" "2017050308:52:50" "[oss-security] CVE-2017-8379 Qemu: input: host memory lekage via keyboard" (number mark "U       ppandit@redh May  3   25/754   " thread-indent "\"[oss-security] CVE-2017-8379 Qemu: input: host memory lekage via keyboard\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3261 invoked by uid 550); 3 May 2017 08:53:06 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3236 invoked from network); 3 May 2017 08:53:05 -0000
DMARC-Filter: OpenDMARC Filter v1.3.2 mx1.redhat.com 16E8183F38
Authentication-Results: ext-mx03.extmail.prod.ext.phx2.redhat.com; dmarc=none (p=none dis=none) header.from=redhat.com
Authentication-Results: ext-mx03.extmail.prod.ext.phx2.redhat.com; spf=pass smtp.mailfrom=ppandit@redhat.com
DKIM-Filter: OpenDKIM Filter v2.11.0 mx1.redhat.com 16E8183F38
Date: Wed, 3 May 2017 14:22:50 +0530 (IST)
From: P J P <ppandit@redhat.com>
X-X-Sender: pjp@javelin
To: oss security list <oss-security@lists.openwall.com>
cc: Jiangxin <jiangxin1@huawei.com>
Message-ID: <alpine.LFD.2.20.1705031419470.32279@wniryva>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.27]); Wed, 03 May 2017 08:52:54 +0000 (UTC)
Subject: [oss-security] CVE-2017-8379 Qemu: input: host memory lekage via keyboard

   Hello,

Quick Emulator(Qemu) built with the keyboard input event handlers support is 
vulnerable to a host memory leakage issue. It could occur if a guest user was 
to generate large keyboard events, faster than Qemu could process them.

A privileged user inside guest could use this flaw to exhaust host memory, 
resulting in DoS.

Upstream patch:
---------------
   -> https://lists.gnu.org/archive/html/qemu-devel/2017-04/msg05599.html

Reference:
----------
   -> https://bugzilla.redhat.com/show_bug.cgi?id=1446547

This issue was reported by Jiang Xin (PSIRT Huawei Inc.)

'CVE-2017-8379' allocated via -> http://cveform.mitre.org/

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
