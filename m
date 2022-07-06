X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2022/07/06/2
Message-ID: <ta390o$qi2$1@ciao.gmane.io>
Date: Wed, 6 Jul 2022 06:10:32 -0000 (UTC)
From: Tavis Ormandy <taviso@...il.com>
To: oss-security@...ts.openwall.com
Subject: Re: DO NOT OPEN PREVIOUS MAIL Re: Denial of service in  GnuPG
Content-Type: text/plain; charset=utf-8

On 2022-07-04, Jakub Wilk wrote:
> As a data point, if Mutt has pgp_auto_decode=yes ("automatically attempt 
> to decrypt traditional PGP messages") in the config, it will trigger the 
> DoS when you view the message.

Hmm - I think you don't even need auto_decode, because x-action parameters
can trigger automatic decryption in mutt.

There's an example message here: https://gitlab.com/muttmua/mutt/-/issues/405

> (And it seems that if you lose patience waiting for the message to show 
> up and press ctrl+backslash in attempt to make it quit, it will actually 
> hang forever.)
>

I think you need at least something like max-output 104857600 in
gnupg.conf if you don't want trivial DoS pranks to be possible :)

Tavis.


-- 
 _o)            $ lynx lock.cmpxchg8b.com
 /\\  _o)  _o)  $ finger taviso@....org
_\_V _( ) _( )  @taviso

