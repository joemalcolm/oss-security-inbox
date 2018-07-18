X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2018/07/18/1
Message-ID: <CANnUo4K3qXCFEeP_3K8z3VLVva==9e9LBzFad-DGSWupm8XScg@mail.gmail.com>
Date: Wed, 18 Jul 2018 09:01:20 +0100
From: Mark Cox <mjc@...che.org>
To: announce@...pd.apache.org, oss-security@...ts.openwall.com
Cc: Apache Software Foundation HTTP Server Project <security@...pd.apache.org>
Subject: CVE-2018-1333: Apache HTTP Server HTTP/2 DoS
Content-Type: text/plain; charset=utf-8

CVE-2018-1333: DoS for HTTP/2 connections by crafted requests

Severity: Low

Vendor: The Apache Software Foundation

Versions Affected:
httpd 2.4.18-2.4.33

Description:
By specially crafting HTTP/2 requests, workers would be
allocated 60 seconds longer than necessary, leading to
worker exhaustion and a denial of service.

Mitigation:
All httpd users should upgrade to 2.4.34 or later.

Credit:
The issue was discovered by Craig Young of Tripwire VERT.

References:
https://httpd.apache.org/security/vulnerabilities_24.html#CVE-2018-1333

