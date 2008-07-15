X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2008/07/16/1
Message-Id: <200807152109.06098.thijs@debian.org>
Date: Tue, 15 Jul 2008 21:09:03 +0200
From: Thijs Kinkhorst <thijs@...ian.org>
To: oss-security@...ts.openwall.com
Cc: coley@...re.org
Subject: Re: CVE request: phpmyadmin < 2.11.7.1
Content-Type: text/plain; charset=utf-8

On Tuesday 15 July 2008 21:00, Hanno Böck wrote:
> From Changelog:
> - protection against XSS when register_globals is on and .htaccess
>   has no effect, thanks to Tim Starling

Note: this has already been assigned CVE-2008-2960 following a previous 
request from you.

> - (2.11.7.1)  [security] XSRF/CSRF by manipulating the db,
>   convcharset and collation_connection parameters,
>   thanks to YGN Ethical Hacker Group

This still needs one.


Thijs

Content of type "application/pgp-signature" skipped
