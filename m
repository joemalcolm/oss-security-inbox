X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["501" "Thursday" "8" "December" "2016" "17:13:36" "+0530" "P J P" "ppandit@redhat.com" "<alpine.LFD.2.20.1612081659560.28510@wniryva>" "17" "[oss-security] CVE request Qemu: char: use after free issue in char backend" nil nil nil "12" "2016120811:43:36" "[oss-security] CVE request Qemu: char: use after free issue in char backend" (number mark "U       ppandit@redh Dec  8   17/501   " thread-indent "\"[oss-security] CVE request Qemu: char: use after free issue in char backend\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 17589 invoked by uid 550); 8 Dec 2016 11:43:59 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17568 invoked from network); 8 Dec 2016 11:43:58 -0000
Date: Thu, 8 Dec 2016 17:13:36 +0530 (IST)
From: P J P <ppandit@redhat.com>
X-X-Sender: pjp@javelin
To: oss security list <oss-security@lists.openwall.com>
cc: liqiang6-s@360.cn
Message-ID: <alpine.LFD.2.20.1612081659560.28510@wniryva>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.38]); Thu, 08 Dec 2016 11:43:46 +0000 (UTC)
Subject: [oss-security] CVE request Qemu: char: use after free issue in char backend

   Hello,

Quick Emulator(Qemu) built with the 'chardev' backend support is vulnerable to 
a use after free issue. It could occur while hotplug and unplugging the device 
in the guest.

A guest user/process could use this flaw to crash a Qemu process on the host 
resulting in DoS.

Upstream patch:
---------------
   -> https://lists.gnu.org/archive/html/qemu-devel/2016-10/msg05597.html

Thank you
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
