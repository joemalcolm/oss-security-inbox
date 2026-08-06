X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/06/7
Message-ID: <39c19d9d-a66f-9164-b0bb-4c549a581151@apache.org>
Date: Thu, 06 Aug 2026 08:53:34 +0000
From: Alexandre Dutra <adutra@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-64640: Apache Polaris: register endpoint reads attacker-controlled storage location before allowed-locations validation 
Content-Type: text/plain; charset=utf-8

Severity: low 

Affected versions:

- Apache Polaris (org.apache.polaris:polaris-runtime-service) through 1.6.0

Description:

Apache Polaris did not consistently validate storage locations supplied during table and view registration.

An authenticated principal with permission to register a table or view could, depending on the affected release and registration path, cause Polaris to use the catalog's storage credentials to read a caller-selected Iceberg metadata file before verifying that the file was within the catalog's allowed storage locations.

If the catalog's underlying credentials could read an object outside that boundary, this could disclose limited information from the object.


Polaris could also accept registration metadata located within an allowed location that contained references to storage locations outside the allowed boundary.

This second condition did not itself cause Polaris to read the referenced external locations during registration.


The demonstrated impact is limited to confidentiality.

No unauthorized data modification or availability impact has been demonstrated.


The server-side read requires a deployment using S3 credential vending and an object outside the allowed locations that the catalog's underlying storage credentials can read.

Exploitation requires an authenticated principal with table- or view-registration privileges.

Credit:

Andrea Cosentino (finder)

References:

https://polaris.apache.org
https://www.cve.org/CVERecord?id=CVE-2026-64640

