X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["500" "Tuesday" "6" "December" "2016" "16:59:07" "+0530" "P J P" "ppandit@redhat.com" "<alpine.LFD.2.20.1612061653090.2165@wniryva>" "18" "[oss-security] CVE request Qemu: display: virtio-gpu-3d: information leakage in virgl_cmd_get_capset" nil nil nil "12" "2016120611:29:07" "[oss-security] CVE request Qemu: display: virtio-gpu-3d: information leakage in virgl_cmd_get_capset" (number mark "U       ppandit@redh Dec  6   18/500   " thread-indent "\"[oss-security] CVE request Qemu: display: virtio-gpu-3d: information leakage in virgl_cmd_get_capset\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5253 invoked by uid 550); 6 Dec 2016 11:29:25 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5226 invoked from network); 6 Dec 2016 11:29:24 -0000
Date: Tue, 6 Dec 2016 16:59:07 +0530 (IST)
From: P J P <ppandit@redhat.com>
X-X-Sender: pjp@javelin
To: oss security list <oss-security@lists.openwall.com>
cc: Li Qiang <liq3ea@gmail.com>
Message-ID: <alpine.LFD.2.20.1612061653090.2165@wniryva>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.26
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.28]); Tue, 06 Dec 2016 11:29:12 +0000 (UTC)
Subject: [oss-security] CVE request Qemu: display: virtio-gpu-3d: information leakage in
 virgl_cmd_get_capset

   Hello,

Quick Emulator built with the Virtio GPU Device emulator support is vulnerable 
to an information leakage issue. It could occur while processing 
'VIRTIO_GPU_CMD_GET_CAPSET' command.

A guest user/process could use this flaw to leak contents of the host memory 
bytes.

Upstream patch:
---------------
   -> http://lists.gnu.org/archive/html/qemu-devel/2016-11/msg00059.html


Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
