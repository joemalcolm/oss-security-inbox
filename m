X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2013/03/20/11
Message-ID: <CAJzxam+Gs2wua5arNqWU3nxvbDAZTB=MVTZWaYdO-++KoHe3nw@mail.gmail.com>
Date: Thu, 21 Mar 2013 01:13:15 +1100
From: David Black <disclosure@....org>
To: oss-security <oss-security@...ts.openwall.com>
Subject: CVE Request: python-pip insecure temporary directory handling
Content-Type: text/plain; charset=utf-8

Prior to version 1.3 pip used '/tmp/pip-build' as a temporary
directory and as per the report in
https://github.com/pypa/pip/issues/725 would follow a symbolic link
placed at '/tmp/pip-build' when writing temporary files.
