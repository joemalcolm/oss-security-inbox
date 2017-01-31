X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3028" "Tuesday" "31" "January" "2017" "16:56:09" "+0100" "Sebastian Krahmer" "krahmer@suse.com" "<20170131155609.GB30714@suse.de>" "86" "Re: [oss-security] Re: OpenSSH: CVE-2015-6565 (pty issue in 6.8-6.9) can lead to local privesc on Linux" nil nil nil "1" "2017013115:56:09" "[oss-security] Re: OpenSSH: CVE-2015-6565 (pty issue in 6.8-6.9) can lead to local privesc on Linux" (number mark "U       krahmer@suse Jan 31   86/3028  " thread-indent "\"Re: [oss-security] Re: OpenSSH: CVE-2015-6565 (pty issue in 6.8-6.9) can lead to local privesc on Linux\"\n") "<CAA_Lw39mq10gPSpsFTvCgvug-Ewgjeisj14bDrwvftV-QTeuSg@mail.gmail.com>" ("<20170126100724.99313jlcg64zbaec@webmail.alunos.dcc.fc.up.pt>" "<CAA_Lw39mq10gPSpsFTvCgvug-Ewgjeisj14bDrwvftV-QTeuSg@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 17683 invoked by uid 550); 31 Jan 2017 15:56:21 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17656 invoked from network); 31 Jan 2017 15:56:21 -0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Date: Tue, 31 Jan 2017 16:56:09 +0100
From: Sebastian Krahmer <krahmer@suse.com>
To: oss-security@lists.openwall.com
Message-ID: <20170131155609.GB30714@suse.de>
References: <20170126100724.99313jlcg64zbaec@webmail.alunos.dcc.fc.up.pt>
 <CAA_Lw39mq10gPSpsFTvCgvug-Ewgjeisj14bDrwvftV-QTeuSg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAA_Lw39mq10gPSpsFTvCgvug-Ewgjeisj14bDrwvftV-QTeuSg@mail.gmail.com>
Organization: SUSE Linux GmbH, GF: Felix =?utf-8?Q?Imend?=
 =?utf-8?Q?=F6rffer?= =?utf-8?Q?=2C?= Jane Smithard, Graham Norton, HRB 21284
 (AG Nuernberg)
User-Agent: Outlook
Subject: Re: [oss-security] Re: OpenSSH: CVE-2015-6565 (pty issue in 6.8-6.9)
 can lead to local privesc on Linux

Hi


On Thu, Jan 26, 2017 at 06:35:12PM +0100, Noryungi wrote:
> Does not work on centos 7.1 (unpatched) running stock openssh.
> 
> TTY capture works, /tmp/sh is created but user is unprivileged.

I can confirm that the exploit is working on a vanilla 4.1.6 kernel
with openssh 6.8. I was a bit puzzled because wrong modes on ttys by itself
should no longer be exploitable on Linux.

Here are my 2ct:

1) Exploit evades the controlling-tty entry-check inside kernels tiocsti()
   that was introduced to cope with hijacking of tty's based on wrong
   modes. Obviously that 'hardening' failed here. Why?
2) Because of glibc's openpty() as called by openssh opens
   the slave device with O_NOCTTY (it has to do so). This leaves
   tiocsti() with pants down, since there is no "controlling owner"
   for this tty yet and the attacker is free to catch on it.
3) The wrong mode (0622) is set, and later openssh calls ioctl(TIOCSCTTY)
   to claim it as the controlling tty for the shell.
   -> The race happens in between them and its just a few syscalls

So the race that needs to be won is actually against the kernels
tiocsti() check, as the wrong mode stays much longer. If the race is
lost, its likely that the open still succeeds, but the injection of
commands is no longer possible. That might explain why the bug was
flagged as "local DoS".

If the race fails, the exploit loop could be tightened to close any fd's in the child,
so the open() automatically gets it as controlling tty and the race
is easier to win.

Kudos to the exploit dev who has PoC||GTFO'ed us.

Sebastian



> 
> On Jan 26, 2017 5:52 PM, <up201407890@alunos.dcc.fc.up.pt> wrote:
> 
> > Hi list,
> >
> > I know I'm late to the party, but I was bored, so I decided to write an
> > exploit for CVE-2015-6565 which affects OpenSSH 6.8-6.9
> > It is mostly considered to be a "DoS", even though Jann Horn publicly told
> > how it could be exploited for local privilege escalation, but I guess its
> > either PoC||GTFO for users to update.
> >
> > From https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2015-6565
> >
> > "sshd in OpenSSH 6.8 and 6.9 uses world-writable permissions for TTY
> > devices, which allows local users to cause a denial of service (terminal
> > disruption) or possibly have unspecified other impact by writing to a
> > device, as demonstrated by writing an escape sequence."
> >
> > I think the description should be updated.
> >
> > $ gcc not_an_sshnuke.c -o not_an_sshnuke
> > $ ./not_an_sshnuke /dev/pts/3
> > [*] Waiting for slave device /dev/pts/3
> > [+] Got PTY slave /dev/pts/3
> > [+] Making PTY slave the controlling terminal
> > [+] SUID shell at /tmp/sh
> > $ /tmp/sh --norc --noprofile -p
> > # id
> > euid=0(root) groups=0(root)
> >
> > Thanks,
> > Federico Bento.
> >
> >
> >
> > ----------------------------------------------------------------
> > This message was sent using IMP, the Internet Messaging Program.
> >

-- 

~ perl self.pl
~ $_='print"\$_=\47$_\47;eval"';eval
~ krahmer@suse.com - SuSE Security Team

