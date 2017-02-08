X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["698" "Wednesday" "8" "February" "2017" "15:19:27" "+0530" "P J P" "ppandit@redhat.com" "<alpine.LFD.2.20.1702081517590.30512@wniryva>" "23" "[oss-security] CVE request virglrenderer: null pointer dereference in vrend_clear" nil nil nil "2" "2017020809:49:27" "[oss-security] CVE request virglrenderer: null pointer dereference in vrend_clear" (number mark "U       ppandit@redh Feb  8   23/698   " thread-indent "\"[oss-security] CVE request virglrenderer: null pointer dereference in vrend_clear\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 20291 invoked by uid 550); 8 Feb 2017 09:49:44 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 20265 invoked from network); 8 Feb 2017 09:49:44 -0000
Date: Wed, 8 Feb 2017 15:19:27 +0530 (IST)
From: P J P <ppandit@redhat.com>
X-X-Sender: pjp@javelin
To: oss security list <oss-security@lists.openwall.com>
cc: Li Qiang <liq3ea@gmail.com>
Message-ID: <alpine.LFD.2.20.1702081517590.30512@wniryva>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.27
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.25]); Wed, 08 Feb 2017 09:49:33 +0000 (UTC)
Subject: [oss-security] CVE request virglrenderer: null pointer dereference in vrend_clear

   Hello,

Virgil 3d project, used by Quick Emulator(Qemu) to implement 3D GPU support 
for the virtio GPU, is vulnerable to a null pointer dereference issue. It 
could occur when a guest invokes a virgl 'VIRGL_CCMD_CLEAR' command.

A guest user/process could use this flaw to crash Qemu process resulting in 
DoS.

Upstream patch:
---------------
   -> https://cgit.freedesktop.org/virglrenderer/commit/?id=48f67f60967f963b698ec8df57ec6912a43d6282

Reference:
----------
   -> https://bugzilla.redhat.com/show_bug.cgi?id=1420246

This issue was reported by Mr Li Qiang of 360.cn Inc.

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
