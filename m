X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["681" "Monday" "12" "June" "2017" "14:33:33" "+0530" "P J P" "ppandit@redhat.com" "<alpine.LFD.2.20.1706121430420.20327@wniryva>" "20" "[oss-security] CVE-2017-9524 Qemu: nbd: segmentation fault due to client non-negotiation" "^Date:" nil nil "6" "2017061209:03:33" "[oss-security] CVE-2017-9524 Qemu: nbd: segmentation fault due to client non-negotiation" (number mark "        ppandit@redh Jun 12   20/681   " thread-indent "\"[oss-security] CVE-2017-9524 Qemu: nbd: segmentation fault due to client non-negotiation\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 9993 invoked by uid 550); 12 Jun 2017 09:04:27 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 9669 invoked from network); 12 Jun 2017 09:03:49 -0000
DMARC-Filter: OpenDMARC Filter v1.3.2 mx1.redhat.com 862917F6A0
Authentication-Results: ext-mx01.extmail.prod.ext.phx2.redhat.com; dmarc=none (p=none dis=none) header.from=redhat.com
Authentication-Results: ext-mx01.extmail.prod.ext.phx2.redhat.com; spf=pass smtp.mailfrom=ppandit@redhat.com
DKIM-Filter: OpenDKIM Filter v2.11.0 mx1.redhat.com 862917F6A0
X-X-Sender: pjp@javelin
Message-ID: <alpine.LFD.2.20.1706121430420.20327@wniryva>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.25]); Mon, 12 Jun 2017 09:03:37 +0000 (UTC)
Date: Mon, 12 Jun 2017 14:33:33 +0530 (IST)
From: P J P <ppandit@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE-2017-9524 Qemu: nbd: segmentation fault due to client
 non-negotiation
To: oss security list <oss-security@lists.openwall.com>

    Hello,

Quick Emulator(Qemu) built with the Network Block Device(NBD) Server support 
is vulnerable to a null pointer dereference issue. It could occur while 
releasing a client, which was not initialised due to failed negotiation.

A remote user/process could use this flaw to crash the qemu-nbd server 
resulting in DoS.

Upstream patch:
---------------
   -> https://lists.gnu.org/archive/html/qemu-devel/2017-05/msg06240.html
   -> https://lists.gnu.org/archive/html/qemu-devel/2017-06/msg02321.html

'CVE-2017-9524' assigned via -> https://cveform.mitre.org/

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
