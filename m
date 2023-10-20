X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2023/10/20/4
Message-ID: <CAP9KPhBoy-ES2LxZi1Ax7BaAHwF5B2--ZqWtYUVEBbQ4P66XiQ@mail.gmail.com>
Date: Fri, 20 Oct 2023 18:41:41 +1100
From: David Leadbeater <dgl@....cx>
To: oss-security@...ts.openwall.com
Subject: Re: with firefox on X11, any page can pastejack you anytime
Content-Type: text/plain; charset=utf-8

On Fri, 20 Oct 2023 at 12:58, David Leadbeater <dgl@....cx> wrote:
[...]
> Then you get a command being run with no interaction; this appears to
> work with xterm (384) + fish for example.

I missed that this is configurable in xterm, so this can be mitigated
by setting the Xresource:

disallowedPasteControls: BS,DEL,ENQ,EOT,ETX,ESC,NUL

i.e. Adding "ETX" (^C) to the default set. (I've asked if this can be
the new default.)

David
