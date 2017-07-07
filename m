X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["670" "Friday" "7" "July" "2017" "14:50:25" "+0530" "P J P" "ppandit@redhat.com" "<alpine.LFD.2.20.1707071448440.951@wniryva>" "23" "[oss-security] CVE-2017-10810 Kernel: virtio-gpu: memory leakage while creating gpu object" nil nil nil "7" "2017070709:20:25" "[oss-security] CVE-2017-10810 Kernel: virtio-gpu: memory leakage while creating gpu object" (number mark "U       ppandit@redh Jul  7   23/670   " thread-indent "\"[oss-security] CVE-2017-10810 Kernel: virtio-gpu: memory leakage while creating gpu object\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 15933 invoked by uid 550); 7 Jul 2017 09:20:42 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15915 invoked from network); 7 Jul 2017 09:20:41 -0000
DMARC-Filter: OpenDMARC Filter v1.3.2 mx1.redhat.com EA5D5C060208
Authentication-Results: ext-mx08.extmail.prod.ext.phx2.redhat.com; dmarc=none (p=none dis=none) header.from=redhat.com
Authentication-Results: ext-mx08.extmail.prod.ext.phx2.redhat.com; spf=pass smtp.mailfrom=ppandit@redhat.com
DKIM-Filter: OpenDKIM Filter v2.11.0 mx1.redhat.com EA5D5C060208
Date: Fri, 7 Jul 2017 14:50:25 +0530 (IST)
From: P J P <ppandit@redhat.com>
X-X-Sender: pjp@javelin
To: oss security list <oss-security@lists.openwall.com>
cc: Li Qiang <liqiang6-s@360.cn>
Message-ID: <alpine.LFD.2.20.1707071448440.951@wniryva>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.32]); Fri, 07 Jul 2017 09:20:30 +0000 (UTC)
Subject: [oss-security] CVE-2017-10810 Kernel: virtio-gpu: memory leakage while creating
 gpu object

   Hello,

Linux kernel built with the VirtIO GPU driver(CONFIG_DRM_VIRTIO_GPU) support 
is vulnerable to a memory leakage issue. It could occur while creating a 
virtio gpu object in virtio_gpu_object_create().

A user/process could use this flaw to leak host kernel memory potentially 
resulting in DoS.

Upstream patch:
---------------
   -> https://git.kernel.org/linus/385aee965b4e4c36551c362a334378d2985b722a

Reference:
----------
   -> https://bugzilla.redhat.com/show_bug.cgi?id=1468023

This issue was reported by Li Qiang of Qihoo 360 Gear Team.

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
