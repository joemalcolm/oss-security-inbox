X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["8275" "Thursday" "25" "February" "2016" "14:18:07" "-0300" "Gustavo Grieco" "gustavo.grieco@gmail.com" "<CACn5sdT9ezjtWQdgO0Lv=QRVEyiZ5Ot8wf+4Ch+-8KrgoJqp+w@mail.gmail.com>" "161" "[oss-security] CVE request: reads out-of-bounds with cpio 2.11" nil nil nil "2" "2016022517:18:07" "[oss-security] CVE request: reads out-of-bounds with cpio 2.11" (number mark "U       gustavo.grie Feb 25  161/8275  " thread-indent "\"[oss-security] CVE request: reads out-of-bounds with cpio 2.11\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 24340 invoked by uid 550); 25 Feb 2016 17:18:20 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24312 invoked from network); 25 Feb 2016 17:18:19 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:date:message-id:subject:from:to:content-type;
        bh=IUwl8iW1wKIO6u1Fxp7ZZfpjCwIH/Jg+NED/sERqo+Q=;
        b=ue+sbBWYatW202dnaAaRwTdLICjcheL89oJ5JUDh1GtAyEu3V0j4BktEiZr6uPbtjS
         6EF7zfAaD3LiQVtfMRqjNY1Fqf3qdJBlrzvR9sFRiabVocJYbKwo8BtMmJ7X+69PXkkT
         Q7U2JH2CpSKTswBlSPifABKWsjoRp8/tzKQupZV9W9vwdvQOLFItadG7/gbvzO+CYQgW
         74z3hVTs6fxKRdibiDx94dp9l+3nPA2ZfJ1I75j8448V5PCQpTS36ivk4HoeVYxQs/AG
         apjm1k4m5ariOTTb83aTJdAa6/TQVqKrcUjmagx56C9Dr5BFbgzhpb9apYjW0rcwHvXl
         aXhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:date:message-id:subject:from:to
         :content-type;
        bh=IUwl8iW1wKIO6u1Fxp7ZZfpjCwIH/Jg+NED/sERqo+Q=;
        b=AwZLKlwG46P/PJDd5FaYTZHfBEV9XYxp/6xdjJHsLZOSmeFaopwP8v9TCA+jLJmdww
         UvrLt5F+5xPRt7i8pYrUahEK8CYdwl866flnJ6e1ifj8VvywOahyJW/C0RgCSIXU37jI
         2mekCqR+N023TS18+j5zNfa6vA6IxjJKdX7UpcuVIDKZ+5UZLJueirLotJlV/Qe11CkD
         zNSLnNxRVh4tyy5LwHHQezHSm5MpStfsDeAJY6RxsMSHnYulPaRS2xFRt1BhxwGc4U/3
         ofVXm8NvRp9HWNqTCC03PmKRofulvPTAQ8IDhRg5vqFlLuMAtSG8eJyvHCmeInsngNKV
         e6ww==
X-Gm-Message-State: AG10YORIAz3rSTfRajAvYPtV7e2YesUNGIxDFsw9WcHNaKsi8JLgcUISmSUqAYZX/oYPnT+/t8V6uddNzrR7hA==
MIME-Version: 1.0
X-Received: by 10.25.212.197 with SMTP id l188mr17189210lfg.118.1456420688304;
 Thu, 25 Feb 2016 09:18:08 -0800 (PST)
Date: Thu, 25 Feb 2016 14:18:07 -0300
Message-ID: <CACn5sdT9ezjtWQdgO0Lv=QRVEyiZ5Ot8wf+4Ch+-8KrgoJqp+w@mail.gmail.com>
From: Gustavo Grieco <gustavo.grieco@gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/mixed; boundary=001a11419040c5d955052c9b5db0
Subject: [oss-security] CVE request: reads out-of-bounds with cpio 2.11

--001a11419040c5d955052c9b5db0
Content-Type: multipart/alternative; boundary=001a11419040c5d950052c9b5dae

--001a11419040c5d950052c9b5dae
Content-Type: text/plain; charset=UTF-8

Hello,

Two reads out-of-bounds in cpio 2.11 were found in the parsing of cpio
files (other version are probably affected).  Find attached a test case to
reproduce them. The ASAN report of the first one is here:

$ ./cpio -i < overflow.cpio

./cpio: warning: skipped 8 bytes of junk
=================================================================
==31838==ERROR: AddressSanitizer: heap-buffer-overflow on address
0x60200000edb2 at pc 0x7fb81910ba28 bp 0x7fffa1c286d0 sp 0x7fffa1c27e80
READ of size 2 at 0x60200000edb2 thread T0
    #0 0x7fb81910ba27 in strchr
(/usr/lib/x86_64-linux-gnu/libasan.so.2+0x6ea27)
    #1 0x407174 in path_contains_symlink
/home/vagrant/repos/cpio-2.11+dfsg/src/copyin.c:718
    #2 0x40bce0 in process_copy_in
/home/vagrant/repos/cpio-2.11+dfsg/src/copyin.c:1524
    #3 0x4165c6 in main /home/vagrant/repos/cpio-2.11+dfsg/src/main.c:746
    #4 0x7fb818cf9ec4 in __libc_start_main
(/lib/x86_64-linux-gnu/libc.so.6+0x21ec4)
    #5 0x403408  (/home/vagrant/repos/cpio-2.11+dfsg/src/cpio+0x403408)

0x60200000edb2 is located 0 bytes to the right of 2-byte region
[0x60200000edb0,0x60200000edb2)
allocated by thread T0 here:
    #0 0x7fb81913176a in realloc
(/usr/lib/x86_64-linux-gnu/libasan.so.2+0x9476a)
    #1 0x43da22 in xrealloc
/home/vagrant/repos/cpio-2.11+dfsg/gnu/xmalloc.c:59
    #2 0x40b5ab in process_copy_in
/home/vagrant/repos/cpio-2.11+dfsg/src/copyin.c:1437
    #3 0x4165c6 in main /home/vagrant/repos/cpio-2.11+dfsg/src/main.c:746
    #4 0x7fb818cf9ec4 in __libc_start_main
(/lib/x86_64-linux-gnu/libc.so.6+0x21ec4)

and the second one is here:

$ ./cpio -t < overflow.cpio

./cpio: warning: skipped 8 bytes of junk
=================================================================
==3962==ERROR: AddressSanitizer: heap-buffer-overflow on address
0x60200000edb2 at pc 0x7f705ab831b1 bp 0x7ffc620c3f70 sp 0x7ffc620c3720
READ of size 3 at 0x60200000edb2 thread T0
    #0 0x7f705ab831b0  (/usr/lib/x86_64-linux-gnu/libasan.so.2+0x5e1b0)
    #1 0x7f705ab837b7 in __interceptor_vprintf
(/usr/lib/x86_64-linux-gnu/libasan.so.2+0x5e7b7)
    #2 0x7f705ab838a9 in __interceptor_printf
(/usr/lib/x86_64-linux-gnu/libasan.so.2+0x5e8a9)
    #3 0x403d55 in list_file
/home/vagrant/repos/cpio-2.11+dfsg/src/copyin.c:180
    #4 0x40b958 in process_copy_in
/home/vagrant/repos/cpio-2.11+dfsg/src/copyin.c:1478
    #5 0x4165c6 in main /home/vagrant/repos/cpio-2.11+dfsg/src/main.c:746
    #6 0x7f705a781ec4 in __libc_start_main
(/lib/x86_64-linux-gnu/libc.so.6+0x21ec4)
    #7 0x403408  (/home/vagrant/repos/cpio-2.11+dfsg/src/cpio+0x403408)

0x60200000edb2 is located 0 bytes to the right of 2-byte region
[0x60200000edb0,0x60200000edb2)
allocated by thread T0 here:
    #0 0x7f705abb976a in realloc
(/usr/lib/x86_64-linux-gnu/libasan.so.2+0x9476a)
    #1 0x43da22 in xrealloc
/home/vagrant/repos/cpio-2.11+dfsg/gnu/xmalloc.c:59
    #2 0x40b5ab in process_copy_in
/home/vagrant/repos/cpio-2.11+dfsg/src/copyin.c:1437
    #3 0x4165c6 in main /home/vagrant/repos/cpio-2.11+dfsg/src/main.c:746
    #4 0x7f705a781ec4 in __libc_start_main
(/lib/x86_64-linux-gnu/libc.so.6+0x21ec4)

These issues were found using QuickFuzz.

Regards,
Gustavo.

--001a11419040c5d950052c9b5dae
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div>Hello,<br><br>Two reads out-of-bounds =
in cpio 2.11 were found in the parsing of cpio files (other version are pro=
bably affected).=C2=A0 Find attached a test case to reproduce them. The ASA=
N report of the first one is here:<br><br>$ ./cpio -i &lt; overflow.cpio<br=
><br>./cpio: warning: skipped 8 bytes of junk<br>=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D<br>=3D=3D31838=3D=3DERROR: AddressSanitizer: heap-buf=
fer-overflow on address 0x60200000edb2 at pc 0x7fb81910ba28 bp 0x7fffa1c286=
d0 sp 0x7fffa1c27e80<br>READ of size 2 at 0x60200000edb2 thread T0<br>=C2=
=A0 =C2=A0 #0 0x7fb81910ba27 in strchr (/usr/lib/x86_64-linux-gnu/libasan.s=
o.2+0x6ea27)<br>=C2=A0 =C2=A0 #1 0x407174 in path_contains_symlink /home/va=
grant/repos/cpio-2.11+dfsg/src/copyin.c:718<br>=C2=A0 =C2=A0 #2 0x40bce0 in=
 process_copy_in /home/vagrant/repos/cpio-2.11+dfsg/src/copyin.c:1524<br>=
=C2=A0 =C2=A0 #3 0x4165c6 in main /home/vagrant/repos/cpio-2.11+dfsg/src/ma=
in.c:746<br>=C2=A0 =C2=A0 #4 0x7fb818cf9ec4 in __libc_start_main (/lib/x86_=
64-linux-gnu/libc.so.6+0x21ec4)<br>=C2=A0 =C2=A0 #5 0x403408 =C2=A0(/home/v=
agrant/repos/cpio-2.11+dfsg/src/cpio+0x403408)<br><br>0x60200000edb2 is loc=
ated 0 bytes to the right of 2-byte region [0x60200000edb0,0x60200000edb2)<=
br>allocated by thread T0 here:<br>=C2=A0 =C2=A0 #0 0x7fb81913176a in reall=
oc (/usr/lib/x86_64-linux-gnu/libasan.so.2+0x9476a)<br>=C2=A0 =C2=A0 #1 0x4=
3da22 in xrealloc /home/vagrant/repos/cpio-2.11+dfsg/gnu/xmalloc.c:59<br>=
=C2=A0 =C2=A0 #2 0x40b5ab in process_copy_in /home/vagrant/repos/cpio-2.11+=
dfsg/src/copyin.c:1437<br>=C2=A0 =C2=A0 #3 0x4165c6 in main /home/vagrant/r=
epos/cpio-2.11+dfsg/src/main.c:746<br>=C2=A0 =C2=A0 #4 0x7fb818cf9ec4 in __=
libc_start_main (/lib/x86_64-linux-gnu/libc.so.6+0x21ec4)<br><br></div>and =
the second one is here:<br><br>$ ./cpio -t &lt; overflow.cpio <br><br>./cpi=
o: warning: skipped 8 bytes of junk<br>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D<br>=3D=3D3962=3D=3DERROR: AddressSanitizer: heap-buffer-overflow =
on address 0x60200000edb2 at pc 0x7f705ab831b1 bp 0x7ffc620c3f70 sp 0x7ffc6=
20c3720<br>READ of size 3 at 0x60200000edb2 thread T0<br>=C2=A0=C2=A0=C2=A0=
 #0 0x7f705ab831b0=C2=A0 (/usr/lib/x86_64-linux-gnu/libasan.so.2+0x5e1b0)<b=
