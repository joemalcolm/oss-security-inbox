X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2022/02/05/1
Message-ID: <b4b5b976-5adf-a057-7658-24b875181eda@apache.org>
Date: Sat, 05 Feb 2022 00:08:03 +0000
From: Zach Hoffman <zrhoffman@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2022-23206: Apache Traffic Control: Server-Side Request Forgery in Traffic Ops endpoint POST /user/login/oauth 
Content-Type: text/plain; charset=utf-8

Description:

In Apache Traffic Control Traffic Ops prior to 6.1.0 or 5.1.6, an unprivileged user who can reach Traffic Ops over HTTPS can send a specially-crafted POST request to /user/login/oauth to scan a port of a server that Traffic Ops can reach.

Mitigation:

6.0.x user should upgrade to 6.1.0.
5.1.x users should upgrade to 5.1.6 or 6.1.0.

Credit:

Apache Traffic Control would like to thank walkerxiong of SecCoder Security Lab for reporting this issue.

