X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/21/2
Message-ID: <f0b9d56c-6ebc-4b51-91ab-96806703fb90@oracle.com>
Date: Sat, 21 Nov 2026 11:09:32 -0800
From: Alan Coopersmith <alan.coopersmith@...cle.com>
To: oss-security@...ts.openwall.com
Subject: Ghostscript 10.08.0 fixes multiple CVEs, including "upload2shell"
Content-Type: text/plain; charset=utf-8

Ghostscript 10.08.0 was released on 2026-09-08 (though the release notes
accidentally list the 10.07.0 release date instead), and
https://ghostscript.readthedocs.io/en/gs10.08.0/News.html simply says
"This release addresses a number of potential security issues."

https://www.ghostscript.com/releases/cve/index.html identifies these
CVEs as fixed in 10.08.0:

CVE-2026-110133         https://www.cve.org/CVERecord?id=CVE-2026-110133
CVE-2026-112922         https://www.cve.org/CVERecord?id=CVE-2026-112922
CVE-2026-103226         https://www.cve.org/CVERecord?id=CVE-2026-103226
CVE-2026-19547          https://www.cve.org/CVERecord?id=CVE-2026-19547
CVE-2026-39919          https://www.cve.org/CVERecord?id=CVE-2026-39919

https://pwn.ai/upload2shell was published today additionally identifying
CVE-2026-125396 as also fixed in this release, and detailing ways it was
found to be exploitable through other programs passing files to Ghostscript.

The upload2shell website also got mentioned today in:
https://www.nytimes.com/2026/11/21/us/politics/tech-outages-ai-disruptions.html
which may bring additional attention to this issue.

-- 
         -Alan Coopersmith-                 alan.coopersmith@...cle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris

