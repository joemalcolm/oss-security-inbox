X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1790" "Monday" "30" "November" "2015" "14:35:14" "+0530" "P J P" "ppandit@redhat.com" "<alpine.LFD.2.20.1511301432330.21944@wniryva>" "46" "[oss-security] CVE-2015-7512 Qemu: net: pcnet: buffer overflow in non-loopback mode" nil nil nil "11" "2015113009:05:14" "[oss-security] CVE-2015-7512 Qemu: net: pcnet: buffer overflow in non-loopback mode" (number mark "U       ppandit@redh Nov 30   46/1790  " thread-indent "\"[oss-security] CVE-2015-7512 Qemu: net: pcnet: buffer overflow in non-loopback mode\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 27977 invoked by uid 550); 30 Nov 2015 09:05:51 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 27953 invoked from network); 30 Nov 2015 09:05:50 -0000
Date: Mon, 30 Nov 2015 14:35:14 +0530 (IST)
From: P J P <ppandit@redhat.com>
X-X-Sender: pjp@javelin
To: oss security list <oss-security@lists.openwall.com>
cc: Qinghao Tang <luodalongde@gmail.com>, Liu Ling <liuling-it@360.cn>
Message-ID: <alpine.LFD.2.20.1511301432330.21944@wniryva>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.27
Subject: [oss-security] CVE-2015-7512 Qemu: net: pcnet: buffer overflow in non-loopback
 mode

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

   Hello,

The AMD PC-Net II emulator(hw/net/pcnet.c), while receiving packets from a 
remote host(non-loopback mode), fails to validate the received data size, thus 
resulting in a buffer overflow issue. It could potentially lead to arbitrary 
code execution on the host, with privileges of the Qemu process. It requires 
the guest NIC to have larger MTU limit.

A remote user could use this flaw to crash the guest instance resulting in DoS 
or potentially execute arbitrary code on a remote host with privileges of the 
Qemu process.

Upstream fix:
- -------------
   -> https://lists.gnu.org/archive/html/qemu-devel/2015-11/msg06341.html

CVE-2015-7512 has been assigned to this issue by Red Hat Inc.

This issue was independently discovered by Ling Liu of Qihoo 360 Inc. and 
Jason Wang of Red Hat Inc.

Thank you.
- --
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBAgAGBQJWXBFKAAoJEN0TPTL+WwQfTU8QAKPQfjNgSOI4C/Kh+LCQKQJn
vOt9sAShWauYW/rVrNhMp9j3fV8+h5NX8/l3MkHhHIa/+NiDxdfKQWAdfbQp18iI
rB10ccI95j+vzbcj56klwkW21dPHN1Tm1mvUOTmuB1pBEAmvFQiwcoZHxf8V0hsQ
FzOdG6iyqVDpW07vim3/imOSzdBXLUppth3TioTfZvvVLkHoSanADaAj8ntXm6r2
MqdZU12rWJJaixp8K5lKM8JdBzCCxhvdYTPp6WIXLztB8HvGJAG36wSzzxa/WoTw
GZMB8hpzjUJxWTRM9BQcd84gTeEe2Ow71AqU2cN10pKwgJEiDFHIpoOxnAs39WcA
i9LGS/z+NYx1b/5htT9qYbDt1cpd5T79ZwIcn52gCQaDg8zli9bpdT9Zh7kXIEWD
gTquq6pJXouERaXEIRhj3DcEc3PSRohO9p/hMS7ftJDLc7gJ5FBjr8xTld4CxTrc
AD+s1tHNfMxyxxS9bgnujW1UwuBE6hs1dQsa4zdWqEZf9dPts3IeuB+dfArm0rlk
m1EF9/71a0ug4SH0M4vdqBfBto40kSSZcor4zj+qJWMfJdfRBS8BvKvu9PNxuuc/
4EGKK77ECX5scwom5h02Zt2FHx01K1B+MQCHtnwFnTIM7kS+mbZuN4aj6EO5k+qg
olWvyKLp2Q1RnQWUwJh/
=ht+0
-----END PGP SIGNATURE-----
