X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2012/01/20/13
Message-ID: <CAEZPtU5s-gsKuGsMLEJYbgSsC8Q4PTax82zZ4-NUwBSbroBdQg@mail.gmail.com>
Date: Fri, 20 Jan 2012 13:22:43 +0100
From: Pierre Joye <pierre.php@...il.com>
To: oss-security@...ts.openwall.com
Cc: security@....net
Subject: Re: Potential security issues fixed in PHP 5.3.9
Content-Type: text/plain; charset=utf-8

hi!

On Fri, Jan 20, 2012 at 6:00 AM, Kurt Seifried <kseifried@...hat.com> wrote:
> Hi, in addition to the xslt arbitrary file creation) there are some more potential security vulnerabilities that appear to have been fixed in 5.3.9. Can you confirm if these are not security issues? Also will you need CVE assignments for the ones that are (I can help with that).
>
> Sending to security@....net again and cc'ing oss-sec in case anyone on the list has ideas/comments.
>
> From the ChangeLog:
>
> ===========================================================
> Fixed bug #60150 (Integer overflow during the parsing of invalid exif
> header). (Stas, flolechaud at gmail dot com) - security bug
> There is an integer overflow in ext/exif/exif.c that can be used in order to
> cause a denial of service or read arbitrary memory.

Which one?

> ==========
> Fixed bug #55776 (PDORow to session bug). (Johannes)
> Is a Apache crash. It gives a CGI/FastCGI Send/Don't Send window.
> http://img171.imageshack.us/img171/3953/57126366.jpg [Open URL]
> After few minutes is crashing apache server:
> http://img840.imageshack.us/img840/2981/21231006.jpg [Open URL]

Still? or is crashing without that fix?

> ==========
> Fixed bug #60279 (Fixed NULL pointer dereference in
> stream_socket_enable_crypto, case when ssl_handle of session_stream is
> not initia\
> lized.) (shm) - (needs bad code)
>
> ==========
> Fixed bug #55622 (memory corruption in parse_ini_string). (Pierre) -
> need access to ini style config, but can cause memory corruption\
>  (code exec?)

That one could be considered as a secutiry issue while no actual flaw
has been found (did not dig too much either). I do not know the policy
at CVE's org about such issues.


> ==========
> Fixed bug #53502 (strtotime with timezone memory leak). (Derick) - minor
> dos?

I don't think we can or should consider memory leaks as DoS :)

-- 
Pierre

@pierrejoye | http://blog.thepimp.net | http://www.libgd.org
