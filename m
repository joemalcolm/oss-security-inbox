X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1622" "Saturday" "9" "January" "2016" "13:18:58" "+0530" "P J P" "ppandit@redhat.com" "<alpine.LFD.2.20.1601091310350.6880@wniryva>" "45" "[oss-security] Qemu: ide: ahci use-after-free vulnerability in aio port commands" "^cc:" nil nil "1" "2016010907:48:58" "[oss-security] Qemu: ide: ahci use-after-free vulnerability in aio port commands" (number mark "        ppandit@redh Jan  9   45/1622  " thread-indent "\"[oss-security] Qemu: ide: ahci use-after-free vulnerability in aio port commands\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 26477 invoked by uid 550); 9 Jan 2016 07:49:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 26456 invoked from network); 9 Jan 2016 07:49:23 -0000
X-X-Sender: pjp@javelin
Message-ID: <alpine.LFD.2.20.1601091310350.6880@wniryva>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.22
cc: Qinghao Tang <luodalongde@gmail.com>
Date: Sat, 9 Jan 2016 13:18:58 +0530 (IST)
From: P J P <ppandit@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Qemu: ide: ahci use-after-free vulnerability in aio port commands
To: oss security list <oss-security@lists.openwall.com>

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

   Hello,

Qemu emulator built with the IDE AHCI Emulation support is vulnerable to a use 
after free(kind of) issue. It could occur after processing AHCI Native Command 
Queuing(NCQ) AIO commands.

A privileged user inside guest could use this flaw to crash the Qemu process 
instance or might potentially execute arbitrary code with privileges of the 
Qemu process on the host.

Upstream fix:
- -------------
   -> https://lists.gnu.org/archive/html/qemu-devel/2016-01/msg01184.html

Reference:
- ----------
   -> https://bugzilla.redhat.com/show_bug.cgi?id=1288532

This issue was discovered by Mr Qinghao Tang of Qihoo 360 Marvel Team.

Thank you.
- --
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBAgAGBQJWkLtqAAoJEN0TPTL+WwQf5mAQAL1fjaFzwWBYPcDeqo3V7cFv
qi+SQmltTf5GAbLPYXnzvfJpJeE7r6vsaEkOklgMTLceBysCjyfvjU+yEJHxMQcD
B4ZgbqcCANXRNlmNgeL2+nXCkOs1W8Af9XeJ7KL53PP6vRMaLt3seEYZ5wsm2YUq
yBQRd1PTayNhho8rJnZZA7bert87hZGKcRYcClqwddzW92d+y2Y8MkymjJxJQljB
TJPBCWTHiFqwV8iLhDffcCmXdd2I0XnghX0ZzYG1bK6Dl6zIXfI91nyFFDEwxgeI
R5tHx9bPvATl15AQZVkfuLPAh7KjH+JRPuDrM8d3HW6fyC04yS0Z4XQKZvRBVbtk
fdvVK1kWhdTVXlulCu7M86jr61KeY7Vkkp9bNkRa5nF+yrSSvf/SKtmfRH9UJt4R
NGhlXxoZgwyDyRM2dcthKQHnms0qPyU/giyillrbr42wKbpyzasFZKQDWW5QfsGY
LjiV+Cj30ETINgO08i2aIMyyWVdAihpqiP5qk+LtnRiFYpsevGPVYZhF99aDMgmA
2wmHVRtPfeSClPIJiK9b83GH45cZfZQ7SCYkLX1QoAK2C10SCUBUl1GHAS+hjmBC
5wXTas9aooRxfxYyEqC5/cRCZmmKo8hJfFPjg3U8hZ8OTFsbrJB8glpUveYCM60k
Eq47WaH27GAV/oKSWtkl
=0a5q
-----END PGP SIGNATURE-----
