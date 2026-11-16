X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/16/3
Message-ID: <c6040cd6-e6f4-7411-600d-0a8bfbeeaa41@apache.org>
Date: Mon, 16 Nov 2026 08:34:49 +0000
From: Arnout Engelen <engelen@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-128841: Apache Griffin Web Service: REST API is unauthenticated 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache Griffin Web Service: all versions

Description:

** UNSUPPORTED WHEN ASSIGNED ** Missing authentication for critical function vulnerability in Apache Griffin Web Service. The REST API does not have any authentication. This includes sensitive endpoints, such as job submission when a Livy/Spark backend is configured. The API must be properly secured on the network level, and this fact was arguably not documented as clearly as it could have.



This issue affects Apache Griffin Web Service: all versions.



As this project is retired, we do not plan to release a version that fixes this issue. Users are recommended to find an alternative or restrict access to the instance to trusted users.



NOTE: This vulnerability only affects products that are no longer supported by the maintainer.

Credit:

Subodh Kumar (reporter)

References:

https://attic.apache.org/projects/griffin.html
https://www.cve.org/CVERecord?id=CVE-2026-128841

