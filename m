X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/12/17/8
Message-ID: <CAKZKFJBk=hhuUMw1V9HN3h=HwHBkpC0m=xX=q4zSR0AU=zNycA@mail.gmail.com>
Date: Wed, 17 Dec 2014 12:57:44 -0500
From: Tute Costa <tute@...ughtbot.com>
To: oss-security@...ts.openwall.com
Subject: CSRF vulnerability in doorkeeper OAuth provider rubygem
Content-Type: text/plain; charset=utf-8

Cross-site request forgery (CSRF) vulnerability in doorkeeper 1.4.0
and earlier allows remote attackers to hijack the user's OAuth
autorization code. This vulnerability has been assigned the CVE
identifier CVE-2012-5664.

Versions Affected:  1.4.0 and below
Fixed Versions:     1.4.1, 2.0.0

Impact
------

Doorkeeper's endpoints didn't have CSRF protection. Any HTML document
on the Internet can then read a user's authorization code with
arbitrary scope from any Doorkeeper-compatible Rails app you are
logged in.

Releases
--------

The 1.4.1 and 2.0.0 releases are available at
https://rubygems.org/gems/doorkeeper and
https://github.com/doorkeeper-gem/doorkeeper.

Upgrade Process
---------------

Upgrade doorkeeper version at least to 1.4.1.

Workarounds
-----------

There are no feasible workarounds for this vulnerability.

Credits
-------
Thanks to Sergey Belov of DigitalOcean for finding the vulnerability,
Phill Baker of DigitalOcean for reporting and fixing it, and to Egor
Homakov of Sakurity.com for raising awareness.
