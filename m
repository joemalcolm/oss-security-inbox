X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["680" "Thursday" "4" "June" "2020" "11:21:42" "+0530" "P J P" "ppandit@redhat.com" "<nycvar.YSQ.7.77.849.2006041119320.62159@xnncv>" "21" "[oss-security] CVE-2020-13800 QEMU: ati-vga: infinite recursion in ati_mm_read/write calls may lead to DoS" nil nil nil "6" "2020060405:51:42" "[oss-security] CVE-2020-13800 QEMU: ati-vga: infinite recursion in ati_mm_read/write calls may lead to DoS" (number mark "U       ppandit@redh Jun  4   21/680   " thread-indent "\"[oss-security] CVE-2020-13800 QEMU: ati-vga: infinite recursion in ati_mm_read/write calls may lead to DoS\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2020-13800 QEMU: ati-vga: infinite recursion in ati_mm_read/write calls may lead to DoS" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 10155 invoked by uid 550); 4 Jun 2020 05:52:10 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 10137 invoked from network); 4 Jun 2020 05:52:09 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1591249918;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type;
	bh=HkZPjtaVD0pLTnoBgv3ibJ80bov2OB08dbEgbxo0rRE=;
	b=iPAGbR46RsKyPG3x/XbNVfKj3//KC2vyqICht6+qkDwJT4bW4w1KBqQqBE8BGkdKK7D0gX
	LiUVCH6o0kt/RzXMfqF/FgGKh+TSNsDRmhHqNNbcTX3/V7akL4kH3+8gUD0Uqx032hXv5o
	tQ/8XsbHCmQumqw5PWLp2FP2UN0X49w=
X-MC-Unique: RE6oL0OgOOKheBUs8FiJLw-1
Date: Thu, 4 Jun 2020 11:21:42 +0530 (IST)
From: P J P <ppandit@redhat.com>
X-X-Sender: pjp@kaapi
To: oss security list <oss-security@lists.openwall.com>
cc: Ren Ding <rding@gatech.edu>, Hanqing Zhao <hanqing@gatech.edu>, 
    Yi Ren <c4tren@gmail.com>
Message-ID: <nycvar.YSQ.7.77.849.2006041119320.62159@xnncv>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; format=flowed; charset=US-ASCII
Subject: [oss-security] CVE-2020-13800 QEMU: ati-vga: infinite recursion in ati_mm_read/write
 calls may lead to DoS

   Hello,

An infinite recursion issue was found in the ati-vga emulator of the QEMU. It 
could occur in ati_mm_read/write routines while accessing VGA registers, for 
certain values of the 'mm_index' variable. A guest user/process may use this 
flaw to crash the QEMU process resulting in DoS scenario.

Upstream patch:
---------------
   -> https://lists.gnu.org/archive/html/qemu-devel/2020-06/msg00833.html

This issue was reported by Ren Ding and Hanqing Zhao of SSLab Georgia Tech and 
Yi Ren(CC'd)

'CVE-2020-13800' requeted via -> https://cveform.mitre.org/

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
8685 545E B54C 486B C6EB 271E E285 8B5A F050 DE8D

