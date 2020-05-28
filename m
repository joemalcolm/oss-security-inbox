X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["702" "Thursday" "28" "May" "2020" "10:32:53" "+0530" "P J P" "ppandit@redhat.com" "<nycvar.YSQ.7.77.849.2005281030080.62159@xnncv>" "21" "[oss-security] CVE-2020-13361 QEMU: es1370: OOB access due to incorrect frame count leads to DoS" nil nil nil "5" "2020052805:02:53" "[oss-security] CVE-2020-13361 QEMU: es1370: OOB access due to incorrect frame count leads to DoS" (number mark "U       ppandit@redh May 28   21/702   " thread-indent "\"[oss-security] CVE-2020-13361 QEMU: es1370: OOB access due to incorrect frame count leads to DoS\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2020-13361 QEMU: es1370: OOB access due to incorrect frame count leads to DoS" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 6143 invoked by uid 550); 28 May 2020 05:03:19 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 6122 invoked from network); 28 May 2020 05:03:19 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1590642187;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type;
	bh=/kMmJJIoVaPcmHjwR0xozk6amPFK0U20M2SszaQEK8I=;
	b=X1jEpJyegzLK8Rcm7RwJkl31I2xmmNl1NIl2jRBl2cURvPurIo1gURWPDug5ByPyzBkAcU
	jvy2SKp73Kb97BYz2CzfD6Jev+m2VmnlYX0bzcOLXWIMPVlYKDlti+tZQfcNJP4lkPK5XM
	70CIwdXfvyCq9ddCkowNReenueydk1g=
X-MC-Unique: B1SjKi8_MGym_iXkWvkQrw-1
Date: Thu, 28 May 2020 10:32:53 +0530 (IST)
From: P J P <ppandit@redhat.com>
X-X-Sender: pjp@kaapi
To: oss security list <oss-security@lists.openwall.com>
cc: "Ding, Ren" <rding@gatech.edu>, "Zhao, Hanqing" <hanqing@gatech.edu>
Message-ID: <nycvar.YSQ.7.77.849.2005281030080.62159@xnncv>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; format=flowed; charset=US-ASCII
Subject: [oss-security] CVE-2020-13361 QEMU: es1370: OOB access due to incorrect frame count
 leads to DoS

   Hello,

An OOB access issue was found in the ES1370 audio device emulator of the QEMU. 
The issue occurs in 'audio_pcm_sw_read', while reading audio byte stream from 
a channel, if the channel frame count is set to a malicious value. A guest 
user/process may use this flaw to crash the QEMU process on the host resulting 
in DoS scenario.

Upstream patch:
---------------
   -> https://lists.gnu.org/archive/html/qemu-devel/2020-05/msg07230.html

This issue was reported by Ren Ding & Hanqing Zhao of SSLab Georgia Tech. 
'CVE-2020-13361' requested via -> https://cveform.mitre.org/


Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
8685 545E B54C 486B C6EB 271E E285 8B5A F050 DE8D

