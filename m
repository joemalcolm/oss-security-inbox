X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2017/05/18/9
Message-ID: <20170518203147.2hgozxkkpg57ngen@eldamar.local>
Date: Thu, 18 May 2017 22:31:47 +0200
From: Salvatore Bonaccorso <carnil@...ian.org>
To: OSS Security Mailinglist <oss-security@...ts.openwall.com>
Subject: Deluge: CVE-2017-9031: WebUI component: directory traversal vulnerability
Content-Type: text/plain; charset=utf-8

Hi

CVE-2017-9031 was assigned for the following directory traversal issue
in Deluge's WebUI:

http://dev.deluge-torrent.org/wiki/ReleaseNotes/1.3.15

Quoting upstream announce:
> Highly recommended to upgrade to this release as it contains a
> directory traversal security fix that once again has the real
> potential to compromise your machine. 

The related commit is:

http://git.deluge-torrent.org/deluge/commit/?h=1.3-stable&id=41acade01ae88f7b7bbdba308a0886771aa582fd

which gives more information about the issue:

> [WebUI] Check render template files exist and raise 404 if not
> - Check render/* requests match to .html files in the 'render' dir
> - Protects against directory (path) traversal

Additional reference:
https://bugs.debian.org/862611

Regards,
Salvatore
