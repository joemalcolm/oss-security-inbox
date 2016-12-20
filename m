X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["662" "Tuesday" "20" "December" "2016" "18:19:47" "+0530" "P J P" "ppandit@redhat.com" "<alpine.LFD.2.20.1612201818230.29699@wniryva>" "20" "[oss-security] CVE request Qemu: display: virtio-gpu: out of bounds read in virtio_gpu_set_scanout" nil nil nil "12" "2016122012:49:47" "[oss-security] CVE request Qemu: display: virtio-gpu: out of bounds read in virtio_gpu_set_scanout" (number mark "U       ppandit@redh Dec 20   20/662   " thread-indent "\"[oss-security] CVE request Qemu: display: virtio-gpu: out of bounds read in virtio_gpu_set_scanout\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 32720 invoked by uid 550); 20 Dec 2016 12:50:09 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32690 invoked from network); 20 Dec 2016 12:50:09 -0000
Date: Tue, 20 Dec 2016 18:19:47 +0530 (IST)
From: P J P <ppandit@redhat.com>
X-X-Sender: pjp@javelin
To: oss security list <oss-security@lists.openwall.com>
cc: Zhenhao Hong <zhenhaohong@gmail.com>
Message-ID: <alpine.LFD.2.20.1612201818230.29699@wniryva>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.26]); Tue, 20 Dec 2016 12:49:57 +0000 (UTC)
Subject: [oss-security] CVE request Qemu: display: virtio-gpu: out of bounds read in
 virtio_gpu_set_scanout

   Hello,

Quick Emulator(Qemu) built with the Virtio GPU Device emulator support is 
vulnerable to an OOB read issue. It could occur while processing 
'VIRTIO_GPU_CMD_SET_SCANOUT:' command.

A guest user/process could use this flaw to crash the Qemu process instance 
resulting in Dos.

Upstream patch:
---------------
   -> http://git.qemu.org/?p=qemu.git;a=commit;h=acfc4846508a02cc4c83aa27799fd7
   -> http://git.qemu.org/?p=qemu.git;a=commit;h=2fe760554eb3769d70f608a158474f

This issue was reported by Zhenhao Hong, Marvel team of 360.cn Inc.

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
