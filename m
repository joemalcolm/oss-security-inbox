X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["746" "Friday" "17" "February" "2017" "13:03:11" "+0530" "P J P" "ppandit@redhat.com" "<alpine.LFD.2.20.1702171300440.22691@wniryva>" "27" "[oss-security] CVE-2017-6058 Qemu: net: vmxnet3: OOB NetRxPkt::ehdr_buf access when doing vlan stripping" nil nil nil "2" "2017021707:33:11" "[oss-security] CVE-2017-6058 Qemu: net: vmxnet3: OOB NetRxPkt::ehdr_buf access when doing vlan stripping" (number mark "U       ppandit@redh Feb 17   27/746   " thread-indent "\"[oss-security] CVE-2017-6058 Qemu: net: vmxnet3: OOB NetRxPkt::ehdr_buf access when doing vlan stripping\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 10174 invoked by uid 550); 17 Feb 2017 07:33:29 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 10156 invoked from network); 17 Feb 2017 07:33:28 -0000
Date: Fri, 17 Feb 2017 13:03:11 +0530 (IST)
From: P J P <ppandit@redhat.com>
X-X-Sender: pjp@javelin
To: oss security list <oss-security@lists.openwall.com>
Message-ID: <alpine.LFD.2.20.1702171300440.22691@wniryva>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.39]); Fri, 17 Feb 2017 07:33:17 +0000 (UTC)
Subject: [oss-security] CVE-2017-6058 Qemu: net: vmxnet3: OOB NetRxPkt::ehdr_buf access when
 doing vlan stripping

   Hello,

Quick Emulator(Qemu) built with the VMWARE VMXNET3 NIC device support is 
vulnerable to an out-of-bounds access issue. It could occur while stripping 
VLAN header from 'eth_buf' buffer in receiving packets.

A remote user/process could use this issue to crash Qemu process resulting in 
DoS.

Upstream patch:
---------------
   -> https://lists.nongnu.org/archive/html/qemu-devel/2017-02/msg03527.html

Reference:
----------
   -> https://bugzilla.redhat.com/show_bug.cgi?id=1423358

Note:- It requires 'VLANSTRIP' feature to be enabled on the vmxnet3 device.


'CVE-2017-6058' assigned via -> https://cveform.mitre.org/


Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
