X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4557" "Wednesday" "19" "September" "2018" "23:47:00" "+0530" "Dhiraj Mishra" "mishra.dhiraj95@gmail.com" "<CAG8b5tQvMF46=bzGDZR6OGzrMqMx7=ktZR1iOX=DJTpZzdi83w@mail.gmail.com>" "120" "[oss-security] tdesktop 1.3.14: index out of range" nil nil nil "9" "2018091918:17:00" "[oss-security] tdesktop 1.3.14: index out of range" (number mark "U       mishra.dhira Sep 19  120/4557  " thread-indent "\"[oss-security] tdesktop 1.3.14: index out of range\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 10111 invoked by uid 550); 19 Sep 2018 18:51:49 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9363 invoked from network); 19 Sep 2018 18:17:24 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=rkQCz3zzmaa5IwKKKicWnAlOk9IgZ3psoUOFIs5lcoo=;
        b=bAsZfbZ2trs6N138YeoTLhrbMgQ3baRf0xrARfr3Sg+q6AcHNyisPhUaCBOQpjEzls
         5iAaQmBp4Wh2iHTrDebcRuZHLkJAecp68WQw4XN+2wfLG9OU6qW1MXJgIGKdG8hWRZ+G
         lIweaBqzX3foEyDBlir7FTb1cXOB5cOrM6yo+q50A+cWxBPX7ieRZoc3YOrPGNPROxM6
         weXPjCCAPFUwCafinKGVXzphSoyoINQu0zOXFAhow2VZ1xBlf/whuX/v1rANk7mkjU7o
         Yl9nq3D+1m4iGCgIL1m6CrUPZmth9p77gqJD4K6c04Nevq5rQCPWhLnWVyff4Nnsd4QI
         yTOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=rkQCz3zzmaa5IwKKKicWnAlOk9IgZ3psoUOFIs5lcoo=;
        b=G0EcQVTFJXvvUNewLNabYC+SNG68A3ajhnUob0Pcmghx4t3QDCF8FCqrCdkXFFNOVB
         STKvGUr3E5k+MrMulIa9Tee6FJgP//YyXESzxhivfoyWF38DAdSDRjJMR0qlhEwnMgEQ
         NgVe3qLLSm1+lZQuI7IpoB/nBYTfg88B4iuzz2QTp1oZ29eqSD82myWbq+s7GpieiYem
         R3DF7ZgevToHFPTJpCDTmBBQ500kNU5Kj2zwrGYamElQP1Oi3Ay0sFev0dIDEqhceiFL
         V9lv+eoi0B/Gfv/CXFwDxHoRL9otl3oVHuGf9TrlE9DqxJIBKm+tXdlwYRV3ErQDqujh
         eWdQ==
X-Gm-Message-State: APzg51DCX8uvMLQZFYWVv7yTLuqSOrQzU3QdyrwgIiACVf02QFhp6Ebu
	MTzkIE/28XcRZ0lr4Wbmk9wbR9itrc13VG+CUnDwVROm
X-Google-Smtp-Source: ANB0VdabPXh8CMNLUSXVT3NEL3JvH5nFrRM3Yi1vZrfHbCkdhj47vZVTD7cgx2vp0b/RWrv9o5CIK7ExOv+8LovMIlM=
X-Received: by 2002:a62:2f84:: with SMTP id v126-v6mr37361081pfv.115.1537381032343;
 Wed, 19 Sep 2018 11:17:12 -0700 (PDT)
MIME-Version: 1.0
From: Dhiraj Mishra <mishra.dhiraj95@gmail.com>
Date: Wed, 19 Sep 2018 23:47:00 +0530
Message-ID: <CAG8b5tQvMF46=bzGDZR6OGzrMqMx7=ktZR1iOX=DJTpZzdi83w@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="000000000000513bbc05763d6aa6"
Subject: [oss-security] tdesktop 1.3.14: index out of range

--000000000000513bbc05763d6aa6
Content-Type: text/plain; charset="UTF-8"

Affected Product: tdesktop-1.3.14 tested on Ubuntu 18.04 LTS x64

*Steps to reproduce:*
1. Open Telegram
2. Launch theme editor
3. Save the file in some location
4. The tdesktop then open "Edit color palette"
5. Type "Hello World" in search <press enter>
6. The tdesktop gets crash

Crashes, ASSERT failure in QVector<T>::operator[]: "index out of range",
file /usr/local/tdesktop/Qt-5.6.2/include/QtCore/qvector.h, line 431
Aborted (core dumped)

