Received: (qmail 13421 invoked by uid 550); 30 Mar 2024 12:53:05 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 14190 invoked from network); 30 Mar 2024 11:50:35 -0000
Resent-From: "Mike O'Connor" <mjo@dojo.mi.org>
Resent-Date: Sat, 30 Mar 2024 07:49:11 -0400
Resent-Message-ID: <Zgf8N7AyA0238nSx@dojo.mi.org>
Resent-To: oss-security@lists.openwall.com
Date: Sat, 30 Mar 2024 07:36:50 -0400
From: "Mike O'Connor" <mjo@dojo.mi.org>
To: oss-security@lists.openwall.com
Message-ID: <Zgf5Une4-L9-lLYY@dojo.mi.org>
References: <20240329155126.kjjfduxw2yrlxgzm@awork3.anarazel.de>
 <uu76c4$u7g$1@ciao.gmane.io>
 <20240329211052.GA2470@openwall.com>
 <uu7da3$87n$1@ciao.gmane.io>
 <20240329221938.dqit6xuh4es2v6gc@awork3.anarazel.de>
 <uu7g5q$8hl$1@ciao.gmane.io>
 <01322afdcf6b4dd7b81452dc5afed6b1@amazon.com>
 <6038e843-fc3f-4c51-a48c-feb283242b41@canonical.com>
 <uu7k2m$61a$1@ciao.gmane.io>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <uu7k2m$61a$1@ciao.gmane.io>
X-Greylist: inspected by milter-greylist-4.5.11 (angus.mystery.com [127.0.0.1]); Sat, 30 Mar 2024 07:50:25 -0400 (EDT) for IP:'127.0.0.1' DOMAIN:'localhost' HELO:'angus.mystery.com' FROM:'mjo@dojo.mi.org' RCPT:''
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.11 (angus.mystery.com [127.0.0.1]); Sat, 30 Mar 2024 07:50:25 -0400 (EDT)
Subject: Re: [oss-security] Re: backdoor in upstream xz/liblzma leading to
 ssh server compromise

:Okay, but do we agree that if there is a mitigation available, it's better
:for it to be public?
:
:Isn't doing `dnf downgrade xxx` a mitigation, or `systemctl xxx stop`?

Downgrage *probably* is, for what was known at the time.  But if you
weren't sure of scope, "systemctl xxx stop" could become "/sbin/halt
until we know it's safe(r)".  Sounds like overreaction?  *Probably*.

Probably is such a *fun* word.

Typically, there's an attempt to work it out with upstream for a fix,
It's one thing when "upstreamn" is belligerent, missing, or filled
with drain-bamaged agendas -- all common-enough reasons for problems
in engaging upstream.  It's another thing when they appear to be
criminally malicious.  Then, it might make sense to take it to the
"authorities", maybe get guidance like "don't touch the active crime
scene", perhaps get that helicopter of agents you spoke fondly of (*).

If upstream's been compromised for awhile, as *seems* to be the case
here, that calls for a broader inspection.  The mitigation might be
"remove xz from OS altogether", or "downgrade several years worth",
before the bad actor(s) (if you're sure you can isolate).  Either of
those might involve more than split-second "consumer first" decision.
Going public with "backdoor" without that thought through a bit might
be more risky for consumers than the backdoor.

And all this assumes you aren't being victimized by your own product
due to the issue.  A wise flight attendant once said to me "in case of
an emergency, please assist youtself before assisting others".  

:We all want users to be secure as fast as possible. The discussion is
:whether keeping backdoors embargoed helps achieve that.

How are remote backdoors different than other severe remote auth vulns
from an embargo perspective?  Does backdoor imply MORE or LESS abuse
than "weird magic packet = r00t"?  Perhaps both were implemented with
malicious intent, but the latter hides their tracks better.  Network
backdoors tend to wither with overuse, due to flow data and such.
(Oh, and folks like Andres Freund turning into modern-day Cliff Stolls
chasing down CPU time irregularities -- thanks muchly!)

I don't pretend to know any of the answers here.  I'm glad smart and
wise people are asking the questions, trying to do the right thing,
willing to (re)calibrate response as necessary.  

(Heck, I'm just grateful that someone assigned a CVE, so we don't HAVE
to talk about this issue as "the sshd vulnerability" or, worse yet,
the "Bad Friday" branded vulnerability.)


Take FWIW...
-Mike


(*) They never tell ME when they're sending out the helicopters of
    agents.  Hwo rude of them!  :)


-- 
 Michael J. O'Connor                                          mjo@dojo.mi.org
 =--==--==--==--==--==--==--==--==--==--==--==--==--==--==--==--==--==--==--=
"Ball don't lie!"                                                      -Sheed
