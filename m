X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2023/03/27/2
Message-ID: <7fe42fad-2af9-3df6-b782-f527e99c1430@apache.org>
Date: Mon, 27 Mar 2023 16:20:40 +0000
From: James Dailey <jdailey@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2023-25195: Apache Fineract: SSRF template type vulnerability in certain authenticated users 
Content-Type: text/plain; charset=utf-8

Severity: moderate

Description:

Server-Side Request Forgery (SSRF) vulnerability in Apache Software Foundation Apache Fineract.
Authorized users with limited permissions can gain access to server and may be able to use server for any outbound traffic. 

This issue affects Apache Fineract: from 1.4 through 1.8.3.

Credit:

Huydoppa from GHTK  (reporter)
Aleksander (remediation developer)

References:

https://fineract.apache.org/
https://www.cve.org/CVERecord?id=CVE-2023-25195

