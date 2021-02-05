X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["724" "Friday" "5" "February" "2021" "12:45:04" "+0530" "P J P" "ppandit@redhat.com" "<17998445-94on-7r28-s21p-r5p8rp69srn@erqung.pbz>" "20" "[oss-security] CVE-2021-3392 QEMU: scsi: mptsas: use-after-free while processing io requests" nil nil nil "2" "2021020507:15:04" "[oss-security] CVE-2021-3392 QEMU: scsi: mptsas: use-after-free while processing io requests" (number mark "U       ppandit@redh Feb  5   20/724   " thread-indent "\"[oss-security] CVE-2021-3392 QEMU: scsi: mptsas: use-after-free while processing io requests\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2021-3392 QEMU: scsi: mptsas: use-after-free while processing io requests" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11467 invoked by uid 550); 5 Feb 2021 07:15:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11446 invoked from network); 5 Feb 2021 07:15:23 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1612509312;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type;
	bh=ZKrnQKfxs0Lz4/Uu9ohqPeb3TvgBBxCSoQdsLg1MF1I=;
	b=HnGIeTgfR4LZd0OUqWbQar0reafsq8+DiENJ2sNqwbn2Mb8KImN+yriZLwlgQo+cfhhdvp
	pDAsE/GUtPRoEYIDO/unSrlwykLjEjjR7e1XD/u2LOr8FwnnGNyg4FQT/rFmzZS4dVHxdM
	YFuiiPv1yiRFqSRh9u48gS0j0ipgau8=
X-MC-Unique: k-ArTPsOM02MD7Vf0dKdWg-1
Date: Fri, 5 Feb 2021 12:45:04 +0530 (IST)
From: P J P <ppandit@redhat.com>
To: oss security list <oss-security@lists.openwall.com>
cc: Cheolwoo Myung <cwmyung@snu.ac.kr>
Message-ID: <17998445-94on-7r28-s21p-r5p8rp69srn@erqung.pbz>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=ppandit@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; format=flowed; charset=US-ASCII
Subject: [oss-security] CVE-2021-3392 QEMU: scsi: mptsas: use-after-free while processing
 io requests

   Hello,

A use-after-free issue was found in the Megaraid emulator of the QEMU. It 
occurs while processing SCSI i/o requests because in case of an error 
mptsas_free_request() does not dequeue request object 'req' from a pending 
requests' queue. Which later gets processed resulting in the said 
use-after-free issue. A privileged guest user may use this flaw to crash the 
QEMU process on the host resulting in DoS scenario.

Upstream patch:
---------------
   -> https://lists.gnu.org/archive/html/qemu-devel/2021-02/msg00488.html

This issue was reported by Cheolwoo Myung of Seoul National University.

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
8685 545E B54C 486B C6EB 271E E285 8B5A F050 DE8D

