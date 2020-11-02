X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["610" "Monday" "2" "November" "2020" "17:16:46" "+0530" "P J P" "ppandit@redhat.com" "<nycvar.YSQ.7.78.906.2011021713510.1506567@xnncv>" "18" "[oss-security] CVE-2020-27617 QEMU: net: an assert failure via eth_get_gso_type" nil nil nil "11" "2020110211:46:46" "[oss-security] CVE-2020-27617 QEMU: net: an assert failure via eth_get_gso_type" (number mark "U       ppandit@redh Nov  2   18/610   " thread-indent "\"[oss-security] CVE-2020-27617 QEMU: net: an assert failure via eth_get_gso_type\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2020-27617 QEMU: net: an assert failure via eth_get_gso_type" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 20380 invoked by uid 550); 2 Nov 2020 11:53:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 20361 invoked from network); 2 Nov 2020 11:53:53 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1604318021;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type;
	bh=sVZAXaFj3DQuPSkDrZwdXFHu4swZmP5kFcTj3ZyS5uA=;
	b=F+qTLLid6s3HD4SCG3NxNc9S9zrqKezjL4B+YQneqJtKW/CaiqBgbx7omgorjEMh8ffUiA
	vljcBzxDT6H0cXTY8sl9loV4vkE4pRH1wzbWkUvgZZKCUmvjk80uicho4p3IhmtC7RcFOM
	C7AxnD0BAOvqmJzEpVDMMn9mE6uJE+8=
X-MC-Unique: WFUmLL_CPzuRYGBbl8PYhA-1
Date: Mon, 2 Nov 2020 17:16:46 +0530 (IST)
From: P J P <ppandit@redhat.com>
X-X-Sender: pjp@kaapi
To: oss security list <oss-security@lists.openwall.com>
cc: Gaoning Pan <pgn@zju.edu.cn>
Message-ID: <nycvar.YSQ.7.78.906.2011021713510.1506567@xnncv>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=ppandit@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; format=flowed; charset=US-ASCII
Subject: [oss-security] CVE-2020-27617 QEMU: net: an assert failure via eth_get_gso_type

   Hello,

An assert(3) failure issue was found in the networking helper functions of 
QEMU. It could occur in the eth_get_gso_type() routine, if a packet does not 
have a valid networking L3 protocol (ex. IPv4, IPv6) value. A guest user may 
use this flaw to crash the QEMU process on the host resulting in DoS scenario.

Upstream patch:
---------------
   -> https://lists.nongnu.org/archive/html/qemu-devel/2020-10/msg06023.html

This issue was reported by Gaoning Pan of Zhejiang University.

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
8685 545E B54C 486B C6EB 271E E285 8B5A F050 DE8D

