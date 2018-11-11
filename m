X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3925" "Sunday" "11" "November" "2018" "23:01:14" "+0530" "Dhiraj Mishra" "mishra.dhiraj95@gmail.com" "<CAG8b5tS4=cCT+dmaoeqT3eF6_xoQLLBRuoRYy_C855pXmeQM-g@mail.gmail.com>" "100" "[oss-security] Re: null-pointer dereference in poppler library" nil nil nil "11" "2018111117:31:14" "[oss-security] Re: null-pointer dereference in poppler library" (number mark "U       mishra.dhira Nov 11  100/3925  " thread-indent "\"[oss-security] Re: null-pointer dereference in poppler library\"\n") "<CAG8b5tT5Ob5b1CD=nMFWkJTfVfwvREW3vGw=rpHruB6Tj+NJtw@mail.gmail.com>" ("<CAG8b5tT5Ob5b1CD=nMFWkJTfVfwvREW3vGw=rpHruB6Tj+NJtw@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 26499 invoked by uid 550); 11 Nov 2018 17:47:41 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15819 invoked from network); 11 Nov 2018 17:31:39 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=e3pnQZbnLA4BcaYmSsCTvFZU/AHLL8boMoF8pZIpcDA=;
        b=h8bHhx//zqXMgpsxnjovQU2aMVvUQOD57A+OSW9XcyTACTCqJFBw5zVAsY7vJ9XAkz
         L+ULlo9u2yNoeXql9xeMl1EhXotRWFcnMbIMC7SUtviaCM/Ak0EIklHqTVyIN48nAu8Q
         dm/OQLEEGxxS21k6i8a7mxGrV4jsG0HArGUwonP6zhXZqpoXZS/IvGPGoeD9BCqNOnoD
         eZDjnxc+BdAFqW24G0WlMf/pAbDe5Np9DVQuEoDv4TFXZw/l1/FU4bnTBVRygMHht/uU
         awIVbxMMijhIZkWOsmAc4zqWc0UR5XEDesp985aUjYUAHJwRuFbO22DHMsWxXm68Th5g
         mmwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=e3pnQZbnLA4BcaYmSsCTvFZU/AHLL8boMoF8pZIpcDA=;
        b=r4RDdzIa90VsQ5cfQwAPwnaXBMYG8pu8cD6jcPESdW4OV3GLubSXo7nknMNO/fO0Tr
         uX8UP+FqzW3ZezaYR9oueH9w+0st7Pk9Hkvr7s7qaQMHbNFXsp+RX9cr62/cMKFtkX/J
         WQaMaKa/xMqt7TKyr1Crhdu3FFHG/JJ7HedzbYDCSgLkTOMel1884Hb4+k37ldPYKiuR
         uIwtf+FfRj4Q0oDKpOUm3z6DLCTXWa9fExuhlLWVml1HClAAc5pEG7o2/RFg6B11ZV4N
         00NRwoRSo6bYYsqZ4JCuqmbpaUR+voTKy9iIbZ3wz9C8buKwxrvwBjSoAScLRmRJG6iX
         +36Q==
X-Gm-Message-State: AGRZ1gIWoRCO8MpIej74BukRyAgUWLMCwdD2zNiH1X7IMCI0CVvMTmmf
	et7gs0vjBS1tQOWCs26rRqtp6bnmzZYh1euBpOON7Ot0
X-Google-Smtp-Source: AJdET5cpPcCW+oJrXbyUDoamL9iHDeHY/O6gVVeAOqP85c1aUzS5L+TZzO+jjfQ4x7Aeb/O4jm1ZBHBNMvSvHf6JjIo=
X-Received: by 2002:a17:902:9886:: with SMTP id s6-v6mr1860569plp.55.1541957486567;
 Sun, 11 Nov 2018 09:31:26 -0800 (PST)
MIME-Version: 1.0
References: <CAG8b5tT5Ob5b1CD=nMFWkJTfVfwvREW3vGw=rpHruB6Tj+NJtw@mail.gmail.com>
In-Reply-To: <CAG8b5tT5Ob5b1CD=nMFWkJTfVfwvREW3vGw=rpHruB6Tj+NJtw@mail.gmail.com>
From: Dhiraj Mishra <mishra.dhiraj95@gmail.com>
Date: Sun, 11 Nov 2018 23:01:14 +0530
Message-ID: <CAG8b5tS4=cCT+dmaoeqT3eF6_xoQLLBRuoRYy_C855pXmeQM-g@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="0000000000003ee672057a66f49d"
Subject: [oss-security] Re: null-pointer dereference in poppler library

--0000000000003ee672057a66f49d
Content-Type: text/plain; charset="UTF-8"

Later CVE-2018-19149 was assigned to this, because that fuzzing result
show's a very important vulnerability in a package currently shipped by a
major Linux distribution is still of interest, even if that Linux
distribution does not package the latest released upstream version.

For example, an out-of-bounds write finding is still very useful in that
case, but not out-of-bounds read, NULL pointer dereference,
divide-by-zero, etc.


Reference: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2018-19149

On Sat, Nov 10, 2018 at 4:22 PM Dhiraj Mishra <mishra.dhiraj95@gmail.com>
wrote:

> ## Summary
>
> While fuzzing evince v3.28.4, on linux 4.15.0-38-generic (Ubuntu 18.04
> LTS), a null-pointer dereference was observed, initially this was reported
> to evince but the evince team advised that the issue is in poppler, the
> library used by evince to render PDF. Poppler version: 0.62.0-2ubuntu2.2 is
> vulnerable to null-pointer dereference, however the issue is already fixed
> in poppler 0.70, but this will still crash your evince v3.28.4 if poppler
> is not updated to v.0.70.
>
> ## Debug
>
> (gdb) run NullPointerDeference.h_134
> Starting program: /usr/bin/evince NullPointerDeference.h_134
> [Thread debugging using libthread_db enabled]
> Using host libthread_db library "/lib/x86_64-linux-gnu/libthread_db.so.1".
> [New Thread 0x7fd84d3cf700 (LWP 17587)]
> [New Thread 0x7fd84cbce700 (LWP 17588)]
> [New Thread 0x7fd84718c700 (LWP 17589)]
> [New Thread 0x7fd84651c700 (LWP 17594)]
> [New Thread 0x7fd845b0e700 (LWP 17596)]
> [New Thread 0x7fd83223e700 (LWP 17597)]
>
> Thread 7 "EvJobScheduler" received signal SIGSEGV, Segmentation fault.
> [Switching to Thread 0x7fd83223e700 (LWP 17597)]
> 0x00007fd8315f629a in _poppler_attachment_new(FileSpec*) () from
> /usr/lib/x86_64-linux-gnu/libpoppler-glib.so.8
> (gdb) bt
> #0  0x00007fd8315f629a in _poppler_attachment_new(FileSpec*) () at
> /usr/lib/x86_64-linux-gnu/libpoppler-glib.so.8
> #1  0x00007fd8315fa14a in poppler_annot_file_attachment_get_attachment ()
> at /usr/lib/x86_64-linux-gnu/libpoppler-glib.so.8
> #2  0x00007fd83183673d in  () at
> /usr/lib/x86_64-linux-gnu/evince/4/backends/libpdfdocument.so
> #3  0x00007fd8592c3bfa in  () at /usr/lib/x86_64-linux-gnu/libevview3.so.3
> #4  0x00007fd8592c5c02 in  () at /usr/lib/x86_64-linux-gnu/libevview3.so.3
> #5  0x00007fd856bbee85 in  () at /usr/lib/x86_64-linux-gnu/libglib-2.0.so.0
> #6  0x00007fd8565956db in start_thread (arg=0x7fd83223e700) at
> pthread_create.c:463
> #7  0x00007fd8562be88f in clone () at
> ../sysdeps/unix/sysv/linux/x86_64/clone.S:95
> (gdb) i r
> rax            0x0    0
> rbx            0x0    0
> rcx            0x0    0
> rdx            0x0    0
> rsi            0x7fd82c0587c0    140566428223424
> rdi            0x55720784c640    93948240774720
> rbp            0x7fd834004a90    0x7fd834004a90
> rsp            0x7fd83223d9e0    0x7fd83223d9e0
> r8             0xffffffffffffffb0    -80
> r9             0x10    16
> r10            0x7fd82c0008d0    140566427863248
> r11            0x1    1
> r12            0x7fd82c0587c0    140566428223424
> r13            0x7fd834004a80    140566562097792
> r14            0x5572072f5a60    93948235176544
> r15            0x0    0
> rip            0x7fd8315f629a    0x7fd8315f629a
> <_poppler_attachment_new(FileSpec*)+122>
> eflags         0x10206    [ PF IF RF ]
> cs             0x33    51
> ss             0x2b    43
> ds             0x0    0
> es             0x0    0
> fs             0x0    0
> gs             0x0    0
> (gdb) info reg ebp rip
> ebp            0x34004a90    872434320
> rip            0x7fd8315f629a    0x7fd8315f629a
> <_poppler_attachment_new(FileSpec*)+122>
> (gdb)
>
>

-- 
Regards

*Dhiraj Mishra.*GPG ID :  51720F56   |  Finger Print : 1F6A FC7B 05AA CF29
8C1C  ED65 3233 4D18 5172 0F56

--0000000000003ee672057a66f49d--
