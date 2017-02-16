X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["713" "Thursday" "16" "February" "2017" "10:17:54" "+0530" "P J P" "ppandit@redhat.com" "<alpine.LFD.2.20.1702161016040.1918@wniryva>" "24" "[oss-security] CVE-2017-6000 Qemu: crypto: memory leakage in qcrypto_ivgen_essiv_init" nil nil nil "2" "2017021604:47:54" "[oss-security] CVE-2017-6000 Qemu: crypto: memory leakage in qcrypto_ivgen_essiv_init" (number mark "U       ppandit@redh Feb 16   24/713   " thread-indent "\"[oss-security] CVE-2017-6000 Qemu: crypto: memory leakage in qcrypto_ivgen_essiv_init\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 12122 invoked by uid 550); 16 Feb 2017 04:48:16 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 12102 invoked from network); 16 Feb 2017 04:48:16 -0000
Date: Thu, 16 Feb 2017 10:17:54 +0530 (IST)
From: P J P <ppandit@redhat.com>
X-X-Sender: pjp@javelin
To: oss security list <oss-security@lists.openwall.com>
cc: Li Qiang <liqiang6-s@360.cn>
Message-ID: <alpine.LFD.2.20.1702161016040.1918@wniryva>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.24
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.25]); Thu, 16 Feb 2017 04:48:05 +0000 (UTC)
Subject: [oss-security] CVE-2017-6000 Qemu: crypto: memory leakage in
 qcrypto_ivgen_essiv_init

   Hello,

Quick Emulator(Qemu) built with the Crypto block IV generator - essiv support 
is vulnerable to a host memory leakage issue. It could occur while 
initialising the crypto device in 'qcrypto_ivgen_essiv_init'.

A guest user/process could use this flaw to leak host memory resulting in DoS.

Upstream patch:
---------------
   -> https://lists.gnu.org/archive/html/qemu-devel/2017-01/msg00295.html

Reference:
----------
   -> https://bugzilla.redhat.com/show_bug.cgi?id=1422656

This issue was reported by Li Qiang of 360.cn Inc.

'CVE-2017-6000' assigned via -> https://cveform.mitre.org/

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
