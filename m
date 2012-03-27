X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2012/03/27/2
Message-ID: <20120327141531.GH1398@redhat.com>
Date: Tue, 27 Mar 2012 08:15:31 -0600
From: Vincent Danen <vdanen@...hat.com>
To: oss-security@...ts.openwall.com
Subject: CVE request: distutils creates ~/.pypirc insecurely
Content-Type: text/plain; charset=utf-8

Standard flaw where a file that contains a username and password is
written with insecure permissions.  This only affects python 2.6 and
higher.

Could a CVE name be assigned to this flaw?  I don't think one has been
already.

References:

http://bugs.debian.org/cgi-bin/bugreport.cgi?bug=650555
https://bugzilla.redhat.com/show_bug.cgi?id=758905
http://bugs.python.org/issue13512
http://bugs.python.org/file23824/pypirc-secure.diff

Thanks.

-- 
Vincent Danen / Red Hat Security Response Team 
