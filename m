X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["711" "Tuesday" "24" "January" "2017" "12:58:08" "+0530" "P J P" "ppandit@redhat.com" "<alpine.LFD.2.20.1701241256280.7971@wniryva>" "23" "[oss-security] CVE request Virglrenderer: host memory leakage when creating decode context" nil nil nil "1" "2017012407:28:08" "[oss-security] CVE request Virglrenderer: host memory leakage when creating decode context" (number mark "U       ppandit@redh Jan 24   23/711   " thread-indent "\"[oss-security] CVE request Virglrenderer: host memory leakage when creating decode context\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11577 invoked by uid 550); 24 Jan 2017 07:28:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11543 invoked from network); 24 Jan 2017 07:28:29 -0000
Date: Tue, 24 Jan 2017 12:58:08 +0530 (IST)
From: P J P <ppandit@redhat.com>
X-X-Sender: pjp@javelin
To: oss security list <oss-security@lists.openwall.com>
cc: Li Qiang <liqiang6-s@360.cn>
Message-ID: <alpine.LFD.2.20.1701241256280.7971@wniryva>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.27
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.29]); Tue, 24 Jan 2017 07:28:18 +0000 (UTC)
Subject: [oss-security] CVE request Virglrenderer: host memory leakage when creating decode
 context

   Hello,

Virgil 3d project, used by Quick Emulator(Qemu) to implement 3D GPU support 
for the virtio GPU, is vulnerable to memory leakage issue. It could occur when 
a guest tries to create decode context via 'VIRTIO_GPU_CMD_CTX_CREATE' 
command.

A guest user/process could use this flaw to leak host memory resulting in DoS.

Upstream patch:
---------------
   -> https://cgit.freedesktop.org/virglrenderer/commit/?id=747a293ff6055203e529f083896b823e22523fe7

Reference:
----------
   -> https://bugzilla.redhat.com/show_bug.cgi?id=1415944

This issue was reported by Li Qiang of (360.cn Inc.)

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
