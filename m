X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2020/11/24/5
Message-ID: <CACR6SAXDk+Ronjh8KQ91q2W4FpiOmiJyjkUe9v4o9L8Bvkhvvw@mail.gmail.com>
Date: Tue, 24 Nov 2020 18:12:36 +0100
From: Serge Huber <shuber@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2020-13942: Remote Code Execution in Apache Unomi
Content-Type: text/plain; charset=utf-8

Description:

It is possible to inject malicious OGNL or MVEL scripts into the
/context.json public endpoint. This was partially fixed in 1.5.1 but a
new attack vector was found. In version 1.5.2 scripts are now
completely filtered from the input. It is highly recommended to
upgrade to the latest available version of the 1.5.x release to fix
this problem.
References:

http://unomi.apache.org./security/cve-2020-13942.txt

