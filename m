X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["8645" "Tuesday" "19" "January" "2016" "13:45:05" "-0300" "Gustavo Grieco" "gustavo.grieco@gmail.com" "<CACn5sdTx4m+mrn6i59Cz4iiAzpbxg=3Qrp6yHxyoaZp8YrS=ZA@mail.gmail.com>" "164" "[oss-security] CVE request: out-of-bounds write with cpio 2.11" "^Date:" nil nil "1" "2016011916:45:05" "[oss-security] CVE request: out-of-bounds write with cpio 2.11" (number mark "        gustavo.grie Jan 19  164/8645  " thread-indent "\"[oss-security] CVE request: out-of-bounds write with cpio 2.11\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 7832 invoked by uid 550); 19 Jan 2016 16:45:17 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 7812 invoked from network); 19 Jan 2016 16:45:16 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:date:message-id:subject:from:to:content-type;
        bh=VAmZYTrbwOGs+junn3b7wqVOLnV2xgK1C9JAINCpl60=;
        b=Thup3e/Mv2TaW9dclUecJmwBXiekFvq/xv9ePGiGRbYw05DNKH1WJQeP87/OwgLPkF
         4o2Qrt7Wiq797D+ImO5aVje1siOJSkf1KsyACu1L3g14TXUac8xj5RmYYdw53jvJgQJX
         sJ0Iz1Nci7R2qA06Rv4RWpjv+a0GToGbcvVVeb5W6Fl+lo0biVQ1oLVaG34IK6XS8U73
         vipurZUxGefc47O1xTt8FKt8/SzXrJ+zNjxJP2ZNi0KU6ZbjiCwTNU0ATV0Xt3AyUdJW
         uAzPCbrBQ8W1L9xoTDases5EwbMInp7qiAggmiDH5Ic1JAN9RUTvRnZhDjn3afXgFCui
         5VeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:date:message-id:subject:from:to
         :content-type;
        bh=VAmZYTrbwOGs+junn3b7wqVOLnV2xgK1C9JAINCpl60=;
        b=dL028YNmUuxjEKgoy3B/0KG6jZjtEi3k5rqUpZ9eOSCQlvPV4UzJwzi4WtQ0tcxqbR
         n5raVWNkEi4Jxqq2gX4KFjnexRMjKTqcThdjGYLDF+ZLDqBskmfJ1ZH5MECrHwOwbIHE
         qdzSigicIQNnM84EOxOICnklCATzKjI98MBRp8cZUBEP3LiWyaIkTPw+IXRes8WuFMeG
         Z7qyslLyCBgsvy9k77AtRAxMVXxJg3hZaCeNZwb73QcfhIM9x4s604RrbVTKtgNVnjcL
         niOyFY/zP4chvG5VnsGl86l/QTozv0QSovQnFnErPfrTX6MMpry+BY3MJEyXFa4rOBkz
         kxwg==
X-Gm-Message-State: ALoCoQneqwdE9MfoHf+u8XLc+sqmN6tBlHHbItkix7SzeQduOEKHm+PM1FFFcUGQJOD7iSXdem/nofCwJl7FGACuSXz03Znn3w==
MIME-Version: 1.0
X-Received: by 10.25.207.65 with SMTP id f62mr9189833lfg.73.1453221905426;
 Tue, 19 Jan 2016 08:45:05 -0800 (PST)
Message-ID: <CACn5sdTx4m+mrn6i59Cz4iiAzpbxg=3Qrp6yHxyoaZp8YrS=ZA@mail.gmail.com>
Content-Type: multipart/mixed; boundary=001a1141963c7476f00529b2979a
Date: Tue, 19 Jan 2016 13:45:05 -0300
From: Gustavo Grieco <gustavo.grieco@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE request: out-of-bounds write with cpio 2.11
To: oss-security@lists.openwall.com

--001a1141963c7476f00529b2979a
Content-Type: multipart/alternative; boundary=001a1141963c7476e90529b29798

--001a1141963c7476e90529b29798
Content-Type: text/plain; charset=UTF-8

Hello,

An out-of-bounds write in cpio 2.11 was found in the parsing of cpio files
(other version are probably affected).  Find attached a test case to
reproduce it. The ASAN report is here:

=================================================================
==5480==ERROR: AddressSanitizer: heap-buffer-overflow on address
0x60200000edd0 at pc 0x41f187 bp 0x7fffffffdc50 sp 0x7fffffffdc48
WRITE of size 2 at 0x60200000edd0 thread T0
    #0 0x41f186 in cpio_safer_name_suffix
/home/g/Codigo/cpio-2.11+dfsg/src/util.c:1392
    #1 0x40b3d7 in process_copy_in
/home/g/Codigo/cpio-2.11+dfsg/src/copyin.c:1391
    #2 0x416754 in main /home/g/Codigo/cpio-2.11+dfsg/src/main.c:739
    #3 0x7ffff6b5eec4 in __libc_start_main
(/lib/x86_64-linux-gnu/libc.so.6+0x21ec4)
    #4 0x403408 (/home/g/Codigo/cpio-2.11+dfsg/src/cpio+0x403408)

0x60200000edd1 is located 0 bytes to the right of 1-byte region
[0x60200000edd0,0x60200000edd1)
allocated by thread T0 here:
    #0 0x7ffff6f567ef in __interceptor_malloc
(/usr/lib/x86_64-linux-gnu/libasan.so.1+0x547ef)
    #1 0x440f3e in xmalloc /home/g/Codigo/cpio-2.11+dfsg/gnu/xmalloc.c:47
    #2 0x409c74 in read_in_new_ascii
/home/g/Codigo/cpio-2.11+dfsg/src/copyin.c:1166
    #3 0x408a26 in read_in_header
/home/g/Codigo/cpio-2.11+dfsg/src/copyin.c:1043
    #4 0x40b354 in process_copy_in
/home/g/Codigo/cpio-2.11+dfsg/src/copyin.c:1361
    #5 0x416754 in main /home/g/Codigo/cpio-2.11+dfsg/src/main.c:739
    #6 0x7ffff6b5eec4 in __libc_start_main
(/lib/x86_64-linux-gnu/libc.so.6+0x21ec4)

SUMMARY: AddressSanitizer: heap-buffer-overflow
/home/g/Codigo/cpio-2.11+dfsg/src/util.c:1392 cpio_safer_name_suffix
Shadow bytes around the buggy address:
  0x0c047fff9d60: fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa
  0x0c047fff9d70: fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa
  0x0c047fff9d80: fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa
  0x0c047fff9d90: fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa
  0x0c047fff9da0: fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa
=>0x0c047fff9db0: fa fa fa fa fa fa fa fa fa fa[01]fa fa fa 06 fa
  0x0c047fff9dc0: fa fa 05 fa fa fa 00 04 fa fa 00 04 fa fa 00 04
  0x0c047fff9dd0: fa fa 00 04 fa fa 00 04 fa fa 00 04 fa fa 00 04
  0x0c047fff9de0: fa fa 00 04 fa fa 00 04 fa fa 00 04 fa fa 00 04
  0x0c047fff9df0: fa fa 00 04 fa fa 00 04 fa fa 00 04 fa fa fd fa
  0x0c047fff9e00: fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa
Shadow byte legend (one shadow byte represents 8 application bytes):
  Addressable:           00
  Partially addressable: 01 02 03 04 05 06 07
  Heap left redzone:       fa
  Heap right redzone:      fb
  Freed heap region:       fd
  Stack left redzone:      f1
  Stack mid redzone:       f2
  Stack right redzone:     f3
  Stack partial redzone:   f4
  Stack after return:      f5
  Stack use after scope:   f8
  Global redzone:          f9
  Global init order:       f6
  Poisoned by user:        f7
  Contiguous container OOB:fc
  ASan internal:           fe
==5480==ABORTING


This issue was found using QuickFuzz.

Regards,
Gus.

--001a1141963c7476e90529b29798
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>Hello,<br><br></div>An out-of-bounds write in cp=
io 2.11 was found in the parsing of cpio files (other version are probably =
affected).=C2=A0 Find attached a test case to reproduce it. The ASAN report=
 is here:<br><br></div><div>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
<br>=3D=3D5480=3D=3DERROR: AddressSanitizer: heap-buffer-overflow on addres=
s 0x60200000edd0 at pc 0x41f187 bp 0x7fffffffdc50 sp 0x7fffffffdc48<br>WRIT=
E of size 2 at 0x60200000edd0 thread T0<br>=C2=A0=C2=A0=C2=A0 #0 0x41f186 i=
n cpio_safer_name_suffix /home/g/Codigo/cpio-2.11+dfsg/src/util.c:1392<br>=
=C2=A0=C2=A0=C2=A0 #1 0x40b3d7 in process_copy_in /home/g/Codigo/cpio-2.11+=
dfsg/src/copyin.c:1391<br>=C2=A0=C2=A0=C2=A0 #2 0x416754 in main /home/g/Co=
digo/cpio-2.11+dfsg/src/main.c:739<br>=C2=A0=C2=A0=C2=A0 #3 0x7ffff6b5eec4 =
in __libc_start_main (/lib/x86_64-linux-gnu/libc.so.6+0x21ec4)<br>=C2=A0=C2=
=A0=C2=A0 #4 0x403408 (/home/g/Codigo/cpio-2.11+dfsg/src/cpio+0x403408)<br>=
<br>0x60200000edd1 is located 0 bytes to the right of 1-byte region [0x6020=
0000edd0,0x60200000edd1)<br>allocated by thread T0 here:<br>=C2=A0=C2=A0=C2=
=A0 #0 0x7ffff6f567ef in __interceptor_malloc (/usr/lib/x86_64-linux-gnu/li=
basan.so.1+0x547ef)<br>=C2=A0=C2=A0=C2=A0 #1 0x440f3e in xmalloc /home/g/Co=
digo/cpio-2.11+dfsg/gnu/xmalloc.c:47<br>=C2=A0=C2=A0=C2=A0 #2 0x409c74 in r=
ead_in_new_ascii /home/g/Codigo/cpio-2.11+dfsg/src/copyin.c:1166<br>=C2=A0=
=C2=A0=C2=A0 #3 0x408a26 in read_in_header /home/g/Codigo/cpio-2.11+dfsg/sr=
c/copyin.c:1043<br>=C2=A0=C2=A0=C2=A0 #4 0x40b354 in process_copy_in /home/=
g/Codigo/cpio-2.11+dfsg/src/copyin.c:1361<br>=C2=A0=C2=A0=C2=A0 #5 0x416754=
 in main /home/g/Codigo/cpio-2.11+dfsg/src/main.c:739<br>=C2=A0=C2=A0=C2=A0=
 #6 0x7ffff6b5eec4 in __libc_start_main (/lib/x86_64-linux-gnu/libc.so.6+0x=
21ec4)<br><br>SUMMARY: AddressSanitizer: heap-buffer-overflow /home/g/Codig=
o/cpio-2.11+dfsg/src/util.c:1392 cpio_safer_name_suffix<br>Shadow bytes aro=
und the buggy address:<br>=C2=A0 0x0c047fff9d60: fa fa fa fa fa fa fa fa fa=
 fa fa fa fa fa fa fa<br>=C2=A0 0x0c047fff9d70: fa fa fa fa fa fa fa fa fa =
