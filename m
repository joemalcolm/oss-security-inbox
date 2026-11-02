X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/02/4
Message-ID: <61eaf75f-c245-81e5-ab7c-1383b64e3853@apache.org>
Date: Mon, 02 Nov 2026 15:52:17 +0000
From: Arnout Engelen <engelen@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-119641: Apache Oozie: workflow rerun bypasses the per-job ACL and reassigns ownership 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache Oozie: all versions

Description:

** UNSUPPORTED WHEN ASSIGNED ** Improper input validation vulnerability in Apache Oozie. An authenticated Oozie user can reconfigure another tenant's
workflow job and change its ownership.



This issue affects Apache Oozie: all versions.



As this project is retired, we do not plan to release a version that fixes this issue. Users are recommended to find an alternative or restrict access to the instance to trusted users.



NOTE: This vulnerability only affects products that are no longer supported by the maintainer.

Credit:

Hari (Harikrishna KP) (reporter)

References:

https://attic.apache.org/projects/oozie.html
https://www.cve.org/CVERecord?id=CVE-2026-119641

