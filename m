X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2017/11/05/3
Message-ID: <CAE=eJscBcsPYzh61Cz8Pp-b9T_wiDbHykG=NCUvD8sQ8+vdFrA@mail.gmail.com>
Date: Sun, 5 Nov 2017 17:01:41 +0200
From: Tomer Brisker <tbrisker@...hat.com>
To: oss-security@...ts.openwall.com
Cc: foreman-security@...glegroups.com
Subject: Foreman 1.2+ stored XSS in fact charts
Content-Type: text/plain; charset=utf-8

CVE-2017-15100: Facts reported by hosts to Foreman containing HTML are
not properly escaped on fact charts in the facts page, statistics
page, and trends page when hovering over the chart with the mouse.

Affects Foreman 1.2 and higher.

Patch available at https://github.com/theforeman/foreman/pull/4967
Fix will be release in Foreman 1.16.0 (to be released).
For more information see: http://projects.theforeman.org/issues/21519

-- 
Have a nice day,
Tomer Brisker
Red Hat Engineering
