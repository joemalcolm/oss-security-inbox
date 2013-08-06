X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2013/08/06/10
Message-ID: <20130806183109.GA29541@redhat.com>
Date: Tue, 6 Aug 2013 20:31:09 +0200
From: Oleg Nesterov <oleg@...hat.com>
To: Andy Lutomirski <luto@...capital.net>
Cc: security@...nel.org, oss-security@...ts.openwall.com, Petr Matousek <pmatouse@...hat.com>, "Eric W. Biederman" <ebiederm@...ssion.com>, Linus Torvalds <torvalds@...ux-foundation.org>
Subject: Re: CLONE_NEWUSER local DoS
Content-Type: text/plain; charset=utf-8

On 08/06, Andy Lutomirski wrote:
>
> On Tue, Aug 6, 2013 at 9:47 AM, Oleg Nesterov <oleg@...hat.com> wrote:
> >
> > I'll send the patch, but perhaps there is something else. Eric?
>
> I think that's right.  OTOH, it's not going to prevent this from OOMing:

Aaaah. user_ns_cachep I guess? ns->parent logic, yes??

I convinced myself this should be fine but it seems you are right.

IIUC, this needs another fix. Will try tomorrow. Not that I think
this needs my help ;)

Oleg.

