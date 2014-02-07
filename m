X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/02/07/10
Message-ID: <CAPLnt652c74kxUXVA6MNf=gb7vVDUm8LFH7KK=vEJ-b06_MO2g@mail.gmail.com>
Date: Fri, 7 Feb 2014 10:39:41 -0800
From: Galen Charlton <gmc@...library.com>
To: oss-security@...ts.openwall.com
Subject: CVE request: multiple issues in Koha
Content-Type: text/plain; charset=utf-8

Hi,

As current release manager for Koha, I'd like to request CVE number(s)
for the following issues that were addressed in a security release
yesterday.

Release announcement:

http://koha-community.org/security-release-february-2014/

Issues fixed with the release:

[1] tools/pdfViewer.pl could be used to read arbitrary files on the server
(http://bugs.koha-community.org/bugzilla3/show_bug.cgi?id=11660)
[2] the staff interface help editor could be used to modify or create
arbitrary files on the server
(http://bugs.koha-community.org/bugzilla3/show_bug.cgi?id=11661)
[3] member-picupload.pl could be used to write to arbitrary files on the server
(http://bugs.koha-community.org/bugzilla3/show_bug.cgi?id=11662)
[4] the MARC framework import/export function did not require
authentication, and could be used to perform unexpected SQL commands
(http://bugs.koha-community.org/bugzilla3/show_bug.cgi?id=11666)

Regards,

Galen
-- 
Galen Charlton
Manager of Implementation
Equinox Software, Inc. / The Open Source Experts
email:  gmc@...library.com
direct: +1 770-709-5581
cell:   +1 404-984-4366
skype:  gmcharlt
web:    http://www.esilibrary.com/
Supporting Koha and Evergreen: http://koha-community.org &
http://evergreen-ils.org
