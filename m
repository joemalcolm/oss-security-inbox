X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3069" "Saturday" "10" "November" "2018" "16:22:53" "+0530" "Dhiraj Mishra" "mishra.dhiraj95@gmail.com" "<CAG8b5tT5Ob5b1CD=nMFWkJTfVfwvREW3vGw=rpHruB6Tj+NJtw@mail.gmail.com>" "77" "[oss-security] null-pointer dereference in poppler library" nil nil nil "11" "2018111010:52:53" "[oss-security] null-pointer dereference in poppler library" (number mark "U       mishra.dhira Nov 10   77/3069  " thread-indent "\"[oss-security] null-pointer dereference in poppler library\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 17555 invoked by uid 550); 10 Nov 2018 11:05:27 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7711 invoked from network); 10 Nov 2018 10:53:17 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=HKUIMvA6qW02vpZ+bldeUQHU0BLIU1ELZ8JC13l4bZg=;
        b=iR75boUjFFvBhdk9khnwKI6o4OVj/M7M/s3vCd+5Uq1fXC85OfryXP0QCoV9uUC+jL
         aFIYvKK8IsFa4p2tde8HZMRcKWYaIROAOsX3Dch6kUAbIb4d/q3useqP69CDfh9nMfyV
         lk97H9PTUKNusyMpxHZtET/GuVq2jDgsm/qhsFI9Xvt5l8Jof26ijEll1jkjdo4wY+tP
         ULQFVSgv7CsuUHk8OcmZRddPpGsOwGeJqBuY/s6iLr2I5Ot2Nbx3aba72jehSogdg7RF
         BlriPjoSApYAAB7ZGXeztBzD89MjTkjb/Np3V84fWrw3/ZsPjsydm3CHHIHaDAvNzC9K
         ot6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=HKUIMvA6qW02vpZ+bldeUQHU0BLIU1ELZ8JC13l4bZg=;
        b=Gx8ChM7/Zk6l1s6otkm5I0sWJs3UJzKFprBT5wLCRg5Vb4YArwZoPxjFWnvekApYo/
         Fc8hzqRJhJjbbcoICYgNUcdpLgTv9QwgpmtwJnKL3ZPRmKUAx1hhoVp6gyQ66qrsXYsz
         xklJnX9dEywb57PNBvm3ooiBMXUnrA/6nAuWcwNsK6bNkP85B7LHEkqWtcSW1t0aiTLR
         wMJ0jKcalTE569wEY8EZzGbaj/rS8G+Z9icaubIRQ7A0g+TUK7mDXEGeMXnmHe8cLgaX
         GzfHNHYqgkWEBRfXATw/Edbdl/cmp4ipWDlo2ldxoSPnbFvf5ARA1CaNbjhA8Ilvp8qT
         bDyg==
X-Gm-Message-State: AGRZ1gLpMa9qYuC2uk5WOURaF2xppqjIjbXX/u46Wh4XMY7CDss8i/zs
	t0cX0S91mf2M1MyoRX01OH1cGHAc/fEfxoFjrhG0X/Ct
X-Google-Smtp-Source: AJdET5caMoEjmyqR/6WfS2ipAYamYXoEgfNlUihFYV0TdykQC0criv4MZPiChRNUK5Yb7UxyUxm3v+gNv/jDVrGkrZg=
X-Received: by 2002:a62:848e:: with SMTP id k136-v6mr12540765pfd.115.1541847184847;
 Sat, 10 Nov 2018 02:53:04 -0800 (PST)
MIME-Version: 1.0
From: Dhiraj Mishra <mishra.dhiraj95@gmail.com>
Date: Sat, 10 Nov 2018 16:22:53 +0530
Message-ID: <CAG8b5tT5Ob5b1CD=nMFWkJTfVfwvREW3vGw=rpHruB6Tj+NJtw@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="000000000000c03917057a4d4503"
Subject: [oss-security] null-pointer dereference in poppler library

