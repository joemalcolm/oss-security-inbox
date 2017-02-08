X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["697" "Wednesday" "8" "February" "2017" "15:49:04" "+0530" "P J P" "ppandit@redhat.com" "<alpine.LFD.2.20.1702081546460.30815@wniryva>" "22" "[oss-security] CVE request virglrenderer: host memory leak issue in virgl_resource_attach_backing " nil nil nil "2" "2017020810:19:04" "[oss-security] CVE request virglrenderer: host memory leak issue in virgl_resource_attach_backing" (number mark "U       ppandit@redh Feb  8   22/697   " thread-indent "\"[oss-security] CVE request virglrenderer: host memory leak issue in virgl_resource_attach_backing \"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 19468 invoked by uid 550); 8 Feb 2017 10:19:20 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 18426 invoked from network); 8 Feb 2017 10:19:19 -0000
Date: Wed, 8 Feb 2017 15:49:04 +0530 (IST)
From: P J P <ppandit@redhat.com>
X-X-Sender: pjp@javelin
To: oss security list <oss-security@lists.openwall.com>
cc: Li Qiang <liq3ea@gmail.com>
Message-ID: <alpine.LFD.2.20.1702081546460.30815@wniryva>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.26
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.25]); Wed, 08 Feb 2017 10:19:09 +0000 (UTC)
Subject: [oss-security] CVE request virglrenderer: host memory leak issue in
 virgl_resource_attach_backing 

   Hello,

Virgil 3d project, used by Quick Emulator(Qemu) to implement 3D GPU support 
for the virtio GPU, is vulnerable to memory leakage issue. It could occur when 
a guest invokes a 'VIRTIO_GPU_CMD_RESOURCE_ATTACH_BACKING' command.

A guest user/process could use this flaw to leak host memory leading to DoS.

Upstream patch:
---------------
   -> https://cgit.freedesktop.org/virglrenderer/commit/?id=40b0e7813325b08077b6f541b3989edb2d86d837

Reference:
----------
   -> https://bugzilla.redhat.com/show_bug.cgi?id=1420266

This issue was reported by Mr Li Qiang of 360.cn Inc.

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
