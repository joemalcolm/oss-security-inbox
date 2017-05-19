X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["658" "Friday" "19" "May" "2017" "15:48:44" "+0530" "P J P" "ppandit@redhat.com" "<alpine.LFD.2.20.1705191544100.29617@wniryva>" "22" "[oss-security] CVE-2017-9060 Qemu: virtio-gpu: host memory leakage in Virtio GPU device" nil nil nil "5" "2017051910:18:44" "[oss-security] CVE-2017-9060 Qemu: virtio-gpu: host memory leakage in Virtio GPU device" (number mark "U       ppandit@redh May 19   22/658   " thread-indent "\"[oss-security] CVE-2017-9060 Qemu: virtio-gpu: host memory leakage in Virtio GPU device\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5523 invoked by uid 550); 19 May 2017 10:19:02 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5505 invoked from network); 19 May 2017 10:19:02 -0000
DMARC-Filter: OpenDMARC Filter v1.3.2 mx1.redhat.com 845D47AE8B
Authentication-Results: ext-mx01.extmail.prod.ext.phx2.redhat.com; dmarc=none (p=none dis=none) header.from=redhat.com
Authentication-Results: ext-mx01.extmail.prod.ext.phx2.redhat.com; spf=pass smtp.mailfrom=ppandit@redhat.com
DKIM-Filter: OpenDKIM Filter v2.11.0 mx1.redhat.com 845D47AE8B
Date: Fri, 19 May 2017 15:48:44 +0530 (IST)
From: P J P <ppandit@redhat.com>
X-X-Sender: pjp@javelin
To: oss security list <oss-security@lists.openwall.com>
cc: Li Qiang <liqiang6-s@360.cn>
Message-ID: <alpine.LFD.2.20.1705191544100.29617@wniryva>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.25]); Fri, 19 May 2017 10:18:50 +0000 (UTC)
Subject: [oss-security] CVE-2017-9060 Qemu: virtio-gpu: host memory leakage in Virtio GPU
 device

   Hello,

Quick Emulator(Qemu) built with the Virtio GPU Device emulator support is 
vulnerable to a memory leakage issue. It could occur while processing 
'VIRTIO_GPU_CMD_SET_SCANOUT:' command.

A guest user/process could use this flaw to leak host memory resulting in Dos.

Upstream patch:
---------------
   -> http://git.qemu.org/?p=qemu.git;a=commitdiff;h=dd248ed7e204ee8a1873914e02b8b526e8f1b80d

Reference:
----------
   -> https://bugzilla.redhat.com/show_bug.cgi?id=1452597

This issue was reported by Li Qiang of Qihoo 360 Gear Team.

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
