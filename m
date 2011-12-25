X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2011/12/25/2
Message-ID: <493030fa-0b5b-4665-8c10-e8da4813f9f9@zmail15.collab.prod.int.phx2.redhat.com>
Date: Sat, 24 Dec 2011 19:37:35 -0500 (EST)
From: David Jorm <djorm@...hat.com>
To: oss-security@...ts.openwall.com
Subject: CVE Request for Apache ActiveMQ DoS
Content-Type: text/plain; charset=utf-8

A flaw in Apache ActiveMQ before 5.6.0 could allow a remote unauthenticated
attacker to abuse the 'failover' feature, allowing them to trigger a denial of
service against the broker service.  An attacker can issue multiple ActiveMQ
openwire connection requests using the string 'failover:tcp://[IP]:61616', and
due to the 'failure' mechanism, all TCP connections remain active even if a
valid session is not created.  After a few thousand requests, a
'java.net.SocketException: Too many open files' exception is triggered, leading
to a freeze or crash of the broker (and possibly connected systems as well).

Upstream bug:
https://issues.apache.org/jira/browse/AMQ-3294

Secunia advisory:
http://secunia.com/advisories/47112

Patch commits:
http://svn.apache.org/viewvc?view=revision&revision=1209700
http://svn.apache.org/viewvc?view=revision&revision=1211844

-- 
David Jorm / Red Hat Security Response Team

