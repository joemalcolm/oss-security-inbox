X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1646" "Tuesday" "26" "May" "2015" "14:59:46" "+0100" "Stephane Chazelas" "stephane.chazelas@gmail.com" "<20150526135946.GE4203@chaz.gmail.com>" "44" "[oss-security] Re: hwclock(8) SUID privilege escalation" nil nil nil "5" "2015052613:59:46" "[oss-security] Re: hwclock(8) SUID privilege escalation" (number mark "        stephane.cha May 26   44/1646  " thread-indent "\"[oss-security] Re: hwclock(8) SUID privilege escalation\"\n") "<20150526124747.16414nohrczpwps0@webmail.alunos.dcc.fc.up.pt>" ("<20150526124747.16414nohrczpwps0@webmail.alunos.dcc.fc.up.pt>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 31839 invoked by uid 550); 26 May 2015 14:00:37 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 31747 invoked from network); 26 May 2015 14:00:23 -0000
X-Injected-Via-Gmane: http://gmane.org/
Message-ID: <20150526135946.GE4203@chaz.gmail.com>
References: <20150526124747.16414nohrczpwps0@webmail.alunos.dcc.fc.up.pt>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
X-Complaints-To: usenet@ger.gmane.org
X-Gmane-NNTP-Posting-Host: 05448b1b.skybroadband.com
Content-Disposition: inline
In-Reply-To: <20150526124747.16414nohrczpwps0@webmail.alunos.dcc.fc.up.pt>
User-Agent: Mutt/1.5.21 (2010-09-15)
Date: Tue, 26 May 2015 14:59:46 +0100
From: Stephane Chazelas <stephane.chazelas@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: hwclock(8) SUID privilege escalation
To: oss-security@lists.openwall.com

2015-05-26 12:47:47 +0200, up201407890@alunos.dcc.fc.up.pt:
[...]
> Please note that this is possible on Debian-derived (and therefore Ubuntu),
> because /bin/sh is provided by dash which does NOT make use
> of privmode (does not drop privileges if ruid != euid, unlike bash),
> which is a very stupid idea.
> 
> privmode is surprisingly effective at mitigating some common vulnerability
> classes and misconfigurations, and it has been around since mid 90's.
> Indeed, Chet Ramey (bash author and maintainer) explains that the
> purpose of this is to prevent "bogus system(3)/popen(3) calls in
> setuid executables"
[...]

No, bash does NOT drop privileges if ruid != euid when called as
sh either . If it were, it would break those commands that use
system()/popen() from suid/sgid executables (which arguably they
shouldn't be doing) and expect the euid/egid to be preserved.

$ ls -ln env sh
-rwsr-x--- 1    0 1000 27232 Nov 27 12:00 env*
lrwxrwxrwx 1 1000 1000     9 May 26 14:51 sh -> /bin/bash*
$ ./env bash -c 'id -u'
1000
$ ./env ./sh -c 'id -u'
0

It does however a mode in which the environment is not trusted
as much (for instance exported functions, PS4... are ignored).
PATH is still trusted and it's the responsibility of the caller
to sanitise it.

That's what the "privmode" is: when bash is priviledged, it's
more careful. That's not specific to bash, that's in most
shells.

The difference with bash is that when not called as sh, you have
to call bash with -p for that priviledged mode to be enabled
(otherwise, bash drops privileges (and the privileged mode is
not enabled since you're no longer privileged)).

-- 
Stephane

