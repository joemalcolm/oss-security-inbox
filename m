X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["646" "Friday" "20" "January" "2017" "23:52:42" "+0530" "P J P" "ppandit@redhat.com" "<alpine.LFD.2.20.1701202351250.18165@wniryva>" "22" "[oss-security] CVE request Qemu: display: virtio-gpu-3d: memory leakage in virgl_resource_attach_backing" nil nil nil "1" "2017012018:22:42" "[oss-security] CVE request Qemu: display: virtio-gpu-3d: memory leakage in virgl_resource_attach_backing" (number mark "U       ppandit@redh Jan 20   22/646   " thread-indent "\"[oss-security] CVE request Qemu: display: virtio-gpu-3d: memory leakage in virgl_resource_attach_backing\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 17418 invoked by uid 550); 20 Jan 2017 18:23:04 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 16370 invoked from network); 20 Jan 2017 18:23:03 -0000
Date: Fri, 20 Jan 2017 23:52:42 +0530 (IST)
From: P J P <ppandit@redhat.com>
X-X-Sender: pjp@javelin
To: oss security list <oss-security@lists.openwall.com>
cc: Li Qiang <liqiang6-s@360.cn>
Message-ID: <alpine.LFD.2.20.1701202351250.18165@wniryva>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.25]); Fri, 20 Jan 2017 18:22:52 +0000 (UTC)
Subject: [oss-security] CVE request Qemu: display: virtio-gpu-3d: memory leakage in
 virgl_resource_attach_backing

   Hello,

Quick Emulator(Qemu) built with the Virtio GPU Device emulator support is 
vulnerable to a memory leakage issue. It could occur while processing 
'VIRTIO_GPU_CMD_RESOURCE_ATTACH_BACKING' command.

A guest user/process could use this flaw to leak host memory resulting in DoS.

Upstream patch:
---------------
   -> https://lists.nongnu.org/archive/html/qemu-devel/2017-01/msg00154.html

Reference:
----------
   -> https://bugzilla.redhat.com/show_bug.cgi?id=1415281

This issue was reported by Mr Li Qiang of 360.cn Inc.

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
