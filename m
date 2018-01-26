X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2018/01/26/3
Message-ID: <0B018C16-38A7-467C-BD58-5C810C51FBFE@vmware.com>
Date: Fri, 26 Jan 2018 18:39:26 +0000
From: VMware Security Response Center <security@...are.com>
To: "oss-security@...ts.openwall.com" <oss-security@...ts.openwall.com>
Subject: Deserialization Vulnerability in VMware Xenon (CVE-2017-4947) 
Content-Type: text/plain; charset=utf-8

VMware Xenon contains a deserialization vulnerability (CVE-2017-4947) due to insufficient content-type filtering of inbound requests. Successful exploitation of this issue may result in remote code execution.

Fixes/References
--------------
https://github.com/vmware/xenon/commit/092ea98105040e68c6bd0bdf89b86d149dfad1b1

We would like to thank Chris Todd of VMware for reporting this issue.

--------------
Edward Hawkins
Senior Program Manager, Security Response
security@...are.com
