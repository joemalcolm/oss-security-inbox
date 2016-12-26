X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2016/12/26/5
Message-ID: <20161226145944.GV31189@scully.more-magic.net>
Date: Mon, 26 Dec 2016 15:59:44 +0100
From: Peter Bex <peter@...e-magic.net>
To: oss-security@...ts.openwall.com, security@...milo.org
Subject: Re: PHPMailer < 5.2.18 Remote Code Execution [CVE-2016-10033]
Content-Type: text/plain; charset=utf-8

On Mon, Dec 26, 2016 at 03:55:59PM +0100, Peter Bex wrote:
> The LCMS system Chamilo also uses PHPMailer for sending mails internally.

Correction: Older versions of Chamilo (up to and including 1.9) used it.
The current release (1.11) seems to use Swiftmailer.

Cheers,
Peter Bex

Download attachment "signature.asc" of type "application/pgp-signature" (474 bytes)
