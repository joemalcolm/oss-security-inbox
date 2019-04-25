X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["640" "Thursday" "25" "April" "2019" "14:39:18" "+0530" "P J P" "ppandit@redhat.com" "<nycvar.YSQ.7.76.1904251435470.3256@xnncv>" "20" "[oss-security] CVE-2019-3900 Kernel: vhost_net: infinite loop while receiving packets leads to DoS" nil nil nil "4" "2019042509:09:18" "[oss-security] CVE-2019-3900 Kernel: vhost_net: infinite loop while receiving packets leads to DoS" (number mark "U       ppandit@redh Apr 25   20/640   " thread-indent "\"[oss-security] CVE-2019-3900 Kernel: vhost_net: infinite loop while receiving packets leads to DoS\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2019-3900 Kernel: vhost_net: infinite loop while receiving packets leads to DoS" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 21568 invoked by uid 550); 25 Apr 2019 09:09:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 21547 invoked from network); 25 Apr 2019 09:09:33 -0000
Date: Thu, 25 Apr 2019 14:39:18 +0530 (IST)
From: P J P <ppandit@redhat.com>
X-X-Sender: pjp@kaapi
To: oss security list <oss-security@lists.openwall.com>
cc: Jason Wang <jasowang@redhat.com>
Message-ID: <nycvar.YSQ.7.76.1904251435470.3256@xnncv>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.43]); Thu, 25 Apr 2019 09:09:22 +0000 (UTC)
Subject: [oss-security] CVE-2019-3900 Kernel: vhost_net: infinite loop while receiving
 packets leads to DoS

   Hello,

An infinite loop issue was found in the vhost_net kernel module, while 
handling incoming packets in handle_rx(). It could occur if one end sends 
packets faster than the other end can process them.

A guest user, maybe remote one, could use this flaw to stall the vhost_net 
kernel thread, resulting in a DoS scenario.

Upstream patch:
---------------
   -> https://www.spinics.net/lists/kernel/msg3111012.html

This issue was discovered by Jason Wang(CC'd) of Red Hat Inc.
'CVE-2019-3900' assigned by Red Hat Inc.

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
