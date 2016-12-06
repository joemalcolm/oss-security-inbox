X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["529" "Wednesday" "7" "December" "2016" "01:50:53" "+0530" "P J P" "ppandit@redhat.com" "<alpine.LFD.2.20.1612070146350.9956@wniryva>" "17" "[oss-security] CVE request Qemu: display: virtio-gpu: memory leakage when destroying gpu resource" nil nil nil "12" "2016120620:20:53" "[oss-security] CVE request Qemu: display: virtio-gpu: memory leakage when destroying gpu resource" (number mark "U       ppandit@redh Dec  7   17/529   " thread-indent "\"[oss-security] CVE request Qemu: display: virtio-gpu: memory leakage when destroying gpu resource\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 16367 invoked by uid 550); 6 Dec 2016 20:21:10 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 16345 invoked from network); 6 Dec 2016 20:21:09 -0000
Date: Wed, 7 Dec 2016 01:50:53 +0530 (IST)
From: P J P <ppandit@redhat.com>
X-X-Sender: pjp@javelin
To: oss security list <oss-security@lists.openwall.com>
cc: Li Qiang <liq3ea@gmail.com>
Message-ID: <alpine.LFD.2.20.1612070146350.9956@wniryva>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.32]); Tue, 06 Dec 2016 20:20:58 +0000 (UTC)
Subject: [oss-security] CVE request Qemu: display: virtio-gpu: memory leakage when destroying
 gpu resource

   Hello,

Quick Emulator(Qemu) built with the Virtio GPU Device emulator support is 
vulnerable to a memory leakage issue. It could occur while destroying gpu 
resource object in 'virtio_gpu_resource_destroy'

A guest user/process could use this flaw to leak host memory bytes, resulting 
in DoS for a host.

Upstream patch:
---------------
   -> https://lists.gnu.org/archive/html/qemu-devel/2016-11/msg05043.html

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