r>=C2=A0=C2=A0=C2=A0 #1 0x7f705ab837b7 in __interceptor_vprintf (/usr/lib/x=
86_64-linux-gnu/libasan.so.2+0x5e7b7)<br>=C2=A0=C2=A0=C2=A0 #2 0x7f705ab838=
a9 in __interceptor_printf (/usr/lib/x86_64-linux-gnu/libasan.so.2+0x5e8a9)=
<br>=C2=A0=C2=A0=C2=A0 #3 0x403d55 in list_file /home/vagrant/repos/cpio-2.=
11+dfsg/src/copyin.c:180<br>=C2=A0=C2=A0=C2=A0 #4 0x40b958 in process_copy_=
in /home/vagrant/repos/cpio-2.11+dfsg/src/copyin.c:1478<br>=C2=A0=C2=A0=C2=
=A0 #5 0x4165c6 in main /home/vagrant/repos/cpio-2.11+dfsg/src/main.c:746<b=
r>=C2=A0=C2=A0=C2=A0 #6 0x7f705a781ec4 in __libc_start_main (/lib/x86_64-li=
nux-gnu/libc.so.6+0x21ec4)<br>=C2=A0=C2=A0=C2=A0 #7 0x403408=C2=A0 (/home/v=
agrant/repos/cpio-2.11+dfsg/src/cpio+0x403408)<br><br>0x60200000edb2 is loc=
ated 0 bytes to the right of 2-byte region [0x60200000edb0,0x60200000edb2)<=
br>allocated by thread T0 here:<br>=C2=A0=C2=A0=C2=A0 #0 0x7f705abb976a in =
realloc (/usr/lib/x86_64-linux-gnu/libasan.so.2+0x9476a)<br>=C2=A0=C2=A0=C2=
=A0 #1 0x43da22 in xrealloc /home/vagrant/repos/cpio-2.11+dfsg/gnu/xmalloc.=
c:59<br>=C2=A0=C2=A0=C2=A0 #2 0x40b5ab in process_copy_in /home/vagrant/rep=
os/cpio-2.11+dfsg/src/copyin.c:1437<br>=C2=A0=C2=A0=C2=A0 #3 0x4165c6 in ma=
in /home/vagrant/repos/cpio-2.11+dfsg/src/main.c:746<br>=C2=A0=C2=A0=C2=A0 =
#4 0x7f705a781ec4 in __libc_start_main (/lib/x86_64-linux-gnu/libc.so.6+0x2=
1ec4)<br><br></div>These issues were found using QuickFuzz.<br><br></div>Re=
gards,<br></div>Gustavo.<br><div><div><div><div><br></div></div></div></div=
></div>

