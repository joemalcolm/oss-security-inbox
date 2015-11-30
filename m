X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1817" "Monday" "30" "November" "2015" "14:32:00" "+0530" "P J P" "ppandit@redhat.com" "<alpine.LFD.2.20.1511301427250.21944@wniryva>" "48" "[oss-security] CVE-2015-7504 Qemu: net: pcnet: heap overflow vulnerability in loopback mode" nil nil nil "11" "2015113009:02:00" "[oss-security] CVE-2015-7504 Qemu: net: pcnet: heap overflow vulnerability in loopback mode" (number mark "U       ppandit@redh Nov 30   48/1817  " thread-indent "\"[oss-security] CVE-2015-7504 Qemu: net: pcnet: heap overflow vulnerability in loopback mode\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 18001 invoked by uid 550); 30 Nov 2015 09:02:36 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17981 invoked from network); 30 Nov 2015 09:02:36 -0000
Date: Mon, 30 Nov 2015 14:32:00 +0530 (IST)
From: P J P <ppandit@redhat.com>
X-X-Sender: pjp@javelin
To: oss security list <oss-security@lists.openwall.com>
cc: Qinghao Tang <luodalongde@gmail.com>, Liu Ling <liuling-it@360.cn>
Message-ID: <alpine.LFD.2.20.1511301427250.21944@wniryva>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.24
Subject: [oss-security] CVE-2015-7504 Qemu: net: pcnet: heap overflow vulnerability in
 loopback mode

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

   Hello,

Qemu emulator built with the AMD PC-Net II Ethernet Controller support is 
vulnerable to a heap buffer overflow flaw. While receiving packets in the 
loopback mode, it appends CRC code to the receive buffer. If the data size 
given is same as the receive buffer size, the appended CRC code overwrites 4 
bytes beyond this 's->buffer' array.

A privileged(CAP_SYS_RAWIO) user inside guest could use this flaw to crash the 
Qemu instance resulting in DoS or potentially execute arbitrary code with 
privileges of the Qemu process on the host.

Upstream fix:
- -------------
   -> https://lists.gnu.org/archive/html/qemu-devel/2015-11/msg06342.html


CVE-2015-7504 has been assigned to this issue by Red Hat Inc.

This issue was independently discovered by Qinghao Tang of QIHU 360 Marvel 
Team and Ling Liu of Qihoo 360 Inc.


Thank you.
- --
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBAgAGBQJWXBCIAAoJEN0TPTL+WwQfFcAP/A1Avl24d0BptZ8jsmqXwhhl
GdG0cVnxkAgzoihwWcQykpOl/enXi7wsp1qC2WU6hzaqAZaKNSOmhlqwkztA+0tN
20+HEOItR96aHWzunRbGzZok9ypRD4MkicPkL53Cr0XiRWArzKKiSU7pcTlYkPQB
vrcOD8WZRFyRGGQxUDGsVnnCqwPwrubwBMDuebVkC6B2BdXi1fy3pVrgRwHPuKgP
2oIepF2lDM+RmdaMFcvyJBA75r9RnJSXUqiCsqLRWiY/UXzmXQqz32ywOAGhil7b
lfSZFehtqBESr4wdlzXHGjTHmdyFywVvLAr7cXyVT+l35hchKfKVZ/O+8PKa61Gc
09MXy+SeHE5NU1cmZHuB0CO+CbCpa2oCnDjifF5RTykItcP3o/NEjz/GeFXfjTKc
BWxB5vhhMZU+0Hsh3L/gN+5QwpH1bAyDh6zMGyX9cu2y6M1jGnNo0GIYx3hg94x3
Lc1N72n3VtVn1qFfok0QTDEK0futZQVKAw6uC4UaEcTWlQfBFQkq67KEBCSB2qRp
ddYdyzHTgxJkOQXz4vuV5hHxjtnJUXWc/S3MjyPZt1734dVi56yrVmAMnnWBVvR+
WF6ql8UjaCIYmOPnuzmi3iZad91iyzHREDEtjLzXs2R4VFI47sODmLas+3zjqHS8
kD76rYKh6VuhSafoveXJ
=niQP
-----END PGP SIGNATURE-----
