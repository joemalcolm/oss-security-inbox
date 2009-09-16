X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2009/09/16/6
Message-ID: <Pine.GSO.4.51.0909161848210.7046@faron.mitre.org>
Date: Wed, 16 Sep 2009 18:54:51 -0400 (EDT)
From: "Steven M. Christey" <coley@...us.mitre.org>
To: oss-security@...ts.openwall.com
Subject: watch for LDAP anonymous binds and empty passwords
Content-Type: text/plain; charset=utf-8


FYI, we've seen "LDAP anonymous binds and empty passwords" a couple times
in CVE, the latest being PostgreSQL (IDs forthcoming).  This smells like a
general vuln class to me, so developers may want to re-examine their LDAP
support.  CVE-2009-1905 and CVE-2007-6714 are examples.

I haven't investigated closely but the pattern may be that a blank
password can return successful authentication when anonymous binds are
allowed.  There's a relatively rare history of LDAP-specific vulns, which
suggests to me that not a lot of people have been looking for this.

- Steve
