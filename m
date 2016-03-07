X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2016/03/07/16
Message-ID: <56DDEE49.1090904@redhat.com>
Date: Mon, 7 Mar 2016 22:10:33 +0100
From: Florian Weimer <fweimer@...hat.com>
To: oss-security@...ts.openwall.com
Subject: CVE-2016-1234 in glibc glob with GLOB_ALTDIRFUNC
Content-Type: text/plain; charset=utf-8

Alexander Cherepanov discovered that the glob implementation in glibc
does not correctly handle overlong names in struct dirent buffers when
GLOB_ALTDIRFUNC is used.

Upstream bug report:

  <https://sourceware.org/bugzilla/show_bug.cgi?id=CVE-2016-1234>

Florian
