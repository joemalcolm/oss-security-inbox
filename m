X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2023/03/24/2
Message-ID: <39fbbc4c-95c1-2997-aeee-57982a76fcbd@apache.org>
Date: Fri, 24 Mar 2023 15:04:50 +0000
From: Marcus Lange <marcus@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2022-38745: Apache OpenOffice: Empty entry in Java class path 
Content-Type: text/plain; charset=utf-8

Severity: moderate

Description:

Apache OpenOffice versions before 4.1.14 may be configured to add an empty entry to the Java class path. This may lead to run arbitrary Java code from the current directory.

Credit:

European Commission's Open Source Programme Office (sponsor)

References:

https://openoffice.apache.org/
https://www.cve.org/CVERecord?id=CVE-2022-38745

