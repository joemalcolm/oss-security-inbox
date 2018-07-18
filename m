X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2018/07/18/2
Message-ID: <CANnUo4+QaK2c6e9QEWCUAfvWW5x=NpnsoJqWgt5c-Aihvgf4Rg@mail.gmail.com>
Date: Wed, 18 Jul 2018 09:02:27 +0100
From: Mark Cox <mjc@...che.org>
To: announce@...pd.apache.org, oss-security@...ts.openwall.com
Cc: Apache Software Foundation HTTP Server Project <security@...pd.apache.org>
Subject: CVE-2018-8011: Apache HTTP Server mod_md DoS
Content-Type: text/plain; charset=utf-8

CVE-2018-8011: mod_md DoS via Coredumps on specially crafted requests

Severity: Moderate

Vendor: The Apache Software Foundation

Versions Affected:
httpd 2.4.33

Description:
By specially crafting HTTP requests, the mod_md challenge
handler would dereference a NULL pointer and cause the child
process to segfault. This could be used to DoS the server

Mitigation:
All httpd users should upgrade to 2.4.34 or later.

Credit:
The issue was discovered by Daniel Caminada

References:
https://httpd.apache.org/security/vulnerabilities_24.html#CVE-2018-8011

