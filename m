X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["922" "Wednesday" "3" "July" "2019" "01:01:36" "+0530" "P J P" "ppandit@redhat.com" "<nycvar.YSQ.7.76.1907030056560.11695@xnncv>" "22" "[oss-security] CVE-2019-13164 Qemu: qemu-bridge-helper ACL bypassed with long interface names" "^cc:" nil nil "7" "2019070219:31:36" "[oss-security] CVE-2019-13164 Qemu: qemu-bridge-helper ACL bypassed with long interface names" (number mark "U       ppandit@redh Jul  3   22/922   " thread-indent "\"[oss-security] CVE-2019-13164 Qemu: qemu-bridge-helper ACL bypassed with long interface names\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2019-13164 Qemu: qemu-bridge-helper ACL bypassed with long interface names" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 24096 invoked by uid 550); 2 Jul 2019 19:32:01 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 24078 invoked from network); 2 Jul 2019 19:32:00 -0000
X-X-Sender: pjp@kaapi
Message-ID: <nycvar.YSQ.7.76.1907030056560.11695@xnncv>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.46]); Tue, 02 Jul 2019 19:31:44 +0000 (UTC)
cc: Riccardo Schirone <rschiron@redhat.com>
Date: Wed, 3 Jul 2019 01:01:36 +0530 (IST)
From: P J P <ppandit@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE-2019-13164 Qemu: qemu-bridge-helper ACL bypassed with long
 interface names
To: oss security list <oss-security@lists.openwall.com>

   Hello,

It was discovered that the Access Control List (ACL) implemented by 
qemu-bridge-helper program could be bypassed in particular case when the 
bridge interface names are as long as IFNAMSIZ-1, ie 15 characters. If the ACL 
specified in the /etc/qemu/bridge.conf file denies access to a bridge 
interface with name IFNAMSIZ-1 bytes long, but it allows all other interfaces. 
It is possible for a local attacker to use qemu-bridge-helper to create a tap 
device and attach it to a denied bridge interface, thus bypassing the ACL. 
This could be used by the attacker to get access to confidential data 
transmitted on the bridge.

Upstream patch:
---------------
   -> https://lists.gnu.org/archive/html/qemu-devel/2019-07/msg00245.html

This issue was discovered by Riccardo Schirone of Red Hat Inc.

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
