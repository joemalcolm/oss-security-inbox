X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2017/12/17/9
Message-ID: <CAA7hUgFJbi9KUCyq732rjf8tbwkTv5Csy5aEbJ3FUxV8wyZT3A@mail.gmail.com>
Date: Sun, 17 Dec 2017 21:26:09 +0100
From: Raphael Geissert <atomo64@...il.com>
To: Open Source Security <oss-security@...ts.openwall.com>
Cc: security@...lab.com
Subject: Gitlab, LDAP integration vulnerable to MITM attack
Content-Type: text/plain; charset=utf-8

Hi,

This is just a heads up that I requested a CVE id for issue #30420[1]:
gitlab
between 9.4 and before 9.4.2 does not verify the identity of the LDAP
server.

This has been assigned CVE-2017-17716.

[1]https://gitlab.com/gitlab-org/gitlab-ce/issues/30420
(needless to say, this wasn't reported by me)

Cheers,
-- 
Raphael Geissert

