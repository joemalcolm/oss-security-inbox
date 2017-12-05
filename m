X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["608" "Tuesday" "5" "December" "2017" "12:54:12" "+0530" "P J P" "ppandit@redhat.com" "<nycvar.YSQ.7.76.1712051252001.29623@wniryva>" "21" "[oss-security] CVE-2017-17381 Qemu: virtio: divide by zero exception while updating rings" nil nil nil "12" "2017120507:24:12" "[oss-security] CVE-2017-17381 Qemu: virtio: divide by zero exception while updating rings" (number mark "U       ppandit@redh Dec  5   21/608   " thread-indent "\"[oss-security] CVE-2017-17381 Qemu: virtio: divide by zero exception while updating rings\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5200 invoked by uid 550); 5 Dec 2017 07:24:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5182 invoked from network); 5 Dec 2017 07:24:29 -0000
Date: Tue, 5 Dec 2017 12:54:12 +0530 (IST)
From: P J P <ppandit@redhat.com>
X-X-Sender: pjp@javelin
To: oss security list <oss-security@lists.openwall.com>
cc: zhangboxian <zhangboxian@huawei.com>
Message-ID: <nycvar.YSQ.7.76.1712051252001.29623@wniryva>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.25]); Tue, 05 Dec 2017 07:24:18 +0000 (UTC)
Subject: [oss-security] CVE-2017-17381 Qemu: virtio: divide by zero exception while updating
 rings

   Hello,

Virtio Vring implementation in Quick Emulator(QEMU) is vulnerable to an 
arithmetic exception issue. It could occur if a guest was to unset vring 
alignment while updating Virtio rings.

A guest user/process could use this flaw to crash Qemu process resulting in 
DoS.

Upstream patch:
---------------
   -> https://lists.gnu.org/archive/html/qemu-devel/2017-12/msg00166.html

This issue was reported by Huawei Alpha Labs.

'CVE-2017-17381' assigned via -> https://cveform.mitre.org/

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
