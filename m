X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/07/20
Message-ID: <4b98bbdc-37b4-22d5-084b-0e954346dc23@apache.org>
Date: Tue, 06 Oct 2026 22:08:24 +0000
From: Michael Smith <michaelsmith@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-90466: Apache Impala: Path traversal executes JARs outside trusted paths 
Content-Type: text/plain; charset=utf-8

Severity: important 

Affected versions:

- Apache Impala 4.5.2 before 4.5.3

Description:

Path traversal of 'trusted_jar_paths' in Impala 4.5.2 allows an attacker-controlled JAR to be loaded via a relative path where the prefix matches a path specified in 'trusted_jar_paths'.




The startup flag 'trusted_jar_paths' references URIs for loading files from local or remote filesystems. Path traversal can't override the schema, but can result in loading a JAR that has been uploaded to a different location in that filesystem via Impala DDLs such as CREATE DATA SOURCE and CREATE TABLE. Path traversal can only be used if a trusted path exists, so this attack requires 'trusted_jar_paths' have a non-empty value configured by the Impala admin.




Users are recommended to upgrade to version 4.5.3, which fixes this issue.

This issue is being tracked as IMPALA-15345 

Credit:

Andrew Rukin (Arenadata) (reporter)

References:

https://impala.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-90466
https://issues.apache.org/jira/browse/IMPALA-15345

