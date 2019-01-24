X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["508" "Thursday" "24" "January" "2019" "12:43:37" "+0530" "P J P" "ppandit@redhat.com" "<nycvar.YSQ.7.76.1901241241500.20220@xnncv>" "16" "[oss-security] CVE-2019-6501 QEMU: scsi-generic: possible OOB access while handling inquiry request" nil nil nil "1" "2019012407:13:37" "[oss-security] CVE-2019-6501 QEMU: scsi-generic: possible OOB access while handling inquiry request" (number mark "U       ppandit@redh Jan 24   16/508   " thread-indent "\"[oss-security] CVE-2019-6501 QEMU: scsi-generic: possible OOB access while handling inquiry request\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5931 invoked by uid 550); 24 Jan 2019 07:13:54 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5913 invoked from network); 24 Jan 2019 07:13:54 -0000
Date: Thu, 24 Jan 2019 12:43:37 +0530 (IST)
From: P J P <ppandit@redhat.com>
X-X-Sender: pjp@kaapi
To: oss security list <oss-security@lists.openwall.com>
Message-ID: <nycvar.YSQ.7.76.1901241241500.20220@xnncv>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.38]); Thu, 24 Jan 2019 07:13:41 +0000 (UTC)
Subject: [oss-security] CVE-2019-6501 QEMU: scsi-generic: possible OOB access while handling
 inquiry request

  Hello,

An out of bounds r/w access issue was found in the way QEMU handled inquiry 
request coming from a guest in scsi_handle_inquiry_reply(). A guest 
user/process could use this flaw to corrupt byte of QEMU process memory.

Upstream patch:
---------------
   -> https://lists.gnu.org/archive/html/qemu-devel/2019-01/msg02324.html

CVE-2019-6501 requested via -> https://cveform.mitre.org/

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
