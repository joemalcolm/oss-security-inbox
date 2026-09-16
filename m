X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/16/11
Message-ID: <40ee045c-82af-8c1f-8d1c-cf223bd4fd95@apache.org>
Date: Wed, 16 Sep 2026 14:16:18 +0000
From: David Handermann <exceptionfactory@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-87976: Apache NiFi Registry: Improper Limitation of Pathname in Persisted Extension Bundles 
Content-Type: text/plain; charset=utf-8

Severity: High 

Affected versions:

- Apache NiFi Registry (org.apache.nifi.registry:nifi-registry-framework) 0.4.0 through 2.11.0

Description:

Apache NiFi Registry 0.4.0 through 2.11.0 are subject to path manipulation when storing extension bundle content using group, artifact, and version coordinates from uploaded NAR manifests. The default file persistence provider used coordinates as filesystem path components without rejected parent-directory names, and the path-containment check compared an unnormalized resolved path. An authenticated user authorized to write and delete bundles in a bucket can upload a NAR with a crafted manifest resulting in file system operations outside of the file persistence directory. Upgrading to Apache NiFi Registry 2.12.0 is the recommended mitigation, which rejects parent-directory coordinates and requires a normalized path toremain a strict child of the storage root location.

This issue is being tracked as NIFI-16329 

Credit:

lichoin (finder)

References:

https://nifi.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-87976
https://issues.apache.org/jira/browse/NIFI-16329

