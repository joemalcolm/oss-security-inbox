X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["778" "Wednesday" "15" "February" "2017" "23:36:13" "+0530" "P J P" "ppandit@redhat.com" "<alpine.LFD.2.20.1702152329360.29340@wniryva>" "25" "[oss-security] CVE-2017-5994 Virglrenderer: out-of-bounds access in vrend_create_vertex_elements_state" nil nil nil "2" "2017021518:06:13" "[oss-security] CVE-2017-5994 Virglrenderer: out-of-bounds access in vrend_create_vertex_elements_state" (number mark "U       ppandit@redh Feb 15   25/778   " thread-indent "\"[oss-security] CVE-2017-5994 Virglrenderer: out-of-bounds access in vrend_create_vertex_elements_state\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 19553 invoked by uid 550); 15 Feb 2017 18:06:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 19535 invoked from network); 15 Feb 2017 18:06:29 -0000
Date: Wed, 15 Feb 2017 23:36:13 +0530 (IST)
From: P J P <ppandit@redhat.com>
X-X-Sender: pjp@javelin
To: oss security list <oss-security@lists.openwall.com>
cc: Li Qiang <liqiang6-s@360.cn>
Message-ID: <alpine.LFD.2.20.1702152329360.29340@wniryva>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.74 on 10.5.11.28
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.26]); Wed, 15 Feb 2017 18:06:18 +0000 (UTC)
Subject: [oss-security] CVE-2017-5994 Virglrenderer: out-of-bounds access in
 vrend_create_vertex_elements_state

   Hello,

Virgil 3d project, used by Quick Emulator(Qemu) to implement 3D GPU support 
for the virtio GPU, is vulnerable to an OOB array access issue. It could occur 
when creating vertex elements array in vrend_create_vertex_elements_state().

A guest user/process could use this flaw to crash the Qemu process instance 
resulting DoS.

Upstream patch:
---------------
   -> https://cgit.freedesktop.org/virglrenderer/commit/?id=114688c526fe45f341d75ccd1d85473c3b08f7a7

Reference:
----------
   -> https://bugzilla.redhat.com/show_bug.cgi?id=1422452

This issue was reported by Li Qiang of 360.cn Inc.

'CVE-2017-5994' assigned via -> https://cveform.mitre.org/

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
