X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2016/11/22/4
Message-ID: <20161122111332.4a850849@pc1>
Date: Tue, 22 Nov 2016 11:13:32 +0100
From: Hanno Böck <hanno@...eck.de>
To: oss-security@...ts.openwall.com
Subject: Re: WordPress (all versions): SPOF, RCE, and Negligence
Content-Type: text/plain; charset=utf-8

Hi,

Sorry, but I find a lot of your statements very questionable.

On Mon, 21 Nov 2016 11:54:33 -0500
Scott Arciszewski <scott@...agonie.com> wrote:

> Consequently, the WordPress update server is one of the largest single
> points of failure (SPOF) on the Internet.

Yeah, just like the update servers from Microsoft (which are definitely
a bigger POF). Or Apple. Or Google. Or Samsung. Or Mozilla.

Granted, having signatures as an additional protection on top of TLS
improves security, but it's an unfortunate fact that update
infrastructure is a big attack surface and a complicated problem.
Signatures can only change a single point of failure to two points of
failure.
The solution is probably something along the lines of transparency logs
and for binary software reproducible builds, but nobody has anything in
that space that works today.

Wordpress could do better in terms of security with some issues, e.g. I
find it disappointing that they don't seem to show any interest in
deploying CSP.
But the fact that Wordpress has auto updates at all imho puts it
in front of every other CMS out there in terms of security.
For all the others they basically expect their users to manually
install updates, sometimes within hours as could've been seen with
every RCE in joomla or drupal that was discovered in the past.
Wordpress having an auto update has probably protected millions of
webpages from being compromised.



-- 
Hanno Böck
https://hboeck.de/

mail/jabber: hanno@...eck.de
GPG: FE73757FA60E4E21B937579FA5880072BBB51E42
