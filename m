X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["926" "Friday" "18" "September" "2015" "16:15:37" "+0530" "P J P" "ppandit@redhat.com" "<alpine.LFD.2.20.1509181611430.12625@wniryva>" "23" "[oss-security] CVE request Qemu: net: virtio-net possible remote DoS" nil nil nil "9" "2015091810:45:37" "[oss-security] CVE request Qemu: net: virtio-net possible remote DoS" (number mark "        ppandit@redh Sep 18   23/926   " thread-indent "\"[oss-security] CVE request Qemu: net: virtio-net possible remote DoS\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 11367 invoked by uid 550); 18 Sep 2015 10:45:56 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 11349 invoked from network); 18 Sep 2015 10:45:55 -0000
X-X-Sender: pjp@javelin
Message-ID: <alpine.LFD.2.20.1509181611430.12625@wniryva>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.23
cc: Jason Wang <jasowang@redhat.com>
Date: Fri, 18 Sep 2015 16:15:37 +0530 (IST)
From: P J P <ppandit@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE request Qemu: net: virtio-net possible remote DoS
To: oss security list <oss-security@lists.openwall.com>

   Hello,

Qemu emulator built with the Virtual Network Device(virtio-net) support is 
vulnerable to a DoS issue. It could occur while receiving large packets over 
the tuntap/macvtap interfaces and when guest's virtio-net driver did not 
support big/mergeable receive buffers.

An attacker on the local network could use this flaw to disable guest's
networking by sending a large number of jumbo frames to the guest, exhausting
all receive buffers and thus leading to a DoS situation.

Upstream fixes:
---------------
   -> https://lists.gnu.org/archive/html/qemu-devel/2015-09/msg04729.html
   -> https://lists.gnu.org/archive/html/qemu-devel/2015-09/msg04730.html
   -> https://lists.gnu.org/archive/html/qemu-devel/2015-09/msg04731.html

[PATCH 3/3] above fixes this issue by discarding the used descriptors.

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
