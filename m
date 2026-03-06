Received: (qmail 26299 invoked by uid 550); 7 Mar 2026 14:41:47 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 3796 invoked from network); 6 Mar 2026 23:18:16 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=debian.org;
	s=smtpauto.stravinsky; h=X-Debian-User:In-Reply-To:Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To
	:Cc:Content-ID:Content-Description;
	bh=8tp4oIA3nuTkN1lwksMzfO/9hv7HpUsThqS61BgTtC4=; b=LaPAItzlcRoFYpTNMi9veD6fUk
	0h56eYa77iX/1bfO+H6GnTg8iJIMGYMvKcaESmSJqOAoCC2YyQIrpjXT3FlDd7GGZtXa8CLqDas/K
	YcUW8npL+8ML/fprAZwrQRLW2s4tHGcYt5TJIvLZ06KM8y4fBfPydvc0dzXe14/kATfOUkU6YnT1d
	eC3Fxb7jR/JZHLBSeEf1lXN0etaUivJgi4tAtJmNYLnhAbmrYJDIzeOALFMQ2LoU8W/OdRIChUnx9
	IeIdyOzHngKQ5HFYSObiltVkT61W9/7JSMGP9KswtUNZS195ru0Yqys7/7n3QfapIzeh4j6Ix2JXT
	DA63Ckww==;
Date: Sat, 7 Mar 2026 00:17:55 +0100
From: Salvatore Bonaccorso <carnil@debian.org>
To: Guillem Jover <guillem@debian.org>, Solar Designer <solar@openwall.com>,
	Ron Ben Yizhak <ron.benyizhak@safebreach.com>,
	Justin Swartz <justin.swartz@risingedge.co.za>,
	bug-inetutils@gnu.org, oss-security@lists.openwall.com,
	simon@josefsson.org, auerswal@unix-ag.uni-kl.de
Message-ID: <aatgo8pqaI-4IOMo@eldamar.lan>
References: <CAB1hGqQwnSzEqtrefwqAxD+rWGu_EXVDmu-btMrNYqMzkzc9Kw@mail.gmail.com>
 <20260206172730.GA12303@unix-ag.uni-kl.de>
 <877bso8mhf.fsf@josefsson.org>
 <20260224011702.27987-1-justin.swartz@risingedge.co.za>
 <CAB1hGqSJPOQwc8h7g4u4WXjtDSupwkA8HjzEyU2gzbL5uavneg@mail.gmail.com>
 <aaGJlbbLS7cp0H-i@thunder.hadrons.org>
 <20260306151649.GB16746@openwall.com>
 <aar1K4kcGXpw_UGc@thunder.hadrons.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <aar1K4kcGXpw_UGc@thunder.hadrons.org>
X-Debian-User: carnil
Subject: Re: [oss-security] CVE-2026-28372: Telnetd Vulnerability Report

Hi,

On Fri, Mar 06, 2026 at 04:39:23PM +0100, Guillem Jover wrote:
> Hi!
> 
> On Fri, 2026-03-06 at 16:16:49 +0100, Solar Designer wrote:
> > On Fri, Feb 27, 2026 at 01:09:57PM +0100, Guillem Jover wrote:
> > > On Tue, 2026-02-24 at 11:57:34 +0200, Ron Ben Yizhak wrote:
> > > > I’d like to ensure we follow the standard CVE process here. Standard
> > > > practice dictates that a CVE is issued per individual fix. Generally, once
> > > > a fix is merged and released, it is assigned its own CVE. Even if that fix
> > > > is later bypassed, the original merge stands as a unique event in the
> > > > codebase, meaning we should issue two separate CVEs rather than grouping
> > > > them.
> > > 
> > > Salvatore Bonaccorso from the Debian Security Team got a CVE assigned
> > > for this, see <https://www.cve.org/CVERecord?id=CVE-2026-28372>. I'll
> > > update the Debian packaging on the next upload to point to that.
> > 
> > The CVE description says:
> > 
> > "telnetd in GNU inetutils through 2.7 allows privilege escalation that
> > can be exploited by abusing systemd service credentials support added to
> > the login(1) implementation of util-linux in release 2.40. This is
> > related to client control over the CREDENTIALS_DIRECTORY environment
> > variable, and requires an unprivileged local user to create a
> > login.noauth file."
> > 
> > So is this CVE only for the attack vector reported by Ron Ben Yizhak,
> > and not also for the other attack vector and more general issue reported
> > by Justin Swartz?
> > 
> > If so, are you going to assign a second CVE for the more general issue?
> 
> I'm not part of the Debian Security Team (I just maintain the inetutils
> package in Debian), but I think they assigned a CVE because there didn't
> seem to be one coming from upstream. I guess the expectation would be
> that if there's a new CVE to be assigned that would be handled by
> upstream, but if it's needed and it's not forthcoming they might assign
> another one? (Although the easier way forward would be to reuse the
> existing one, and issue an update for the DSA.)

I just need to clarify one thing here: The CVE was not assigned by the
Debian CNA, but as there was no CVE assigned by the issue reported by
Ron, I requested one from MITRE. There was none assigned in time when
we released the DSA, and at that point TTBOMK the more general
issue/root cause indication by Justin Swartz was not known. So the CVE
request to MITRE was done specifically as for the issue found by Ron.

Later, after the DSA release on our end, the CVE got assigned.

This is why
https://lists.debian.org/debian-security-announce/2026/msg00053.html
does not mention any CVE.

So in short: The CVE request to mitre was back then done specific to
the issue as it is described in the CVE description, specific to
CREDENTIALS_DIRECTORY environment variable passing to login(1).

So I think just another CVE should be requested for the more general
issue.

Regards,
Salvatore