*Backtrace:*
$ gdb ./Telegram
GNU gdb (Ubuntu 8.1-0ubuntu3) 8.1.0.20180409-git
Copyright (C) 2018 Free Software Foundation, Inc.
License GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html
>
This is free software: you are free to change and redistribute it.
There is NO WARRANTY, to the extent permitted by law.  Type "show copying"
and "show warranty" for details.
This GDB was configured as "x86_64-linux-gnu".
Type "show configuration" for configuration details.
For bug reporting instructions, please see:
<http://www.gnu.org/software/gdb/bugs/>.
Find the GDB manual and other documentation resources online at:
<http://www.gnu.org/software/gdb/documentation/>.
For help, type "help".
Type "apropos word" to search for commands related to "word"...
Reading symbols from ./Telegram...(no debugging symbols found)...done.
(gdb) r
Starting program: /home/input0/Desktop/Telegram/Telegram
[Thread debugging using libthread_db enabled]
Using host libthread_db library "/lib/x86_64-linux-gnu/libthread_db.so.1".
[New Thread 0x7ffff40e5700 (LWP 8743)]
[New Thread 0x7ffff32ca700 (LWP 8744)]
[New Thread 0x7ffff2ac9700 (LWP 8746)]
[New Thread 0x7ffff19fa700 (LWP 8747)]
[New Thread 0x7ffff11f9700 (LWP 8748)]
[Thread 0x7ffff19fa700 (LWP 8747) exited]
[New Thread 0x7ffff19fa700 (LWP 8749)]
[New Thread 0x7fffd4da1700 (LWP 8750)]
[New Thread 0x7fffcb25c700 (LWP 8751)]
[Thread 0x7fffcb25c700 (LWP 8751) exited]
[New Thread 0x7fffcb25c700 (LWP 8752)]
[New Thread 0x7fffcb25c700 (LWP 8753)]
[Thread 0x7fffcb25c700 (LWP 8752) exited]
[New Thread 0x7fffcaa5b700 (LWP 8754)]
[New Thread 0x7fffca25a700 (LWP 8755)]
[New Thread 0x7fffc9a59700 (LWP 8756)]
[Thread 0x7fffc9a59700 (LWP 8756) exited]
(Telegram:8739): libappindicator-CRITICAL **: 13:18:28.549:
app_indicator_set_icon_full: assertion 'IS_APP_INDICATOR (self)' failed
[New Thread 0x7fffc9a59700 (LWP 8757)]
[New Thread 0x7fffc9258700 (LWP 8758)]
[New Thread 0x7fffc8a57700 (LWP 8759)]
[New Thread 0x7fffb3fff700 (LWP 8760)]
[New Thread 0x7fffb37fe700 (LWP 8761)]
[Thread 0x7fffb3fff700 (LWP 8760) exited]
[New Thread 0x7fffb3fff700 (LWP 8762)]
[New Thread 0x7fffb2ffd700 (LWP 8763)]
[Thread 0x7fffb37fe700 (LWP 8761) exited]
[Thread 0x7fffc9258700 (LWP 8758) exited]
[Thread 0x7fffc8a57700 (LWP 8759) exited]
[New Thread 0x7fffc8a57700 (LWP 8764)]
[New Thread 0x7fffc9258700 (LWP 8765)]
[New Thread 0x7fffb37fe700 (LWP 8766)]
[Thread 0x7fffc9258700 (LWP 8765) exited]
[Thread 0x7fffb37fe700 (LWP 8766) exited]
[Thread 0x7fffc8a57700 (LWP 8764) exited]
[New Thread 0x7fffc8a57700 (LWP 8767)]
[Thread 0x7fffb3fff700 (LWP 8762) exited]
[Thread 0x7fffc8a57700 (LWP 8767) exited]
[New Thread 0x7fffc8a57700 (LWP 8769)]
[New Thread 0x7fffb3fff700 (LWP 8770)]
Gtk-Message: 13:18:41.228: GtkDialog mapped without a transient parent.
This is discouraged.
[New Thread 0x7fffb37fe700 (LWP 8772)]
[Thread 0x7fffc8a57700 (LWP 8769) exited]
[Thread 0x7fffb2ffd700 (LWP 8763) exited]
ASSERT failure in QVector<T>::operator[]: "index out of range", file
/usr/local/tdesktop/Qt-5.6.2/include/QtCore/qvector.h, line 431

Thread 1 "Telegram" received signal SIGABRT, Aborted.
__GI_raise (sig=sig@entry=6) at ../sysdeps/unix/sysv/linux/raise.c:51
51    ../sysdeps/unix/sysv/linux/raise.c: No such file or directory.
(gdb) bt
#0  0x00007ffff5f7ae97 in __GI_raise (sig=sig@entry=6) at
../sysdeps/unix/sysv/linux/raise.c:51
#1  0x00007ffff5f7c801 in __GI_abort () at abort.c:79
#2  0x00000000022944a1 in  ()
#3  0x0000000003c183a0 in  ()
#4  0x0000003000000030 in  ()
#5  0x00007fffffffcdc0 in  ()
#6  0x00007fffffffcd00 in  ()
#7  0x000000000000006c in  ()
#8  0x00007ffff74696f0 in  () at /lib/x86_64-linux-gnu/libdbus-1.so.3
#9  0x000000000291c5b1 in  ()
#10 0x0000000003be003d in  ()
#11 0x000000000291b440 in  ()
#12 0x00000000000001af in  ()
#13 0x0000000000000000 in  ()
(gdb)

PS: No CVE is assigned yet to this issue.


Thank you
-- 
Regards

*Dhiraj Mishra.*GPG ID :  51720F56   |  Finger Print : 1F6A FC7B 05AA CF29
8C1C  ED65 3233 4D18 5172 0F56

--000000000000513bbc05763d6aa6--
