X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2021/10/07/6
Message-ID: <a2cd6ccf-b381-5513-3c7c-598a6da8c9c9@apache.org>
Date: Thu, 07 Oct 2021 15:24:32 +0000
From: Stefan Eissing <icing@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2021-42013: Path Traversal and Remote Code Execution in Apache HTTP Server 2.4.49 and 2.4.50 (incomplete fix of CVE-2021-41773) 
Content-Type: text/plain; charset=utf-8

Severity: critical

Description:

It was found that the fix for CVE-2021-41773 in Apache HTTP Server 2.4.50 was insufficient. An attacker could use a path traversal attack to map URLs to files outside the directories configured by Alias-like directives.  

If files outside of these directories are not protected by the usual default configuration "require all denied", these requests can succeed. If CGI scripts are also enabled for these aliased pathes, this could allow for remote code execution.

This issue only affects Apache 2.4.49 and Apache 2.4.50 and not earlier versions.

Credit:

Reported by Juan Escobar from Dreamlab Technologies, Fernando Muñoz from NULL Life CTF Team, and Shungo Kumasaka

