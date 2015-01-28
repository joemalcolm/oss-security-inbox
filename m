X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2015/01/28/12
Message-ID: <20150128111948.2eb63550@redhat.com>
Date: Wed, 28 Jan 2015 11:19:48 +0100
From: Tomas Hoger <thoger@...hat.com>
To: OSS Security <oss-security@...ts.openwall.com>
Subject: CVE request - ICU
Content-Type: text/plain; charset=utf-8

Hi!

Chrome 40.0.2214.91 fixes multiple issues in bundled ICU:

http://googlechromereleases.blogspot.com/2015/01/stable-update.html

Besides tracking externally reported issues under separate CVEs, Chrome
team also hid one ICU fix under the internal findings CVE-2015-1205.

https://code.google.com/p/chromium/issues/detail?id=432209 (non public)

is listed among High issues in:

https://code.google.com/p/chromium/issues/detail?id=449894

and can be tracked down to:

https://chromium.googlesource.com/chromium/deps/icu/+/dd727641e190d60e4593bcb3a35c7f51eb4925c5

and ICU upstream:

http://bugs.icu-project.org/trac/ticket/11371 (also non public)
http://bugs.icu-project.org/trac/changeset/36801

-- 
Tomas Hoger / Red Hat Product Security
