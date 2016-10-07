X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["572" "Friday" "7" "October" "2016" "16:44:35" "+0530" "P J P" "ppandit@redhat.com" "<alpine.LFD.2.20.1610071639580.8956@wniryva>" "19" "[oss-security] CVE request Qemu virtio-gpu: memory leak in virtio_gpu_resource_create_2d" nil nil nil "10" "2016100711:14:35" "[oss-security] CVE request Qemu virtio-gpu: memory leak in virtio_gpu_resource_create_2d" (number mark "U       ppandit@redh Oct  7   19/572   " thread-indent "\"[oss-security] CVE request Qemu virtio-gpu: memory leak in virtio_gpu_resource_create_2d\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5683 invoked by uid 550); 7 Oct 2016 11:14:55 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5660 invoked from network); 7 Oct 2016 11:14:54 -0000
Date: Fri, 7 Oct 2016 16:44:35 +0530 (IST)
From: P J P <ppandit@redhat.com>
X-X-Sender: pjp@javelin
To: oss security list <oss-security@lists.openwall.com>
cc: Li Qiang <liqiang6-s@360.cn>
Message-ID: <alpine.LFD.2.20.1610071639580.8956@wniryva>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.26
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.39]); Fri, 07 Oct 2016 11:14:42 +0000 (UTC)
Subject: [oss-security] CVE request Qemu virtio-gpu: memory leak in
 virtio_gpu_resource_create_2d

   Hello,

Quick Emulator(Qemu) built with the Virtio GPU Device support is vulnerable to 
a memory leakage issue. It could occur while processing virtio GPU command 
VIRTIO_GPU_CMD_RESOURCE_CREATE_2D.

A privileged user/process inside guest could use this flaw to exhaust host 
memory resulting in DoS.

Upstream fix:
-------------
   -> https://lists.gnu.org/archive/html/qemu-devel/2016-09/msg04129.html

This issue was reported by Li Qiang of 360.cn Inc.

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