fa fa fa fa fa fa fa<br>=C2=A0 0x0c047fff9d80: fa fa fa fa fa fa fa fa fa f=
a fa fa fa fa fa fa<br>=C2=A0 0x0c047fff9d90: fa fa fa fa fa fa fa fa fa fa=
 fa fa fa fa fa fa<br>=C2=A0 0x0c047fff9da0: fa fa fa fa fa fa fa fa fa fa =
fa fa fa fa fa fa<br>=3D&gt;0x0c047fff9db0: fa fa fa fa fa fa fa fa fa fa[0=
1]fa fa fa 06 fa<br>=C2=A0 0x0c047fff9dc0: fa fa 05 fa fa fa 00 04 fa fa 00=
 04 fa fa 00 04<br>=C2=A0 0x0c047fff9dd0: fa fa 00 04 fa fa 00 04 fa fa 00 =
04 fa fa 00 04<br>=C2=A0 0x0c047fff9de0: fa fa 00 04 fa fa 00 04 fa fa 00 0=
4 fa fa 00 04<br>=C2=A0 0x0c047fff9df0: fa fa 00 04 fa fa 00 04 fa fa 00 04=
 fa fa fd fa<br>=C2=A0 0x0c047fff9e00: fa fa fa fa fa fa fa fa fa fa fa fa =
