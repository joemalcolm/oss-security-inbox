X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["729" "Saturday" "25" "February" "2017" "00:28:21" "+0530" "P J P" "ppandit@redhat.com" "<alpine.LFD.2.20.1702250026160.1436@wniryva>" "24" "[oss-security] CVE-2017-6317 Virglrenderer: memory leakage issue in add_shader_program" "^cc:" nil nil "2" "2017022418:58:21" "[oss-security] CVE-2017-6317 Virglrenderer: memory leakage issue in add_shader_program" (number mark "U       ppandit@redh Feb 25   24/729   " thread-indent "\"[oss-security] CVE-2017-6317 Virglrenderer: memory leakage issue in add_shader_program\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 28293 invoked by uid 550); 24 Feb 2017 18:58:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 28272 invoked from network); 24 Feb 2017 18:58:38 -0000
X-X-Sender: pjp@javelin
Message-ID: <alpine.LFD.2.20.1702250026160.1436@wniryva>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.74 on 10.5.11.28
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.30]); Fri, 24 Feb 2017 18:58:27 +0000 (UTC)
cc: Li Qiang <liqiang6-s@360.cn>
Date: Sat, 25 Feb 2017 00:28:21 +0530 (IST)
From: P J P <ppandit@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE-2017-6317 Virglrenderer: memory leakage issue in
 add_shader_program
To: oss security list <oss-security@lists.openwall.com>

   Hello,

Virgil 3d project, used by Quick Emulator(Qemu) to implement 3D GPU support 
for the virtio GPU, is vulnerable to a memory leakage issue. It could occur 
in case of an error in add_shader_program().

A guest user/process could use this flaw to leak host memory resulting in DoS.

Upstream patch:
---------------
   -> https://cgit.freedesktop.org/virglrenderer/commit/?id=a2f12a1b0f95b13b6f8dc3d05d7b74b4386394e4

Reference:
----------
   -> https://bugzilla.redhat.com/show_bug.cgi?id=1426756

This issue was reported by Li Qiang of 360.cn Inc.

'CVE-2017-6317' assigned via -> http://cveform.mitre.org/

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
