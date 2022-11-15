X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2022/11/15/2
Message-ID: <a67241ba-4fe9-6eec-6b1a-0ee43405fc1d@apache.org>
Date: Tue, 15 Nov 2022 11:35:42 +0000
From: Olivier Lamy <olamy@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2022-40308: Apache Archiva prior to 2.2.9 may allow the anonymous user to read arbitrary files 
Content-Type: text/plain; charset=utf-8

Description:

If anonymous read enabled, it's possible to read the database file directly without logging in.


Credit:

Thanks to L3yx of Syclover Security Team

