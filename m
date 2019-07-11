X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2019/07/11/13
Message-ID: <4358648.2BLBotf1RR@merkaba>
Date: Thu, 11 Jul 2019 17:27:19 +0200
From: Martin Steigerwald <martin@...htvoll.de>
To: oss-security@...ts.openwall.com
Subject: Re: Privileged File Access from Desktop Applications
Content-Type: text/plain; charset=utf-8

Malte Kraus - 09.07.19, 15:58:
> None of the solutions actually provided the user with the accessed
> path or file operation in the polkit auth prompt. Users are
> confronted with an unspecific request for privileges that they can
> only allow or deny without knowing what exactly they are allowing.
> (This is unfortunately a common theme, e.g. on KDE the framework is
> still missing support for parameterizing polkit prompts.)

For me this looks like KDE developers address this now – at least 
partly:

[KAuth] Add support for action details in Polkit1 backend.
https://phabricator.kde.org/D21795

Thanks,
-- 
Martin
Download attachment "signature.asc" of type "application/pgp-signature" (834 bytes)
