X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2012/06/07/2
Message-ID: <06b9cc6a-6f31-4ba8-a71c-cf386efb05b8@zmail15.collab.prod.int.phx2.redhat.com>
Date: Wed, 06 Jun 2012 22:02:02 -0400 (EDT)
From: David Jorm <djorm@...hat.com>
To: oss-security@...ts.openwall.com
Subject: CVE request: Mojarra allows deployed web applications to read FacesContext from other applications
Content-Type: text/plain; charset=utf-8

Could a CVE please be assigned for this issue:

It was found that in Mojarra, the FacesContext that is made available during application startup is held in a ThreadLocal. The reference is not properly cleaned up in all cases. As a result, if a JSF WAR calls FacesContext.getCurrentInstance() during application startup, another WAR can get access to the leftover context and thus get access to the other WAR's resources.

References:
Upstream Mojarra bug: http://java.net/jira/browse/JAVASERVERFACES-2436
Bug for JBoss-specific impacts: https://issues.jboss.org/browse/JBPAPP-9197

Thanks
-- 
David Jorm / Red Hat Security Response Team

