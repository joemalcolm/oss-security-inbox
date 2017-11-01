X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2017/11/01/1
Message-ID: <20171101023330.GK30551@takahe.colorado.edu>
Date: Tue, 31 Oct 2017 20:33:30 -0600
From: Leonid Isaev <leonid.isaev@...a.colorado.edu>
To: oss-security@...ts.openwall.com
Subject: Re: Fw: Security risk of vim swap files
Content-Type: text/plain; charset=utf-8

On Tue, Oct 31, 2017 at 10:54:08AM -0700, Tim wrote:
> Also, it almost never makes sense to put things in /tmp, for several
> reasons pointed out by others.  Making ~/.vim/... the default location
> clearly is the best solution.

And all those reasons make no sense. /tmp has a sticky bit precisely so that
people could put stuff there, as opposed to /run.

Just to clarify:
1. vim creates a swap file applying user's umask.
   Tested with vim on ArchLinux and vi on Fedora, if your vim doesn't do that,
   the corresponding package is broken.
2. It is totally OK to edit files in /tmp or /dev/shm or /var/tmp.
   The described "attack" when someone plants a /tmp/file.swp before another
   user edits /tmp/file is not going to work because vim will complain that the
   swap file already exists.

Cheers,
-- 
Leonid Isaev
