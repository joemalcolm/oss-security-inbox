Received: (qmail 32454 invoked by uid 550); 28 May 2022 20:04:56 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32262 invoked from network); 28 May 2022 20:04:29 -0000
Date: Sat, 28 May 2022 22:04:26 +0200
From: Solar Designer <solar@openwall.com>
To: Mike O'Connor <mjo@dojo.mi.org>
Cc: oss-security@lists.openwall.com, peterz@infradead.org,
	nslusarek@gmx.net
Message-ID: <20220528200426.GB20541@openwall.com>
References: <trinity-5f3c0fdf-d83f-422e-9a05-c4ead66e42e1-1653077676864@3c-app-gmx-bap52> <20220521154759.GA15268@openwall.com> <trinity-4c518dcc-751b-4893-82dc-b2f80734eb9d-1653430844824@3c-app-gmx-bap13> <CAHQ_-nSt-YAyuSpjtFAe1Pvi9txYT7Z7kCT8j3nT4BjrqHOqCw@mail.gmail.com> <YpC1emS62JHunSQm@dojo.mi.org>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <YpC1emS62JHunSQm@dojo.mi.org>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] CVE-2022-1729: race condition in Linux perf subsystem leads to local privilege escalation

On Fri, May 27, 2022 at 07:26:50AM -0400, Mike O'Connor wrote:
> :I think it's important to remember that closed mailing lists filled
> :with private/embargoed exploits become valuable targets. They have
> :been compromised ever since Zardoz in the 1980s, vendor-sec was
> :discontinued for the same reason. By keeping zerodays in linux-distros
> :you paint a target on every recipient of the list. You should assume
> 
> Every recipient

Right.

> and their upstream providers.

Luckily, this is mostly not the case with (linux-)distros since all
messages relayed by the list are encrypted to their recipients' keys.

I say "mostly" because of possible two-stage attacks - where someone got
only temporary access to a subscriber's computer to compromise the
private key, but then targets their provider(s) for continued access to
encrypted messages.

> :that any working exploit code you share to a mailing list will
> :eventually fall into the hands of bad actors. Therefore, I don't think
> :selective full-disclosure works.
> 
> Long ago, I suggested that such mailing lists should PLAN to be public
> eventually, and disclose the info themselves before someone beats them
> to it.  For example, when June comes up, April linux-distros archives
> are made public, and that's advertised and known.  Given its two week
> max embargo period, this shouldn't pose an issue for anyone.  There is
> value in (eventually) seeing the sausage being made.  I know Solar has
> made old linux-distros mailing list metadata public, has advised folks
> that "any/all list postings may be made public once the corresponding
> security issue is publicly disclosed".  I suggest "may" become "will
> eventually".

Yes, I recall you had suggested that, and it's within consideration.

Alexander
