X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1720" "Saturday" "7" "January" "2017" "14:21:15" "+0100" "Martin Carpenter" "mcarpenter@free.fr" "<1483795275.8979.125.camel@juliet.mcarpenter.org>" "43" "Re: [oss-security] Re: Firejail local root exploit" "^Date:" nil nil "1" "2017010713:21:15" "[oss-security] Re: Firejail local root exploit" (number mark "        mcarpenter@f Jan  7   43/1720  " thread-indent "\"Re: [oss-security] Re: Firejail local root exploit\"\n") "<f47526d9-157e-1600-8f64-d737db07753c@web.de>" ("<730e35dc08384f6f9bef4e403802a871@imshyb02.MITRE.ORG>" "<f47526d9-157e-1600-8f64-d737db07753c@web.de>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 27718 invoked by uid 550); 7 Jan 2017 13:27:13 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 22384 invoked from network); 7 Jan 2017 13:21:31 -0000
Message-ID: <1483795275.8979.125.camel@juliet.mcarpenter.org>
In-Reply-To: <f47526d9-157e-1600-8f64-d737db07753c@web.de>
References: <730e35dc08384f6f9bef4e403802a871@imshyb02.MITRE.ORG>
	<f47526d9-157e-1600-8f64-d737db07753c@web.de>
X-Mailer: Evolution 3.10.4-0ubuntu2
Mime-Version: 1.0
X-sfr-mailing: LEGIT
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Date: Sat, 07 Jan 2017 14:21:15 +0100
From: Martin Carpenter <mcarpenter@free.fr>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: Firejail local root exploit
To: oss-security@lists.openwall.com

On Fri, 2017-01-06 at 18:08 +0100, sivmu wrote:
> Non-priv users can run seccomp filter on anything anyway.

prctl(PR_CAPBSET_DROP, ...) (see caps.c) requires CAP_SETPCAP. 


> Seccomp does not rewuire any privileges and as far as I know it onl
> restricts permissions (to use syscalls) and never expands them.

To be clear I was pondering the SECCOMP_RET_ERRNO case (not the more
typical case where uncatchable SIGKILL zaps the caller) and I don't
think this is feasible with current firejail. "waiting to happen", as I
said in my throwaway comment.

But if a non-privileged user can make the OS lie to a privileged (eg
setuid) program then there is clearly potential for shenanigans. There
is some similarity with FUSE -- make the OS lie about the state of the
file system -- but the barrier to entry is significantly higher for FUSE
(fuse group, allow_root, etc).

Maybe you could even persuade a seccomp-SIGKILLed process to leave the
system in some weird exploitable state. Eg rather than racing a chmod,
just have seccomp kill the process at that point. (That's a bit
hand-wavy -- the race is the problem in that example -- but hopefully
you can see what I'm trying to say).

The fact that I can't easily reason about this, that I can't say "this
strategy is safe", makes me uneasy.


> Also the question is how many of these issues are specific to firejail
> and how many of them also applied to (user)namespaces in general or
> wrapper tool lke bubblewrap that utilise namespaces as firejail does.
> 
> Meaning some of these issues could applie to a lot more programms.

Potentially, yes. Though bubblewrap is both more conservative and has a
cleaner approach to privilege management. Nice cat, too.


Martin.


