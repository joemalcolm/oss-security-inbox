X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/27/7
Message-ID: <20261127073255.GA27463@openwall.com>
Date: Fri, 27 Nov 2026 08:32:55 +0100
From: Solar Designer <solar@...nwall.com>
To: oss-security@...ts.openwall.com
Subject: Re: CVE-2026-122093: Strong::Random versions through 0.96 for Perl allow every later rand output to be predicted from three earlier ones
Content-Type: text/plain; charset=utf-8

On Thu, Nov 26, 2026 at 12:49:57PM +0100, Kalin KOZHUHAROV wrote:
> And also don't cross-post on non-open MLs, since a reply gets
> (partially) rejected ;-/

Actually, as a moderator I don't mind cross-posts to closed MLs - I
think it's no big deal that you might inadvertently keep them on your
reply and get the message rejected.  However, I do mind cross-posts to
open MLs with a lot of subscribers:

https://oss-security.openwall.org/wiki/mailing-lists/oss-security#list-content-guidelines

"Please don't cross-post messages to oss-security and other mailing
lists at once, especially not to high-volume lists such as LKML and
netdev, as this tends to result in threads that wander partially or
fully off-topic (e.g., Linux kernel coding style detail may end up being
discussed in comments to a patch posted to LKML, but it would be
off-topic for oss-security). If you feel that something needs to be
posted to oss-security and to another list, please make separate
postings. You may mention the other posting(s) in your oss-security
posting, and even link to other lists' archives."

I didn't even think of closed lists when I wrote the above years ago.
Maybe we should insert the word "open" before "other mailing lists" now.

So I think it's fine for the Perl CPAN folks to continue CC'ing their
cve-announce list.

Alexander
