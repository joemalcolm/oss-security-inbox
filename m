X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["612" "Thursday" "29" "June" "2017" "14:21:14" "+0530" "P J P" "ppandit@redhat.com" "<alpine.LFD.2.20.1706291419220.1726@wniryva>" "22" "[oss-security] CVE-2017-10664 Qemu: qemu-nbd: server breaks with SIGPIPE upon client abort" "^Date:" nil nil "6" "2017062908:51:14" "[oss-security] CVE-2017-10664 Qemu: qemu-nbd: server breaks with SIGPIPE upon client abort" (number mark "U       ppandit@redh Jun 29   22/612   " thread-indent "\"[oss-security] CVE-2017-10664 Qemu: qemu-nbd: server breaks with SIGPIPE upon client abort\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 21641 invoked by uid 550); 29 Jun 2017 08:51:32 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 21623 invoked from network); 29 Jun 2017 08:51:31 -0000
DMARC-Filter: OpenDMARC Filter v1.3.2 mx1.redhat.com 5574240F14
Authentication-Results: ext-mx06.extmail.prod.ext.phx2.redhat.com; dmarc=none (p=none dis=none) header.from=redhat.com
Authentication-Results: ext-mx06.extmail.prod.ext.phx2.redhat.com; spf=pass smtp.mailfrom=ppandit@redhat.com
DKIM-Filter: OpenDKIM Filter v2.11.0 mx1.redhat.com 5574240F14
X-X-Sender: pjp@javelin
Message-ID: <alpine.LFD.2.20.1706291419220.1726@wniryva>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.30]); Thu, 29 Jun 2017 08:51:19 +0000 (UTC)
Date: Thu, 29 Jun 2017 14:21:14 +0530 (IST)
From: P J P <ppandit@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE-2017-10664 Qemu: qemu-nbd: server breaks with SIGPIPE upon client
 abort
To: oss security list <oss-security@lists.openwall.com>

   Hello,

Quick Emulator(Qemu) built with the Network Block Device(NBD) Server support 
is vulnerable to a crash via SIGPIPE signal. It could occur if a client aborts 
connection due to any failure during negotiation.

A remote user/process could use this flaw to crash the qemu-nbd server 
resulting in DoS.

Upstream patch:
---------------
   -> https://lists.gnu.org/archive/html/qemu-devel/2017-06/msg02693.html

Reference:
----------
   -> https://bugzilla.redhat.com/show_bug.cgi?id=1466190


Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
