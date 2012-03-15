X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2012/03/15/5
Message-Id: <BBB09EBE-5D3A-4502-9E6E-9BD5CF4B64B0@nginx.com>
Date: Thu, 15 Mar 2012 17:37:29 +0400
From: Andrew Alexeev <andrew@...nx.com>
To: oss-security@...ts.openwall.com
Subject: CVE Request: nginx fix for malformed HTTP responses from upstream servers
Content-Type: text/plain; charset=utf-8

Hello,

The nginx team has released stable version 1.0.14, and development
version 1.1.17 of nginx web server, which include a fix for malformed
HTTP responses from upstream servers:

http://trac.nginx.org/nginx/changeset/4535/nginx
http://trac.nginx.org/nginx/changeset/4531/nginx
http://trac.nginx.org/nginx/changeset/4530/nginx

http://nginx.org/en/security_advisories.html

Without this fix contents of previously freed memory might be sent to
a client if an upstream server returned specially crafted response,
potentially resulting in sensitive information leak.

Patch which can be applied to the earlier versions of nginx is here:
http://nginx.org/download/patch.2012.memory.txt

Thanks to Matthew Daley for spotting this one.

-- 
Andrew Alexeev
@nginxorg

