X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["642" "Wednesday" "1" "February" "2017" "22:46:16" "+0530" "P J P" "ppandit@redhat.com" "<alpine.LFD.2.20.1702012244320.601@wniryva>" "22" "[oss-security] CVE request Qemu: display: virtio-gpu-3d: host memory leakage in virgl_cmd_resource_unref" nil nil nil "2" "2017020117:16:16" "[oss-security] CVE request Qemu: display: virtio-gpu-3d: host memory leakage in virgl_cmd_resource_unref" (number mark "U       ppandit@redh Feb  1   22/642   " thread-indent "\"[oss-security] CVE request Qemu: display: virtio-gpu-3d: host memory leakage in virgl_cmd_resource_unref\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 13969 invoked by uid 550); 1 Feb 2017 17:16:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13951 invoked from network); 1 Feb 2017 17:16:33 -0000
Date: Wed, 1 Feb 2017 22:46:16 +0530 (IST)
From: P J P <ppandit@redhat.com>
X-X-Sender: pjp@javelin
To: oss security list <oss-security@lists.openwall.com>
cc: Li Qiang <liqiang6-s@360.cn>
Message-ID: <alpine.LFD.2.20.1702012244320.601@wniryva>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.28]); Wed, 01 Feb 2017 17:16:23 +0000 (UTC)
Subject: [oss-security] CVE request Qemu: display: virtio-gpu-3d: host memory leakage in
 virgl_cmd_resource_unref

   Hello,

Quick Emulator(Qemu) built with the Virtio GPU Device emulator support is 
vulnerable to a host memory leakage issue. It could occur while processing 
'VIRTIO_GPU_CMD_RESOURCE_UNREF' command.

A guest user/process could use this flaw to leak host memory resulting in DoS.

Upstream patch:
---------------
   -> https://lists.nongnu.org/archive/html/qemu-devel/2017-01/msg04615.html

Reference:
----------
   -> https://bugzilla.redhat.com/show_bug.cgi?id=1418382

This issue was reported by Mr Li Qiang of 360.cn Inc.

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
