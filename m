X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/30/3
Message-ID: <73ec500a-1472-f63e-2195-fa5aa4838c0d@apache.org>
Date: Sun, 30 Aug 2026 17:50:05 +0000
From: Emond Papegaaij <papegaaij@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-70449: Apache Wicket: Path traversal in resource style/variation/locale 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache Wicket (org.apache.wicket:wicket-core) 8.0.0 through 8.18.0
- Apache Wicket (org.apache.wicket:wicket-core) 9.0.0 through 9.23.0
- Apache Wicket (org.apache.wicket:wicket-core) 10.0.0 through 10.10.0

Description:

Improper validation of resource URL attributes in Apache Wicket allows an unauthenticated remote attacker to read files from the web application, including files under WEB-INF that the servlet container would not otherwise serve.

The locale, style and variation attributes decoded from a package resource URL are spliced into the resource lookup path without being checked for path separators. The IPackageResourceGuard — whose rejection of .. is one of the two intended controls — is applied to the resource name before those attributes are appended, and WebApplicationPath rejects only paths literally beginning with WEB-INF/. Neither control ever inspects the attacker-controlled portion of the path. On servlet containers that normalize .. in ServletContext.getResource(), a crafted request therefore escapes the intended package directory.

The set of readable files is limited to the file extensions permitted by the configured IPackageResourceGuard. The default SecurePackageResourceGuard permits only js, css, png, jpg, jpeg, gif, ico, cur, map, html, txt, swf, bmp, svg, avif, eot, ttf, woff and woff2, which excludes configuration formats. Applications that have added patterns to the guard, or replaced it with the blocklist-based PackageResourceGuard, can additionally disclose configuration files such as web.xml. Independently of the extension, the lookup performed before the guard runs acts as an existence oracle for arbitrary paths.

This issue affects Apache Wicket 8.18.0 and before, 9.23.0 and before and 10.10.0 and before.

Users are recommended to upgrade to version 8.19.0, 9.24.0 or 10.11.0, which fix the issue. Users of Apache Wicket 7.x or older, which are no longer supported, should upgrade to a supported version.

Credit:

Michael Mullins (finder)
n0mi1k (finder)

References:

https://wicket.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-70449

