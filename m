Received: (qmail 31764 invoked by uid 550); 3 Apr 2024 19:44:04 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26451 invoked from network); 3 Apr 2024 19:42:26 -0000
Date: Wed, 3 Apr 2024 21:42:14 +0200
From: Solar Designer <solar@openwall.com>
To: oss-security@lists.openwall.com
Cc: Michael Dawson <midawson@redhat.com>
Message-ID: <20240403194214.GA12525@openwall.com>
References: <4323cf07-8f42-46f8-b075-c12e50a917e7n@googlegroups.com> <7e6a9e00-1caf-4523-b969-fdb410b240f7n@googlegroups.com> <9f41b1da-6faa-4364-aed8-60ff5eaf7c06n@googlegroups.com> <20240403164804.GA10525@openwall.com> <CAH0iFcZaZtAfhVwopR1vFgXuQJSvugL8Bz8OmQYS+kpq4VqGiA@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAH0iFcZaZtAfhVwopR1vFgXuQJSvugL8Bz8OmQYS+kpq4VqGiA@mail.gmail.com>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] Fwd: Node.js security update for all active release lines

On Wed, Apr 03, 2024 at 02:01:11PM -0400, Michael Dawson wrote:
> Sorry I don't remember the context as to why we agreed to send this forward
> in the first place.

As I can find, these just started arriving in July 2021.  And that was
appreciated.  Now I merely suggested how to do it a bit better.

> As opposed to expanding any work that's a one off for the community
> security stewards, since it sounds like it may not be meeting your needs,
> I'd propose that we just remove it from our security release steps and you
> can subscribe to the nodejs-sec mailing list like everybody else. From that
> you could generate some automation to pull down the content from the
> original post.

That's not the outcome I wanted, especially not knowing who would setup
and maintain said automation.  We do have an outstanding task to create
some tools for this sort of automation, but no one approached it yet and
it's meant to help prepare drafts for manual posting, so there would be
some per-message work anyway.

So please continue these postings as-is for now, and we'll hopefully be
adding follow-ups with the actual content like I did.  You could also
want to start including the Markdown files in nodejs-sec postings, so
simply forwarding them in here would do what's desired, but that's your
call indeed.

BTW, the previous update (for February) somehow wasn't sent in here.
Per my off-list suggestion, an oss-security contributor later sent a
detailed report:

https://www.openwall.com/lists/oss-security/2024/03/11/1

but we're not sure we'll do it each time.

Thanks,

Alexander
