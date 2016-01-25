X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["5860" "Monday" "25" "January" "2016" "08:01:08" "+0000" "limingxing" "limingxing@360.cn" "<3626D6E697A150459C44C0E5D8D8D00E0DBD56EB@EX02.corp.qihoo.net>" "124" "[oss-security] Out-of-bounds Read in the libxml2's htmlParseNameComplex() function" "^Date:" nil nil "1" "2016012508:01:08" "[oss-security] Out-of-bounds Read in the libxml2's htmlParseNameComplex() function" (number mark "        limingxing@3 Jan 25  124/5860  " thread-indent "\"[oss-security] Out-of-bounds Read in the libxml2's htmlParseNameComplex() function\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 16117 invoked by uid 550); 25 Jan 2016 08:26:26 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 24575 invoked from network); 25 Jan 2016 08:00:28 -0000
Thread-Topic: Out-of-bounds Read in the libxml2's htmlParseNameComplex()
 function
Thread-Index: AQHRV0YgFlLmcT2iYE2bqtS4pfsBZQ==
Message-ID: <3626D6E697A150459C44C0E5D8D8D00E0DBD56EB@EX02.corp.qihoo.net>
Accept-Language: zh-CN, en-US
Content-Language: zh-CN
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator:
x-originating-ip: [10.199.1.88]
Content-Type: multipart/mixed;
	boundary="_002_3626D6E697A150459C44C0E5D8D8D00E0DBD56EBEX02corpqihoone_"
MIME-Version: 1.0
Date: Mon, 25 Jan 2016 08:01:08 +0000
From: limingxing <limingxing@360.cn>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Out-of-bounds Read in the libxml2's htmlParseNameComplex() function
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>

--_002_3626D6E697A150459C44C0E5D8D8D00E0DBD56EBEX02corpqihoone_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable



Hello,
We find a vulnerability in the way libxml2's htmlParseNameComplex() functio=
n parsed certain xml file.
I was successful in reproducing this issuel in the latest version of libxml=
2(git clone git://git.gnome.org/libxml2).
HTMLparser.c line:2517 :

       return(xmlDictLookup(ctxt->dict, ctxt->input->cur - len, len));

"ctxt->input->cur - len"  cause Out-of-bounds Read.

Bug info:
ERROR: AddressSanitizer: heap-buffer-overflow on address 0x60620000d8ff at =
pc 0x62f90d bp 0x7fffa1464060 sp 0x7fffa1464058
READ of size 1 at 0x60620000d8ff thread T0
    #0 0x62f90c (/home/r/libxml2/testHTML+0x62f90c)
    #1 0x631c40 (/home/r/libxml2/testHTML+0x631c40)
    #2 0x4eb94c (/home/r/libxml2/testHTML+0x4eb94c)
    #3 0x4eb09c (/home/r/libxml2/testHTML+0x4eb09c)
    #4 0x4ecdb4 (/home/r/libxml2/testHTML+0x4ecdb4)
    #5 0x4f993b (/home/r/libxml2/testHTML+0x4f993b)
    #6 0x4ff225 (/home/r/libxml2/testHTML+0x4ff225)
    #7 0x5008d1 (/home/r/libxml2/testHTML+0x5008d1)
    #8 0x50ba97 (/home/r/libxml2/testHTML+0x50ba97)
    #9 0x50bc89 (/home/r/libxml2/testHTML+0x50bc89)
    #10 0x403df6 (/home/r/libxml2/testHTML+0x403df6)
    #11 0x4046a0 (/home/r/libxml2/testHTML+0x4046a0)
    #12 0x7fb1877a5ec4 (/lib/x86_64-linux-gnu/libc-2.19.so+0x21ec4)
    #13 0x4025b8 (/home/r/libxml2/testHTML+0x4025b8)
0x60620000d8ff is located 1 bytes to the left of 4096-byte region [0x606200=
00d900,0x60620000e900)
allocated by thread T0 here:
    #0 0x7fb187e6541a (/usr/lib/x86_64-linux-gnu/libasan.so.0.0.0+0x1541a)
    #1 0x5aa0a2 (/home/r/libxml2/testHTML+0x5aa0a2)
    #2 0x67f4b0 (/home/r/libxml2/testHTML+0x67f4b0)
    #3 0x67f873 (/home/r/libxml2/testHTML+0x67f873)
    #4 0x67ed01 (/home/r/libxml2/testHTML+0x67ed01)
    #5 0x4e47cd (/home/r/libxml2/testHTML+0x4e47cd)
    #6 0x4eb704 (/home/r/libxml2/testHTML+0x4eb704)
    #7 0x4eb09c (/home/r/libxml2/testHTML+0x4eb09c)
    #8 0x4ecdb4 (/home/r/libxml2/testHTML+0x4ecdb4)
    #9 0x4f993b (/home/r/libxml2/testHTML+0x4f993b)
    #10 0x4ff225 (/home/r/libxml2/testHTML+0x4ff225)
    #11 0x5008d1 (/home/r/libxml2/testHTML+0x5008d1)
    #12 0x50ba97 (/home/r/libxml2/testHTML+0x50ba97)
    #13 0x50bc89 (/home/r/libxml2/testHTML+0x50bc89)
    #14 0x403df6 (/home/r/libxml2/testHTML+0x403df6)
    #15 0x4046a0 (/home/r/libxml2/testHTML+0x4046a0)
    #16 0x7fb1877a5ec4 (/lib/x86_64-linux-gnu/libc-2.19.so+0x21ec4)
Shadow bytes around the buggy address:
  0x0c0cbfff9ac0: fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa
  0x0c0cbfff9ad0: fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa
  0x0c0cbfff9ae0: fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa
  0x0c0cbfff9af0: fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa
  0x0c0cbfff9b00: fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa
=3D>0x0c0cbfff9b10: fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa[fa]
  0x0c0cbfff9b20:00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
  0x0c0cbfff9b30: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
  0x0c0cbfff9b40: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
  0x0c0cbfff9b50: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
  0x0c0cbfff9b60: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
Shadow byte legend (one shadow byte represents 8 application bytes):
  Addressable:           00
  Partially addressable: 01 02 03 04 05 06 07=20
  Heap left redzone:     fa
  Heap righ redzone:     fb
  Freed Heap region:     fd
  Stack left redzone:    f1
  Stack mid redzone:     f2
  Stack right redzone:   f3
  Stack partial redzone: f4
  Stack after return:    f5
  Stack use after scope: f8
  Global redzone:        f9
  Global init order:     f6
  Poisoned by user:      f7
  ASan internal:         fe
=3D=3D20154=3D=3D ABORTING


This vulnerability was found by Qihoo 360 Codesafe Team=

--_002_3626D6E697A150459C44C0E5D8D8D00E0DBD56EBEX02corpqihoone_
Content-Type: application/octet-stream; name="libxml_poc.zip"
Content-Description: libxml_poc.zip
Content-Disposition: attachment; filename="libxml_poc.zip"; size=1136;
	creation-date="Mon, 25 Jan 2016 07:59:44 GMT";
	modification-date="Mon, 25 Jan 2016 07:59:44 GMT"
Content-Transfer-Encoding: base64

UEsDBBQAAAAIAChXOUh/5DrZBgAAAAQAAAADAAAAcG9jU0vcnQsAUEsDBBQA
AAAIAE1/OUhO1eWHWgMAAAkNAAAKAAAAcmVhZG1lLnR4dKWXW2/bOBCF3/0r
CPSlwdYxKVM3Ay6Qotl2gXa7cPIWLBakOLSFKqJBSVunv75DXWzVRSVYVvxg
a853KEY8Q2l97TFbrz3KfL5ek/vN5stmRe6UslAUDyJPy/Q72BXZgdjPZaU1
2Ln5H6zOzDdiciIaJaGHgAYexUNFWhNRkn3iTno6porIPX4PtdaC8YDTgJLi
5zN+NNvc370nRpMCByTMOZx5ljsLQpFHOiN4vKKdfUJeL3bmGRZ2kaXy8Jx5
ixKK8uPj509/dJKbhmGOWbKE02GmlrSMhwwHGfPhcRpJyywbhsajDI07htdM
oiQfYZykZXzH6DheymGmlrRMUDPa8/wRxklaJkTGpzRSbJBpJC0T1YwUcTjC
OEnLxA2TRPEYg5LunrqFwOlS6WAQaiQdxGqIB8KthCHISTrIq9esZFEYCh8S
d6OQWRyi4L+Az7M0rw7zbV65k8ncu2XxbWHQxGOo7TzqpUE9X0YjAzvJzews
A2lBMpOIEhRGRL4gQEpDyh2QDHTp4sNpHMxdhVjYppjQp55FTOmb00/Anzcz
kXWO8uWUMQy8hdUpac20IfA5E3jhVWF/O3VRiBwnfkvdH06FOaYXQF8IKrzB
2TeSXgCDUHM5fKsaSS+AeCIKl2MMSnoBDEJQlI0wTtIPIPAwUYNMI+kHEGRI
x4LuJL0AXtpQogkNJZ7QUFwAL+4ojE1oKcyb0FPYckpT4VOaij+lqQRXNZWH
nVDmW9sKhDVVrup2IKvt9qXbnV2O6YEmNJG448YioSuixUWfMwd1tQNc7aCv
dZB0gsP6bd+BXejwpMW/Zxfh0RXFBF3wOTNY4jVc58CvdvCvdggmOPQWP8lg
C7j2X5scSNE7b2GPEYC8LEhExH6fpbjZuX2xjsyNi0b7tCtkBityOupL/EfY
MsUt8pilRoV7BMVmhK0FGwXGHkMcEpR/xMfkZiu2oL6bvDXUoqvZdLs7q0ms
/WkBVKuot+22prD2UIrk66+mmh1rz6k68/SONTfgT6BeHmv7ZnKnqubHmtAl
WKyUlW0uRvvHWlVAWy8Ss3dchLUPmZF9s/bQ8amW4vsEMVa5N4q6Frh/sUkL
kzfPH1XRlYgO3a15EDlSOFQustPN0dB7Z7l792Xz+NffH2Y/AFBLAQIfABQA
AAAIAChXOUh/5DrZBgAAAAQAAAADACQAAAAAAAAAIAAAAAAAAABwb2MKACAA
AAAAAAEAGAALhx8aHFfRAQM3JdIdV9EBAzcl0h1X0QFQSwECHwAUAAAACABN
fzlITtXlh1oDAAAJDQAACgAkAAAAAAAAACAAAAAnAAAAcmVhZG1lLnR4dAoA
IAAAAAAAAQAYAOWYmyxGV9EBPWycHUZX0QE9bJwdRlfRAVBLBQYAAAAAAgAC
ALEAAACpAwAAAAA=

--_002_3626D6E697A150459C44C0E5D8D8D00E0DBD56EBEX02corpqihoone_--
