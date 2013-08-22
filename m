X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2013/08/22/13
Message-ID: <CABYiri_oYjGUsy+c+Yw1KaAiKvZmM-jam8V0R+fRPMnc5199tA@mail.gmail.com>
Date: Thu, 22 Aug 2013 22:10:57 +0400
From: Andrey Korolyov <andrey@...l.ru>
To: oss-security@...ts.openwall.com
Subject: Possibly insecure permissions on sshd_config in Debian-based distros
Content-Type: text/plain; charset=utf-8

Hello,

At least both Precise and Wheezy has 0644 mask on this file so an
unprivileged local user can obtain some sensitive information from it.
Though it not CVE-worthy, but quite strange.
