X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["778" "Wednesday" "8" "February" "2017" "00:26:56" "+0530" "P J P" "ppandit@redhat.com" "<alpine.LFD.2.20.1702080024220.11236@wniryva>" "25" "[oss-security] CVE request Qemu: virtio: integer overflow in handling virtio-crypto requests" nil nil nil "2" "2017020718:56:56" "[oss-security] CVE request Qemu: virtio: integer overflow in handling virtio-crypto requests" (number mark "U       ppandit@redh Feb  8   25/778   " thread-indent "\"[oss-security] CVE request Qemu: virtio: integer overflow in handling virtio-crypto requests\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 10069 invoked by uid 550); 7 Feb 2017 18:57:14 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 10043 invoked from network); 7 Feb 2017 18:57:13 -0000
Date: Wed, 8 Feb 2017 00:26:56 +0530 (IST)
From: P J P <ppandit@redhat.com>
X-X-Sender: pjp@javelin
To: oss security list <oss-security@lists.openwall.com>
cc: Li Qiang <liqiang6-s@360.cn>
Message-ID: <alpine.LFD.2.20.1702080024220.11236@wniryva>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.74 on 10.5.11.28
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.39]); Tue, 07 Feb 2017 18:57:03 +0000 (UTC)
Subject: [oss-security] CVE request Qemu: virtio: integer overflow in handling virtio-crypto
 requests

    Hello,

Quick Emulator(Qemu) built with the Virtio Crypto device emulation support is 
vulnerable to an integer overflow issue. It could occur while handling data 
encryption/decryption requests in 'virtio_crypto_handle_sym_req'.

A privileged user inside guest could use this flaw to crash the Qemu process 
resulting in DoS or potentially execute arbitrary code on the host with 
privileges of the Qemu process.

Upstream patch:
---------------
   -> https://lists.nongnu.org/archive/html/qemu-devel/2017-01/msg01368.html

Reference:
----------
   -> https://bugzilla.redhat.com/show_bug.cgi?id=1420092

This issue was reported by Mr Li Qiang of 360.cn Inc.


Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
