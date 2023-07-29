X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2023/07/29/1
Message-ID: <caf72d56-b63f-61d3-1d4d-7f3fee472b9f@apache.org>
Date: Sat, 29 Jul 2023 02:25:39 +0000
From: David Handermann <exceptionfactory@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2023-36542: Apache NiFi: Potential Code Injection with Properties Referencing Remote Resources 
Content-Type: text/plain; charset=utf-8

Severity: moderate

Affected versions:

- Apache NiFi 0.0.2 through 1.22.0

Description:

Apache NiFi 0.0.2 through 1.22.0 include Processors and Controller Services that support HTTP URL references for retrieving drivers, which allows an authenticated and authorized user to configure a location that enables custom code execution. The resolution introduces a new Required Permission for referencing remote resources, restricting configuration of these components to privileged users. The permission prevents unprivileged users from configuring Processors and Controller Services annotated with the new Reference Remote Resources restriction. Upgrading to Apache NiFi 1.23.0 is the recommended mitigation.

This issue is being tracked as NIFI-11744 

Credit:

nbxiglk (finder)

References:

https://nifi.apache.org/security.html#CVE-2023-36542
https://nifi.apache.org/
https://www.cve.org/CVERecord?id=CVE-2023-36542
https://issues.apache.org/jira/browse/NIFI-11744

Timeline:

2023-06-19: reported
2023-06-21: confirmed
2023-06-21: resolved

