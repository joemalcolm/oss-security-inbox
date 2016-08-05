X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2337" "Friday" "5" "August" "2016" "13:57:28" "-0300" "Gustavo Grieco" "gustavo.grieco@gmail.com" "<CACn5sdT2CujMX9oP11jmEHxX-BTCP7O-soxSaf+DMb4SxX=z0w@mail.gmail.com>" "60" "[oss-security] Read out-of-bounds parsing bash code in GNU Bash 4.3" "^Date:" nil nil "8" "2016080516:57:28" "[oss-security] Read out-of-bounds parsing bash code in GNU Bash 4.3" (number mark "        gustavo.grie Aug  5   60/2337  " thread-indent "\"[oss-security] Read out-of-bounds parsing bash code in GNU Bash 4.3\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 28411 invoked by uid 550); 5 Aug 2016 16:57:42 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 28381 invoked from network); 5 Aug 2016 16:57:40 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:from:date:message-id:subject:to
         :content-transfer-encoding;
        bh=cJR2rRK09HPzVM9feW/vspXHqR44MzVAV1NQlYeQ+k8=;
        b=F/W+S5R4F5q5fBFkm3uVyIlevBt4zANqSOPTKq3Q9EauZa+utEnJ9rzjxAyHdgremy
         hE8uouNK6fdoY6hQb8Fb1Uw5T9vWvkFQgxacevM654MPKiTu8fhktOI86v4VwdmDBWpI
         Ltmf+jQNnwJEN/DyY5DXEfKMCW02ts2BvJQvUQI+mNjS2Hm4y38BHurLbmVy6oEAcNAy
         jmpBLzS7dlYk/PQTu7OssZ9qL4FUcvne/tggxqRqe248TaJRSooPCf0xyQaCifeJ4/RE
         0d1cpYfZ1VuJ8iGNlgQMqogOVtIQCv9SslGCG0M9pRB0lHOpflAN9aXJc+ZxUCp7yCkx
         ehBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to
         :content-transfer-encoding;
        bh=cJR2rRK09HPzVM9feW/vspXHqR44MzVAV1NQlYeQ+k8=;
        b=J3SZFbaNlqAAEJP2du/8E7SH0mbRrn6D9O/aL+W0znZb42bNWZTO0RJfIrJzY/wthL
         Cgm97T5GQWNqAyG1wD+OZyBF0MGDQgnWXB4JJdusGO0XNxxosvM9vr5YKyRTJaTxbwHK
         dyEOr+aTqthFpmGDudabLx78t5ZGEIhdTuqqBwisblTpxCJItLizv049igQkeGemXVyn
         cBCwyDK3hogjekFCpbOMrdSBy2BkriXCCilrHeJFwa1RKx8YpbfY26/14iU8RxgWQtYd
         OzFje3Plnalwf1NXfjWa6ul6gclQvAUDUElovHs4J1QIO4DFgZdJYgWgTBqnTb08HzLf
         J7Yw==
X-Gm-Message-State: AEkoous1SJ4gLS6FldqQNN9fdkBm6DKauttiTiln0fuspTyhCvtqRFrVt3r35HfAxvNbsxZ7pX9evelI2FsMzQ==
X-Received: by 10.107.128.25 with SMTP id b25mr89496561iod.110.1470416248795;
 Fri, 05 Aug 2016 09:57:28 -0700 (PDT)
MIME-Version: 1.0
Message-ID: <CACn5sdT2CujMX9oP11jmEHxX-BTCP7O-soxSaf+DMb4SxX=z0w@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 5 Aug 2016 13:57:28 -0300
From: Gustavo Grieco <gustavo.grieco@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Read out-of-bounds parsing bash code in GNU Bash 4.3
To: oss-security@lists.openwall.com

Hi,

We recently found a read out-of-bounds parsing bash code in GNU Bash
4.3. I tested this issue in Ubuntu 14.04.3 (x86_64) but other
configurations could be affected. To reproduce:

1. Recompile bash with ASAN:

  $ ./configure --without-bash-malloc CFLAGS=3D"-fsanitize=3Daddress -g
-ggdb"  LDFLAGS=3D"-fsanitize=3Daddress"
  $ make

(using valgrind will *not* expose this issue)

2. Execute:

$ echo 5RzxHp0o0qmZ | base64 -d | ./bash -n

=3D=3D27143=3D=3D ERROR: AddressSanitizer: heap-buffer-overflow on address
0x60040000b8b4 at pc 0x5614be bp 0x7fffffffcad0 sp 0x7fffffffcac8
READ of size 4 at 0x60040000b8b4 thread T0
...

Using gdb we can obtain a clear backtrace:

Program received signal SIGABRT, Aborted.
0x00007ffff468fcc9 in __GI_raise (sig=3Dsig@entry=3D6) at
../nptl/sysdeps/unix/sysv/linux/raise.c:56
56    ../nptl/sysdeps/unix/sysv/linux/raise.c: No existe el archivo o
el directorio.
(gdb) bt
#0  0x00007ffff468fcc9 in __GI_raise (sig=3Dsig@entry=3D6) at
../nptl/sysdeps/unix/sysv/linux/raise.c:56
#1  0x00007ffff46930d8 in __GI_abort () at abort.c:89
#2  0x00007ffff4e66829 in ?? () from /usr/lib/x86_64-linux-gnu/libasan.so.0
#3  0x00007ffff4e5d3ec in ?? () from /usr/lib/x86_64-linux-gnu/libasan.so.0
#4  0x00007ffff4e64012 in ?? () from /usr/lib/x86_64-linux-gnu/libasan.so.0
#5  0x00007ffff4e63121 in __asan_report_error () from
/usr/lib/x86_64-linux-gnu/libasan.so.0
#6  0x00007ffff4e5d704 in __asan_report_load4 () from
/usr/lib/x86_64-linux-gnu/libasan.so.0
#7  0x00000000005614be in ansic_wshouldquote (string=3D0x60040000b8d0
"=D2=A9\231") at strtrans.c:317
#8  0x000000000056152d in ansic_shouldquote (string=3D0x60040000b8d0
"=D2=A9\231") at strtrans.c:344
#9  0x0000000000440192 in report_syntax_error (message=3D0x0) at
/usr/src/local/bash/bash-4.3-patched/parse.y:5763
#10 0x000000000043f7ed in yyerror (msg=3D0x5bb440 "syntax error") at
/usr/src/local/bash/bash-4.3-patched/parse.y:5637
#11 0x000000000042cecd in yyparse () at y.tab.c:3417
#12 0x0000000000423440 in parse_command () at eval.c:238
#13 0x0000000000423547 in read_command () at eval.c:282
#14 0x00000000004231aa in reader_loop () at eval.c:145
#15 0x000000000041f03c in main (argc=3D3, argv=3D0x7fffffffdfa8,
env=3D0x7fffffffdfc8) at shell.c:755

This issue was found using QuickFuzz. Please assign a CVE if suitable.

Regards,
Gustavo.
