X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2010/12/08/5
Message-ID: <20101208051909.GA21627@openwall.com>
Date: Wed, 8 Dec 2010 08:19:09 +0300
From: Solar Designer <solar@...nwall.com>
To: oss-security@...ts.openwall.com
Subject: Re: kernel: Dangerous interaction between clear_child_tid, set_fs(), and kernel oopses
Content-Type: text/plain; charset=utf-8

On Wed, Dec 08, 2010 at 07:51:18AM +0300, Solar Designer wrote:
> To me, things like this are more important than individual NULL pointer
> dereference bugs or the like.  So if those get CVEs, this one definitely
> should as well.

Oh, this was already assigned CVE-2010-4258 by Josh, in response to
Dan's posting (same topic, separate thread):

http://www.openwall.com/lists/oss-security/2010/12/02/7

Nelson, Dan - there was a "technical detail" behind the "amusing timing"
of your messages getting through to the list.  It shouldn't happen again
for the two of you. ;-)

Alexander
