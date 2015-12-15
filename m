X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["586" "Tuesday" "15" "December" "2015" "13:37:59" "+0530" "P J P" "ppandit@redhat.com" "<alpine.LFD.2.20.1512151335220.28945@wniryva>" "20" "[oss-security] CVE request Qemu: net: vmxnet3: host memory leakage" nil nil nil "12" "2015121508:07:59" "[oss-security] CVE request Qemu: net: vmxnet3: host memory leakage" (number mark "U       ppandit@redh Dec 15   20/586   " thread-indent "\"[oss-security] CVE request Qemu: net: vmxnet3: host memory leakage\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9611 invoked by uid 550); 15 Dec 2015 08:08:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9587 invoked from network); 15 Dec 2015 08:08:17 -0000
Date: Tue, 15 Dec 2015 13:37:59 +0530 (IST)
From: P J P <ppandit@redhat.com>
X-X-Sender: pjp@javelin
To: oss security list <oss-security@lists.openwall.com>
cc: Qinghao Tang <luodalongde@gmail.com>
Message-ID: <alpine.LFD.2.20.1512151335220.28945@wniryva>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.26
Subject: [oss-security] CVE request Qemu: net: vmxnet3: host memory leakage

   Hello,

Qemu emulator built with a VMWARE VMXNET3 paravirtual NIC emulator support is 
vulnerable to a memory leakage flaw. It occurs when a guest repeatedly tries 
to activate the vmxnet3 device.

A privileged guest user could use this flaw to leak host memory, resulting in 
DoS on the host.

Upstream patch:
---------------
   -> https://lists.gnu.org/archive/html/qemu-devel/2015-12/msg02299.html


This issue was discovered by Qinghao Tang of QIHU 360 Marvel Team.

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
