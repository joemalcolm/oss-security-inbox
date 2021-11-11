X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2021/11/11/3
Message-ID: <49610988-1ce7-988d-e601-00d6d7d02c96@apache.org>
Date: Thu, 11 Nov 2021 20:45:08 +0000
From: Zach Hoffman <zrhoffman@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2021-43350: Apache Traffic Control: LDAP filter injection vulnerability in Traffic Ops 
Content-Type: text/plain; charset=utf-8

Severity: critical

Description:

An unauthenticated Apache Traffic Control Traffic Ops user can send a request with a specially-crafted username to the POST /login endpoint of any API version to inject unsanitized content into the LDAP filter.

Credit:

This issue was discovered by Apache Traffic Control user pupiles.

References:

https://trafficcontrol.apache.org/security/

