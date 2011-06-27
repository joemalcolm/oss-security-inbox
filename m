X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2011/06/27/11
Message-ID: <20110627163423.GA6806@openwall.com>
Date: Mon, 27 Jun 2011 20:34:23 +0400
From: Solar Designer <solar@...nwall.com>
To: oss-security@...ts.openwall.com
Cc: Michael Matz <matz@...e.de>, Ludwig Nussel <ludwig.nussel@...e.de>, Thorsten Kukuk <kukuk@...e.de>, Andreas Jaeger <aj@...e.de>
Subject: Re: CVE request: crypt_blowfish 8-bit character mishandling
Content-Type: text/plain; charset=utf-8

On Mon, Jun 27, 2011 at 05:44:42PM +0200, Michael Matz wrote:
> What's this 0xff business that crept up recently?  It's all characters 
> with the high bit set, not just 0xff, that pose problems.  Let's be 
> precise with these issues.

We're considering the state we'll be in after upgrade to fixed code.
0xff is the only known practical way to have a correctly computed hash
match one computed by the buggy code in cases where the latter was in
fact computed incorrectly.  Since a large subset of such incorrectly
computed hashes had some of the original passwords' characters ignored,
some working passwords for them are too easy to find, including in some
cases passwords that will work even after the bug in the code is fixed.
Those passwords will contain specifically the 0xff character.  This is
why we may want to treat the 0xff character specially.

Alexander
