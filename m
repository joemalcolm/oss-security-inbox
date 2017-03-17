X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2017/03/17/2
Message-ID: <CA+zp4VN23BSr2aCjrZohXM94UCFXdK8s5z81DLodSjbkDoMwUw@mail.gmail.com>
Date: Fri, 17 Mar 2017 09:08:39 +0100
From: Damien Regad <dregad@...tisbt.org>
To: oss-security@...ts.openwall.com
Subject: Advisory: XSS in MantisBT Source Integration Plugin (CVE-2017-6958)
Content-Type: text/plain; charset=utf-8

A cross-site scripting (XSS) vulnerability in the MantisBT Source
Integration plugin search result page allows remote attackers to inject
arbitrary HTML or JavaScript (the latter, only if MantisBT's CSP settings
permit it) by crafting any valid parameter.

Affected versions: 2.0.0-beta.1 through 2.0.1
Fixed in versions: 2.0.2 (released 2017-03-16)

Patch:
https://github.com/mantisbt-plugins/source-integration/commit/b014da5687ec37c571105627bf090cb6f270ec35

Credits:
Reported by Dmitry Ivanov (d1m0ck) https://twitter.com/d1m0ck
Fixed by Damien Regad

References:
- Initial report http://openbugbounty.org/incidents/218993/
- Issue tracker https://github.com/mantisbt-plugins/source-integration/
issues/205
- Release
https://github.com/mantisbt-plugins/source-integration/releases/tag/v2.0.2

<http://www.mantisbt.org/bugs/view.php?id=22486>

