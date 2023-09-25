Received: (qmail 13912 invoked by uid 550); 25 Sep 2023 19:52:02 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9560 invoked from network); 25 Sep 2023 19:51:16 -0000
Date: Mon, 25 Sep 2023 21:51:10 +0200
From: Solar Designer <solar@openwall.com>
To: oss-security@lists.openwall.com
Message-ID: <20230925195110.GA8989@openwall.com>
References: <6EBBC128-36D2-4262-88F4-6889E9E6DE1E@mnx.io> <20230915210906.GA22532@openwall.com> <36F38D40-5F90-4E1B-B7A2-121431A3E6FE@mnx.io> <20230922172755.GA18909@openwall.com> <20230922214006.GA20989@openwall.com> <03F95D3B-FB70-46AC-AC19-9709599B8318@mnx.io> <20230925192334.GA8663@openwall.com> <82079A89-D6B3-4B46-AB36-A0B1FE50056B@mnx.io>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <82079A89-D6B3-4B46-AB36-A0B1FE50056B@mnx.io>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] illumos (or at least danmcd) membership in the distros list

On Mon, Sep 25, 2023 at 07:34:06PM +0000, Dan McDonald wrote:
> On Sep 25, 2023, at 3:23 PM, Solar Designer <solar@openwall.com> wrote:
> > 
> > Dan, although not strictly required, are there any contributing-back
> > task(s) you'd help with? -
> > 
> > https://oss-security.openwall.org/wiki/mailing-lists/distros#contributing-back
> 
> Implicitly I'm on the hook for technical task #5:
> 
> 	Check if related issues exist in implementations of
> 	similar functionality in other software (e.g., forked code
> 	including the same bug, or the same error made independently),
> 	and inform the list either way - primary: Ubuntu, backup:
> 	Flatcar Container Linux
> 
> (and so is FreeBSD and Alan-for-Oracle-Solaris in their domains).
> 
> But yes, most technical issues will be Linux-only ones judging from the audience here.

No, aside from Linux kernel issues most are not Linux-only (and for
Linux kernel ones upstream's current preference is to only bring them to
linux-distros once a fix is ready, if at all).

I don't recall Flatcar Container Linux helping with this task lately
(please correct me if I'm wrong), so we may reassign the backup role to
OmniOS, knowing that you'd only handle this for issues that get to the
distros list (and not those staying on the linux-distros sub-list).

Should we?

Separately, I'd like to hear from Flatcar Container Linux here. ;-)

> As for the others... off the top of my head, I'm curious to know:
> 
> ??? Set up and maintain more reliable oss-security Twitter/Mastodon feed(s) (the existing Twitter feed occasionally misses messages)
> 
> what the source for such a feed would contain (e.g. content? Frequency? expectation of interaction?)? I'm only visiting Twitter
> occasionally now, and I'm on good terms with my Mastodon server admin such that I *might* be able to establish a mastodon/fedi feed there.

There are lots of options here.  As I understand, the current Twitter
feed at https://twitter.com/oss_security works off the
https://seclists.org/oss-sec/ RSS feed.  This is a third-party archive
of the list, and somehow the Twitter feed often misses messages (even
those I do see in that web archive).  So the main requirement for an
alternative feed is for it to be far more reliable.  We do not currently
have RSS for the official web archive, but we/you could add that to the
blists software if needed.

> Hope this helps?

It does.  Thanks!

Alexander
