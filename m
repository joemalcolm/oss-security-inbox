X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["640" "Wednesday" "2" "March" "2016" "20:57:44" "+0530" "P J P" "ppandit@redhat.com" "<alpine.LFD.2.20.1603022054390.31146@wniryva>" "21" "[oss-security] CVE request Qemu: net: ne2000: infinite loop in ne2000_receive" nil nil nil "3" "2016030215:27:44" "[oss-security] CVE request Qemu: net: ne2000: infinite loop in ne2000_receive" (number mark "U       ppandit@redh Mar  2   21/640   " thread-indent "\"[oss-security] CVE request Qemu: net: ne2000: infinite loop in ne2000_receive\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 10217 invoked by uid 550); 2 Mar 2016 15:28:02 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 10172 invoked from network); 2 Mar 2016 15:28:01 -0000
Date: Wed, 2 Mar 2016 20:57:44 +0530 (IST)
From: P J P <ppandit@redhat.com>
X-X-Sender: pjp@javelin
To: oss security list <oss-security@lists.openwall.com>
cc: Yang Hongke <yanghongke@huawei.com>
Message-ID: <alpine.LFD.2.20.1603022054390.31146@wniryva>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.26
Subject: [oss-security] CVE request Qemu: net: ne2000: infinite loop in ne2000_receive

   Hello,

Qemu emulator built with the NE2000 NIC emulation support is vulnerable to an 
infinite loop issue. It could occur when receiving packets over the network. A 
privileged user inside guest could use this flaw to crash the Qemu instance 
resulting in DoS.

Upstream patch:
---------------
   -> https://lists.gnu.org/archive/html/qemu-devel/2016-02/msg06126.html

Reference:
----------
   -> https://bugzilla.redhat.com/show_bug.cgi?id=1303106

This issue was discovered by Hongke Yang of Huawei Technologies Co. Ltd.

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
