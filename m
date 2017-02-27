X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["666" "Monday" "27" "February" "2017" "23:26:54" "+0530" "P J P" "ppandit@redhat.com" "<alpine.LFD.2.20.1702272324550.10165@wniryva>" "21" "[oss-security] CVE-2017-6355 Virglrenderer: integer overflow while creating shader object" nil nil nil "2" "2017022717:56:54" "[oss-security] CVE-2017-6355 Virglrenderer: integer overflow while creating shader object" (number mark "U       ppandit@redh Feb 27   21/666   " thread-indent "\"[oss-security] CVE-2017-6355 Virglrenderer: integer overflow while creating shader object\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3772 invoked by uid 550); 27 Feb 2017 17:57:12 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3752 invoked from network); 27 Feb 2017 17:57:11 -0000
Date: Mon, 27 Feb 2017 23:26:54 +0530 (IST)
From: P J P <ppandit@redhat.com>
X-X-Sender: pjp@javelin
To: oss security list <oss-security@lists.openwall.com>
cc: Li Qiang <liqiang6-s@360.cn>
Message-ID: <alpine.LFD.2.20.1702272324550.10165@wniryva>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.32]); Mon, 27 Feb 2017 17:57:00 +0000 (UTC)
Subject: [oss-security] CVE-2017-6355 Virglrenderer: integer overflow while creating shader
 object

   Hello,

Virgil 3d project, used by Quick Emulator(Qemu) to implement 3D GPU support 
for the virtio GPU, is vulnerable to an integer overflow issue. It could occur 
when creating a shader object in vrend_create_shader().

A guest user/process could use this flaw to crash the Qemu process resulting 
DoS.

Upstream patch:
---------------
   -> https://cgit.freedesktop.org/virglrenderer/commit/?id=93761787b29f37fa627dea9082cdfc1a1ec608d6

This issue was reported by Li Qiang of 360.cn Inc.

'CVE-2017-6355' assigned via -> http://cveform.mitre.org/

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
