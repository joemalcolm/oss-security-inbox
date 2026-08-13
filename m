X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/13/7
Message-ID: <34a046c2-1b2e-ab9f-0022-d339492c3e72@apache.org>
Date: Thu, 13 Aug 2026 13:52:35 +0000
From: Arnout Engelen <engelen@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-66256: Apache Shindig Common, Apache Shindig Social-Api: Remote Code Execution via XStream deserialization (OpenSocial REST API) 
Content-Type: text/plain; charset=utf-8

Severity: important 

Affected versions:

- Apache Shindig Common (org.apache.shindig:shindig-common): all versions
- Apache Shindig Social-Api (org.apache.shindig:shindig-social-api): all versions

Description:

** UNSUPPORTED WHEN ASSIGNED ** Deserialization of Untrusted Data vulnerability in Apache Shindig.

This issue affects Apache Shindig: all versions.

Users with access to the Shindig REST API can send specially-crafted requests to trigger arbitrary code execution on the server.

As this project is retired, we do not plan to release a version that fixes this issue. Users are recommended to find an alternative or restrict access to the instance to trusted users.

NOTE: This vulnerability only affects products that are no longer supported by the maintainer.

Credit:

Daryle Bourque, Horizon3.ai (finder)
Noah King, Horizon3.ai (finder)

References:

https://attic.apache.org/projects/shindig.html
https://www.cve.org/CVERecord?id=CVE-2026-66256

