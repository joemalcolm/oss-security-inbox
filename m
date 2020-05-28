X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["690" "Thursday" "28" "May" "2020" "11:16:50" "+0530" "P J P" "ppandit@redhat.com" "<nycvar.YSQ.7.77.849.2005281113450.62159@xnncv>" "20" "[oss-security] CVE-2020-13362 QEMU: megasas: OOB read access due to invalid index leads to DoS" nil nil nil "5" "2020052805:46:50" "[oss-security] CVE-2020-13362 QEMU: megasas: OOB read access due to invalid index leads to DoS" (number mark "U       ppandit@redh May 28   20/690   " thread-indent "\"[oss-security] CVE-2020-13362 QEMU: megasas: OOB read access due to invalid index leads to DoS\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2020-13362 QEMU: megasas: OOB read access due to invalid index leads to DoS" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 23942 invoked by uid 550); 28 May 2020 05:47:15 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 23921 invoked from network); 28 May 2020 05:47:14 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1590644823;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type;
	bh=FRushXCFKTRx65fZR5VU5C60SCmcbZyBGTl1kd7CRQ4=;
	b=fnqc9F0R9kHJG2telW5/l2Gnod2a5hVM/mYToawIcOmqsp7gw2ClB86cQHUlKcnik2xzAD
	DDDcDZyHYdW2U/H80uOZbX4Be6veugrWC9aMvYZ3h5WAVP58yJNubQgP5CT1xQ9UqBKmlC
	WeR7OOPk+626QZSRWwF/qIrNVw09tVo=
X-MC-Unique: MRU5h0uCM4m5x6AQ_JADzQ-1
Date: Thu, 28 May 2020 11:16:50 +0530 (IST)
From: P J P <ppandit@redhat.com>
X-X-Sender: pjp@kaapi
To: oss security list <oss-security@lists.openwall.com>
cc: "Ding, Ren" <rding@gatech.edu>, "Zhao, Hanqing" <hanqing@gatech.edu>, 
    Alexander Bulekov <alxndr@bu.edu>
Message-ID: <nycvar.YSQ.7.77.849.2005281113450.62159@xnncv>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; format=flowed; charset=US-ASCII
Subject: [oss-security] CVE-2020-13362 QEMU: megasas: OOB read access due to invalid index
 leads to DoS

   Hello,

An OOB read access issue was found in the MegaRAID SAS 8708EM2 emulator of the 
QEMU. It occurs in 'megasas_lookup_frame' routine when 's->reply_queue_head' 
is set to a malicious value. A guest user/process may use this flaw to crash 
the QEMU process on the host resulting in DoS scenario.

Upstream patch:
---------------
   -> https://lists.gnu.org/archive/html/qemu-devel/2020-05/msg03463.html

This issue was reported by Ren Ding & Hanqing Zhao of SSLab Georgia Tech and 
also by Alexander Bulekov. CVE-2020-13362 requested via -> 
https://cveform.mitre.org/

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
8685 545E B54C 486B C6EB 271E E285 8B5A F050 DE8D

