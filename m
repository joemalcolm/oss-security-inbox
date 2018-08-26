X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3534" "Sunday" "26" "August" "2018" "14:00:58" "+0200" "Solar Designer" "solar@openwall.com" "<20180826120058.GA7071@openwall.com>" "70" "Re: [oss-security] About OpenSSH \"user enumeration\" / CVE-2018-15473" "^Date:" nil nil "8" "2018082612:00:58" "[oss-security] About OpenSSH \"user enumeration\" / CVE-2018-15473" (number mark "        solar@openwa Aug 26   70/3534  " thread-indent "\"Re: [oss-security] About OpenSSH \"user enumeration\" / CVE-2018-15473\"\n") "<alpine.BSO.2.21.1808261758080.76507@haru.mindrot.org>" ("<alpine.BSO.2.21.1808241046220.67512@haru.mindrot.org>" "<20180824182942.GA932@openwall.com>" "<alpine.BSO.2.21.1808251030060.32421@haru.mindrot.org>" "<20180825100149.GA2596@openwall.com>" "<alpine.BSO.2.21.1808261758080.76507@haru.mindrot.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 9605 invoked by uid 550); 26 Aug 2018 12:03:45 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 5319 invoked from network); 26 Aug 2018 12:01:09 -0000
Message-ID: <20180826120058.GA7071@openwall.com>
References: <alpine.BSO.2.21.1808241046220.67512@haru.mindrot.org> <20180824182942.GA932@openwall.com> <alpine.BSO.2.21.1808251030060.32421@haru.mindrot.org> <20180825100149.GA2596@openwall.com> <alpine.BSO.2.21.1808261758080.76507@haru.mindrot.org>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.BSO.2.21.1808261758080.76507@haru.mindrot.org>
User-Agent: Mutt/1.4.2.3i
Date: Sun, 26 Aug 2018 14:00:58 +0200
From: Solar Designer <solar@openwall.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] About OpenSSH "user enumeration" / CVE-2018-15473
To: oss-security@lists.openwall.com

On Sun, Aug 26, 2018 at 06:04:50PM +1000, Damien Miller wrote:
> On Sat, 25 Aug 2018, Solar Designer wrote:
> 
> > This could mean an extra getpwnam(3) call, which is a slightly greater
> > timing leak than what's present in one call. That may be further
> > mitigated by always doing two calls. Of course, this won't be anywhere
> > near timing-safe anyway.
> >
> > Now, it can be tricky to pick a specific fallback username in
> > OpenSSH-portable that we'd be OK with all non-existent usernames to
> > behave similarly to. "root" may somewhat likely have unusual password
> > hash (like it historically did on OpenBSD); "nobody" likely has its
> > password locked (but maybe that's OK - it is in fact common for SSH
> > users to have only public keys setup, and no passwords). Maybe there
> > should be a way to override this dummy username in sshd_config.
> 
> That sounds like a fair amount of complexity in return for scant
> benefit:

Thank you for sharing your opinion.

To me, it sounds like greater complexity of the resulting code, but it's
also a simpler change (higher level, easier to reason about) than your
previously discussed commit.  (And it avoids the need for further
reviews/changes dealing with maybe remaining worse-than-timing behavior
differences for existing vs. non-existent usernames, except for users
with non-default authentication settings - e.g., with authorized_keys
files or on DenyUsers.)

> at best you dodge a few (IMO uninteresting) bugs, but now you
> are guaranteed to have all your authz code exposed to a the attacker.

This sounds like a misunderstanding.  With the approach I suggested,
no extra pre-existing code would be exposed to any attacker (only very
few newly added lines of code would be), because all of that code would
have been reachable under the fallback username anyway.

> Moreover, using a "real fake" account gives a timing / system behaviour
> baseline too.

I'm not sure if that's what you meant, but yes it could be possible to
see that the response time for non-existent users is nearly the same,
whereas for other usernames it would vary slightly.  This is similar to
other (currently possible) attacks on getpwnam(3) not being timing-safe.

Your recent "global 5ms minimum plus an additional per-user 0-4ms delay
derived from a host secret" time for failed authentication should help
mitigate this.  [A further (yet still imperfect) mitigation would be to
replace the nanosleep() with a busy wait (which would be a closer match
to a system function taking longer to do its work, but still not exactly
the same in terms of effect e.g. on concurrent authentication attempts).
I am not sure if this further imperfect improvement is a good trade-off.
With nanosleep(), we conserve server resources and energy.]

> It might be harder to discern, but techniques for making
> remote observations of subtle system side-channels are scarily well-
> developed, and I'm sure that it would be pretty easy to spot if people
> applied them.

Right.  It's unrealistic to fully prevent such attacks given the
existing non-timing-safe system interfaces.

Anyway, I don't insist on any specific approach (nor would my preference
matter all that much), especially now that you've already made relevant
changes in the way you did.  I merely wanted to point out that the
attack surface increase was not certain (maybe that code was already
exposed under other usernames, also pre-authentication) and could have
been avoided with greater confidence using that other approach.

Alexander
