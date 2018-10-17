X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["698" "Wednesday" "17" "October" "2018" "17:24:01" "+0530" "P J P" "ppandit@redhat.com" "<nycvar.YSQ.7.76.1810171321310.14417@xnncv>" "19" "[oss-security] CVE-2018-12617 Qemu: qemu-guest-agent: Integer overflow in qmp_guest_file_read may lead to crash" nil nil nil "10" "2018101711:54:01" "[oss-security] CVE-2018-12617 Qemu: qemu-guest-agent: Integer overflow in qmp_guest_file_read may lead to crash" (number mark "U       ppandit@redh Oct 17   19/698   " thread-indent "\"[oss-security] CVE-2018-12617 Qemu: qemu-guest-agent: Integer overflow in qmp_guest_file_read may lead to crash\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 22276 invoked by uid 550); 17 Oct 2018 11:54:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 22253 invoked from network); 17 Oct 2018 11:54:17 -0000
Date: Wed, 17 Oct 2018 17:24:01 +0530 (IST)
From: P J P <ppandit@redhat.com>
X-X-Sender: pjp@kaapi
To: oss security list <oss-security@lists.openwall.com>
cc: Fakhri Zulkifli <mohdfakhrizulkifli@gmail.com>
Message-ID: <nycvar.YSQ.7.76.1810171321310.14417@xnncv>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.46]); Wed, 17 Oct 2018 11:54:05 +0000 (UTC)
Subject: [oss-security] CVE-2018-12617 Qemu: qemu-guest-agent: Integer overflow in
 qmp_guest_file_read may lead to crash

   Hello,

The QEMU Guest Agent in QEMU is vulnerable to an integer overflow in the 
qmp_guest_file_read(). An attacker could exploit this by sending a crafted QMP 
command (including guest-file-read with a large count value) to the agent via 
the listening socket to trigger a g_malloc() call with a large memory chunk 
resulting in a segmentation fault.

A user could use this flaw to crash the Qemu-guest-agent resulting in DoS.

Upstream Patch:
   -> https://git.qemu.org/?p=qemu.git;a=commit;h=141b197408ab398c4f474ac1a728ab316e921f2b

This issue was reported by Fakhri Zulkifli.

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
