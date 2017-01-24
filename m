X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["688" "Tuesday" "24" "January" "2017" "15:49:53" "+0530" "P J P" "ppandit@redhat.com" "<alpine.LFD.2.20.1701241547390.10545@wniryva>" "23" "[oss-security] CVE request Virglrenderer: OOB access while parsing texture instruction" nil nil nil "1" "2017012410:19:53" "[oss-security] CVE request Virglrenderer: OOB access while parsing texture instruction" (number mark "U       ppandit@redh Jan 24   23/688   " thread-indent "\"[oss-security] CVE request Virglrenderer: OOB access while parsing texture instruction\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 17845 invoked by uid 550); 24 Jan 2017 10:20:10 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17825 invoked from network); 24 Jan 2017 10:20:10 -0000
Date: Tue, 24 Jan 2017 15:49:53 +0530 (IST)
From: P J P <ppandit@redhat.com>
X-X-Sender: pjp@javelin
To: oss security list <oss-security@lists.openwall.com>
cc: Li Qiang <liqiang6-s@360.cn>
Message-ID: <alpine.LFD.2.20.1701241547390.10545@wniryva>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.74 on 10.5.11.28
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.29]); Tue, 24 Jan 2017 10:19:59 +0000 (UTC)
Subject: [oss-security] CVE request Virglrenderer: OOB access while parsing texture
 instruction

   Hello,

Virgil 3d project, used by Quick Emulator(Qemu) to implement 3D GPU support 
for the virtio GPU, is vulnerable to an OOB array access issue. It could occur 
when parsing texture instructions in parse_instruction().

A guest user/process could use this flaw to crash the Qemu process instance 
resulting DoS.

Upstream patch:
---------------
   -> https://lists.freedesktop.org/archives/virglrenderer-devel/2017-January/000105.html

Reference:
----------
   -> https://bugzilla.redhat.com/show_bug.cgi?id=1415986

This issue was reported by Li Qiang of 360.cn Inc.

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
