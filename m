X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["775" "Thursday" "25" "February" "2021" "16:58:53" "+0530" "P J P" "ppandit@redhat.com" nil "23" "[oss-security] CVE-2021-20257 QEMU: net: e1000: infinite loop while processing transmit descriptors" nil nil nil "2" nil nil (number mark "U       ppandit@redh Feb 25   23/775   " thread-indent "\"[oss-security] CVE-2021-20257 QEMU: net: e1000: infinite loop while processing transmit descriptors\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2021-20257 QEMU: net: e1000: infinite loop while processing transmit descriptors" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 13989 invoked by uid 550); 25 Feb 2021 11:29:17 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13968 invoked from network); 25 Feb 2021 11:29:16 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1614252544;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type;
	bh=pN6rw0gEn2+SCfQPm3f29xZfW1zShFrO9R4Xez8XTXg=;
	b=D3HR0CQuOYsj/9dhvMxrq8UwkY5Dc1ag/32GVsFBMqxiuwMqxq5BxPAYSk2+wkhy+T61vW
	j8GrZOf4WGBCN2qjM4CjESLh8x36lKX8UJISSHJcet1w+pZHXt5Dc5sHxHNVYnkpUelebv
	nrvlDE+c/p9llXqXvvSv1CdGiR0Ghso=
X-MC-Unique: HXlbgxSRNDK9DKY-eTiNbg-1
Date: Thu, 25 Feb 2021 16:58:53 +0530 (IST)
From: P J P <ppandit@redhat.com>
To: oss security list <oss-security@lists.openwall.com>
cc: Ruhr-University Bochum <bugs-syssec@rub.de>, 
    Cheolwoo Myung <cwmyung@snu.ac.kr>, Alexander Bulekov <alxndr@bu.edu>
Message-ID: <o215932q-o26q-5o78-nr77-p0s99088rr23@erqung.pbz>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=ppandit@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; format=flowed; charset=US-ASCII
Subject: [oss-security] CVE-2021-20257 QEMU: net: e1000: infinite loop while processing
 transmit descriptors

   Hello,

An infinite loop issue was found in the e1000 NIC emulator of the QEMU. It 
occurs while processing transmit (tx) descriptors in process_tx_desc, if 
various descriptor fields are initialised with invalid values. A guest may use 
this flaw to consume cpu cycles on the host resulting in DoS scenario.

Upstream patch:
---------------
   -> https://lists.gnu.org/archive/html/qemu-devel/2021-02/msg07428.html

'CVE-2021-20257' assigned by Red Hat Inc.

This issue was independently reported by Sergej Schumilo, Cornelius 
Aschermann, Simon Werner of Ruhr-University Bochum; Cheolwoo Myung of Seoul 
National University; And Alexander Bulekov (CC'd).


Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
8685 545E B54C 486B C6EB 271E E285 8B5A F050 DE8D

