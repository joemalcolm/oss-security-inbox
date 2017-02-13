X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["725" "Monday" "13" "February" "2017" "10:30:38" "+0530" "P J P" "ppandit@redhat.com" "<alpine.LFD.2.20.1702131021590.18948@wniryva>" "25" "[oss-security] CVE-2017-5956 virglrenderer: Virglrenderer: OOB access while in vrend_draw_vbo" nil nil nil "2" "2017021305:00:38" "[oss-security] CVE-2017-5956 virglrenderer: Virglrenderer: OOB access while in vrend_draw_vbo" (number mark "U       ppandit@redh Feb 13   25/725   " thread-indent "\"[oss-security] CVE-2017-5956 virglrenderer: Virglrenderer: OOB access while in vrend_draw_vbo\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7633 invoked by uid 550); 13 Feb 2017 05:00:58 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7612 invoked from network); 13 Feb 2017 05:00:57 -0000
Date: Mon, 13 Feb 2017 10:30:38 +0530 (IST)
From: P J P <ppandit@redhat.com>
X-X-Sender: pjp@javelin
To: oss security list <oss-security@lists.openwall.com>
cc: Li Qiang <liqiang6-s@360.cn>
Message-ID: <alpine.LFD.2.20.1702131021590.18948@wniryva>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.32]); Mon, 13 Feb 2017 05:00:46 +0000 (UTC)
Subject: [oss-security] CVE-2017-5956 virglrenderer: Virglrenderer: OOB access while in
 vrend_draw_vbo

   Hello,

Virgil 3d project, used by Quick Emulator(Qemu) to implement 3D GPU support 
for the virtio GPU, is vulnerable to an OOB array access issue. It could occur 
when in vrend_draw_vbo.

A guest user/process could use this flaw to crash the Qemu process instance 
resulting DoS.

Upstream patch:
---------------
   -> https://cgit.freedesktop.org/virglrenderer/commit/?id=a5ac49940c40ae415eac0cf912eac7070b4ba95d

Reference:
----------
   -> https://bugzilla.redhat.com/show_bug.cgi?id=1421073

This issue was reported by Li Qiang of 360.cn Inc.

'CVE-2017-5956' assigned via -> https://cveform.mitre.org/

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
