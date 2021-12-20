X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2021/12/20/3
Message-ID: <c027ff26-93ef-39b6-10a8-228bc988c3e8@apache.org>
Date: Mon, 20 Dec 2021 09:49:21 +0000
From: Stefan Eissing <icing@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2021-44224: Apache HTTP Server: Possible NULL dereference or SSRF in forward proxy configurations in Apache HTTP Server 2.4.51 and earlier 
Content-Type: text/plain; charset=utf-8

Severity: moderate

Description:

A crafted URI sent to httpd configured as a forward proxy (ProxyRequests on) can cause a crash (NULL pointer dereference) or, for configurations mixing forward and reverse proxy declarations, can allow for requests to be directed to a declared Unix Domain Socket endpoint (Server Side Request Forgery).

This issue affects Apache HTTP Server 2.4.7 up to 2.4.51 (included).

Credit:

漂亮鼠
TengMA(@Te3t123)

