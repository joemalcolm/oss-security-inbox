X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2010/03/09/2
Message-ID: <20100309164649.GG7017@redhat.com>
Date: Tue, 9 Mar 2010 09:46:49 -0700
From: Vincent Danen <vdanen@...hat.com>
To: oss-security@...ts.openwall.com
Cc: "Steven M. Christey" <coley@...us.mitre.org>
Subject: CVE Request: postgresql integer overflow in hash table size calculation
Content-Type: text/plain; charset=utf-8

I've been looking and can't find a CVE name for this issue.  Could one
be assigned?

An integer overflow flaw was found in the way postgresql used to
calculate size for the hashtable for joined relations. An attacker could
formulate a specially-crafted sql query, which once processed would lead
to denial of service (postgresql daemon crash).

References:

https://bugzilla.redhat.com/show_bug.cgi?id=546621
http://archives.postgresql.org/pgsql-bugs/2009-10/msg00277.php

Thanks.

-- 
Vincent Danen / Red Hat Security Response Team 