fa fa fa fa<br>Shadow byte legend (one shadow byte represents 8 application=
 bytes):<br>=C2=A0 Addressable:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 00<br>=C2=A0 Partially addressable: 01 02 03 04 05 06 07=
 <br>=C2=A0 Heap left redzone:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 fa<br>=
=C2=A0 Heap right redzone:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 fb<br>=C2=A0 Freed=
 heap region:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 fd<br>=C2=A0 Stack left r=
edzone:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 f1<br>=C2=A0 Stack mid redzone:=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 f2<br>=C2=A0 Stack right redzone:=C2=A0=C2=
=A0=C2=A0=C2=A0 f3<br>=C2=A0 Stack partial redzone:=C2=A0=C2=A0 f4<br>=C2=
=A0 Stack after return:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 f5<br>=C2=A0 Stack us=
e after scope:=C2=A0=C2=A0 f8<br>=C2=A0 Global redzone:=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 f9<br>=C2=A0 Global init order:=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 f6<br>=C2=A0 Poisoned by user:=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 f7<br>=C2=A0 Contiguous container OOB:fc<br>=
=C2=A0 ASan internal:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 fe<br>=3D=3D5480=3D=3DABORTING<br><br><br></div><div>This issue was =
found using QuickFuzz.<br><br></div><div>Regards,<br></div><div>Gus.<br></d=
iv><div><br></div></div>

