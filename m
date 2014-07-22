X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/07/22/6
Message-ID: <CAA7hUgHvbpWiWGB1iHf9Q_qnxhTP3d_-_U4QsXSqU1RjZHQTAw@mail.gmail.com>
Date: Tue, 22 Jul 2014 14:45:04 +0200
From: Raphael Geissert <geissert@...ian.org>
To: Open Source Security <oss-security@...ts.openwall.com>
Subject: GLPI: unprivileged users can access cost information
Content-Type: text/plain; charset=utf-8

Hi,

A bug has been identified by Simone Imeri in GLPI where a user without
access to cost information can in fact see the information when
selecting cost as a search criteria[1]. This is fixed by commit [2]
which appears to have been included for version  0.84.7 [3].

I believe this should get a CVE id.

[1]https://forge.indepnet.net/issues/4984
[2]https://forge.indepnet.net/projects/glpi/repository/revisions/23061
[3]http://www.glpi-project.org/spip.php?page=annonce&id_breve=326&lang=en

Cheers,
-- 
Raphael Geissert - Debian Developer
www.debian.org - get.debian.net
