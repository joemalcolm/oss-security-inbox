X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["781" "Tuesday" "14" "February" "2017" "23:49:05" "+0530" "P J P" "ppandit@redhat.com" "<alpine.LFD.2.20.1702142342450.4918@wniryva>" "26" "[oss-security] CVE-2017-5987 Qemu: sd: infinite loop issue in multi block transfers" nil nil nil "2" "2017021418:19:05" "[oss-security] CVE-2017-5987 Qemu: sd: infinite loop issue in multi block transfers" (number mark "U       ppandit@redh Feb 14   26/781   " thread-indent "\"[oss-security] CVE-2017-5987 Qemu: sd: infinite loop issue in multi block transfers\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 13781 invoked by uid 550); 14 Feb 2017 18:19:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13757 invoked from network); 14 Feb 2017 18:19:23 -0000
Date: Tue, 14 Feb 2017 23:49:05 +0530 (IST)
From: P J P <ppandit@redhat.com>
X-X-Sender: pjp@javelin
To: oss security list <oss-security@lists.openwall.com>
cc: Wjjzhang <wjjzhang@tencent.com>, Jiang Xin <jiangxin1@huawei.com>
Message-ID: <alpine.LFD.2.20.1702142342450.4918@wniryva>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.31]); Tue, 14 Feb 2017 18:19:13 +0000 (UTC)
Subject: [oss-security] CVE-2017-5987 Qemu: sd: infinite loop issue in multi block
 transfers

   Hello,

Quick emulator(Qemu) built with the SDHCI device emulation support is 
vulnerable to an infinite loop issue. It could occur while doing a multi block 
SDMA transfer via 'sdhci_sdma_transfer_multi_blocks' routine.

A privileged user inside guest could use this flaw to crash the Qemu process 
resulting in DoS.

Upstream patch:
---------------
   -> https://lists.gnu.org/archive/html/qemu-devel/2017-02/msg02776.html

Reference:
----------
   -> https://bugzilla.redhat.com/show_bug.cgi?id=1421995

This issue was independently reported by Mr Jiang Xin of Huawei.com and 
Wjjzhang of Tencent.com.

'CVE-2017-5987' assigned via -> https://cveform.mitre.org/

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
