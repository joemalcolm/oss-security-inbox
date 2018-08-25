X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2984" "Saturday" "25" "August" "2018" "12:01:49" "+0200" "Solar Designer" "solar@openwall.com" "<20180825100149.GA2596@openwall.com>" "60" "Re: [oss-security] About OpenSSH \"user enumeration\" / CVE-2018-15473" "^Date:" nil nil "8" "2018082510:01:49" "[oss-security] About OpenSSH \"user enumeration\" / CVE-2018-15473" (number mark "        solar@openwa Aug 25   60/2984  " thread-indent "\"Re: [oss-security] About OpenSSH \"user enumeration\" / CVE-2018-15473\"\n") "<alpine.BSO.2.21.1808251030060.32421@haru.mindrot.org>" ("<alpine.BSO.2.21.1808241046220.67512@haru.mindrot.org>" "<20180824182942.GA932@openwall.com>" "<alpine.BSO.2.21.1808251030060.32421@haru.mindrot.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 10005 invoked by uid 550); 25 Aug 2018 10:06:22 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 5836 invoked from network); 25 Aug 2018 10:01:58 -0000
Message-ID: <20180825100149.GA2596@openwall.com>
References: <alpine.BSO.2.21.1808241046220.67512@haru.mindrot.org> <20180824182942.GA932@openwall.com> <alpine.BSO.2.21.1808251030060.32421@haru.mindrot.org>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.BSO.2.21.1808251030060.32421@haru.mindrot.org>
User-Agent: Mutt/1.4.2.3i
Date: Sat, 25 Aug 2018 12:01:49 +0200
From: Solar Designer <solar@openwall.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] About OpenSSH "user enumeration" / CVE-2018-15473
To: oss-security@lists.openwall.com

On Sat, Aug 25, 2018 at 10:32:12AM +1000, Damien Miller wrote:
> On Fri, 24 Aug 2018, Solar Designer wrote:
> > On Fri, Aug 24, 2018 at 10:58:20AM +1000, Damien Miller wrote:
> > > Finally, and perhaps most importantly: there's a fundamental tradeoff
> > > between attack surface and fixing this class of bug. As a concrete
> > > example, fixing this one added about 150 lines of code to our
> > > pre-authentication attack surface. In this case, we were willing to do
> > > this because we had confidence in the additional parsing, mostly because
> > > it's been reviewed several times and we've conducted a decent amount of
> > > fuzzing on it. But, given the choice between leaving a known account
> > > validity oracle or exposing something we don't trust, we'll choose the
> > > former every time.
> > 
> > Can you summarize for us all (on these mailing lists) the commits
> > leading to OpenSSH 7.8 that deal with this issue and add "about 150
> > lines of code", please? 
> 
> It's this one:
> 
> >  * sshd(8): avoid observable differences in request parsing that could
> >    be used to determine whether a target user is valid.
> 
> (Commit 74287f5df9)

This is the same commit that Qualys referenced, but in a different tree:

https://github.com/openssh/openssh-portable/commit/74287f5df9966a0648b4a68417451dd18f079ab8

> Note that there's no new code added, but delaying the checks means more
> code is exposed before the authentication handler bails out.

Oh, right.  Thanks.  However, exposing more code before one specific
authentication attempt bails out isn't necessarily as bad as adding that
code to the attack surface: some or all of this code might have already
been exposed under different usernames.

To be confident we're only reaching code that's already exposed under a
different username, we may replace the tested-non-existent username with
that existing username and also set a flag to force authentication to
fail later.  Yes, more checks would then be run when authenticating with
an unknown username, but those wouldn't add to attack surface as they
were reachable with that other username anyway.

This doesn't have to be literally all conditions and checks - it may be
sufficient to match behavior for one certain existing username.

This could mean an extra getpwnam(3) call, which is a slightly greater
timing leak than what's present in one call.  That may be further
mitigated by always doing two calls.  Of course, this won't be anywhere
near timing-safe anyway.

Now, it can be tricky to pick a specific fallback username in
OpenSSH-portable that we'd be OK with all non-existent usernames to
behave similarly to.  "root" may somewhat likely have unusual password
hash (like it historically did on OpenBSD); "nobody" likely has its
password locked (but maybe that's OK - it is in fact common for SSH
users to have only public keys setup, and no passwords).  Maybe there
should be a way to override this dummy username in sshd_config.

Alexander
