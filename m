X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2023/10/19/7
Message-ID: <d85658c838a1338c829cee30fb9c344688a2a470.camel@sambull.org>
Date: Thu, 19 Oct 2023 17:04:10 +0100
From: Sam Bull <9m199i@...bull.org>
To: oss-security@...ts.openwall.com
Subject: Re: with firefox on X11, any page can pastejack you anytime
Content-Type: text/plain; charset=utf-8

On Wed, 2023-10-18 at 13:25 -0500, Grant Taylor wrote:
> I think that this is more a problem with X11 security than it is a 
> problem specific to Mozilla / Firefox.

Also a problem with shell security. If you paste something with line breaks into bash, it
executes them. If you paste the same into fish, it doesn't (it'll display the multi-line
input and expect you to hit the enter key to execute it as a command).

Download attachment "signature.asc" of type "application/pgp-signature" (196 bytes)
