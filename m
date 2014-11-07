X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/11/07/5
Message-ID: <CAHmME9pK-o3O4_89sPZ0du1z4Z+doNtL-_gnWR9oG9792EiDuQ@mail.gmail.com>
Date: Fri, 7 Nov 2014 02:58:09 +0100
From: "Jason A. Donenfeld" <Jason@...c4.com>
To: oss-security <oss-security@...ts.openwall.com>
Subject: Re: CVE Request: Qt Creator fails to verify SSH host key
Content-Type: text/plain; charset=utf-8

On Fri, Nov 7, 2014 at 12:24 AM, Michael Samuel <mik@...net.net> wrote:
>
> This is a serious bug (it certainly circumvents the security of
> OpenSSH),


My opinion too (obviously).


> but I think
> the proposed fix doesn't fit.
>

The patch on there most certainly won't be accepted -- it's just something
I hacked together in 5 minutes to use on my own project, and I figured the
Qt devs might get some inspiration to do it themselves, after seeing the
guts aren't really that hard.


>
> What might be a better solution is to store the public key for all
> devices, and accept
> if it matches any device you've talked to before.  On discovering a
> new device, it shows
> the fingerprint and prompts for a name/description.
>
> Then you can revoke devices in some other part of the UI when you need
> to clean up.
>

That actually seems like a decent compromise.  Though, it does mean if you
compromise one device that's ever been trusted, you compromise all others
by extension. But maybe that's okay for the use here.

