X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2011/11/29/1
Message-ID: <f480860a-0a21-48c5-869b-9d6abd23d958@zmail15.collab.prod.int.phx2.redhat.com>
Date: Tue, 29 Nov 2011 00:16:22 -0500 (EST)
From: David Jorm <djorm@...hat.com>
To: oss-security@...ts.openwall.com
Subject: CVE request: includeViewParameters re-evaluates param/model values as EL expressions on Mojarra/MyFaces
Content-Type: text/plain; charset=utf-8

It has been found that when includeViewParameters is set to true, JSF 2 as implemented by Mojarra and MyFaces will re-evaluate parameter/model values as EL expressions.

Original bug:
http://java.net/jira/browse/JAVASERVERFACES-2247

MyFaces bug:
https://issues.apache.org/jira/browse/MYFACES-3405

Write-up/reproducer:
http://www.jakobk.com/2011/11/jsf-value-expression-injection-vulnerability/

Thanks
-- 
David Jorm / Red Hat Security Response Team

