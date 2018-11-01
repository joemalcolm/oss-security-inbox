X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["654" "Thursday" "1" "November" "2018" "11:56:28" "+0530" "P J P" "ppandit@redhat.com" "<nycvar.YSQ.7.76.1811011151230.336@xnncv>" "19" "[oss-security] CVE-2018-18849 Qemu: lsi53c895a: OOB msg buffer access leads to DoS" nil nil nil "11" "2018110106:26:28" "[oss-security] CVE-2018-18849 Qemu: lsi53c895a: OOB msg buffer access leads to DoS" (number mark "U       ppandit@redh Nov  1   19/654   " thread-indent "\"[oss-security] CVE-2018-18849 Qemu: lsi53c895a: OOB msg buffer access leads to DoS\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 18202 invoked by uid 550); 1 Nov 2018 06:26:47 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 18184 invoked from network); 1 Nov 2018 06:26:47 -0000
Date: Thu, 1 Nov 2018 11:56:28 +0530 (IST)
From: P J P <ppandit@redhat.com>
X-X-Sender: pjp@kaapi
To: oss security list <oss-security@lists.openwall.com>
cc: ameya.more@oracle.com
Message-ID: <nycvar.YSQ.7.76.1811011151230.336@xnncv>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.30]); Thu, 01 Nov 2018 06:26:35 +0000 (UTC)
Subject: [oss-security] CVE-2018-18849 Qemu: lsi53c895a: OOB msg buffer access leads to
 DoS

   Hello,

An out of bounds memory access issue was found in the LSI53C895A SCSI Host Bus 
Adapter emulation while writing a message in lsi_do_msgin. It could occur 
during migration if the 'msg_len' field has an invalid value.  A user/process 
could use this flaw to crash the Qemu process resulting in DoS.

Upstream patch:
---------------
   -> https://lists.gnu.org/archive/html/qemu-devel/2018-10/msg06682.html

This issue was discovered by dejavusecurity.com and reported by Oracle.com.

CVE assigned via -> https://cveform.mitre.org/

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
