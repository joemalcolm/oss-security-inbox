X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/08/2
Message-ID: <77a0454a-f2b8-a232-09cf-4435348dd49f@apache.org>
Date: Tue, 08 Sep 2026 10:02:04 +0000
From: Dániel Dékány <ddekany@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-84939: Apache FreeMarker: A malformed locale may be exploitable for path traversal attacks 
Content-Type: text/plain; charset=utf-8

Affected versions:

- Apache FreeMarker (org.freemarker:freemarker) 2.2.0 through 2.3.34
- Apache FreeMarker (org.freemarker:freemarker) 2.3.35 unaffected
- Apache FreeMarker (org.freemarker:freemarker-gae) 2.2.0 through 2.3.34
- Apache FreeMarker (org.freemarker:freemarker-gae) 2.3.35 unaffected

Description:

Path traversal vulnerability in Apache FreeMarker template loading mechanism, if the attacker can specify an arbitrary malformed locale identifier to FreeMarker, and the localized lookup configuration setting is enabled (it's by default enabled).

This issue affects Apache FreeMarker from 2.2.0 through 2.3.34.

Users are recommended to upgrade to version 2.3.35. Disabling localized lookup in previous versions also mitigates this.

Note that even in versions affected by this vulnerability, the files that can be loaded remain restricted by the TemplateLoader that FreeMarker is configured to use. In particular, FileTemplateLoader prevents attempts to traverse outside the baseDir specified in its constructor. Other TemplateLoader implementations may allow access outside their designated base directory, but they are still constrained by the underlying storage mechanism—for example, a loader wrapping a Java class loader can only access resources that the class loader can load, while one wrapping a web application context can only access resources available through that context.

References:

https://freemarker.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-84939

