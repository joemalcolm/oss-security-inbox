X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2023/02/20/2
Message-ID: <b9d6de6b-abff-33d5-2ced-a085a1ca54a6@apache.org>
Date: Mon, 20 Feb 2023 15:58:05 +0000
From: Mark Thomas <markt@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2023-24998: Apache Commons FileUpload: FileUpload DoS with excessive parts
Content-Type: text/plain; charset=utf-8

Severity: important

Description:

Apache Commons FileUpload before 1.5 does not limit the number of 
request parts to be processed resulting in the possibility of an 
attacker triggering a DoS with a malicious upload or series of uploads.

Credit:

Jakob Ackermann (finder)

References:

https://lists.apache.org/thread/4xl4l09mhwg4vgsk7dxqogcjrobrrdoy
https://commons.apache.org/
https://www.cve.org/CVERecord?id=CVE-2023-24998
