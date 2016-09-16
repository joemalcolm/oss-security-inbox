X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["720" "Friday" "16" "September" "2016" "16:15:24" "+0530" "P J P" "ppandit@redhat.com" "<alpine.LFD.2.20.1609161611510.28695@wniryva>" "24" "[oss-security] CVE request Qemu: virtio: null pointer dereference in virtqueu_map_desc" nil nil nil "9" "2016091610:45:24" "[oss-security] CVE request Qemu: virtio: null pointer dereference in virtqueu_map_desc" (number mark "U       ppandit@redh Sep 16   24/720   " thread-indent "\"[oss-security] CVE request Qemu: virtio: null pointer dereference in virtqueu_map_desc\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1610 invoked by uid 550); 16 Sep 2016 10:45:41 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1589 invoked from network); 16 Sep 2016 10:45:40 -0000
Date: Fri, 16 Sep 2016 16:15:24 +0530 (IST)
From: P J P <ppandit@redhat.com>
X-X-Sender: pjp@javelin
To: oss security list <oss-security@lists.openwall.com>
cc: Qinghao Tang <luodalongde@gmail.com>, zhenhao hong <zhenhaohong@gmail.com>
Message-ID: <alpine.LFD.2.20.1609161611510.28695@wniryva>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.26
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.27]); Fri, 16 Sep 2016 10:45:28 +0000 (UTC)
Subject: [oss-security] CVE request Qemu: virtio: null pointer dereference in
 virtqueu_map_desc

   Hello,

Quick emulator(Qemu) built with the virtio framework is vulnerable to a null 
pointer dereference flaw. It could occur if the guest was to set the I/O 
descriptor buffer length to a large value.

A privileged user inside guest could use this flaw to crash the Qemu instance 
on the host resulting in DoS.

Upstream fix:
-------------
   -> https://lists.gnu.org/archive/html/qemu-devel/2016-09/msg03546.html

Reference:
----------
   -> https://bugzilla.redhat.com/show_bug.cgi?id=1376755

This issue was independently reported by Qinghao Tang and Zhenhao Hong of the 
Marvel Team of 360.cn Inc.

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
