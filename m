X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/12/17/10
Message-Id: <4B148965-3272-4583-9E8E-CCD9A6E99D5D@thoughtbot.com>
Date: Wed, 17 Dec 2014 13:29:17 -0500
From: Tute Costa - thoughtbot <tute@...ughtbot.com>
To: oss-security@...ts.openwall.com
Subject: [CVE-2014-8144] CSRF vulnerability in doorkeeper 
Content-Type: text/plain; charset=utf-8

Cross-site request forgery (CSRF) vulnerability in doorkeeper 1.4.0
and earlier allows remote attackers to hijack the user's OAuth
autorization code. This vulnerability has been assigned the CVE
identifier CVE-2014-8144.

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

Download attachment "signature.asc" of type "application/pgp-signature" (802 bytes)