--001a1141963c7476e90529b29798--

--001a1141963c7476f00529b2979a
Content-Type: application/x-cpio; name="overflow.cpio"
Content-Disposition: attachment; filename="overflow.cpio"
Content-Transfer-Encoding: base64
X-Attachment-Id: f_ijlmv7jg0

AAAAAAAAAAYwNzA3MDIAAAAAAAAACDAwMDAwMDAyAAAAAAAAAAgwMDAwMDAw
MgAAAAAAAAAIMDAwMDAwMDEAAAAAAAAACDAwMDAwMDAyAAAAAAAAAAgwMDAw
MDAwMQAAAAAAAAAIMDAwMDAwMDEAAAAwMDIAAAAAAAAACDAwMDAwMDAxAAAA
AAAAAAgwMDAwMDAwMQAAAAAAAAAIMDAwMDAwMDAAAAAAAAAACDAwMDAwMDAy
AAAAAAAAAAgwMDAwMDAwMQAAAAAAAAAIMDAwMDAwMDEAAAAAAAAACDAwMDAw
MDAwAAAAAAAAAAgwMDAwMDAwMQAAAAAAAAAIMDAwMDAwMDAAAAAAAAAAAAAA
AAAAAAABAAAAMDAwMDAwMAAAAAAAAAAIMDAwMDAwMDAAAAAAAAAACDAwMDAw
MDAwAAAAAAAAAAgwMDAwMDAwMAAAAAAAAAAIMDAwMDAwMDAAAAAAAAAACDAw
MDAwMDAwAAAAAAAAAAgwMDAwMDAwMAAAAAAAAAAIMDAwMDAwMDAAAAAAAAAA
CDAwMDAwMDAwAAAAAAAAAAgwMDAwMDAwMAAAAAAAAAAIMDAwMDAwMDAAAAAA
AAAACDAwMDAwMDBiAAAAAAAAAAgwMDAwMDAwMAAAAAAAAAAKVFJBSUxFUiEh
IQAAAAAAAAABAAAAAAAAAAADAAAAAAAAAAAAAAA=

--001a1141963c7476f00529b2979a--
