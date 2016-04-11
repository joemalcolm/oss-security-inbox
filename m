X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["740" "Tuesday" "12" "April" "2016" "00:01:48" "+0530" "P J P" "ppandit@redhat.com" "<alpine.LFD.2.20.1604112359170.31458@wniryva>" "25" "[oss-security] CVE Request: Qemu: net: buffer overflow in MIPSnet emulator" nil nil nil "4" "2016041118:31:48" "[oss-security] CVE Request: Qemu: net: buffer overflow in MIPSnet emulator" (number mark "U       ppandit@redh Apr 12   25/740   " thread-indent "\"[oss-security] CVE Request: Qemu: net: buffer overflow in MIPSnet emulator\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9813 invoked by uid 550); 11 Apr 2016 18:32:09 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9789 invoked from network); 11 Apr 2016 18:32:08 -0000
Date: Tue, 12 Apr 2016 00:01:48 +0530 (IST)
From: P J P <ppandit@redhat.com>
X-X-Sender: pjp@javelin
To: oss security list <oss-security@lists.openwall.com>
cc: "Bazhaniuk, Oleksandr" <oleksandr.bazhaniuk@intel.com>
Message-ID: <alpine.LFD.2.20.1604112359170.31458@wniryva>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.24
Subject: [oss-security] CVE Request: Qemu: net: buffer overflow in MIPSnet emulator

   Hello,

Qemu emulator built with the MIPSnet controller emulator is vulnerable to a 
buffer overflow issue. It could occur while receiving network packets in 
mipsnet_receive(), if the guest NIC is configured to accept large(MTU) 
packets.

A remote user/process could use this flaw to crash the Qemu process on a host, 
resulting in DoS.

Upstream patch:
---------------
   -> https://lists.gnu.org/archive/html/qemu-devel/2016-04/msg01131.html

Reference:
----------
   -> https://bugzilla.redhat.com/show_bug.cgi?id=1326082

This issue was discovered by Oleksandr Bazhaniuk of Advanced Threat Research
team at Intel Inc.

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
