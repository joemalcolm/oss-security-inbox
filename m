X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["643" "Thursday" "6" "December" "2018" "14:38:32" "+0530" "P J P" "ppandit@redhat.com" "<nycvar.YSQ.7.76.1812061436130.30939@xnncv>" "18" "[oss-security] CVE-2018-16867 QEMU: dev-mtp: path traversal in usb_mtp_write_data of the Media Transfer Protocol (MTP)" "^cc:" nil nil "12" "2018120609:08:32" "[oss-security] CVE-2018-16867 QEMU: dev-mtp: path traversal in usb_mtp_write_data of the Media Transfer Protocol (MTP)" (number mark "        ppandit@redh Dec  6   18/643   " thread-indent "\"[oss-security] CVE-2018-16867 QEMU: dev-mtp: path traversal in usb_mtp_write_data of the Media Transfer Protocol (MTP)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 32670 invoked by uid 550); 6 Dec 2018 09:08:49 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 32649 invoked from network); 6 Dec 2018 09:08:48 -0000
X-X-Sender: pjp@kaapi
Message-ID: <nycvar.YSQ.7.76.1812061436130.30939@xnncv>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.46]); Thu, 06 Dec 2018 09:08:36 +0000 (UTC)
cc: Michael Hanselmann <public@hansmi.ch>
Date: Thu, 6 Dec 2018 14:38:32 +0530 (IST)
From: P J P <ppandit@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE-2018-16867 QEMU: dev-mtp: path traversal in usb_mtp_write_data
 of the Media Transfer Protocol (MTP)
To: oss security list <oss-security@lists.openwall.com>

   Hello,

A flaw was found in qemu Media Transfer Protocol (MTP). A path traversal in 
the in usb_mtp_write_data function in hw/usb/dev-mtp.c due to an improper 
filename sanitization. When the guest device is mounted in read-write mode, 
this allows to read/write arbitrary files which may lead do DoS scenario OR 
possibly lead to code execution on the host.

Upstream patch:
---------------
   -> https://lists.gnu.org/archive/html/qemu-devel/2018-12/msg00390.html

This issue was reported by Michael Hanselmann of hansmi.ch.

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
