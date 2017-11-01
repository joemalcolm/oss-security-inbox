X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2017/11/01/13
Message-ID: <32e60988-4ab4-fe39-9d94-5f3453eb50b0@orlitzky.com>
Date: Wed, 1 Nov 2017 13:52:41 -0400
From: Michael Orlitzky <michael@...itzky.com>
To: oss-security@...ts.openwall.com
Subject: Re: Re: Fw: Security risk of vim swap files
Content-Type: text/plain; charset=utf-8

On 11/01/2017 11:41 AM, Z5T1 wrote:
> 
> " Move the swap file location to protect against CVE-2017-1000382
> silent !install -d -m 700 ~/.vim/swap/ 2>&1 > /dev/null
> set directory=~/.vim/swap/
> 
> This safely sets the swap file directory to a directory that should not
> cause any security problems.
This is what I used to do in emacs before I disabled the backups
completely. I was wondering if there were any problems with it. If there
aren't, it seems like a better default to me, for both emacs and vim.

It might be interesting to ask upstream how they'd feel about moving them.
