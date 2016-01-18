X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["7763" "Monday" "18" "January" "2016" "10:33:40" "+0000" "limingxing" "limingxing@360.cn" "<3626D6E697A150459C44C0E5D8D8D00E0DBD531F@EX02.corp.qihoo.net>" "160" "[oss-security] Out-of-bounds Read in the OpenJpeg's opj_j2k_update_image_data and opj_tgt_reset function" nil nil nil "1" "2016011810:33:40" "[oss-security] Out-of-bounds Read in the OpenJpeg's opj_j2k_update_image_data and opj_tgt_reset function" (number mark "U       limingxing@3 Jan 18  160/7763  " thread-indent "\"[oss-security] Out-of-bounds Read in the OpenJpeg's opj_j2k_update_image_data and opj_tgt_reset function\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 20231 invoked by uid 550); 18 Jan 2016 11:27:31 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11987 invoked from network); 18 Jan 2016 10:33:54 -0000
From: limingxing <limingxing@360.cn>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Thread-Topic: Out-of-bounds Read in the OpenJpeg's opj_j2k_update_image_data
 and opj_tgt_reset function
Thread-Index: AQHRUdpKZCeZI29g0kqNbGa1t+oYkQ==
Date: Mon, 18 Jan 2016 10:33:40 +0000
Message-ID: <3626D6E697A150459C44C0E5D8D8D00E0DBD531F@EX02.corp.qihoo.net>
Accept-Language: zh-CN, en-US
Content-Language: zh-CN
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator:
x-originating-ip: [10.199.1.198]
Content-Type: multipart/mixed;
	boundary="_002_3626D6E697A150459C44C0E5D8D8D00E0DBD531FEX02corpqihoone_"
MIME-Version: 1.0
Subject: [oss-security] Out-of-bounds Read in the OpenJpeg's opj_j2k_update_image_data and
 opj_tgt_reset function

--_002_3626D6E697A150459C44C0E5D8D8D00E0DBD531FEX02corpqihoone_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable


Hello,
We find two vulnerabilities in the way OpenJpeg's opj_j2k_update_image_data=
 and opj_tgt_reset function  parsed certain JPEG 2000 image files.
I was successful in reproducing these issues in the latest version of openj=
peg  (https://github.com/uclouvain/openjpeg, 2016.1.18).

The crash info about opj_j2k_update_image_data function was:
=3D=3D1630=3D=3DERROR: AddressSanitizer: heap-buffer-overflow on address 0x=
b48010d8 at pc 0x8184862 bp 0xbfff8e58 sp 0xbfff8e50
READ of size 4 at 0xb48010d8 thread T0
=3D=3D1630=3D=3DWARNING: Trying to symbolize code, but external symbolizer =
is not initialized!
    #0 0x8184861 (/home/r/fuzz3/openjpeg-master/bin/opj_decompress+0x818486=
1)

0xb48010d8 is located 0 bytes to the right of 56-byte region [0xb48010a0,0x=
b48010d8)
allocated by thread T0 here:
    #0 0x80b5f8e (/home/r/fuzz3/openjpeg-master/bin/opj_decompress+0x80b5f8=
e)
    #1 0x81ba220 (/home/r/fuzz3/openjpeg-master/bin/opj_decompress+0x81ba22=
0)
    #2 0x8273db1 (/home/r/fuzz3/openjpeg-master/bin/opj_decompress+0x8273db=
1)
    #3 0x827c023 (/home/r/fuzz3/openjpeg-master/bin/opj_decompress+0x827c02=
3)
    #4 0x81e0709 (/home/r/fuzz3/openjpeg-master/bin/opj_decompress+0x81e070=
9)
    #5 0x8212cba (/home/r/fuzz3/openjpeg-master/bin/opj_decompress+0x8212cb=
a)
    #6 0x82cc849 (/home/r/fuzz3/openjpeg-master/bin/opj_decompress+0x82cc84=
9)
    #7 0x81ac9b6 (/home/r/fuzz3/openjpeg-master/bin/opj_decompress+0x81ac9b=
6)
    #8 0x80dc56e (/home/r/fuzz3/openjpeg-master/bin/opj_decompress+0x80dc56=
e)
    #9 0xb7da2a82 (/lib/i386-linux-gnu/libc.so.6+0x19a82)

SUMMARY: AddressSanitizer: heap-buffer-overflow ??:0 ??
Shadow bytes around the buggy address:
  0x369001c0: fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa
  0x369001d0: fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa
  0x369001e0: fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa
  0x369001f0: fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa
  0x36900200: fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa
=3D>0x36900210: fa fa fa fa 00 00 00 00 00 00 00[fa]fa fa fa fa
  0x36900220: 00 00 00 00 00 00 00 fa fa fa fa fa 00 00 00 00
  0x36900230: 00 00 00 fa fa fa fa fa 00 00 00 00 00 00 00 fa
  0x36900240: fa fa fa fa 00 00 00 00 00 00 00 fa fa fa fa fa
  0x36900250: 00 00 00 00 00 00 00 fa fa fa fa fa 00 00 00 00
  0x36900260: 00 00 00 fa fa fa fa fa 00 00 00 00 00 00 00 fa
Shadow byte legend (one shadow byte represents 8 application bytes):
  Addressable:           00
  Partially addressable: 01 02 03 04 05 06 07=20
  Heap left redzone:     fa
  Heap right redzone:    fb
  Freed heap region:     fd
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
=3D=3D1630=3D=3DABORTING
[Inferior 1 (process 1630) exited with code 01]

The crash info about opj_tgt_reset function was:
ASAN:SIGSEGV
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
=3D=3D1666=3D=3DERROR: AddressSanitizer: SEGV on unknown address 0x00008109=
 (pc 0x083b06c7 sp 0xbfa06420 bp 0xbfa065b8 T0)
=3D=3D1666=3D=3DWARNING: Trying to symbolize code, but external symbolizer =
is not initialized!
    #0 0x83b06c6 (/home/r/fuzz3/openjpeg-master/bin/opj_decompress+0x83b06c=
6)

AddressSanitizer can not provide additional info.
SUMMARY: AddressSanitizer: SEGV ??:0 ??
=3D=3D1666=3D=3DABORTING

These vulnerabilities ware found by Qihoo 360 Codesafe Team=

--_002_3626D6E697A150459C44C0E5D8D8D00E0DBD531FEX02corpqihoone_
Content-Type: application/octet-stream; name="openjpeg_poc.zip"
Content-Description: openjpeg_poc.zip
Content-Disposition: attachment; filename="openjpeg_poc.zip"; size=2560;
	creation-date="Mon, 18 Jan 2016 10:27:58 GMT";
	modification-date="Mon, 18 Jan 2016 10:27:58 GMT"
Content-Transfer-Encoding: base64

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

--_002_3626D6E697A150459C44C0E5D8D8D00E0DBD531FEX02corpqihoone_--
