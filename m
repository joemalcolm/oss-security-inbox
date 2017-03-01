X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["772" "Wednesday" "1" "March" "2017" "12:08:16" "+0530" "P J P" "ppandit@redhat.com" "<alpine.LFD.2.20.1703011206260.1553@wniryva>" "25" "[oss-security] CVE-2017-6386 Virglrenderer: memory leakage while in vrend_create_vertex_elements_state" nil nil nil "3" "2017030106:38:16" "[oss-security] CVE-2017-6386 Virglrenderer: memory leakage while in vrend_create_vertex_elements_state" (number mark "U       ppandit@redh Mar  1   25/772   " thread-indent "\"[oss-security] CVE-2017-6386 Virglrenderer: memory leakage while in vrend_create_vertex_elements_state\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5288 invoked by uid 550); 1 Mar 2017 06:38:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5270 invoked from network); 1 Mar 2017 06:38:33 -0000
Date: Wed, 1 Mar 2017 12:08:16 +0530 (IST)
From: P J P <ppandit@redhat.com>
X-X-Sender: pjp@javelin
To: oss security list <oss-security@lists.openwall.com>
cc: Li Qiang <liqiang6-s@360.cn>
Message-ID: <alpine.LFD.2.20.1703011206260.1553@wniryva>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.27
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.31]); Wed, 01 Mar 2017 06:38:23 +0000 (UTC)
Subject: [oss-security] CVE-2017-6386 Virglrenderer: memory leakage while in
 vrend_create_vertex_elements_state

   Hello,

Virgil 3d project, used by Quick Emulator(Qemu) to implement 3D GPU support 
for the virtio GPU, is vulnerable to memory leakage issue. It could occur when 
a guest tries to create vertex elements via 'VIRGL_OBJECT_VERTEX_ELEMENTS' 
command.

A guest user/process could use this flaw to leak host memory resulting in DoS.

Upstream patch:
---------------
   -> https://cgit.freedesktop.org/virglrenderer/commit/?id=737c3350850ca4dbc5633b3bdb4118176ce59920

Reference:
----------
   -> https://bugzilla.redhat.com/show_bug.cgi?id=1427472

This issue was reported by Li Qiang of 360.cn Inc.

'CVE-2017-6386' assigned via -> http://cveform.mitre.org/

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
