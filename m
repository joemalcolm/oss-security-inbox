X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2017/01/12/7
Message-ID: <20170112132709.78a33f81@pc1>
Date: Thu, 12 Jan 2017 13:27:09 +0100
From: Hanno Böck <hanno@...eck.de>
To: oss-security@...ts.openwall.com
Subject: Re: invalid free in GNU ed before 1.14.1
Content-Type: text/plain; charset=utf-8

On Thu, 12 Jan 2017 13:10:41 +0100
Florian Weimer <fweimer@...hat.com> wrote:

> There is red/ed -r.  I wouldn't rely on it for security isolation,
> but the functionality does exist.

Oh, that's interesting.

I can confirm that it crashes also in restricted / red (-r) mode.
Therefore it should probably be considered a vulnerability.

-- 
Hanno Böck
https://hboeck.de/

mail/jabber: hanno@...eck.de
GPG: FE73757FA60E4E21B937579FA5880072BBB51E42
