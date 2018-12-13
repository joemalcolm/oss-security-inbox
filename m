X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["911" "Thursday" "13" "December" "2018" "22:48:11" "+0530" "P J P" "ppandit@redhat.com" "<nycvar.YSQ.7.76.1812132245100.12493@xnncv>" "22" "[oss-security] CVE-2018-16872 Qemu: usb-mtp: path traversal by host filesystem manipulation in Media Transfer Protocol (MTP)" "^cc:" nil nil "12" "2018121317:18:11" "[oss-security] CVE-2018-16872 Qemu: usb-mtp: path traversal by host filesystem manipulation in Media Transfer Protocol (MTP)" (number mark "U       ppandit@redh Dec 13   22/911   " thread-indent "\"[oss-security] CVE-2018-16872 Qemu: usb-mtp: path traversal by host filesystem manipulation in Media Transfer Protocol (MTP)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7194 invoked by uid 550); 13 Dec 2018 17:18:29 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 7172 invoked from network); 13 Dec 2018 17:18:28 -0000
X-X-Sender: pjp@kaapi
Message-ID: <nycvar.YSQ.7.76.1812132245100.12493@xnncv>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.39]); Thu, 13 Dec 2018 17:18:16 +0000 (UTC)
cc: public@hansmi.ch
Date: Thu, 13 Dec 2018 22:48:11 +0530 (IST)
From: P J P <ppandit@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE-2018-16872 Qemu: usb-mtp: path traversal by host filesystem
 manipulation in Media Transfer Protocol (MTP)
To: oss security list <oss-security@lists.openwall.com>

   Hello,

A flaw was found in qemu Media Transfer Protocol (MTP). The code opening files 
in usb_mtp_get_object and usb_mtp_get_partial_object and directories in 
usb_mtp_object_readdir doesn't consider that the underlying filesystem may 
have changed since the time lstat(2) was called in usb_mtp_object_alloc, a 
classical TOCTTOU problem. An attacker with write access to the host 
filesystem shared with a guest can use this property to navigate the host 
filesystem in the context of the QEMU process and read any file the QEMU 
process has access to. Access to the filesystem may be local or via a network 
share protocol such as CIFS.

Upstream patch:
---------------
   -> https://lists.gnu.org/archive/html/qemu-devel/2018-12/msg03135.html

This issue was reported by Michael Hanselmann.

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
