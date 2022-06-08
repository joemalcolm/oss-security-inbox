X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2022/06/08/8
Message-ID: <3e56ef2c-fd07-fbd7-bc4f-edb81527efde@apache.org>
Date: Wed, 08 Jun 2022 09:44:06 +0000
From: Stefan Eissing <icing@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2022-31813: Apache HTTP Server: mod_proxy X-Forwarded-For dropped by hop-by-hop mechanism 
Content-Type: text/plain; charset=utf-8

Severity: low

Description:

Apache HTTP Server 2.4.53 and earlier may not send the X-Forwarded-* headers to the origin server based on client side Connection header hop-by-hop mechanism.
This may be used to bypass IP based authentication on the origin server/application.

Credit:

The Apache HTTP Server project would like to thank Gaetan Ferry (Synacktiv) for reporting this issue

References:

https://httpd.apache.org/security/vulnerabilities_24.html