--001a11419040c5d950052c9b5dae--

--001a11419040c5d955052c9b5db0
Content-Type: application/x-cpio; name="overflow.cpio"
Content-Disposition: attachment; filename="overflow.cpio"
Content-Transfer-Encoding: base64
X-Attachment-Id: f_il2jg4rh0

AAAAAAAAAAYwNzA3MDIAAAAAAAAACDAwMDAwMDAwAAAAAAAAAAgwMDAwMDAw
MAAAAAAAAAAIMDAwMDAwMDAAAAAAAAAACDAwMDAwMDAwAAAAAAAAAAgwMDAw
MDAwMAAAAAAAAAAIMDAwMDAwMDAAAAAAAAAACDAwMDAwMDAwAAAAAAAAAAgw
MDAwMDAwMAAAAAAAAAAIMDAwMDAwMDAAAAAAAAAACNwwMDAwMDAwAAAAAAAA
AAgwMDAwMDAwMAAAAAAAAAAIMDAwMDAwMGIAAAAAAAAACDAwMDAwMDAwAAAA
AAAAAApUUkFJTEVSISEhAAAAAAAAAAEAAAAAAAAAAAMAAAAAAAAAAAAAAH1I
97oBfBsOxfB/osmk

--001a11419040c5d955052c9b5db0--
