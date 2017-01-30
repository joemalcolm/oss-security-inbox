X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["770" "Monday" "30" "January" "2017" "15:27:59" "+0530" "P J P" "ppandit@redhat.com" "<alpine.LFD.2.20.1701301524160.12782@wniryva>" "24" "[oss-security] CVE request Qemu: sd: sdhci OOB access during multi block SDMA transfer" nil nil nil "1" "2017013009:57:59" "[oss-security] CVE request Qemu: sd: sdhci OOB access during multi block SDMA transfer" (number mark "U       ppandit@redh Jan 30   24/770   " thread-indent "\"[oss-security] CVE request Qemu: sd: sdhci OOB access during multi block SDMA transfer\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 20226 invoked by uid 550); 30 Jan 2017 09:58:20 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 20194 invoked from network); 30 Jan 2017 09:58:19 -0000
Date: Mon, 30 Jan 2017 15:27:59 +0530 (IST)
From: P J P <ppandit@redhat.com>
X-X-Sender: pjp@javelin
To: oss security list <oss-security@lists.openwall.com>
cc: Jiang Xin <jiangxin1@huawei.com>
Message-ID: <alpine.LFD.2.20.1701301524160.12782@wniryva>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.24
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.32]); Mon, 30 Jan 2017 09:58:08 +0000 (UTC)
Subject: [oss-security] CVE request Qemu: sd: sdhci OOB access during multi block SDMA
 transfer

   Hello,

Quick emulator(Qemu) built with the SDHCI device emulation support is 
vulnerable to an OOB heap access issue. It could occur while doing a multi 
block SDMA transfer via 'sdhci_sdma_transfer_multi_blocks' routine.

A privileged user inside guest could use this flaw to crash the Qemu process 
resulting in DoS or potentially execute arbitrary code with privileges of the 
Qemu process on the host.

Upstream patch:
---------------
   -> https://lists.gnu.org/archive/html/qemu-devel/2017-01/msg06191.html

Reference:
----------
   -> https://bugzilla.redhat.com/show_bug.cgi?id=1417559

This issue was reported by Jiang Xin of Huawei PSIR team.

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
