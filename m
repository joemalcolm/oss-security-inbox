X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["772" "Friday" "24" "February" "2017" "00:17:08" "+0530" "P J P" "ppandit@redhat.com" "<alpine.LFD.2.20.1702240015030.19005@wniryva>" "25" "[oss-security] CVE-2017-6210 Virglrenderer: null pointer dereference in vrend_decode_reset" nil nil nil "2" "2017022318:47:08" "[oss-security] CVE-2017-6210 Virglrenderer: null pointer dereference in vrend_decode_reset" (number mark "U       ppandit@redh Feb 24   25/772   " thread-indent "\"[oss-security] CVE-2017-6210 Virglrenderer: null pointer dereference in vrend_decode_reset\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 10160 invoked by uid 550); 23 Feb 2017 18:47:25 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 10142 invoked from network); 23 Feb 2017 18:47:24 -0000
Date: Fri, 24 Feb 2017 00:17:08 +0530 (IST)
From: P J P <ppandit@redhat.com>
X-X-Sender: pjp@javelin
To: oss security list <oss-security@lists.openwall.com>
cc: Li Qiang <liqiang6-s@360.cn>
Message-ID: <alpine.LFD.2.20.1702240015030.19005@wniryva>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.74 on 10.5.11.28
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.38]); Thu, 23 Feb 2017 18:47:14 +0000 (UTC)
Subject: [oss-security] CVE-2017-6210 Virglrenderer: null pointer dereference in
 vrend_decode_reset

   Hello,

Virgil 3d project, used by Quick Emulator(Qemu) to implement 3D GPU support 
for the virtio GPU, is vulnerable to a null pointer dereference flaw. It could 
occur when destroying renderer context zero(0) in 'vrend_decode_reset'.

A guest user/process could use this flaw to crash the Qemu process instance 
resulting DoS.

Upstream patch:
---------------
   -> https://cgit.freedesktop.org/virglrenderer/commit/?id=0a5dff15912207b83018485f83e067474e818bab

Reference:
----------
   -> https://bugzilla.redhat.com/show_bug.cgi?id=1426170

This issue was reported by Li Qiang of 360.cn Inc.

'CVE-2017-6210' assigned via -> http://cveform.mitre.org/

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