--000000000000c03917057a4d4503
Content-Type: text/plain; charset="UTF-8"

## Summary

While fuzzing evince v3.28.4, on linux 4.15.0-38-generic (Ubuntu 18.04
LTS), a null-pointer dereference was observed, initially this was reported
to evince but the evince team advised that the issue is in poppler, the
library used by evince to render PDF. Poppler version: 0.62.0-2ubuntu2.2 is
vulnerable to null-pointer dereference, however the issue is already fixed
in poppler 0.70, but this will still crash your evince v3.28.4 if poppler
is not updated to v.0.70.

## Debug

(gdb) run NullPointerDeference.h_134
Starting program: /usr/bin/evince NullPointerDeference.h_134
[Thread debugging using libthread_db enabled]
Using host libthread_db library "/lib/x86_64-linux-gnu/libthread_db.so.1".
[New Thread 0x7fd84d3cf700 (LWP 17587)]
[New Thread 0x7fd84cbce700 (LWP 17588)]
[New Thread 0x7fd84718c700 (LWP 17589)]
[New Thread 0x7fd84651c700 (LWP 17594)]
[New Thread 0x7fd845b0e700 (LWP 17596)]
[New Thread 0x7fd83223e700 (LWP 17597)]

Thread 7 "EvJobScheduler" received signal SIGSEGV, Segmentation fault.
[Switching to Thread 0x7fd83223e700 (LWP 17597)]
0x00007fd8315f629a in _poppler_attachment_new(FileSpec*) () from
/usr/lib/x86_64-linux-gnu/libpoppler-glib.so.8
(gdb) bt
#0  0x00007fd8315f629a in _poppler_attachment_new(FileSpec*) () at
/usr/lib/x86_64-linux-gnu/libpoppler-glib.so.8
#1  0x00007fd8315fa14a in poppler_annot_file_attachment_get_attachment ()
at /usr/lib/x86_64-linux-gnu/libpoppler-glib.so.8
#2  0x00007fd83183673d in  () at
/usr/lib/x86_64-linux-gnu/evince/4/backends/libpdfdocument.so
#3  0x00007fd8592c3bfa in  () at /usr/lib/x86_64-linux-gnu/libevview3.so.3
#4  0x00007fd8592c5c02 in  () at /usr/lib/x86_64-linux-gnu/libevview3.so.3
#5  0x00007fd856bbee85 in  () at /usr/lib/x86_64-linux-gnu/libglib-2.0.so.0
#6  0x00007fd8565956db in start_thread (arg=0x7fd83223e700) at
pthread_create.c:463
#7  0x00007fd8562be88f in clone () at
../sysdeps/unix/sysv/linux/x86_64/clone.S:95
(gdb) i r
rax            0x0    0
rbx            0x0    0
rcx            0x0    0
rdx            0x0    0
rsi            0x7fd82c0587c0    140566428223424
rdi            0x55720784c640    93948240774720
rbp            0x7fd834004a90    0x7fd834004a90
rsp            0x7fd83223d9e0    0x7fd83223d9e0
r8             0xffffffffffffffb0    -80
r9             0x10    16
r10            0x7fd82c0008d0    140566427863248
r11            0x1    1
r12            0x7fd82c0587c0    140566428223424
r13            0x7fd834004a80    140566562097792
r14            0x5572072f5a60    93948235176544
r15            0x0    0
rip            0x7fd8315f629a    0x7fd8315f629a
<_poppler_attachment_new(FileSpec*)+122>
eflags         0x10206    [ PF IF RF ]
cs             0x33    51
ss             0x2b    43
ds             0x0    0
es             0x0    0
fs             0x0    0
gs             0x0    0
(gdb) info reg ebp rip
ebp            0x34004a90    872434320
rip            0x7fd8315f629a    0x7fd8315f629a
<_poppler_attachment_new(FileSpec*)+122>
(gdb)

--000000000000c03917057a4d4503--
