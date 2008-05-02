X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2008/05/02/1
Message-ID: <20080502114716.74cde9e6@redhat.com>
Date: Fri, 2 May 2008 11:47:16 +0200
From: Tomas Hoger <thoger@...hat.com>
To: oss-security@...ts.openwall.com
Cc: coley@...re.org
Subject: CVE-2008-0553 / CVE-2006-4484 also affects tkimg
Content-Type: text/plain; charset=utf-8

Hi!

It was brought to our attention that tkimg uses / forks tk gif handling
code and is affected by CVE-2008-0553 (as used for tk) / CVE-2006-4484
(as used for gd).

http://tkimg.svn.sourceforge.net/viewvc/tkimg?view=rev&revision=135

Tk fix:

http://tktoolkit.cvs.sourceforge.net/tktoolkit/tk/generic/tkImgGIF.c?r1=1.40&r2=1.41

tkimg changelog uses CVE-2006-4484 (as it's used in the tk commit
message as well), but CVE-2008-0553 should probably be used here.

-- 
Tomas Hoger / Red Hat Security Response Team
