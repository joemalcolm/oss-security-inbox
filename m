X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2017/10/31/12
Message-ID: <20171031175407.jcniviupwyab6qcl@sentinelchicken.org>
Date: Tue, 31 Oct 2017 10:54:08 -0700
From: Tim <tim-security@...tinelchicken.org>
To: oss-security@...ts.openwall.com
Subject: Re: Fw: Security risk of vim swap files
Content-Type: text/plain; charset=utf-8

On Tue, Oct 31, 2017 at 01:23:52PM +0100, Hanno Böck wrote:
> I just sent this to the vim dev list, but I guess it's interesting for
> oss-security, too.
> ...

Good thing to point out.  Same goes for other editors that drop ~ and
#...# files and the like.  The default location shouldn't be an
exposure.

Sure, you can argue that maybe some systems should ignore these files,
block access, etc, but it is pretty absurd to expect every other piece
of software in the universe to work around very unsafe defaults of text
editors.  

Also, it almost never makes sense to put things in /tmp, for several
reasons pointed out by others.  Making ~/.vim/... the default location
clearly is the best solution.

Cheers,
tim
