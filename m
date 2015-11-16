X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2115" "Monday" "16" "November" "2015" "23:47:16" "+0100" "Simon ." "bofh666ftw@googlemail.com" "<CAATyssetqs4To7DdqFRrzJT-UF7Z1LoRkrraiL7dEqWK76BmvQ@mail.gmail.com>" "67" "[oss-security] suckless sent and libxft-dev 2.3.2-1 crash" "^Date:" nil nil "11" "2015111622:47:16" "[oss-security] suckless sent and libxft-dev 2.3.2-1 crash" (number mark "        bofh666ftw@g Nov 16   67/2115  " thread-indent "\"[oss-security] suckless sent and libxft-dev 2.3.2-1 crash\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 15756 invoked by uid 550); 17 Nov 2015 01:44:01 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 15628 invoked from network); 16 Nov 2015 22:47:28 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=20120113;
        h=mime-version:date:message-id:subject:from:to:content-type;
        bh=57OGVvTy+pIaNquZTbhPBAC9BypeBoLWZjvqxNSGPe0=;
        b=QMtBoiEKb83tzTKA1FtRBV27Azf7ls42RVMUWRUt4KeuZiQDJQzlulNHSxXufrTVYM
         Pg/dd4byfHpVaC9wSshtnykRlye40nrLWGxwwZ0vu7ZVpQSWuk4BkR266w+fuNadVDHx
         V6qmPBxo7P7hPkZi/58egD9SnfSzKQSnzt3NuDRoB7U6l0HRwezGDVT58CEeiQlB1hmE
         R9kfkhoR1agwwwLUABUOsS4fJaAhIoi2dA1kTCugHhs8h5C4QY0pD7tSql934NhKuvFp
         wsY6TobGImJZ99qfkA7+WrMav7CH9y315lt1DbfKtWM8H0WHvF07xh/HgWamX9tdNxnk
         Xg3w==
MIME-Version: 1.0
X-Received: by 10.50.22.39 with SMTP id a7mr18137288igf.42.1447714036640; Mon,
 16 Nov 2015 14:47:16 -0800 (PST)
Message-ID: <CAATyssetqs4To7DdqFRrzJT-UF7Z1LoRkrraiL7dEqWK76BmvQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Date: Mon, 16 Nov 2015 23:47:16 +0100
From: "Simon ." <bofh666ftw@googlemail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] suckless sent and libxft-dev 2.3.2-1 crash
To: oss-security@lists.openwall.com

Hi,

please review, whether this needs a CVE.

Greetings
Simon
.

---------- Forwarded message ----------
From: "Simon ." <bofh666ftw@googlemail.com>
Date: Mon, 16 Nov 2015 23:37:57 +0100
Subject: sent segfaults Xft
To: dev@suckless.org

Hi,

installing "sent" failed for me. I needed to install libpng-dev + libxft-dev.
Running "sent" on some file:

simon@zachi3000:~/archive/sent$ file sent
sent: ELF 64-bit LSB executable, x86-64, version 1 (SYSV), dynamically
linked, interpreter /lib64/ld-linux-x86-64.so.2, for GNU/Linux 2.6.32,
BuildID[sha1]=e3a0864f2be10dd5e1f749ed9443b8391d885c9b, not stripped
simon@zachi3000:~/archive/sent$ ls
arg.h         config.mk       drw.h    LICENSE   README.md  sent.o  util.o
config.def.h  core.9840.9840  drw.o    Makefile  sent       util.c
config.h      drw.c           example  nyan.png  sent.c     util.h
simon@zachi3000:~/archive/sent$ ./sent /etc/passwd
Segmentation fault (core dumped)
simon@zachi3000:~/archive/sent$ gdb -q sent
Reading symbols from sent...done.
(gdb) r /etc/passwd
Starting program: /home/sk/archive/sent/sent /etc/passwd
[Thread debugging using libthread_db enabled]
Using host libthread_db library "/lib/x86_64-linux-gnu/libthread_db.so.1".

Program received signal SIGSEGV, Segmentation fault.
0x00007ffff74ff660 in XftCharExists ()
   from /usr/lib/x86_64-linux-gnu/libXft.so.2
(gdb) l
655				shortcuts[i].func(&(shortcuts[i].arg));
656	}
657	
658	void configure(XEvent *e)
659	{
660		resize(e->xconfigure.width, e->xconfigure.height);
661		if (slides[idx].img)
662			slides[idx].img->state &= ~(DRAWN | SCALED);
663		xdraw();
664	}
(gdb) disas 0x7ffff74ff660
Dump of assembler code for function XftCharExists:
=> 0x00007ffff74ff660 <+0>:	mov    0x10(%rsi),%rdi
   0x00007ffff74ff664 <+4>:	test   %rdi,%rdi
   0x00007ffff74ff667 <+7>:	je     0x7ffff74ff670 <XftCharExists+16>
   0x00007ffff74ff669 <+9>:	mov    %edx,%esi
   0x00007ffff74ff66b <+11>:	jmpq   0x7ffff74f5dc0 <FcCharSetHasChar@plt>
   0x00007ffff74ff670 <+16>:	xor    %eax,%eax
   0x00007ffff74ff672 <+18>:	retq
End of assembler dump.


Can anyone else reproduce?

Greetings
Simon
.
