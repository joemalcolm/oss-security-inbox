X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["643" "Monday" "23" "January" "2017" "23:54:25" "+0530" "P J P" "ppandit@redhat.com" "<alpine.LFD.2.20.1701232352210.20901@wniryva>" "22" "[oss-security] CVE request Qemu: display: virtio-gpu: host memory leakage in virtio_gpu_resource_attach_backing" nil nil nil "1" "2017012318:24:25" "[oss-security] CVE request Qemu: display: virtio-gpu: host memory leakage in virtio_gpu_resource_attach_backing" (number mark "U       ppandit@redh Jan 23   22/643   " thread-indent "\"[oss-security] CVE request Qemu: display: virtio-gpu: host memory leakage in virtio_gpu_resource_attach_backing\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 31817 invoked by uid 550); 23 Jan 2017 18:24:45 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 31793 invoked from network); 23 Jan 2017 18:24:44 -0000
X-X-Sender: pjp@javelin
Message-ID: <alpine.LFD.2.20.1701232352210.20901@wniryva>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.27
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.38]); Mon, 23 Jan 2017 18:24:33 +0000 (UTC)
cc: Li Qiang <liqiang6-s@360.cn>
Date: Mon, 23 Jan 2017 23:54:25 +0530 (IST)
From: P J P <ppandit@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE request Qemu: display: virtio-gpu: host memory leakage in
 virtio_gpu_resource_attach_backing
To: oss security list <oss-security@lists.openwall.com>

   Hello,

Quick Emulator(Qemu) built with the Virtio GPU Device emulator support is 
vulnerable to a memory leakage issue. It could occur while processing 
'VIRTIO_GPU_CMD_RESOURCE_ATTACH_BACKING' command.

A guest user/process could use this flaw to leak host memory resulting in DoS.

Upstream patch:
---------------
   -> https://lists.nongnu.org/archive/html/qemu-devel/2017-01/msg00151.html

Reference:
----------
   -> https://bugzilla.redhat.com/show_bug.cgi?id=1415795

This issue was reported by Li Qiang of 360.cn Inc.

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
