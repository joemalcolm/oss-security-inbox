X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["539" "Wednesday" "7" "November" "2018" "00:33:03" "+0530" "P J P" "ppandit@redhat.com" "<nycvar.YSQ.7.76.1811070031000.15644@xnncv>" "17" "[oss-security] CVE-2018-18954 QEMU: ppc64: Out-of-bounds r/w stack access in pnv_lpc_do_eccb" nil nil nil "11" "2018110619:03:03" "[oss-security] CVE-2018-18954 QEMU: ppc64: Out-of-bounds r/w stack access in pnv_lpc_do_eccb" (number mark "U       ppandit@redh Nov  7   17/539   " thread-indent "\"[oss-security] CVE-2018-18954 QEMU: ppc64: Out-of-bounds r/w stack access in pnv_lpc_do_eccb\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 14328 invoked by uid 550); 6 Nov 2018 19:03:20 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 14307 invoked from network); 6 Nov 2018 19:03:20 -0000
Date: Wed, 7 Nov 2018 00:33:03 +0530 (IST)
From: P J P <ppandit@redhat.com>
X-X-Sender: pjp@kaapi
To: oss security list <oss-security@lists.openwall.com>
cc: moguofang@huawei.com
Message-ID: <nycvar.YSQ.7.76.1811070031000.15644@xnncv>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.41]); Tue, 06 Nov 2018 19:03:07 +0000 (UTC)
Subject: [oss-security] CVE-2018-18954 QEMU: ppc64: Out-of-bounds r/w stack access in
 pnv_lpc_do_eccb

   Hello,

An OOB r/w buffer access issue was found in the PowerPC PowerNV LPC controller 
in 'pnv_lpc_do_eccb' routine. It could occur while performing a memory write 
operation. A guest user/process could use this flaw to crash the QEMU process 
resulting in DoS.

Upstream patch:
---------------
   -> https://lists.gnu.org/archive/html/qemu-devel/2018-11/msg00446.html

This issue was reported by Moguofang of Huawei.com.

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
