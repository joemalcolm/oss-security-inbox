X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2978" "Tuesday" "26" "May" "2015" "17:30:40" "+0200" "up201407890@alunos.dcc.fc.up.pt" "up201407890@alunos.dcc.fc.up.pt" "<20150526173040.54227agdaxfauco4@webmail.alunos.dcc.fc.up.pt>" "83" "[oss-security] Re: Re: hwclock(8) SUID privilege escalation" nil nil nil "5" "2015052615:30:40" "[oss-security] Re: Re: hwclock(8) SUID privilege escalation" (number mark "        up201407890@ May 26   83/2978  " thread-indent "\"[oss-security] Re: Re: hwclock(8) SUID privilege escalation\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 11665 invoked by uid 550); 26 May 2015 21:22:54 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 19564 invoked from network); 26 May 2015 15:30:59 -0000
Message-ID: <20150526173040.54227agdaxfauco4@webmail.alunos.dcc.fc.up.pt>
MIME-Version: 1.0
Content-Type: text/plain;
	charset=ISO-8859-1;
	DelSp="Yes";
	format="flowed"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
User-Agent: Internet Messaging Program (IMP) H3 (4.2)
X-Virus-Scanned: amavisd-new at alunos.dcc.fc.up.pt
Date: Tue, 26 May 2015 17:30:40 +0200
From: up201407890@alunos.dcc.fc.up.pt
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: Re: hwclock(8) SUID privilege escalation
To: oss-security@lists.openwall.com

2015-05-26 14:59:46 +0100, stephane.chazelas@...il.com:

> 2015-05-26 12:47:47 +0200, up201407890@...nos.dcc.fc.up.pt:
> [...]
>> Please note that this is possible on Debian-derived (and therefore Ubunt=
u),
>> because /bin/sh is provided by dash which does NOT make use
>> of privmode (does not drop privileges if ruid !=3D euid, unlike bash),
>> which is a very stupid idea.
>>
>> privmode is surprisingly effective at mitigating some common vulnerabili=
ty
>> classes and misconfigurations, and it has been around since mid 90's.
>> Indeed, Chet Ramey (bash author and maintainer) explains that the
>> purpose of this is to prevent "bogus system(3)/popen(3) calls in
>> setuid executables"
> [...]
>
> No, bash does NOT drop privileges if ruid !=3D euid when called as
> sh either . If it were, it would break those commands that use
> system()/popen() from suid/sgid executables (which arguably they
> shouldn't be doing) and expect the euid/egid to be preserved.

> $ ls -ln env sh
> -rwsr-x--- 1    0 1000 27232 Nov 27 12:00 env*
> lrwxrwxrwx 1 1000 1000     9 May 26 14:51 sh -> /bin/bash*
> $ ./env bash -c 'id -u'
> 1000
> $ ./env ./sh -c 'id -u'
>
>
> It does however a mode in which the environment is not trusted
> as much (for instance exported functions, PS4... are ignored).
> PATH is still trusted and it's the responsibility of the caller
> to sanitise it.
>
> That's what the "privmode" is: when bash is priviledged, it's
> more careful. That's not specific to bash, that's in most
> shells.
>
> The difference with bash is that when not called as sh, you have
> to call bash with -p for that priviledged mode to be enabled
> (otherwise, bash drops privileges (and the privileged mode is
> not enabled since you're no longer privileged)).

I'm talking about this:

# gcc -xc - -otest <<< 'main(int argc, char *argv[]){system(argv[1]);}'
# chmod +s test
# exit
$ ls -l ./test /bin/sh
lrwxrwxrwx. 1 root root 9 May 24 11:58 /bin/sh -> /bin/bash
-rwsrwsr-x. 1 root root 8497 May 26 15:36 test
$ ./test /bin/sh
$ whoami
saken

$ su
Password:
# ln -sf /bin/dash /bin/sh
# exit
$ ./test /bin/sh
# whoami
root


> No, bash does NOT drop privileges if ruid !=3D euid when called as
> sh either . If it were, it would break those commands that use
> system()/popen() from suid/sgid executables (which arguably they
> shouldn't be doing) and expect the euid/egid to be preserved.

I believe that's what setuid()/seteuid()/setreuid() are for if you=20=20
really want to execute stuff as another user.

Setting setuid(0) before the system() call on my test and executing=20=20
/bin/sh (which is linked to bash) would drop me into a root shell.=20=20
This doesn't happen if there is no setuid(0) call.
The same doesn't happen when /bin/sh is linked to dash, there is no=20=20
need for setuid(0), it will drop me instantly into a root shell.

----------------------------------------------------------------
This message was sent using IMP, the Internet Messaging Program.

