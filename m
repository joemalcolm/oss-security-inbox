X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2023/12/09/1
Message-ID: <a82d6fd8-190f-8920-81ff-b063da186927@apache.org>
Date: Sat, 09 Dec 2023 06:55:17 +0000
From: Lukasz Lenart <lukaszlenart@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2023-41835: Apache Struts: excessive disk usage 
Content-Type: text/plain; charset=utf-8

Severity: moderate

Affected versions:

- Apache Struts 2.0.0 through 2.5.31
- Apache Struts 6.1.2.1 through 6.3.0

Description:

When a Multipart request is performed but some of the fields exceed the maxStringLength  limit, the upload files will remain in struts.multipart.saveDir  even if the request has been denied.
Users are recommended to upgrade to versions Struts 2.5.32 or 6.1.2.2 or Struts 6.3.0.1 or greater, which fixe this issue.

References:

https://lists.apache.org/thread/6wj530kh3ono8phr642y9sqkl67ys2ft
https://struts.apache.org/
https://www.cve.org/CVERecord?id=CVE-2023-41835

