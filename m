X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2022/03/14/3
Message-ID: <bd4ba7ac-0817-f378-08bb-11b8b7632496@apache.org>
Date: Mon, 14 Mar 2022 10:08:35 +0000
From: Stefan Eissing <icing@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2022-22720: HTTP request smuggling vulnerability in Apache HTTP Server 2.4.52 and earlier 
Content-Type: text/plain; charset=utf-8

Severity: important

Description:

Apache HTTP Server 2.4.52 and earlier fails to close inbound connection when errors are encountered discarding the request body, exposing the server to HTTP Request Smuggling

Credit:

James Kettle <james.kettle portswigger.net>

