X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/01/2
Message-ID: <d645733c-962c-4a40-9785-5f00073621f3@oracle.com>
Date: Fri, 31 Jul 2026 18:03:40 -0700
From: Alan Coopersmith <alan.coopersmith@...cle.com>
To: oss-security@...ts.openwall.com
Subject: Rejected CVE reports against SQLite, libraw, ESP32-audioI2S
Content-Type: text/plain; charset=utf-8

https://github.com/programmervuln/cveadvisory- details several dozen
CVEs, some of which were already published on cve.org with links to
these descriptions earlier this week.  Many were for SQLite, others
covered libraw and ESP32-audioI2S.

JFrog today published their analysis that the SQLite ones they analyzed
seemed to be LLM slop, citing code that didn't exist in the listed
versions or logic unrelated to the claimed bug:
https://research.jfrog.com/post/sqlite-critical-cves-or-llm-slops/

Mitre seems to have rejected the whole lot today:
https://github.com/CVEProject/cvelistV5/commit/6a1b7cf5b6c9d917e51a0c9f2d3419fe5f27fde4

This is a useful reminder that MITRE and most other CNAs which assign
CVEs for code they don't produce themselves operate on the honor system,
and trust CVE requesters to have verified the information they provide,
since the CNA is often not in a position of being able to verify the
report themselves (either due to not being funded to do all that work
or not having access to the necessary software/environment/details
needed to reproduce or verify).

-- 
         -Alan Coopersmith-                 alan.coopersmith@...cle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris

