X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["631" "Monday" "4" "January" "2016" "17:23:02" "+0530" "P J P" "ppandit@redhat.com" "<alpine.LFD.2.20.1601041714500.15987@wniryva>" "23" "[oss-security] CVE request Qemu: net: ne2000: OOB r/w in ioport operations" nil nil nil "1" "2016010411:53:02" "[oss-security] CVE request Qemu: net: ne2000: OOB r/w in ioport operations" (number mark "U       ppandit@redh Jan  4   23/631   " thread-indent "\"[oss-security] CVE request Qemu: net: ne2000: OOB r/w in ioport operations\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5678 invoked by uid 550); 4 Jan 2016 11:53:25 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5648 invoked from network); 4 Jan 2016 11:53:24 -0000
Date: Mon, 4 Jan 2016 17:23:02 +0530 (IST)
From: P J P <ppandit@redhat.com>
X-X-Sender: pjp@javelin
To: oss security list <oss-security@lists.openwall.com>
cc: Ling Liu <liuling-it@360.cn>
Message-ID: <alpine.LFD.2.20.1601041714500.15987@wniryva>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.23
Subject: [oss-security] CVE request Qemu: net: ne2000: OOB r/w in ioport operations

   Hello,

Qemu emulator built with the NE2000 device emulation support is vulnerable to 
an OOB r/w access issue. It could occur while performing 'ioport' r/w 
operations.

A privileged(CAP_SYS_RAWIO) user/process could use this flaw to leak or 
corrupt Qemu memory bytes(3).

Upstream fix:
-------------
   -> https://lists.gnu.org/archive/html/qemu-devel/2016-01/msg00050.html

Reference:
----------
   -> https://bugzilla.redhat.com/show_bug.cgi?id=1264929

This issue was discovered by Ling Liu of Qihoo 360 Inc.

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
