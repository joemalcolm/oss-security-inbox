X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2022/08/13/2
Message-ID: <7644e755-cfdd-5fa1-6e85-ea43ef69802b@apache.org>
Date: Fri, 12 Aug 2022 22:38:45 +0000
From: "Carl B. Marcum" <cmarcum@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2022-37401: Apache OpenOffice Weak Master Keys 
Content-Type: text/plain; charset=utf-8

Severity: important

Description:

Apache OpenOffice supports the storage of passwords for web connections in the user's configuration database. The stored passwords are encrypted with a single master key provided by the user. A flaw in OpenOffice existed where master key was poorly encoded resulting in weakening its entropy from 128 to 43 bits making the stored passwords vulnerable to a brute force attack if an attacker has access to the users stored config. This issue affects: Apache OpenOffice versions prior to 4.1.13.  Reference: CVE-2022-26307 - LibreOffice

Credit:

 OpenSource Security GmbH on behalf of the German Federal Office for Information Security

References:

https://www.openoffice.org/security/cves/CVE-2022-37401.html

