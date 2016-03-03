X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["735" "Thursday" "3" "March" "2016" "16:34:42" "+0530" "P J P" "ppandit@redhat.com" "<alpine.LFD.2.20.1603031632120.7999@wniryva>" "24" "[oss-security] CVE request Qemu: net: out of bounds read in net_checksum_calculate" "^cc:" nil nil "3" "2016030311:04:42" "[oss-security] CVE request Qemu: net: out of bounds read in net_checksum_calculate" (number mark "        ppandit@redh Mar  3   24/735   " thread-indent "\"[oss-security] CVE request Qemu: net: out of bounds read in net_checksum_calculate\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 32263 invoked by uid 550); 3 Mar 2016 11:05:01 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 32239 invoked from network); 3 Mar 2016 11:05:00 -0000
X-X-Sender: pjp@javelin
Message-ID: <alpine.LFD.2.20.1603031632120.7999@wniryva>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.23
cc: Liu Ling <liuling-it@360.cn>
Date: Thu, 3 Mar 2016 16:34:42 +0530 (IST)
From: P J P <ppandit@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE request Qemu: net: out of bounds read in
 net_checksum_calculate
To: oss security list <oss-security@lists.openwall.com>

   Hello,

Qemu emulator built with the IP checksum routines is vulnerable to an OOB read 
access issue. It could occur while computing checksum for TCP/UDP packets, as 
the function uses payload length from the packet without checking against the 
data buffer size.

A user inside guest could use this flaw to read excessive bytes or crash the 
Qemu process resulting in DoS.

Upstream patch:
---------------
   -> https://lists.gnu.org/archive/html/qemu-devel/2016-03/msg00671.html

Reference:
----------
   -> https://bugzilla.redhat.com/show_bug.cgi?id=1296567

This issue was discovered by Ling Liu of Qihoo 360 Inc.

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
