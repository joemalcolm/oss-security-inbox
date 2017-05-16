X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2017/05/16/10
Message-ID: <20170516220345.GA10874@openwall.com>
Date: Wed, 17 May 2017 00:03:45 +0200
From: Solar Designer <solar@...nwall.com>
To: oss-security@...ts.openwall.com
Subject: Re: terminal emulators' processing of escape sequences
Content-Type: text/plain; charset=utf-8

Jason, Robert -

On Tue, May 02, 2017 at 12:05:27AM +0200, Robert ??wi??cki wrote:
> A harmless example from rxvt - pushing back the new-line character:
> 
> $ echo -ne "\eGQ;"
> ;$ 0
> bash: 0: command not found

Does this also affect rxvt-unicode?

Alexander
