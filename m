X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3103" "Tuesday" "17" "November" "2015" "13:44:03" "+1100" "Tim" "timc@slowb.ro" "<564A9473.4010807@slowb.ro>" "93" "Re: [oss-security] suckless sent and libxft-dev 2.3.2-1 crash" "^Date:" nil nil "11" "2015111702:44:03" "[oss-security] suckless sent and libxft-dev 2.3.2-1 crash" (number mark "        timc@slowb.r Nov 17   93/3103  " thread-indent "\"Re: [oss-security] suckless sent and libxft-dev 2.3.2-1 crash\"\n") "<CAATyssetqs4To7DdqFRrzJT-UF7Z1LoRkrraiL7dEqWK76BmvQ@mail.gmail.com>" ("<CAATyssetqs4To7DdqFRrzJT-UF7Z1LoRkrraiL7dEqWK76BmvQ@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 17449 invoked by uid 550); 17 Nov 2015 03:14:57 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 24383 invoked from network); 17 Nov 2015 02:44:35 -0000
X-Virus-Scanned: Debian amavisd-new at slowb.ro
References: <CAATyssetqs4To7DdqFRrzJT-UF7Z1LoRkrraiL7dEqWK76BmvQ@mail.gmail.com>
Message-ID: <564A9473.4010807@slowb.ro>
MIME-Version: 1.0
In-Reply-To: <CAATyssetqs4To7DdqFRrzJT-UF7Z1LoRkrraiL7dEqWK76BmvQ@mail.gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Date: Tue, 17 Nov 2015 13:44:03 +1100
From: Tim <timc@slowb.ro>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] suckless sent and libxft-dev 2.3.2-1 crash
To: oss-security@lists.openwall.com

On 17/11/15 09:47, Simon . wrote:
> Hi,
>
> please review, whether this needs a CVE.
>
> Greetings
> Simon
> .
>
> ---------- Forwarded message ----------
> From: "Simon ." <bofh666ftw@googlemail.com>
> Date: Mon, 16 Nov 2015 23:37:57 +0100
> Subject: sent segfaults Xft
> To: dev@suckless.org
>
> Hi,
>
> installing "sent" failed for me. I needed to install libpng-dev + libxft-dev.
> Running "sent" on some file:
>
> simon@zachi3000:~/archive/sent$ file sent
> sent: ELF 64-bit LSB executable, x86-64, version 1 (SYSV), dynamically
> linked, interpreter /lib64/ld-linux-x86-64.so.2, for GNU/Linux 2.6.32,
> BuildID[sha1]=e3a0864f2be10dd5e1f749ed9443b8391d885c9b, not stripped
> simon@zachi3000:~/archive/sent$ ls
> arg.h         config.mk       drw.h    LICENSE   README.md  sent.o  util.o
> config.def.h  core.9840.9840  drw.o    Makefile  sent       util.c
> config.h      drw.c           example  nyan.png  sent.c     util.h
> simon@zachi3000:~/archive/sent$ ./sent /etc/passwd
> Segmentation fault (core dumped)
> simon@zachi3000:~/archive/sent$ gdb -q sent
> Reading symbols from sent...done.
> (gdb) r /etc/passwd
> Starting program: /home/sk/archive/sent/sent /etc/passwd
> [Thread debugging using libthread_db enabled]
> Using host libthread_db library "/lib/x86_64-linux-gnu/libthread_db.so.1".
>
> Program received signal SIGSEGV, Segmentation fault.
> 0x00007ffff74ff660 in XftCharExists ()
>     from /usr/lib/x86_64-linux-gnu/libXft.so.2
> (gdb) l
> 655				shortcuts[i].func(&(shortcuts[i].arg));
> 656	}
> 657	
> 658	void configure(XEvent *e)
> 659	{
> 660		resize(e->xconfigure.width, e->xconfigure.height);
> 661		if (slides[idx].img)
> 662			slides[idx].img->state &= ~(DRAWN | SCALED);
> 663		xdraw();
> 664	}
> (gdb) disas 0x7ffff74ff660
> Dump of assembler code for function XftCharExists:
> => 0x00007ffff74ff660 <+0>:	mov    0x10(%rsi),%rdi
>     0x00007ffff74ff664 <+4>:	test   %rdi,%rdi
>     0x00007ffff74ff667 <+7>:	je     0x7ffff74ff670 <XftCharExists+16>
>     0x00007ffff74ff669 <+9>:	mov    %edx,%esi
>     0x00007ffff74ff66b <+11>:	jmpq   0x7ffff74f5dc0 <FcCharSetHasChar@plt>
>     0x00007ffff74ff670 <+16>:	xor    %eax,%eax
>     0x00007ffff74ff672 <+18>:	retq
> End of assembler dump.
>
>
> Can anyone else reproduce?
>
> Greetings
> Simon
> .

Hey Simon,

I cannot replicate your issue.

$ git show
git SHA that I built off: 448fe33370e1252ea5755066c0623b2c67818357

(Already had dependencies installed before I built. Ubuntu fyi)
$ dpkg --list | grep -e libpng -e libxft
libxft2:amd64                                           2.3.1-2
libxft2:i386                                               2.3.1-2
libxft-dev                                                  2.3.1-2
libpng12-0:amd64                                    1.2.50-1ubuntu2
libpng12-0:i386 1.2.50-1ubuntu2
libpng12-dev 1.2.50-1ubuntu2

$ file sent
sent: ELF 64-bit LSB  executable, x86-64, version 1 (SYSV), dynamically 
linked (uses shared libs), for GNU/Linux 2.6.24, 
BuildID[sha1]=1c6ce33244594ecadcea86a39de4cfc649832b2a, not stripped

Let me know off-list if I can be of any more help.

Cheers,
