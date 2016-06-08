X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["720" "Wednesday" "8" "June" "2016" "15:32:44" "+0530" "P J P" "ppandit@redhat.com" "<alpine.LFD.2.20.1606081531020.11110@wniryva>" "23" "[oss-security] CVE Request Qemu: scsi: megasas: information leakage in megasas_ctrl_get_info" nil nil nil "6" "2016060810:02:44" "[oss-security] CVE Request Qemu: scsi: megasas: information leakage in megasas_ctrl_get_info" (number mark "U       ppandit@redh Jun  8   23/720   " thread-indent "\"[oss-security] CVE Request Qemu: scsi: megasas: information leakage in megasas_ctrl_get_info\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 29804 invoked by uid 550); 8 Jun 2016 10:03:02 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 29784 invoked from network); 8 Jun 2016 10:03:01 -0000
Date: Wed, 8 Jun 2016 15:32:44 +0530 (IST)
From: P J P <ppandit@redhat.com>
X-X-Sender: pjp@javelin
To: oss security list <oss-security@lists.openwall.com>
cc: Li Qiang <liqiang6-s@360.cn>
Message-ID: <alpine.LFD.2.20.1606081531020.11110@wniryva>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.30]); Wed, 08 Jun 2016 10:02:49 +0000 (UTC)
Subject: [oss-security] CVE Request Qemu: scsi: megasas: information leakage in
 megasas_ctrl_get_info

   Hello,

Quick Emulator(Qemu) built with the MegaRAID SAS 8708EM2 Host Bus Adapter 
emulation support is vulnerable to an information leakage issue. It could 
occur while processing MegaRAID Firmware Interface(MFI) command to read device 
control information in 'megasas_ctrl_get_info'.

A privileged user inside guest could use this flaw to leak host memory bytes.

Upstream patch:
---------------
   -> https://lists.gnu.org/archive/html/qemu-devel/2016-06/msg01969.html

Reference:
----------
   -> https://bugzilla.redhat.com/show_bug.cgi?id=1343909

This issue was reportd by Li Qiang of 360.cn Inc.

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
